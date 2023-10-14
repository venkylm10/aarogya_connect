import 'package:aarogya_connect/pages/buy_medicine/buy_medicine.dart';
import 'package:aarogya_connect/pages/complaints.dart';
import 'package:aarogya_connect/pages/contact_us/contact_us.dart';
import 'package:aarogya_connect/pages/donate.dart';
import 'package:aarogya_connect/pages/health_video/health_video.dart';
import 'package:aarogya_connect/pages/home/home.dart';
import 'package:aarogya_connect/pages/login.dart';
import 'package:aarogya_connect/pages/survey.dart';
import 'package:aarogya_connect/pages/volunteering/volunteer_screen.dart';
import 'package:aarogya_connect/pages/women_health/women_health.dart';
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
  HealthVideoScreen.id: (context) => const HealthVideoScreen(),
  WomenHealthScreen.id: (context) => const WomenHealthScreen(),
  VolunteerScreen.id: (context) => const VolunteerScreen(),
  BuyMedicineScreen.id: (context) => const BuyMedicineScreen(),
  ContactUsScreen.id: (context) => const ContactUsScreen(),
};
