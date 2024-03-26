import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nurture/components/button.dart';
import 'package:nurture/components/custom_app_bar.dart';
import 'package:nurture/components/text_widget.dart';
import 'package:nurture/config.dart';
import 'package:nurture/library/date.dart';
import 'package:nurture/library/emotions.dart';

class MoodCheckIn extends StatefulWidget {
  const MoodCheckIn({Key? key}) : super(key: key);

  @override
  MoodCheckInState createState() => MoodCheckInState();
}

class MoodCheckInState extends State<MoodCheckIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppBar(title: 'Mood Check In'),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(16),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TextWidget(
                    text: 'Daily Mood Check in',
                    textVariant: TextVariant.header,
                    color: GlobalStyle().primaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // calendar start
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Color(0x66CBBFE6), Color(0x195B24CE)],
                      ),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 2, color: Color(0x7F6F11E8)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(
                          text: DateFormat.yMMMMd().format(DateTime.now()),
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: weekDaysAbbr
                                      .map((e) => SizedBox(
                                          // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                                          width: 38,
                                          child: TextWidget(
                                            text: e,
                                            textAlign: TextAlign.center,
                                          )))
                                      .toList(),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: emotionsAbbr
                                      .map((e) => Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFFD2CF),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(32),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0x19AF6D6D),
                                                blurRadius: 4,
                                                offset: Offset(0, 4),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                          child: TextWidget(text: e)))
                                      .toList(),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  // calendar end
                  const SizedBox(
                    height: 20,
                  ),

                  TextWidget(
                    textAlign: TextAlign.center,
                    fontSize: 14,
                    text:
                        'Checking in your mood daily  can give you valuable insights of what puts you in that mood. ${AppInformation.appDisplayName} would help you keep track of how you are feeling and recommend resources that resonates with you',
                  )
                ]),
              ),
            ),
            Positioned(
                bottom: 25,
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    width: MediaQuery.of(context).size.width,
                    child: Button(text: 'Check In', fontWeight: FontWeight.w600, onPressed: () => {})))
          ],
        ));
  }
}
