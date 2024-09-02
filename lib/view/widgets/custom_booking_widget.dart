import 'package:cartgeek/constants/app_colors.dart';
import 'package:cartgeek/view/widgets/custom_text.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CurrentBookingWidget extends StatelessWidget {
  Size? size;
  String? date;
  String? time;
  String? text;
  CurrentBookingWidget({
    super.key,
    this.size,
    this.date,
    this.time,
    this.text
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: text),
        SizedBox(
          height: size!.height * 0.01,
        ),
        Row(
          children: [
            const Icon(
              EneftyIcons.calendar_2_outline,
              size: 20,
              color: AppColors.lightPink,
            ),
            const SizedBox(
              width: 3,
            ),
            CustomText(text: date),
          ],
        ),
        SizedBox(
          height: size!.height * 0.01,
        ),
        Row(
          children: [
            const Icon(
              EneftyIcons.timer_2_outline,
              size: 20,
              color: AppColors.lightPink,
            ),
            const SizedBox(
              width: 3,
            ),
            CustomText(text: time),
          ],
        ),
      ],
    );
  }
}
