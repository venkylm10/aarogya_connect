import 'package:aarogya_connect/pages/home.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          gradient: LinearGradient(
            colors: [Colors.greenAccent,Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Image.asset('assets\images\logo1.png',fit: BoxFit.cover,),
                Image.asset('assets\images\logo2.png',fit: BoxFit.cover,),
              ]),
            ),

            Row(
              children: [
                Text("Mobile Number/",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                Expanded(child: SizedBox()),
              ],
            ),

           
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Text("+91",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.grey,
                    width: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      label: Text("00000 00000"),
                    ),
              
                  )
                ],
              ),
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Text("Login or Sign Up"),
              ),
            )

          ],
        ),
      ),
    );
  }
}