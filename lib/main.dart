
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_freezed_test/app/modules/home/bindings/home_binding.dart';
import 'dart:developer' as developer;
import 'app/routes/app_pages.dart';
import 'app/services/storage.dart';
import 'app/services/dio/endpoints.dart';
import 'app/services/network_connectivity.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  _initializeErrorHandling();

  try {
    await initGetServices();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    runApp(
      GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: GetMaterialApp(
          // theme: AppTheme.light,
          // darkTheme: AppTheme.dark,
          defaultTransition: Transition.fade,
          transitionDuration: const Duration(milliseconds: 300),
          smartManagement: SmartManagement.full,
          debugShowCheckedModeBanner: false,
          locale: const Locale('en', 'US'),
          fallbackLocale: const Locale('en', 'US'),
          // translationsKeys: AppTranslation.translations,
          initialRoute: AppPages.INITIAL,
          initialBinding: HomeBinding(),
          getPages: AppPages.routes,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.0)),
              child: child ?? const SizedBox(),
            );
          },
        ),
      ),
    );
  } catch (e, stackTrace) {
    if (kDebugMode) {
      developer.log(
        'App initialization error: $e',
        error: e,
        stackTrace: stackTrace,
      );
    }

    runApp(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 64, color: Colors.red),
                const SizedBox(height: 16),
                const Text(
                  'Failed to initialize app',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  e.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _initializeErrorHandling() {
  FlutterError.onError = (FlutterErrorDetails details) {
    if (kDebugMode) {
      FlutterError.presentError(details);
      developer.log(
        'Flutter Error: ${details.exception}',
        error: details.exception,
        stackTrace: details.stack,
      );
    } else {
      // In production, log to crash reporting service
      //FirebaseCrashlytics.instance.recordFlutterError(details);
    }
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    if (kDebugMode) {
      developer.log(
        'Platform Error: $error',
        error: error,
        stackTrace: stack,
      );
    }
    return true;
  };
}

Future<void> initGetServices() async {
  try {
    await Get.putAsync<GetStorageService>(() => GetStorageService().initState(),permanent: true);

    if (kDebugMode) {
      Endpoints.setEnvironment(Environment.development);
    } else {
      Endpoints.setEnvironment(Environment.production);
    }

    await NetworkConnectivity.instance.initialize();

    // Initialize repositories and data sources
    // Uncomment and configure based on your needs
    // RepositoryLocator.setup();

    if (kDebugMode) {
      developer.log('Services initialized successfully');
      developer.log('API Environment: ${Endpoints.environment}');
      developer.log('API Base URL: ${Endpoints.baseUrl}');
      developer.log('Network Status: ${NetworkConnectivity.instance.isConnected}');
    }
  } catch (e, stackTrace) {
    if (kDebugMode) {
      developer.log(
        'Error initializing services: $e',
        error: e,
        stackTrace: stackTrace,
      );
    }
    rethrow;
  }
}

    /*SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );*/