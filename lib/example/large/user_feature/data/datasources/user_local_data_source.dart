/// LARGE: Data - Local stores Model as JSON.
class UserLocalDataSource {
  final Map<String, dynamic> _cache = {};
  Future<void> save(String key, dynamic value) async => _cache[key] = value;
  T? get<T>(String key) => _cache[key] as T?;
  Future<void> remove(String key) async => _cache.remove(key);
}
