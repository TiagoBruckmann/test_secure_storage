library secure_storage;

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {

  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  Future<void> setCredential( String name, String credential ) async => await _secureStorage.write(key: name, value: credential);

  Future<String?> getCredential( String credential ) async  => await _secureStorage.read(key: credential);

  Future<Map<String, String>> getAllCredentials() async => await _secureStorage.readAll();

  Future<void> deleteOnlyOneCredential( String credential ) async => await _secureStorage.delete(key: credential);

  Future<void> deleteAllCredentials() async => await _secureStorage.deleteAll();

}
