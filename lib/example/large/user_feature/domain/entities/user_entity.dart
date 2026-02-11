/// LARGE: Domain - Pure entity. No JSON, no framework.
class UserEntity {
  final String id;
  final String name;
  final String? email;

  UserEntity({required this.id, required this.name, this.email});
}
