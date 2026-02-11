#!/usr/bin/env dart
/// Creates a new module with Clean Architecture structure.
/// Usage: dart run scripts/create_module.dart profile
/// Or: dart run scripts/create_module.dart settings

import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print('Usage: dart run scripts/create_module.dart <module_name>');
    print('Example: dart run scripts/create_module.dart profile');
    exit(1);
  }

  final rawName = args[0].toLowerCase();
  final moduleName = _toPascalCase(rawName);
  final routeName = rawName.toUpperCase().replaceAll('-', '_');

  final basePath = 'lib/app/modules/$rawName';
  final dirs = [
    '$basePath/domain/repositories',
    '$basePath/data/datasources',
    '$basePath/data/repositories',
    '$basePath/bindings',    // Get CLI compatible
    '$basePath/controllers',
    '$basePath/views',
  ];

  for (final d in dirs) {
    Directory(d).createSync(recursive: true);
  }

  _writeFile('$basePath/domain/repositories/${rawName}_repository.dart', '''
import '../../../../models/user_model.dart';
import '../../../../services/dio/api_response.dart';

/// Domain layer - abstract repository contract.
abstract class ${moduleName}Repository {
  Future<ApiResponse<UserModel>> getData();
}
''');

  _writeFile('$basePath/data/datasources/${rawName}_remote_data_source.dart', '''
import '../../../../models/user_model.dart';
import '../../../../services/dio/api_response.dart';
import '../../../../services/dio/endpoints.dart';
import '../../../../services/dio/remote_data_source.dart';

class ${moduleName}RemoteDataSource extends RemoteDataSource {
  Future<ApiResponse<UserModel>> getData() async {
    return get<UserModel>(
      endpoint: Endpoints.apiPath('${rawName}'),
      parser: (data) {
        if (data is Map<String, dynamic>) {
          return UserModel.fromJson(data);
        }
        return const UserModel();
      },
    );
  }
}
''');

  _writeFile('$basePath/data/datasources/${rawName}_local_data_source.dart', '''
import '../../../../models/user_model.dart';
import '../../../../services/dio/local_data_source.dart';

class ${moduleName}LocalDataSource extends LocalDataSource {
  static const String _cacheKey = '${rawName}_cache';

  Future<void> cacheData(UserModel data) async {
    await save(_cacheKey, data.toJson());
  }

  UserModel? getCachedData() {
    final data = get<Map<String, dynamic>>(_cacheKey);
    return data != null ? UserModel.fromJson(data) : null;
  }

  Future<void> clearCache() async => await remove(_cacheKey);
}
''');

  _writeFile('$basePath/data/repositories/${rawName}_repository_impl.dart', '''
import '../../../../models/user_model.dart';
import '../../../../services/dio/api_response.dart';
import '../../../../services/dio/repository.dart';

import '../../domain/repositories/${rawName}_repository.dart';
import '../datasources/${rawName}_local_data_source.dart';
import '../datasources/${rawName}_remote_data_source.dart';

class ${moduleName}RepositoryImpl extends Repository implements ${moduleName}Repository {
  final ${moduleName}RemoteDataSource _remoteDataSource;
  final ${moduleName}LocalDataSource? _localDataSource;

  ${moduleName}RepositoryImpl({
    required ${moduleName}RemoteDataSource remoteDataSource,
    ${moduleName}LocalDataSource? localDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource,
        super(
          remoteDataSource: remoteDataSource,
          localDataSource: localDataSource,
        );

  @override
  Future<ApiResponse<UserModel>> getData() async {
    return executeWithCache<UserModel>(
      remoteCall: () => _remoteDataSource.getData(),
      cacheKey: _localDataSource != null ? '${rawName}_data' : null,
      cacheDuration: _localDataSource != null ? const Duration(minutes: 5) : null,
      parser: (data) {
        if (data is Map<String, dynamic>) {
          return UserModel.fromJson(data);
        }
        return const UserModel();
      },
      toEncodable: (model) => model.toJson(),
    );
  }
}
''');

  _writeFile('$basePath/controllers/${rawName}_controller.dart', '''
import 'package:get/get.dart';

import '../domain/repositories/${rawName}_repository.dart';
import '../../../models/user_model.dart';

class ${moduleName}Controller extends GetxController {
  final ${moduleName}Repository _repository = Get.find<${moduleName}Repository>();

  final RxBool isLoading = true.obs;
  final Rxn<UserModel> data = Rxn<UserModel>();

  @override
  void onReady() {
    super.onReady();
    loadData();
  }

  Future<void> loadData() async {
    isLoading.value = true;
    try {
      final response = await _repository.getData();
      if (response.success) {
        data.value = response.data;
      }
    } finally {
      isLoading.value = false;
    }
  }
}
''');

  _writeFile('$basePath/views/${rawName}_view.dart', '''
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/${rawName}_controller.dart';

class ${moduleName}View extends GetView<${moduleName}Controller> {
  const ${moduleName}View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('${moduleName}')),
      body: Obx(() {
        if (controller.isLoading.value && controller.data.value == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return Center(child: Text('${moduleName} Page'));
      }),
    );
  }
}
''');

  _writeFile('$basePath/bindings/${rawName}_binding.dart', '''
import 'package:get/get.dart';

import '../controllers/${rawName}_controller.dart';
import '../data/datasources/${rawName}_local_data_source.dart';
import '../data/datasources/${rawName}_remote_data_source.dart';
import '../data/repositories/${rawName}_repository_impl.dart';
import '../domain/repositories/${rawName}_repository.dart';

class ${moduleName}Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<${moduleName}RemoteDataSource>(() => ${moduleName}RemoteDataSource(), fenix: true);
    Get.lazyPut<${moduleName}LocalDataSource>(() => ${moduleName}LocalDataSource(), fenix: true);

    Get.lazyPut<${moduleName}Repository>(
      () => ${moduleName}RepositoryImpl(
        remoteDataSource: Get.find<${moduleName}RemoteDataSource>(),
        localDataSource: Get.find<${moduleName}LocalDataSource>(),
      ),
      fenix: true,
    );

    Get.lazyPut<${moduleName}Controller>(() => ${moduleName}Controller(), fenix: true);
  }
}
''');

  print('✅ Module "$rawName" created with Clean Architecture at $basePath');
  print('');
  print('Next steps:');
  print('1. Add route in lib/app/routes/app_routes.dart:');
  print('   static const ${routeName} = \'/$rawName\';');
  print('');
  print('2. Add page in lib/app/routes/app_pages.dart:');
  print('   import \'../modules/$rawName/bindings/${rawName}_binding.dart\';');
  print('   import \'../modules/$rawName/views/${rawName}_view.dart\';');
  print('   GetPage(name: Routes.${routeName}, page: () => const ${moduleName}View(), binding: ${moduleName}Binding()),');
  print('');
  print('3. Update Endpoints.apiPath() in ${rawName}_remote_data_source.dart for your API.');
}

void _writeFile(String path, String content) {
  File(path).writeAsStringSync(content);
}

String _toPascalCase(String input) {
  return input.split('_').map((s) => s.isEmpty ? '' : s[0].toUpperCase() + s.substring(1)).join();
}
