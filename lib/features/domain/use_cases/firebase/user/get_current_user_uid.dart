import 'package:lategram/features/domain/repository/firebase_repository.dart';

class GetCurrentUserUid {
  final FirebaseRepository repository;

  GetCurrentUserUid({required this.repository});

  Future<String> call() {
    return repository.getCurrentUserUid();
  }
}
