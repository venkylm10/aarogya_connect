import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:aarogya_connect/main.dart';
import 'package:aarogya_connect/pages/buy_medicine/buy_medicine.dart';
import 'package:aarogya_connect/pages/contact_us/contact_us.dart';
import 'package:aarogya_connect/pages/health_video/health_video.dart';
import 'package:aarogya_connect/pages/login.dart';
import 'package:aarogya_connect/pages/volunteering/volunteer_screen.dart';
import 'package:aarogya_connect/pages/women_health/women_health.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  HomeDrawer({super.key});

  List<Map<String, String>> tiles = [
    {
      'icon_path': AssetConstants.video,
      'title': "Health Video",
      "navigate_path": HealthVideoScreen.id
    },
    {
      'icon_path': AssetConstants.womenHealth,
      'title': "Women Health",
      "navigate_path": WomenHealthScreen.id
    },
    {
      'icon_path': AssetConstants.volunteer,
      'title': "Volunteering",
      "navigate_path": VolunteerScreen.id
    },
    {
      'icon_path': AssetConstants.buyMedicine,
      'title': "Buy Medicine",
      "navigate_path": BuyMedicineScreen.id
    },
    {
      'icon_path': AssetConstants.contactUs,
      'title': "Contact Us",
      "navigate_path": ContactUsScreen.id
    },
    {
      'icon_path': AssetConstants.logout,
      'title': "Logout",
      "navigate_path": LoginScreen.id
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: MyColors.whiteColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(height: 50),
              Row(
                children: [
                  const SizedBox(width: 10),
                  Image.asset(
                    AssetConstants.appLogo,
                    height: 30,
                  ),
                  Image.asset(
                    AssetConstants.appName,
                    height: 12,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              const SizedBox(height: 70),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: tiles
                    .map(
                      (map) => buildDrawerTile(
                          iconPath: map['icon_path']!,
                          title: map['title']!,
                          navigatePath: map['navigate_path']!),
                    )
                    .toList(),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            margin: const EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(
              color: MyColors.greenGradient,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DESIGNED & DEVELOPED",
                  style: MyStyles.subHeadingStyle.copyWith(fontSize: 12),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "BY  ",
                      style: MyStyles.subHeadingStyle.copyWith(fontSize: 12),
                    ),
                    Text(
                      "WINTERFELL",
                      style: MyStyles.subHeadingStyle.copyWith(
                        fontSize: 12,
                        color: MyColors.orangeColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildDrawerTile(
      {required String iconPath,
      required String title,
      required String navigatePath}) {
    return GestureDetector(
      onTap: () {
        if (navigatePath == LoginScreen.id) {
          navigatorKey.currentState!.popUntil((route) => route.isFirst);
          return;
        }
        navigatorKey.currentState!.pushNamed(navigatePath);
      },
      child: Container(
        height: 50,
        margin: const EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          color: MyColors.orangeGradient,
          border: Border.all(
            color: MyColors.orangeColor,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 20),
            Image.asset(iconPath, height: 40),
            const SizedBox(width: 10),
            Text(
              title,
              style: MyStyles.subHeadingStyle,
            )
          ],
        ),
      ),
    );
  }
}