import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatelessWidget {
  static const id = "/home/contact_us";
  ContactUsScreen({super.key});

  Uri dialNumber = Uri(scheme: 'tel', path: '8168344745');

  callNumber() async {
    await launchUrl(dialNumber);
  }

  directCall() async {
    await FlutterPhoneDirectCaller.callNumber('8168344745');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
      ),
      child: Wrap(
        children: <Widget>[
          
          Row(
            children: [
              Expanded(child: SizedBox()),
              Container(
                color:MyColors.greyColor,
                height: 2,
                width: 100,
              ),
              Expanded(child: SizedBox()),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 30),),
          GestureDetector(
            onTap: () {
              callNumber();
            },
            child: Container(
              height: 55,
              margin: EdgeInsets.only(top:20,left: 20,right: 20,bottom: 10),
              decoration: BoxDecoration(
                  color: MyColors.homeTileColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: MyColors.orangeColor)),
              padding: EdgeInsets.all(10),
              child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: 20,),
                    Image.asset(
                      AssetConstants.phone,
                      height: 35,
                      fit: BoxFit.contain,
                    ),
                    Expanded(child: SizedBox()),
                    Text("Call Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    Expanded(child: SizedBox()),
                  ]),
            ),
          ),
          Container(
            height: 55,
            margin: EdgeInsets.only(top:10,left: 20,right: 20,bottom: 10),
            decoration: BoxDecoration(
                color: MyColors.homeTileColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: MyColors.orangeColor)),
            padding: EdgeInsets.all(10),
            child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 20,),
                  Image.asset(
                    AssetConstants.email,
                    height: 35,
                    fit: BoxFit.contain,
                  ),
                  Expanded(child: SizedBox()),
                  Text("Email Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                  Expanded(child: SizedBox()),
                ]),
          ),
          Container(
            height: 160,
            margin:EdgeInsets.only(top:10,left: 20,right: 20,bottom: 70),
            
            decoration: BoxDecoration(
                color: MyColors.homeTileColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: MyColors.orangeColor)),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                    
                    children: [
                      SizedBox(width: 20,),
                      Image.asset(
                        AssetConstants.postBox,
                        height: 36,
                        fit: BoxFit.contain,
                      ),
                      Expanded(child: SizedBox()),
                      Text("Post Address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                      Expanded(child: SizedBox()),
                    ]),
                    Padding(padding: EdgeInsets.only(top: 20)),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20,top: 10),
                  child: Center(child: Text('Dihing hostel,IIT Guwahati, Amingaon, North Guwahati, Guwahati, Assam 781039',style: TextStyle(fontWeight: FontWeight.w500),)),
                )    
              ],
            ),
          ),
        ],
      ),
    );
  }
}
