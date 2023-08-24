import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/logins/login/bindings/login_binding.dart';
import '../modules/logins/login/views/login_view.dart';
import '../modules/logins/select_location/bindings/select_location_binding.dart';
import '../modules/logins/select_location/views/select_location_view.dart';
import '../modules/logins/sign_in/bindings/sign_in_binding.dart';
import '../modules/logins/sign_in/views/sign_in_view.dart';
import '../modules/logins/splash/bindings/splash_binding.dart';
import '../modules/logins/splash/views/splash_view.dart';
import '../modules/logins/verification/bindings/verification_binding.dart';
import '../modules/logins/verification/views/verification_view.dart';
import '../modules/logins/welcome/bindings/welcome_binding.dart';
import '../modules/logins/welcome/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION,
      page: () => const VerificationView(),
      binding: VerificationBinding(),
    ),
    GetPage(
      name: _Paths.SELECT_LOCATION,
      page: () => const SelectLocationView(),
      binding: SelectLocationBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
