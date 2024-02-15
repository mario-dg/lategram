import 'package:lategram/features/domain/entities/user/user_entity.dart';
import 'package:lategram/features/domain/repository/firebase_repository.dart';

class LoginUser {
  final FirebaseRepository repository;

  LoginUser({required this.repository});

  Future<void> call(UserEntity user) {
    return repository.loginUser(user);
  }
}
