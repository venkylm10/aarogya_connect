import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/pages/login.dart';
import 'package:aarogya_connect/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var navigatorKey = GlobalKey<NavigatorState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: MyColors.whiteColor,
  ));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Aarogya Connect',
      theme: ThemeData.light(),
      initialRoute: LoginScreen.id,
      routes: routes,
    );
  }
}
