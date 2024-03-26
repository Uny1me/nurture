import 'package:flutter/material.dart';
import 'package:nurture/components/button.dart';
import 'package:nurture/components/main_app_bar.dart';
import 'package:nurture/components/text_widget.dart';
import 'package:nurture/config.dart';
import 'package:nurture/library/self.dart';
import 'package:nurture/utils/index.dart';

class SelfHelp extends StatefulWidget {
  const SelfHelp({Key? key}) : super(key: key);

  @override
  SelfHelpState createState() => SelfHelpState();
}

class SelfHelpState extends State<SelfHelp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(title: 'Self Help'),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // Todo: add random health quotes api here, it should change maybe every five seconds

            TextWidget(
              textAlign: TextAlign.center,
              text: '“The best health care plan is a self-care plan.” - Nina Leaving',
              fontSize: 16,
              textVariant: TextVariant.header,
              color: GlobalStyle().primaryColor,
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: selfHelpScreen
                  .map((e) => Card(
                        elevation: 3,
                        shadowColor: Colors.black45,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(16.0),
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 200,
                                    child: TextWidget(
                                      text: e['title'],
                                      color: GlobalStyle().blackColor,
                                      fontSize: 18,
                                      letterSpacing: 0.1,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                      width: 200,
                                      child: TextWidget(
                                        fontWeight: FontWeight.w300,
                                        text: e['description'],
                                      )),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Button(
                                      fontSize: 14,
                                      textColor: const Color(0xff8A342F),
                                      text: e['button'],
                                      backgroundColor: Colors.white,
                                      variant: ButtonVariant.outlined,
                                      verticalPadding: 10,
                                      horizontalPadding: 30,
                                      onPressed: () => {
                                            // print((e['route'] as Widget).runtimeType)
                                            navigateBottomNav(e['route'] as Widget, context)
                                          })
                                ],
                              ),
                              Image.asset(e['image'])
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
