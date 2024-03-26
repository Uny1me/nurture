import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final Color color;
  final String text;
  final double letterSpacing;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final String textCase;
  final TextDecoration textDecoration;
  final FontStyle style;
  final TextVariant textVariant;

  const TextWidget(
      {super.key,
      this.textVariant = TextVariant.paragraph,
      this.color = const Color(0xff2d2935),
      required this.text,
      this.letterSpacing = 0,
      this.fontSize = 16,
      this.fontWeight = FontWeight.normal,
      this.textAlign = TextAlign.start,
      this.textCase = 'normal',
      this.textDecoration = TextDecoration.none,
      this.style = FontStyle.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      textCase == 'uppercase' ? text.toUpperCase() : text,
      style: textVariant == TextVariant.paragraph
          ? GoogleFonts.lato(
              textStyle: TextStyle(
              color: color,
              letterSpacing: letterSpacing,
              decoration: textDecoration,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: FontStyle.normal,
            ))
          : TextStyle(
              fontStyle: FontStyle.normal,
              color: color,
              letterSpacing: letterSpacing,
              fontSize: fontSize,
              fontFamily: 'Croogla4F',
            ),
    );
  }
}

enum TextVariant {
  header,
  paragraph,
}
