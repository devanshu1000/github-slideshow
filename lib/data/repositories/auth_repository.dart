import '../models/user_model.dart';

abstract class AuthRepository {
  Future<UserModel?> login(String email, String password);
  Future<UserModel?> signup(String name, String email, String password);
  Future<void> logout();
  Future<UserModel?> getCurrentUser();
}

class AuthRepositoryImpl implements AuthRepository {
  UserModel? _currentUser;

  @override
  Future<UserModel?> login(String email, String password) async {
    // Mock login
    await Future.delayed(const Duration(seconds: 1));
    if (email == "admin@remarriagee.com") {
        _currentUser = const UserModel(id: "admin", name: "Super Admin", email: "admin@remarriagee.com", age: 30, maritalStatus: "Never Married", isVerified: true);
    } else {
        _currentUser = UserModel(id: "user1", name: "Rahul Sharma", email: email, age: 28, maritalStatus: "Never Married");
    }
    return _currentUser;
  }

  @override
  Future<UserModel?> signup(String name, String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    _currentUser = UserModel(id: DateTime.now().millisecondsSinceEpoch.toString(), name: name, email: email, age: 30, maritalStatus: "Never Married");
    return _currentUser;
  }

  @override
  Future<void> logout() async {
    _currentUser = null;
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    return _currentUser;
  }
}
