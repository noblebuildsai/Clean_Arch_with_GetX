/// ENTERPRISE: Data - Mapper.
import '../../domain/entities/user_entity.dart';
import '../models/user_model.dart';

class UserMapper {
  static UserEntity toEntity(UserModel m) => UserEntity(id: m.id, name: m.name, email: m.email);
  static UserModel toModel(UserEntity e) => UserModel(id: e.id, name: e.name, email: e.email);
}
