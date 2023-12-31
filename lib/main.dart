import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:loan_mobile_app/screens/dashboard/page.dart';
import 'package:loan_mobile_app/screens/introductory_screens.dart';
import 'package:loan_mobile_app/screens/signin/page.dart';
import 'package:loan_mobile_app/screens/signup/Passwords/page.dart';
import 'package:loan_mobile_app/screens/signup/otp/page.dart';
import 'package:loan_mobile_app/screens/signup/personal_details/page.dart';

void main() {
  runApp(const LoanMobileApplication());
}

class LoanMobileApplication extends StatelessWidget {
  const LoanMobileApplication({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroductoryScreens(),

        // Named Routes and Bindings
        getPages: [
          GetPage(
            name: '/personal_details',
            page: () => PersonalDetails(),
            // binding: SignupDetailsPageBinding(),
          ),
          GetPage(
            name: '/otp',
            page: () => const Otp(),
            // binding: SignupDetailsPageBinding(),
          ),
          GetPage(
            name: '/password',
            page: () => const PasswordDetailsCreation(),
            // binding: SignupDetailsPageBinding(),
          ),

          GetPage(
            name: '/signin',
            page: () => const SigninDetailsCreation(),
            // binding: SignupDetailsPageBinding(),
          ),

          GetPage(
            name: '/dashboard',
            page: () => const DashboardDetails(),
            // binding: SignupDetailsPageBinding(),
          ),
        ]);
  }
}

