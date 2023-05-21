import './screens/home_screen.dart';
import './screens/about_screen.dart';
import './screens/intro_screen.dart';
import './screens/landing_screen.dart';
import './screens/login_screen.dart';
import './screens/user_screen.dart';


var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/about': (context) => const AboutScreen(),
  '/intro': (context) => const IntroScreen(),
  '/landing': (context) => const LandingScreen(),
  '/login': (context) => const LoginScreen(),
  '/user': (context) => const UserScreen(),
};
