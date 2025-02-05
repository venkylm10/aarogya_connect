import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/constants.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:aarogya_connect/utils/appbar.dart';
import 'package:aarogya_connect/utils/back_button.dart';
import 'package:aarogya_connect/utils/loader.dart';
import 'package:aarogya_connect/utils/snackbar.dart';
import 'package:aarogya_connect/widgets/global/custom_button.dart';
import 'package:aarogya_connect/widgets/global/custom_drop_down.dart';
import 'package:aarogya_connect/widgets/global/custom_text_field.dart';
import 'package:flutter/material.dart';

class VolunteerScreen extends StatefulWidget {
  static const id = "/home/volunteer";
  const VolunteerScreen({super.key});

  @override
  State<VolunteerScreen> createState() => _ComplaintScreenState();
}

class _ComplaintScreenState extends State<VolunteerScreen> {
  final nameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final descriptionController = TextEditingController();
  final roleController = TextEditingController();
  String ngo = "";
  String role = "";
  bool showRoleSpecify = false;
  bool loading = false;

  var ngos = [
    "CRY (Child Rights and You)",
    "Swasth Foundation",
    "Rural Health Care Foundation (RHCF)",
    "Aravind Eye Care System",
    "Salaam Baalak Trust",
  ];

  var roles = [
    "Distrubutor",
    "Transport support",
    "Other",
  ];

  void updateRole(String? val) {
    role = val!;
    if (role == roles.last) {
      setState(() {
        showRoleSpecify = true;
      });
    } else {
      setState(() {
        showRoleSpecify = false;
      });
    }
  }

  void onSubmit(
    String name,
    String phoneNumber,
    String ngo,
    String role,
    String description,
  ) async {
    var check = validate(name, phoneNumber, ngo, role, description);
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      loading = false;
    });
    if (check) {
      //TODO: further submission
    } else {
      return;
    }
  }

  bool validate(
    String name,
    String phoneNumber,
    String ngo,
    String role,
    String description,
  ) {
    setState(() {
      loading = true;
    });
    if (name.isEmpty ||
        phoneNumber.isEmpty ||
        ngo.isEmpty ||
        role.isEmpty ||
        description.isEmpty) {
      showSnackBar(context, "! Please enter all the files");
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: buildAppbar(AssetConstants.volunteer, "Volunteering"),
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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              if (loading) loader,
              Padding(
                padding: const EdgeInsets.all(16),
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
                      labelText: "Mobile",
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 10),
                    CustomDropDown(
                      items: ngos,
                      onChanged: (val) {
                        ngo = val!;
                      },
                      labelText: "Select NGO",
                    ),
                    const SizedBox(height: 10),
                    CustomDropDown(
                      items: roles,
                      onChanged: updateRole,
                      labelText: "Select role",
                    ),
                    const SizedBox(height: 10),
                    if (showRoleSpecify)
                      CustomTextField(
                        controller: roleController,
                        labelText: "Specify role",
                        onChange: (val) {},
                      ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      controller: descriptionController,
                      hintText: "Previous volunteering work (if any)",
                      maxLines: 5,
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () => onSubmit(
          nameController.text,
          phoneNumberController.text,
          ngo,
          role,
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
