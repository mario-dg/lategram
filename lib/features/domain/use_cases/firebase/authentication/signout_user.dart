import 'package:lategram/features/domain/repository/firebase_repository.dart';

class SignoutUser {
  final FirebaseRepository repository;

  SignoutUser({required this.repository});

  Future<void> call() {
    return repository.signoutUser();
  }
}
