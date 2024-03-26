import 'package:flutter/material.dart';
import 'package:nurture/components/text_widget.dart';

class Button extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final bool disabled;
  final Color textColor;
  final ButtonVariant variant;
  final FontWeight fontWeight;
  final VoidCallback onPressed;
  final double elevation;
  final double fontSize;
  final double horizontalPadding;
  final double verticalPadding;
  final String textCase;
  final TextVariant textVariant;
  const Button(
      {super.key,
      this.textVariant = TextVariant.paragraph,
      this.textCase = 'normal',
      required this.text,
      this.backgroundColor = const Color(0xffb49cdc),
      this.textColor = Colors.white,
      this.fontWeight = FontWeight.w900,
      this.variant = ButtonVariant.contained,
      required this.onPressed,
      this.elevation = 0,
      this.fontSize = 16,
      this.verticalPadding = 16,
      this.horizontalPadding = 10,
      this.disabled = false});

  @override
  Widget build(BuildContext context) {
    final bool isOutlined = variant == ButtonVariant.outlined;

    return ElevatedButton(
      onPressed: disabled ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: isOutlined ? BorderSide(width: 1, color: textColor.withOpacity(0.5)) : BorderSide.none,
        ),
        padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
      ),
      child: TextWidget(
        textCase: textCase,
        fontWeight: fontWeight,
        textVariant: textVariant,
        text: text,
        color: textColor,
        fontSize: fontSize,
      ),
    );
  }
}

enum ButtonVariant {
  contained,
  outlined,
}
