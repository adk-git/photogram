import 'package:photogram/routes/app_routes.dart';
import 'package:photogram/ui/auth/login_screen.dart';
import 'package:photogram/ui/auth/register_screen.dart';
import 'package:photogram/ui/auth/register_screen_2.dart';
import 'package:photogram/ui/auth/splash_screen.dart';
import '../ui/main_screen/home_screen.dart';

class AppPages{
  static final pages = {
    AppRoutes.initial: (context) => const SplashScreen(),
    AppRoutes.register1: (context) => const RegisterScreen(),
    AppRoutes.register2: (context) => const SecondRegisterScreen(),
    AppRoutes.login: (context) => const LoginScreen(),
    AppRoutes.user: (context) => const HomeScreen(),
  };
}