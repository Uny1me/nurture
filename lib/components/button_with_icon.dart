import 'package:flutter/material.dart';
import 'package:nurture/components/text_widget.dart';

class ButtonWithIcon extends StatelessWidget {
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
  final String iconUrl;
  const ButtonWithIcon(
      {super.key,
      this.textCase = 'normal',
      this.iconUrl = '',
      required this.text,
      this.backgroundColor = const Color(0xff845ec2),
      this.textColor = const Color(0xff2d2935),
      this.fontWeight = FontWeight.w500,
      this.variant = ButtonVariant.contained,
      required this.onPressed,
      this.elevation = 0,
      this.fontSize = 16,
      this.verticalPadding = 6,
      this.horizontalPadding = 10,
      this.disabled = false});

  @override
  Widget build(BuildContext context) {
    final bool isOutlined = variant == ButtonVariant.outlined;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: backgroundColor,
      ),
      padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            iconUrl,
            width: 20,
            height: 20,
          ),
          ElevatedButton(
            onPressed: disabled ? null : onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: elevation,
              shape: RoundedRectangleBorder(
                side: isOutlined ? BorderSide(width: 1, color: Color(int.parse('0xff$textColor')).withOpacity(0.5)) : BorderSide.none,
              ),
            ),
            child: TextWidget(
              textCase: textCase,
              fontWeight: fontWeight,
              text: text,
              color: textColor,
              fontSize: fontSize,
            ),
          ),
        ],
      ),
    );
  }
}

enum ButtonVariant {
  contained,
  outlined,
}
