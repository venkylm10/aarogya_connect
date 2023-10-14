import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:aarogya_connect/utils/back_button.dart';
import 'package:aarogya_connect/widgets/global/custom_button.dart';
import 'package:aarogya_connect/widgets/global/custom_drop_down.dart';
import 'package:aarogya_connect/widgets/global/custom_text_field.dart';
import 'package:flutter/material.dart';

class ComplaintScreen extends StatefulWidget {
  static const id = "/home/complaints";
  const ComplaintScreen({super.key});

  @override
  State<ComplaintScreen> createState() => _ComplaintScreenState();
}

class _ComplaintScreenState extends State<ComplaintScreen> {
  final nameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final descriptionController = TextEditingController();
  String category = "";

  var complaints = [
    "Corruption",
    "NGOs",
    "Sexual Abuse",
    "Descrimination",
  ];

  void onSubmit(String name, String phoneNumber, String description) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.greenColor,
        titleSpacing: 0,
        title: Row(
          children: [
            Image.asset(AssetConstants.complaints, height: 30),
            const SizedBox(width: 10),
            Text(
              "Complaint",
              style: MyStyles.subHeadingStyle,
            ),
          ],
        ),
        leading: backButton,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
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
          children: [
            const SizedBox(height: 10),
            CustomTextField(
              controller: nameController,
              labelText: "Name",
            ),
            const SizedBox(height: 10),
            CustomTextField(
              controller: phoneNumberController,
              labelText: "mobile",
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 10),
            CustomDropDown(
              items: complaints,
              onChanged: (val) {
                category = val!;
              },
              labelText: "Select category",
            ),
            const SizedBox(height: 10),
            CustomTextField(
              controller: descriptionController,
              hintText: "Description",
              maxLines: 5,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () => onSubmit(
          nameController.text,
          phoneNumberController.text,
          descriptionController.text,
        ),
        child: CustomButton(
          label: "Submit",
          margin: const EdgeInsets.all(20).copyWith(bottom: 30),
        ),
      ),
    );
  }
}
