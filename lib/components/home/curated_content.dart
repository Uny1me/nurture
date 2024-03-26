import 'package:flutter/material.dart';
import 'package:nurture/components/text_widget.dart';
import 'package:nurture/config.dart';
import 'package:nurture/library/mock_data.dart';

class CuratedContent extends StatefulWidget {
  const CuratedContent({Key? key}) : super(key: key);

  @override
  CuratedContentState createState() => CuratedContentState();
}

class CuratedContentState extends State<CuratedContent> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
            text: 'Made for you',
            letterSpacing: 0.2,
            color: GlobalStyle().blackColor,
            textVariant: TextVariant.header,
            fontSize: 18,
          ),
          const TextWidget(textVariant: TextVariant.header, text: 'View all', fontSize: 14),
        ],
      ),
      const SizedBox(
        height: 8,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: curatedContent.map((content) {
            final Object? iconObject = contentIcons.firstWhere((element) => element['name'] == content['type'])['icon'];

            return Container(
              margin: const EdgeInsets.only(right: 4),
              width: 120,
              height: 160,
              child: Card(
                elevation: 0,
                color: const Color(0x19FFD2CF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Stack(children: [
                      Image.asset(
                        content['image'],
                        colorBlendMode: BlendMode.darken,
                        color: Colors.black26,
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        top: 0,
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 6),
                          child: iconObject as Widget,
                        ),
                      )
                    ]),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          TextWidget(
                            text: content['name'],
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          // Im
                          TextWidget(
                            textAlign: TextAlign.center,
                            text: '${content['author']}',
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      )
    ]);
  }
}
