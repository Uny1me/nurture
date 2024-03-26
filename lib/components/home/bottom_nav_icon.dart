import 'package:flutter/widgets.dart';
import 'package:nurture/components/text_widget.dart';

class BottomNavIcon extends StatelessWidget {
  final bool active;
  final Widget icon;
  final String text;
  final double topSpacing;
  final double middleSpacing;
  final double imageWidth;

  const BottomNavIcon({
    Key? key,
    required this.active,
    required this.icon,
    this.topSpacing = 5.0,
    this.middleSpacing = 5.0,
    this.imageWidth = 22.0,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          const SizedBox(
            height: 0,
          ),
          icon,
          SizedBox(
            height: middleSpacing,
          ),
          TextWidget(
            text: text,
            color: active ? const Color(0xff191919) : const Color(0xffa8a8a8),
            fontSize: 11,
          ),
        ],
      ),
    );
  }
}
