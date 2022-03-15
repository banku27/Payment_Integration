import 'package:flutter/material.dart';
import 'package:payment_integration/components/colors.dart';

class AppButtons extends StatelessWidget {
  final double? fontSize;
  final IconData icon;
  final Function()? onTap;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? textColor;
  final String? text;
  const AppButtons(
      {Key? key,
      this.backgroundColor = AppColor.mainColor,
      this.fontSize = 20,
      required this.icon,
      this.iconColor = Colors.white,
      this.onTap,
      this.text,
      this.textColor = AppColor.mainColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              icon,
              size: 40,
              color: iconColor,
            ),
          ),
          text != null
              ? Text(
                  text!,
                  style: TextStyle(fontSize: 14, color: textColor),
                )
              : Container()
        ],
      ),
    );
  }
}
