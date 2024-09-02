import 'package:cartgeek/constants/app_colors.dart';
import 'package:cartgeek/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContainerButton extends StatelessWidget {
  String? text;
  IconData? icon;
   ContainerButton({
    super.key,
    this.text,
    this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.darkBlue,
        borderRadius: BorderRadius.circular(50)),
    
      child: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8,top: 3,bottom: 3),
        child: Row(
          children: [
            Icon(icon,color: AppColors.white,size: 18,),
            const SizedBox(width: 2,),
            CustomText(text: text,color: AppColors.white,fontSize: 12,)
          ],
        ),
      ),
    );
  }
}