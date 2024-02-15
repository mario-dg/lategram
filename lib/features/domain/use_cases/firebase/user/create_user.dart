import 'package:lategram/features/domain/entities/user/user_entity.dart';
import 'package:lategram/features/domain/repository/firebase_repository.dart';

class CreateUser {
  final FirebaseRepository repository;

  CreateUser({required this.repository});

  Future<void> call(UserEntity user) {
    return repository.createUser(user);
  }
}
