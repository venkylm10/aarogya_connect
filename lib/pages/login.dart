import 'package:aarogya_connect/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
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
        decoration: BoxDecoration(
            color: Colors.greenAccent,
            gradient: LinearGradient(
              colors: [Colors.greenAccent, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
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
            Padding(
              padding: const EdgeInsets.only(top: 20),
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
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "+91",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    width: 1.5,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: new InputDecoration.collapsed(
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
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                width: 500,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.greenAccent[400],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
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
