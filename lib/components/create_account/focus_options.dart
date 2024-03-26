import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:nurture/components/button.dart';
import 'package:nurture/components/text_widget.dart';
import 'package:nurture/config.dart';
import 'package:nurture/library/onboarding.dart';

class FocusOptions extends StatefulWidget {
  final void Function(int) navigate;
  const FocusOptions({super.key, required this.navigate});

  @override
  State<FocusOptions> createState() => _FocusOptionsState();
}

class _FocusOptionsState extends State<FocusOptions> {
  bool optionsSelected = false;
  bool animationFinished = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: 'So what would you like to focus on, name?',
              fontSize: 18,
              textAlign: TextAlign.center,
              color: GlobalStyle().primaryColor,
              fontWeight: FontWeight.w900,
              textVariant: TextVariant.header,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/icons/moon.png',
                  width: 25,
                ),
                const SizedBox(
                  width: 5,
                ),
                const TextWidget(
                  text: 'Sleep and Wellbeing',
                  fontSize: 16,
                  color: Color(0xff721919),
                  fontWeight: FontWeight.w600,
                  textVariant: TextVariant.header,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: List.generate(sleepAndWellbeing.length, (index) {
                return Container(
                    // width: 68,
                    height: 36,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: GlobalStyle().blackColor),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: TextWidget(
                      text: sleepAndWellbeing[index],
                      color: GlobalStyle().blackColor,
                      fontSize: 14,
                    ));
              }),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icons/mind.png',
                  width: 25,
                ),
                const SizedBox(
                  width: 5,
                ),
                const TextWidget(
                  text: 'Life challenges & Mental health',
                  fontSize: 16,
                  color: Color(0xff721919),
                  fontWeight: FontWeight.w600,
                  textVariant: TextVariant.header,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: List.generate(lifeChallenges.length, (index) {
                return Container(
                    height: 36,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: GlobalStyle().blackColor),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: TextWidget(
                      text: lifeChallenges[index],
                      color: GlobalStyle().blackColor,
                      fontSize: 14,
                    ));
              }),
            ),
            const SizedBox(
              height: 16,
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
            onTap: () => widget.navigate(2),
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
                          text: ' You’re not alone.👫🏻',
                          color: Color(0xff6E4EB1), // Use your desired color
                          fontWeight: FontWeight.w600,
                          textVariant: TextVariant.header,
                          fontSize: 20,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextWidget(
                          text: 'Our community is here to help you explore your path of personal growth.',
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
                                  fontFamily: 'Croogla4F',
                                  fontSize: 14,
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
