import 'package:bluesun/comp/detail_chart.dart';
import 'package:bluesun/help_style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeBottom extends StatefulWidget {
  final VoidCallback detailClick;
  const HomeBottom({Key? key, required this.detailClick}) : super(key: key);

  @override
  State<HomeBottom> createState() => _HomeBottomState();
}

class _HomeBottomState extends State<HomeBottom> {
  final List<double> chartData = [];
  Widget header() {
    return Row(
      children: [
        Text(
          "Heart Rate Curve",
          style: HelpStyle.contextStyle,
        ),
        const Expanded(child: SizedBox()),
        button(
          Text(
            "详情",
            style: HelpStyle.contextStyle,
          ),
          Icon(Icons.list_alt),
          () {
            widget.detailClick();
          },
        ),
        SizedBox(width: 8),
        button(
          Text(
            "刷新",
            style: HelpStyle.contextStyle,
          ),
          Icon(Icons.refresh),
          () {},
        ),
      ],
    );
  }

  Widget button(Widget label, Widget icon, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [icon, label],
      ),
    );
  }

  Widget chart() {
    final spots = chartData
        .asMap()
        .entries
        .map((entry) => FlSpot(entry.key.toDouble(), entry.value))
        .toList();

    final double maxX = spots.length + 10;
    final double minx = maxX - 30;
    return DetailChart(
      aspectRatio: 1,
      spots: spots,
      maxX: maxX,
      minX: minx,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<double>(builder: (_, blue_message, __) {
      print(blue_message);
      chartData.add(blue_message);
      return Column(
        children: [
          header(),
          chart(),
          SizedBox(
            height: 12,
          ),
        ],
      );
    });
  }
}
