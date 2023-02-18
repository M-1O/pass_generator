import '../../model/password/password_model.dart';

abstract class IPasswordRepository {
  Future<PasswordModel> getPassword();
  Future<void> savePassword(PasswordModel password);
}
