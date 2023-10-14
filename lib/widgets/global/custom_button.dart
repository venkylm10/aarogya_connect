import 'package:aarogya_connect/globals/colors.dart';
import 'package:aarogya_connect/globals/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;
  const CustomButton({
    super.key,
    required this.label,
    this.height,
    this.margin,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 60,
        margin: margin,
        decoration: BoxDecoration(
          color: MyColors.orangeColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            label,
            style: MyStyles.subHeadingStyle.copyWith(
              fontSize: 15,
              color: MyColors.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
