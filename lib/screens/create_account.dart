import 'package:flutter/material.dart';
import 'package:nurture/components/create_account/focus_options.dart';
import 'package:nurture/components/create_account/registration.dart';
import 'package:nurture/components/create_account/resources.dart';
import 'package:nurture/config.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  int activeIndex = 0; // Initialize activeIndex to 0

  final PageController controller = PageController();

  void navigate(int page) {
    controller.jumpToPage(page);
    setState(() {
      activeIndex = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Center(
          // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(3, (index) {
              return Container(
                width: MediaQuery.of(context).size.width / 3.8,
                height: 4,
                margin: const EdgeInsets.only(left: 5, right: 5),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: index == activeIndex ? GlobalStyle().primaryColor : const Color(0xFFF3E1FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller,
            children: <Widget>[RegistrationScreen(navigate: navigate), FocusOptions(navigate: navigate), Resources(navigate: navigate)],
          ),
        ),
      ),
    );
  }
}
