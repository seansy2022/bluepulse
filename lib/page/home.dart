import 'package:bluesun/comp/home_bottom.dart';
import 'package:bluesun/help_style.dart';
import 'package:bluesun/page/detail_page.dart';
import 'package:bluesun/comp/home_header.dart';
import 'package:bluesun/page/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HelpStyle.backgroundColor,
      appBar: AppBar(
        title: Text(
          "Pluse Monitioring",
          style: HelpStyle.titleStyle,
        ),
        actions: [
          IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(
                Icons.bluetooth,
                color: Colors.white,
              )),
          IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(
                Icons.ios_share,
                color: Colors.white,
              ))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: ColoredBox(
            color: HelpStyle.cardColor,
            child: GestureDetector(
              child: Center(child: Text("ME")),
              onTap: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (c) => User()));
              },
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          HomeHead(),
          Container(
            decoration: HelpStyle.decoration,
            child: HomeBottom(detailClick: () {
              Navigator.of(context)
                  .push(CupertinoPageRoute(builder: (c) => DetailPage()));
            }),
          ),
        ],
      ),
    );
  }
}
