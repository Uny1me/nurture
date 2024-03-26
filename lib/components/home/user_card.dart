import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nurture/components/text_widget.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
            text: 'Hello User,',
            fontWeight: FontWeight.w600,
          ),
          Icon(
            CupertinoIcons.profile_circled,
            size: 30,
            color: Colors.deepPurpleAccent,
          )
        ],
      ),
    );
  }
}
