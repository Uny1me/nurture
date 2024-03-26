import 'package:flutter/material.dart';
import 'package:nurture/components/home/curated_content.dart';
import 'package:nurture/components/home/daily_check_in.dart';
import 'package:nurture/components/home/top_therapists.dart';
import 'package:nurture/components/home/user_card.dart';

class ForYou extends StatefulWidget {
  const ForYou({Key? key}) : super(key: key);

  @override
  ForYouState createState() => ForYouState();
}

class ForYouState extends State<ForYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: const Column(
              children: [
                UserCard(),
                DailyCheckIn(),
                SizedBox(
                  height: 40,
                ),
                TopTherapists(),
                SizedBox(
                  height: 20,
                ),
                CuratedContent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
