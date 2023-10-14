import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:flutter/material.dart';

class DietDescription extends StatelessWidget {
  final int data;
  DietDescription({required this.data});

  List<String> DietData = [
    
    "Babies and toddlers need foods from all five healthy food groups – vegetables, fruit, grain foods, dairy and protein. Healthy foods have nutrients that are important for growth, development and learning. Limit salty, fatty and sugary foods, low-fibre foods, and drinks with caffeine or a lot of sugar.",
    "Eating Healthy. The best way your teen can maintain a healthy weight is to eat a diet rich in whole grains, fruits, vegetables, no-fat or low-fat milk products, beans, eggs, fish, nuts, and lean meats. Eating healthfully means getting the right balance of nutrients.'",
    "In general, aim to eat whole foods, which are fresh or frozen, such as fruit and veggies, lean proteins, fish, and whole grains, to stay in optimal health. To keep convenience look for minimally processed whole foods such as canned beans and yogurt.",
    "The main types of food in this eating pattern include a variety of vegetables, fruits, whole grains, fat-free or low-fat dairy, seafood, poultry, and meat, as well as eggs, nuts, seeds, and soy products.",
  ];

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
        height: double.maxFinite,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [MyColors.greenColor,MyColors.whiteColor],begin: Alignment.topCenter,end: Alignment.bottomCenter)
        ),
        child: Expanded(child: Text(DietData[data-1]))),
    );
  }
}
