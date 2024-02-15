import 'package:lategram/features/domain/entities/user/user_entity.dart';

abstract class FirebaseRepository {
  // Authentication
  Future<void> loginUser(UserEntity user);
  Future<void> signupUser(UserEntity user);
  Future<bool> isUserLoggedIn();
  Future<void> signoutUser();

  // User
  Stream<List<UserEntity>> getUsers(UserEntity user);
  Stream<List<UserEntity>> getUserByUid(String uid);
  Future<String> getCurrentUserUid();
  Future<void> createUser(UserEntity user);
  Future<void> updateUser(UserEntity user);
}
