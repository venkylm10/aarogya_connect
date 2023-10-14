import 'package:aarogya_connect/globals/colors.dart';
import 'package:flutter/material.dart';

class BalancedDiet extends StatelessWidget {
  static const id = "/home/balanced_diet";
  const BalancedDiet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Balanced Diet",
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(Icons.food_bank, color: Colors.black),
        elevation: 0.0,
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
          Container(
            height: 60,
            margin: EdgeInsets.only(top: 20, bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange,
                    blurRadius: 1,
                    spreadRadius: 1.5,
                  )
                ]),
            child: GestureDetector(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.baby_changing_station_outlined),
                    Text("Age 0-8 years"),
                  ]),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.only(top: 20, bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange,
                    blurRadius: 1,
                    spreadRadius: 1.5,
                  )
                ]),
            child: GestureDetector(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.baby_changing_station_outlined),
                    Text("Age 8-18 years"),
                  ]),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.only(top: 20, bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange,
                    blurRadius: 1,
                    spreadRadius: 1.5,
                  )
                ]),
            child: GestureDetector(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.baby_changing_station_outlined),
                    Text("Age 18-55 years"),
                  ]),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.only(top: 20, bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange,
                    blurRadius: 1,
                    spreadRadius: 1.5,
                  )
                ]),
            child: GestureDetector(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.baby_changing_station_outlined),
                    Text("Age 55 years above"),
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
