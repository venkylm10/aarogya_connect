import 'package:aarogya_connect/pages/complaints.dart';
import 'package:aarogya_connect/pages/donate.dart';
import 'package:aarogya_connect/pages/home.dart';
import 'package:aarogya_connect/pages/login.dart';
import 'package:aarogya_connect/pages/survey.dart';
import 'package:aarogya_connect/services/Map/BalancedDiet.dart';
import 'package:aarogya_connect/services/Map/MapScreen.dart';

final routes = {
  LoginScreen.id: (context) => const LoginScreen(),
  HomeScreen.id: (context) => const HomeScreen(),
  ComplaintScreen.id: (context) => const ComplaintScreen(),
  HospitalsScreen.id: (context) => const HospitalsScreen(),
  BalancedDiet.id: (context) => const BalancedDiet(),
  SurveyScreen.id: (context) => const SurveyScreen(),
  DonateScreen.id: (context) => const DonateScreen(),
};
