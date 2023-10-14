import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:flutter/material.dart';

class DonateScreen extends StatelessWidget {
  static const id = "/home/donate";
  const DonateScreen({super.key});

  Widget PaymentMethod(String image, String title) {
    return Container(
      height: 60,
      padding: EdgeInsets.only(right: 60, left: 50),
      margin: EdgeInsets.only(top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: MyColors.homeTileColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            height: 40,
            fit: BoxFit.contain,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
        ],
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
              AssetConstants.donate,
              fit: BoxFit.contain,
              height: 25,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Donate Us",
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
        padding: const EdgeInsets.all(50).copyWith(bottom: 0),
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
             
            },
            child: PaymentMethod(AssetConstants.gPay, "Google Pay"),
          ),
          GestureDetector(
            onTap: () {},
            child: PaymentMethod(AssetConstants.paypal, "PayPal"),
          ),
          GestureDetector(
            onTap: () {},
            child: PaymentMethod(AssetConstants.gPay, "PhonePe"),
          ),
          GestureDetector(
            onTap: () {},
            child: PaymentMethod(AssetConstants.gPay, "PayTm"),
          ),
        ]),
      ),
    );
  }
}