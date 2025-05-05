import 'package:flutter/material.dart';

import '../view/auth/get_otp.dart';
import '../view/auth/login.dart';
import '../view/auth/register_acc.dart';
import '../view/auth/signup.dart';
import '../view/auth/verify_otp.dart';
import '../view/dashboard/home.dart';
import '../view/dashboard/profile/change_password.dart';
import '../view/dashboard/profile/profile.dart';
import '../view/splash_screen.dart';
import '../view/system_parameters/system_parameters.dart';
import 'route_names.dart';
import '../view_model/splash_view_model.dart';

class AppRoutes {
  static Route<dynamic> generateRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.splashView:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case RouteNames.loginView:
        return MaterialPageRoute(
          builder: (context) => const LoginView(),
        );
      case RouteNames.signUpView:
        return MaterialPageRoute(
          builder: (context) => const SignupView(),
        );
      case RouteNames.getOtpView:
        return MaterialPageRoute(
          builder: (context) => GetOtpView(),
        );
      case RouteNames.verifyOtpView:
        return MaterialPageRoute(
          builder: (context) => const VerifyOtpView(),
        );
      case RouteNames.registerAccView:
        return MaterialPageRoute(
          builder: (context) => const RegisterAccView(),
        );

      case RouteNames.homeView:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
      case RouteNames.profileView:
        return MaterialPageRoute(
          builder: (context) => const ProfileView(),
        );
      // case RouteNames.editProfileView:
      //   return MaterialPageRoute(
      //     builder: (context) => const EditProfile(),
      //   );
      case RouteNames.changePasswordView:
        return MaterialPageRoute(
          builder: (context) => ChangePassword(),
        );
      case RouteNames.systemParamsView:
        return MaterialPageRoute(
          builder: (context) => const SystemParametersView(),
        );

// parent app

      default:
        return MaterialPageRoute(
          builder: (context) {
            print("Checking Default route");
            SplashViewModel().checkNavigation(context);
            return const Scaffold(
              body: Center(
                child: Text("No route defined"),
              ),
            );
          },
        );
    }
  }
}
