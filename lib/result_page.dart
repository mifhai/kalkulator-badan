import 'package:badan_calculator/bottom_button.dart';
import 'package:badan_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.calTitle,
      @required this.calNumber,
      @required this.calDesc});

  final String calTitle;
  final String calNumber;
  final String calDesc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Hasil Perhitungan',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: activeColorCard,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      calTitle.toUpperCase(),
                      style: kTitleResult,
                    ),
                    Text(
                      calNumber,
                      style: kNumberResult,
                    ),
                    Text(
                      calDesc,
                      style: kDescriptionResult,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              title: 'HITUNG ULANG',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
