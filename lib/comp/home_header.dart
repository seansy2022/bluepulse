import 'package:bluesun/comp/heat.dart';
import 'package:bluesun/help_style.dart';
import 'package:flutter/material.dart';

class HomeHead extends StatefulWidget {
  const HomeHead({Key? key}) : super(key: key);

  @override
  State<HomeHead> createState() => _HomeHeadState();
}

Widget heartAnmtion() {
  return Heat();
}

Widget heartMessage() {
  final topConts = [
    _ContentModel('k', '10', '%', "ads"),
    _ContentModel('k', '10', '%', "ads"),
    _ContentModel('k', '10', '%', "ads"),
  ];
  final bottomConts = [
    _ContentModel('k', '10', '%', "ads"),
    _ContentModel('k', '10', '%', "ads"),
  ];
  return Column(
    children: [
      Container(
        decoration: HelpStyle.decoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...topConts.map((cont) =>
                messageItem(cont.title, cont.message, cont.unit, cont.describe))
          ],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...bottomConts.map((cont) => Expanded(
                  child: Container(
                margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
                decoration: HelpStyle.decoration,
                child: messageItem(
                    cont.title, cont.message, cont.unit, cont.describe),
              )))
        ],
      )
    ],
  );
}

Widget messageItem(
  String title,
  String content,
  String unit,
  String describe,
) {
  return Column(
    children: [
      Row(
        children: [
          Text(
            title,
            style: HelpStyle.titleStyle3,
          )
        ],
      ),
      SizedBox(height: HelpStyle.cellMargin),
      RichText(
          text: TextSpan(
        text: content,
        style: HelpStyle.titleStyle3,
        children: [
          TextSpan(text: " "),
          TextSpan(text: unit, style: HelpStyle.smallStyle),
        ],
      ))
    ],
  );
}

class _HomeHeadState extends State<HomeHead> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: heartMessage()),
        Expanded(child: heartAnmtion()),
      ],
    );
  }
}

class _ContentModel {
  final String title;
  final String message;
  final String unit;
  final String describe;

  _ContentModel(this.title, this.message, this.unit, this.describe);
}
