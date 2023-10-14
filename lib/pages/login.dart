import 'package:aarogya_connect/services/Map/BalancedDiet.dart';
import 'package:aarogya_connect/services/Map/MapScreen.dart';
import 'package:aarogya_connect/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  static const id = "/login";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(40),
        decoration: const BoxDecoration(
            color: Colors.greenAccent,
            gradient: LinearGradient(
              colors: [Colors.greenAccent, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AssetConstants.appLogo,
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                    ),
                    Image.asset(
                      AssetConstants.appName,
                      fit: BoxFit.contain,
                      width: 200,
                      height: 60,
                    ),
                  ]),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Text(
                    "Mobile Number/",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: SizedBox()),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Container(
              height: 60,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "+91",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    color: Colors.grey,
                    width: 1.5,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration.collapsed(
                          hintText: '00000 00000'),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              child: Container(
                width: 500,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.greenAccent[400],
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                    child: Text(
                  "Login or Sign Up",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
