import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:nurture/components/button.dart';
import 'package:nurture/components/text_widget.dart';
import 'package:nurture/config.dart';
import 'package:nurture/screens/home.dart';

class Resources extends StatefulWidget {
  final void Function(int) navigate;
  const Resources({super.key, required this.navigate});

  @override
  State<Resources> createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
  bool optionsSelected = false;
  bool animationFinished = false;

  bool freethinkingSwitchValue = false;
  bool relationshipsSwitchValue = false;
  bool spiritualSwitchValue = false;

  List<Map<String, dynamic>> options = [
    {"name": "Freethinking", "selected": false},
    {"name": "Relationships", "selected": false},
    {"name": "Spiritual", "selected": false},
    {"name": "New Age", "selected": false},
    {"name": "Religion", "selected": false},
    {"name": "Work", "selected": false},
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: ' We have created specialised content just for you.',
              fontSize: 20,
              textAlign: TextAlign.center,
              textVariant: TextVariant.header,
              color: GlobalStyle().primaryColor,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(
              height: 15,
            ),
            const TextWidget(
                textAlign: TextAlign.center,
                fontSize: 15,
                text: 'A variety of videos and articles  posted for you to choose from. You can turn of any teachings that doesn\'t intrigue you.'),
            const SizedBox(
              height: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: options.map((switchData) {
                return buildSwitch(
                  switchData["name"],
                  switchData["selected"],
                  (value) {
                    setState(() {
                      switchData["selected"] = value;
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(
              height: 200,
            ),
            SizedBox(
              width: double.infinity,
              child: Button(
                  text: 'Continue',
                  horizontalPadding: 24,
                  verticalPadding: 16,
                  onPressed: () => setState(() {
                        optionsSelected = true;
                      })),
            ),
          ],
        ),
        if (optionsSelected)
          InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen())),
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 450,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        TextWidget(
                          text: 'All set and ready! 👍',
                          color: Color(0xff6E4EB1), // Use your desired color
                          fontWeight: FontWeight.w600,
                          textVariant: TextVariant.header,
                          fontSize: 20,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextWidget(
                          text:
                              'Our guided meditations, yoga, and music playlists are designed to help you be your best self-in an environment that helps you relax and unwind.',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                        child: Stack(
                          children: [
                            Visibility(
                              visible: !animationFinished,
                              child: AnimatedTextKit(
                                totalRepeatCount: 3,
                                onFinished: () {
                                  setState(() {
                                    animationFinished = true;
                                  });
                                },
                                animatedTexts: [
                                  FadeAnimatedText(
                                    'Tap to continue',
                                    textStyle: TextStyle(
                                      color: GlobalStyle().primaryColor,
                                      fontSize: 14,
                                      fontFamily: 'Croogla4F',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Visibility(
                              visible: animationFinished,
                              child: Text(
                                'Tap to continue',
                                style: TextStyle(
                                  color: GlobalStyle().primaryColor,
                                  fontSize: 14,
                                  fontFamily: 'Croogla4F',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
      ],
    );
  }
}

Widget buildSwitch(String label, bool value, Function(bool) onChanged) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      TextWidget(
        text: label,
        fontWeight: FontWeight.w500,
      ),
      Switch(
        value: value,
        onChanged: onChanged,
        activeColor: const Color(0xffBFA2FE),
        activeTrackColor: Colors.grey[200],
      ),
    ],
  );
}
