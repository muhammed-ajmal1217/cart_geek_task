import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  String? text;
  double? fontSize;
  Color? color;
  FontWeight? fontWeight;

  CustomText({
    super.key,
    this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? 'No Data',
      style: GoogleFonts.lato(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}