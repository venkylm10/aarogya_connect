import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:aarogya_connect/services/DietDescription.dart';
import 'package:flutter/material.dart';

class BalancedDiet extends StatelessWidget {
  const BalancedDiet({super.key});

  Widget balancedDiet(String title, String logo) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(top: 20, bottom: 20),
      decoration: BoxDecoration(
          color: MyColors.homeTileColor,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: MyColors.orangeColor)),
      child: GestureDetector(
        child: Row(children: [
          SizedBox(
            width: 15,
          ),
          Image.asset(
            logo,
            fit: BoxFit.contain,
            height: 37,
            width: 50,
          ),
          SizedBox(
            width: 20,
          ),
          Text(title),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 45,
        titleSpacing: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              AssetConstants.diet,
              fit: BoxFit.contain,
              height: 25,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Balanced Diet",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: MyColors.greenColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(40).copyWith(bottom: 0),
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
        child: Column(children: [
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DietDescription(data: 1,)));
              },
              child: balancedDiet(
                  "Age 0-8 years       आयु 0-8", AssetConstants.baby)),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DietDescription(data: 2,)));
              },
              child: balancedDiet(
                  "Age 8-18 years      उम्र 8-18", AssetConstants.teenage)),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DietDescription(data: 3,)));
              },
              child: balancedDiet(
                  "Age 18-55 years     उम्र 18-55", AssetConstants.adult)),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DietDescription(data: 4,)));
              },
              child: balancedDiet("Age 55 years above      उम्र 55-से ऊपर",
                  AssetConstants.old)),
        ]),
      ),
    );
  }
}
