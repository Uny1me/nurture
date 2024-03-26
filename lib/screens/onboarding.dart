import 'package:flutter/material.dart';
import 'package:nurture/components/button.dart';
import 'package:nurture/components/text_widget.dart';
import 'package:nurture/config.dart';
import 'package:nurture/screens/sign_up.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  OnboardingState createState() => OnboardingState();
}

class OnboardingState extends State<Onboarding> {
  final controller = PageController();

  final List<dynamic> screenText = [
    {
      "title": 'Track your mood and mental wellbeing',
      "description":
          'Give yourself a break from the tension and stress of your day with smarter self-tracking. Track your mood and mental well-being, find out how you’re doing.'
    },
    {
      "title": "Book a therapist  on your budget",
      "description":
          "Psychotherapy is a wonderful way to get over these issues and make progress in life. We have compiled a list of top psychotherapists who charge pocket-friendly rates in Nigeria.",
    },
    {
      "title": "Chat with friends in support groups your budget",
      "description":
          "Chat with friends in support groups about topics that relate to the issues you're dealing with. Receive encouragement, advice and more from the people who understand what you're going through."
    }
  ];

  String title = 'Track your mood and mental wellbeing';
  String description =
      'Give yourself a break from the tension and stress of your day with smarter self-tracking. Track your mood and mental well-being, find out how you’re doing.';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            title = screenText[index]['title'];
            description = screenText[index]['description'];
          });
        },
        controller: controller,
        children: [
          Image.asset(
            'assets/images/onboard-1.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/onboard-2.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/onboard-3.jpg',
            fit: BoxFit.cover,
          ),
        ],
      ),
      bottomSheet: Container(
        decoration:
            BoxDecoration(color: const Color.fromRGBO(243, 225, 255, 1).withOpacity(0.05), borderRadius: const BorderRadius.all(Radius.circular(20))),
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        height: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: title,
              textVariant: TextVariant.header,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: GlobalStyle().blackColor,
            ),
            const SizedBox(
              height: 10,
            ),
            TextWidget(
              text: description,
              fontSize: 14,
              color: GlobalStyle().blackColor,
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                onDotClicked: (index) => controller.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut),
                effect: ScrollingDotsEffect(
                    dotColor: GlobalStyle().primaryColor.withOpacity(0.3),
                    spacing: 24,
                    dotWidth: 10,
                    dotHeight: 10,
                    activeDotColor: GlobalStyle().primaryColor),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: double.infinity,
                child: Button(
                    text: 'Next',
                    fontSize: 16,
                    onPressed: () {
                      if (controller.page == 2.0) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));
                      }
                      controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
                    })),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: double.infinity,
                child: Button(
                    backgroundColor: Colors.transparent,
                    text: 'Skip',
                    fontSize: 16,
                    textColor: GlobalStyle().primaryColor,
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp())))),
          ],
        ),
      ),
    );
  }
}
