import 'package:flutter/material.dart';
import 'package:nurture/components/text_widget.dart';
import 'package:nurture/screens/daily_check_in.dart';
import 'package:nurture/utils/index.dart';

class DailyCheckIn extends StatelessWidget {
  const DailyCheckIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navigateNoBottomNav(const MoodCheckIn(), context),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 88,
        padding: const EdgeInsets.all(8),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
            color: const Color(0x33F3E1FF),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 2, color: Color(0x336E4EB1)),
              borderRadius: BorderRadius.circular(8),
            )),
        child: Row(
          children: [
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xFFF3E1FF)),
              child: Image.asset(
                'assets/icons/smiley.png',
                width: 24,
                height: 24,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(
                    text: 'Daily mood check-ins',
                    fontSize: 12,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  TextWidget(
                    text: 'How are you feeling today?',
                    fontSize: 16,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            Container(
              width: 26,
              height: 26,
              // color: Color(0xff6E4EB1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xff6E4EB1),
              ),
              child: IconButton(
                  color: Colors.white,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 12,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
