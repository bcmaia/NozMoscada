import './screens/root_screen.dart';
import './screens/home_screen.dart';
import './screens/about_screen.dart';
import './screens/intro_screen.dart';
import './screens/landing_screen.dart';
import './screens/login_screen.dart';
import './screens/user_screen.dart';
import './screens/map_screeen.dart';
import './screens/tree_info_screen.dart';

var appRoutes = {
  '/': (context) => const RootScreen(),
  '/home': (context) => HomeScreen(),
  '/home/about': (context) => const AboutScreen(),
  '/intro': (context) => const IntroScreen(),
  '/landing': (context) => const LandingScreen(),
  '/login': (context) => const LoginScreen(),
  '/home/user': (context) => UserScreen(),
  '/map': (context) => const MapScreen(),
  '/tree': (context) => const TreeInfo(),
};
