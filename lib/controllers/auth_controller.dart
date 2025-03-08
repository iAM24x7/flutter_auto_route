import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_route/common/alert.dart';
import 'package:flutter_auto_route/common/routes/app-router.dart';
import 'package:flutter_auto_route/repositories/auth_repository.dart';

class AuthController with ChangeNotifier {
  final _myRepo = AuthRepository();

  bool _loading = false;
  bool get loading => _loading;

  bool _signUpLoading = false;
  bool get signUpLoading => _signUpLoading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  setSignUpLoading(bool value) {
    _signUpLoading = value;
    notifyListeners();
  }

  Future<void> loginApi(dynamic data, BuildContext context) async {
    setLoading(true);
    _myRepo
        .loginApi(data)
        .then((value) {
          setLoading(false);
          Alert.snackBarSuccess('Login Successfully', context);
          //Navigator.pushNamed(context, RoutesName.home);
          // if (kDebugMode) {
          //   print(value.toString());
          // }
        })
        .onError((error, stackTrace) {
          setLoading(false);
          Alert.snackBarError(error.toString(), context);
          // if (kDebugMode) {
          //   print(error.toString());
          // }
        });
  }

  Future<void> signUpApi(dynamic data, BuildContext context) async {
    setSignUpLoading(true);
    _myRepo
        .signUpApi(data)
        .then((value) {
          setSignUpLoading(false);
          Alert.snackBarSuccess('SignUp Successfully', context);
          //  Navigator.pushNamed(context, HomeRoute.page);

          context.router.navigate(const HomeRoute());

          // if (kDebugMode) {
          //   print(value.toString());
          // }
        })
        .onError((error, stackTrace) {
          setSignUpLoading(false);
          Alert.snackBarError(error.toString(), context);
          // if (kDebugMode) {
          //   print(error.toString());
          // }
        });
  }
}
