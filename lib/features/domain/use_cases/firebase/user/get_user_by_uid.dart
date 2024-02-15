import 'package:lategram/features/domain/entities/user/user_entity.dart';
import 'package:lategram/features/domain/repository/firebase_repository.dart';

class GetUserByUid {
  final FirebaseRepository repository;

  GetUserByUid({required this.repository});

  Stream<List<UserEntity>> call(String uid) {
    return repository.getUserByUid(uid);
  }
}
