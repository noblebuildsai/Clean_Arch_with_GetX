import 'dart:async';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'enigma.dart';

/// Secure storage service using GetStorage with encryption support
class GetStorageService extends GetxService {
  static final GetStorage _runData = GetStorage('runData');

  Future<GetStorageService> initState() async {
    await GetStorage.init('runData');
    return this;
  }

  /// Get encrypted JWT token (decrypted automatically)
  String get getEncjwToken =>
      decryptAESCryptoJS(_runData.read('jwToken')) ?? '';

  /// Set encrypted JWT token (encrypted automatically)
  set setEncjwToken(String val) =>
      _runData.write('jwToken', encryptAESCryptoJS(val));

  /// Logout and clear stored data
  void logout() {
    _runData.erase();
  }

  /// Write a value to storage
  Future<void> write(String key, dynamic value) async {
    _runData.write(key, value);
  }

  /// Read a value from storage
  T? read<T>(String key) {
    return _runData.read(key) as T?;
  }

  /// Remove a key from storage
  Future<void> remove(String key) async {
    _runData.remove(key);
  }

  /// Check if a key exists in storage
  bool hasData(String key) {
    return _runData.hasData(key);
  }

  /// Clear all storage
  Future<void> erase() async {
    _runData.erase();
  }

  /// Get all keys in storage
  List<String> getKeys() {
    return _runData.getKeys();
  }
}


