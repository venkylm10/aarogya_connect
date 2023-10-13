import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      drawer: buildDrawer(),
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
    );
  }

  Drawer buildDrawer() {
    List<Map<String, String>> tiles = [
      {'icon_path': AssetConstants.video, 'title': "Health video"},
      {'icon_path': AssetConstants.womenHealth, 'title': "Women Health"},
      {'icon_path': AssetConstants.volunteer, 'title': "Volunteering"},
      {'icon_path': AssetConstants.buyMedicine, 'title': "Buy Medicine"},
      {'icon_path': AssetConstants.contactUs, 'title': "Contact Us"},
      {'icon_path': AssetConstants.logout, 'title': "Logout"},
    ];
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
                  ),
                ],
              ),
              const SizedBox(height: 70),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: tiles
                    .map(
                      (map) => buildDrawerTile(
                          iconPath: map['icon_path']!, title: map['title']!),
                    )
                    .toList(),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: const EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(
              color: MyColors.greenColor,
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

  Widget buildDrawerTile({required String iconPath, required String title}) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        margin: const EdgeInsets.only(top: 30),
        decoration: const BoxDecoration(
          color: MyColors.orangeGradient,
          border: Border.symmetric(
            horizontal: BorderSide(
              color: MyColors.orangeColor,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 20),
            Image.asset(iconPath, height: 40),
            const SizedBox(width: 5),
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
