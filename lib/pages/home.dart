import 'dart:ui';

import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: MyColors.whiteColor,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: MyColors.greenColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                AssetConstants.appLogo,
                height: 30,
              ),
              const SizedBox(width: 5),
              Image.asset(
                AssetConstants.appName,
                height: 12,
              ),
            ],
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(
            color: MyColors.blackColor,
          ),
        ),
        drawer: const Drawer(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(15),
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                MyColors.greenColor,
                MyColors.whiteColor,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
