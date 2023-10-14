import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:aarogya_connect/main.dart';
import 'package:aarogya_connect/pages/complaints.dart';
import 'package:aarogya_connect/pages/donate.dart';
import 'package:aarogya_connect/pages/survey.dart';
import 'package:aarogya_connect/services/Map/BalancedDiet.dart';
import 'package:aarogya_connect/services/Map/MapScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const id = "/home";
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
              fit: BoxFit.cover,
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
        padding: const EdgeInsets.all(20).copyWith(bottom: 0),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "Welcome ",
                  style: MyStyles.headingStyle,
                ),
                Text(
                  "Venkatesh M ",
                  style: MyStyles.headingStyle.copyWith(
                    color: MyColors.orangeColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Image.asset(
              AssetConstants.pmJayBanner,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 30),
            buildHomeTileGrid(),
          ],
        ),
      ),
    );
  }

  Widget buildHomeTileGrid() {
    List<Map<String, String>> tiles = [
      {
        "icon_path": AssetConstants.location,
        "title": "Nearby Hospitals",
        "navigation_path": HospitalsScreen.id
      },
      {
        "icon_path": AssetConstants.diet,
        "title": "balanced Diet",
        "navigation_path": BalancedDiet.id
      },
      {
        "icon_path": AssetConstants.survey,
        "title": "Quick Survey",
        "navigation_path": SurveyScreen.id
      },
      {
        "icon_path": AssetConstants.donate,
        "title": "Donate NGOs",
        "navigation_path": DonateScreen.id
      },
      {
        "icon_path": AssetConstants.complaints,
        "title": "Complaints",
        "navigation_path": ComplaintScreen.id
      },
    ];
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 2 / 1,
      shrinkWrap: true,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: List.generate(
        5,
        (index) => buildHomeTile(
          iconPath: tiles[index]['icon_path']!,
          title: tiles[index]['title']!,
          navigationPath: tiles[index]['navigation_path'],
        ),
      ),
    );
  }

  Widget buildHomeTile({
    required String iconPath,
    required String title,
    required String? navigationPath,
  }) {
    return GestureDetector(
      onTap: () {
        if (navigationPath != null) {
          navigatorKey.currentState!.pushNamed(navigationPath);
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: MyColors.homeTileColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: MyColors.orangeColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              height: 30,
            ),
            const SizedBox(width: 5),
            Expanded(
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            )
          ],
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
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              const SizedBox(height: 20),
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

  Widget buildDrawerTile({required String iconPath, required String title}) {
    return GestureDetector(
      onTap: () {},
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
