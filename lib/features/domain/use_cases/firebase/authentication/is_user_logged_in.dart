import 'package:lategram/features/domain/repository/firebase_repository.dart';

class IsUserLoggedIn {
  final FirebaseRepository repository;

  IsUserLoggedIn({required this.repository});

  Future<bool> call() {
    return repository.isUserLoggedIn();
  }
}
