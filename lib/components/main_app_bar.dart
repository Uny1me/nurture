import 'package:flutter/material.dart';
import 'package:nurture/components/text_widget.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double elevation;
  final Color backgroundColor;

  const MainAppBar({
    Key? key,
    required this.title,
    this.backgroundColor = Colors.white,
    this.elevation = 0.8,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.black,
      elevation: elevation,
      leading: null,
      automaticallyImplyLeading: false,
      title: Container(
          padding: const EdgeInsets.symmetric(vertical: 11),
          child: Center(
            child: TextWidget(
              text: title,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          )),
      centerTitle: false,
      backgroundColor: backgroundColor,
    );
  }
}
