import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../routes/route_names.dart';

class SplashViewModel {
  Future<void> checkNavigation(BuildContext context) async {
    print("Checking nav");
    final prefs = await SharedPreferences.getInstance();

    // Login status check
    final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    await Future.delayed(const Duration(seconds: 3));

    if (!isLoggedIn) {
      print("Not logged in, navigating to Mode Selection");
      // Login nahi hua hai, to Mode Selection screen par redirect
      Navigator.pushReplacementNamed(context, RouteNames.modeSelection);
    } else {
      // Logged in hua hai, to isParent mode check kare
      final isParent = prefs.getBool('isParent');

      if (isParent == true) {
        print("Logged in as Parent, navigating to Parent Dashboard");
        Navigator.pushReplacementNamed(context, RouteNames.parentDashboard);
      } else if (isParent == false) {
        print("Logged in as Child, navigating to Child Dashboard");
        Navigator.pushReplacementNamed(context, RouteNames.childDashboard);
      } else {
        // Mode selected nahi hai (fallback to Mode Selection)
        print("Mode not selected, navigating to Mode Selection");
        Navigator.pushReplacementNamed(context, RouteNames.modeSelection);
      }
    }
  }
}
