import 'package:lategram/features/domain/entities/user/user_entity.dart';
import 'package:lategram/features/domain/repository/firebase_repository.dart';

class GetUsers {
  final FirebaseRepository repository;

  GetUsers({required this.repository});

  Stream<List<UserEntity>> call(UserEntity user) {
    return repository.getUsers(user);
  }
}
