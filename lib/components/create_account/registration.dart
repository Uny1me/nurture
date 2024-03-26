import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:nurture/components/button.dart';
import 'package:nurture/components/text_widget.dart';
import 'package:nurture/config.dart';
import 'package:nurture/config.dart';

class RegistrationScreen extends StatefulWidget {
  final void Function(int) navigate;

  const RegistrationScreen({super.key, required this.navigate});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool isFormComplted = false;
  bool animationFinished = false;
  String selectedGender = 'Male';
  List<String> genderOptions = ['Male', 'Female', 'Other'];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: 'Let\'s get you started',
                fontSize: 20,
                color: GlobalStyle().primaryColor,
                fontWeight: FontWeight.w900,
              ),
              const SizedBox(
                height: 5,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextWidget(
                        text: 'First Name',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(height: 4),
                      TextField(
                        onSubmitted: (value) {
                          FocusScope.of(context).unfocus();
                          Logger().d(value);
                        },
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                              color: GlobalStyle().blackColor,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWidget(
                    text: 'Last Name',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(height: 4),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: GlobalStyle().blackColor,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWidget(
                    text: 'Email Address',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(height: 4),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: GlobalStyle().blackColor,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const TextWidget(
                text: 'Select Gender',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: double.infinity, // Set the width to full width

                child: DropdownButton<String>(
                  style: const TextStyle(fontSize: 12),
                  value: selectedGender,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedGender = newValue ?? '';
                    });
                  },
                  items: genderOptions.map((String gender) {
                    return DropdownMenuItem<String>(
                      value: gender,
                      child: TextWidget(text: gender),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWidget(
                    text: 'Password',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(height: 4),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: GlobalStyle().blackColor,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'By tapping get started,you agree to our ',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                color: GlobalStyle().blackColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                // fontStyle: FontStyle.normal,
                              ))),
                          TextSpan(
                            text: 'Terms of Service ',
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              color: GlobalStyle().primaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              // fontStyle: FontStyle.normal,
                            )),
                          ),
                          TextSpan(
                              text: 'and acknowledge you have read our',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                color: GlobalStyle().blackColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                // fontStyle: FontStyle.normal,
                              ))),
                          TextSpan(
                            text: ' Privacy Policy',
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              color: GlobalStyle().primaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              // fontStyle: FontStyle.normal,
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Button(
                        text: 'Get Started',
                        horizontalPadding: 24,
                        verticalPadding: 16,
                        onPressed: () => setState(() {
                              isFormComplted = true;
                            })),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already a member ? ',
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              color: GlobalStyle().blackColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              // fontStyle: FontStyle.normal,
                            )),
                          ),
                          TextSpan(
                            text: 'Sign in here',
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              color: GlobalStyle().primaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              // fontStyle: FontStyle.normal,
                            )),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        if (isFormComplted)
          InkWell(
            onTap: () => widget.navigate(1),
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 450,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        TextWidget(
                          text: 'Welcome to ${AppInformation.appDisplayName} 👋',
                          color: GlobalStyle().primaryColor,
                          fontWeight: FontWeight.w900,
                          textVariant: TextVariant.header,
                          fontSize: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const TextWidget(
                          text: 'Glad we could meet you. Let\'s get to know each other a little better and find out what would be best for you',
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
                                        fontWeight: FontWeight.w500,
                                        color: GlobalStyle().primaryColor,
                                        fontSize: 14,
                                        fontFamily: 'Croogla4F',
                                        letterSpacing: .4),
                                  ),
                                ],
                              ),
                            ),
                            Visibility(
                              visible: animationFinished,
                              child: Text(
                                'Tap to continue',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: GlobalStyle().primaryColor,
                                    fontSize: 14,
                                    fontFamily: 'Croogla4F',
                                    letterSpacing: .4),
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
