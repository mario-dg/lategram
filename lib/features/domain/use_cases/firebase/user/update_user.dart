import 'package:lategram/features/domain/entities/user/user_entity.dart';
import 'package:lategram/features/domain/repository/firebase_repository.dart';

class UpdateUser {
  final FirebaseRepository repository;

  UpdateUser({required this.repository});

  Future<void> call(UserEntity user) {
    return repository.updateUser(user);
  }
}
