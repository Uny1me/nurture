import 'package:flutter/material.dart';
import 'package:nurture/components/text_widget.dart';
import 'package:nurture/config.dart';
import 'package:nurture/library/mock_data.dart';

class TopTherapists extends StatefulWidget {
  const TopTherapists({Key? key}) : super(key: key);

  @override
  TopTherapistsState createState() => TopTherapistsState();
}

class TopTherapistsState extends State<TopTherapists> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
            text: 'Top Therapists',
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
          children: topTherapists.map((therapist) {
            return Container(
              margin: const EdgeInsets.only(right: 4),
              width: 120,
              height: 170,
              child: Card(
                elevation: 0,
                color: const Color(0x19FFD2CF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(color: Color(0xFFBFBCC9), width: 0.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Stack(children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(therapist['image']), // Replace with your image path
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(120),
                              border: Border.all(color: const Color(0xFF6E4EB1)),
                              color: const Color(0xFFF3E1FF),
                            ),
                            child: TextWidget(
                              text: '${therapist['rating']}',
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                            ),
                          ),
                        )
                      ]),
                      const SizedBox(
                        height: 10,
                      ),
                      TextWidget(
                        text: therapist['name'],
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      // Im
                      TextWidget(
                        textAlign: TextAlign.center,
                        text: therapist['role'],
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      )
    ]);
  }
}
