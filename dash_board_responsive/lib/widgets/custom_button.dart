import 'package:dash_board_responsive/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.Title, this.backgroundColor, this.textColor});

  final String Title;
  final Color? backgroundColor, textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor ?? Color(0xff4DB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(
          Title,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
