import 'package:flutter/material.dart';
import 'package:nurture/components/text_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double elevation;
  final Color backgroundColor;
  final bool falseWidget;

  const CustomAppBar({
    Key? key,
    this.falseWidget = true,
    required this.title,
    this.backgroundColor = Colors.white,
    this.elevation = 0.8,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: const [
        TextWidget(
          text: 'spacedrep',
          color: Colors.white,
        )
      ],
      foregroundColor: Colors.black,
      elevation: elevation,
      titleSpacing: 0,
      leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.chevron_left,
            weight: 0.1,
          )),
      title: Container(
        padding: const EdgeInsets.symmetric(vertical: 11),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                  child: TextWidget(
                text: title,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                // textStyle:
                //     const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              )),
            ),
          ],
        ),
      ),
      centerTitle: false,
      backgroundColor: backgroundColor,
    );
  }
}
