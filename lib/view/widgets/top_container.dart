import 'package:cartgeek/constants/app_colors.dart';
import 'package:cartgeek/view/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.lightPink,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nanny and\nBaby Sitting Service',
              style: GoogleFonts.lato(
                  color:AppColors.darkViolet,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 25,
              width: 130,
              child: ButtonWidget(
                text: 'Book Now',
                textColor: Colors.white,
                backgroundColor: AppColors.darkBlue,
              ),
            )
          ],
        ),
      ),
    );
  }
}