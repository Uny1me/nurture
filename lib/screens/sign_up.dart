import 'package:flutter/material.dart';
import 'package:nurture/components/button.dart';
import 'package:nurture/components/text_widget.dart';
import 'package:nurture/config.dart';
import 'package:nurture/screens/create_account.dart';
import 'package:lottie/lottie.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          color: const Color(0xffFEFDFF),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
            Center(
              child: Lottie.asset('assets/illustrations/lottie.json'),
            ),
            const SizedBox(
              height: 40,
            ),
            const TextWidget(
              fontSize: 16,
              textAlign: TextAlign.center,
              text: 'With a community  of people who share your views, you will never feel alone.',
              // fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
                width: double.infinity,
                child: Button(
                    text: 'Create an account',
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateAccount())))),
            const SizedBox(
              height: 10,
            ),
            // const Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Expanded(
            //       child: Divider(
            //         color: Colors.black,
            //         height: 1,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 12,
            //     ),
            //     TextWidget(text: 'Or'),
            //     SizedBox(
            //       width: 12,
            //     ),
            //     Expanded(
            //       child: Divider(
            //         color: Colors.black,
            //         height: 1,
            //       ),
            //     ),
            //   ],
            // ),

            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: double.infinity,
                child: Button(
                    text: 'Sign In',
                    variant: ButtonVariant.outlined,
                    backgroundColor: Colors.white,
                    textColor: GlobalStyle().primaryColor,
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateAccount())))),
            const SizedBox(
              height: 15,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     const TextWidget(text: 'Already a member ? '),
            //     TextWidget(
            //       text: 'Sign in here',
            //       color: GlobalStyle().primaryColor,
            //     )
            //   ],
            // )
          ]),
        ),
      ),
    );
  }
}
