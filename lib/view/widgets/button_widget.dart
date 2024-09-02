import 'package:cartgeek/constants/app_colors.dart';
import 'package:cartgeek/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  String? text;
  Color? backgroundColor;
  Color? textColor;
  double? fontSize;
  IconData? icon;
  ButtonWidget({
    super.key,
    this.text,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(backgroundColor),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon != null
                ? Icon(
                    icon,
                    size: 20,
                    color: AppColors.white,
                  )
                : Container(),
            CustomText(
                text: text ?? 'No Data',
                color: textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.w600),
          ],
        ));
  }
}
