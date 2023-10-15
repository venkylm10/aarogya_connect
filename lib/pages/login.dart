import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:aarogya_connect/main.dart';
import 'package:aarogya_connect/pages/home/home.dart';
import 'package:aarogya_connect/utils/snackbar.dart';
import 'package:aarogya_connect/widgets/global/custom_button.dart';
import 'package:aarogya_connect/widgets/global/custom_text_field.dart';
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
  final phoneNumberController = TextEditingController();
  final otpController = TextEditingController();
  String label = 'Continue';
  bool showOTPField = false;

  void login() {
    navigatorKey.currentState!.pushNamed(HomeScreen.id);
    return;
    // final mobileCheck = validate(phoneNumberController.text.trim(), 10);
    // if (mobileCheck) {
    //   setState(() {
    //     showOTPField = true;
    //     label = "Login";
    //   });
    // }
  }

  bool validate(String str, int len) {
    if (str.length != len) {
      showSnackBar(context, "! Please correct values");
      return false;
    }
    return true;
  }

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
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "+91",
                      style: MyStyles.subHeadingStyle.copyWith(fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    color: Colors.grey,
                    width: 1.5,
                  ),
                  Expanded(
                    child: CustomTextField(
                      controller: phoneNumberController,
                      hintText: "9999999999",
                      fillColor: Colors.transparent,
                      border: InputBorder.none,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            if (showOTPField)
              Container(
                height: 60,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "OTP",
                        style: MyStyles.subHeadingStyle.copyWith(fontSize: 14),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 10),
                      color: Colors.grey,
                      width: 1.5,
                    ),
                    Expanded(
                      child: CustomTextField(
                        controller: otpController,
                        hintText: "000000",
                        fillColor: Colors.transparent,
                        border: InputBorder.none,
                      ),
                    )
                  ],
                ),
              ),
            CustomButton(
              label: label,
              onTap: () => login(),
            )
          ],
        ),
      ),
    );
  }
}
