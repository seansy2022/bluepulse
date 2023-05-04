import 'package:bluesun/comp/detail_chart.dart';
import 'package:bluesun/help_style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HelpStyle.backgroundColor,
      appBar: AppBar(
        title: Text("Personal Health Manager"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: CustomScrollView(
          slivers: [
            header(),
            SliverToBoxAdapter(
              child: SizedBox(height: 8),
            ),
            top(),
            SliverToBoxAdapter(child: chart('HKV')),
            SliverToBoxAdapter(child: chart('HKV')),
            SliverToBoxAdapter(child: chart('HKV')),
            SliverToBoxAdapter(child: chart('HKV')),
            SliverToBoxAdapter(child: chart('HKV')),
            SliverToBoxAdapter(child: chart('HKV')),
          ],
        ),
      ),
    );
  }

  SliverGrid header() {
    return SliverGrid(
        delegate: SliverChildBuilderDelegate((BuildContext c, int index) {
          return headerItem();
        }, childCount: 4),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 4, mainAxisSpacing: 4));
  }

  SliverGrid top() {
    return SliverGrid(
        delegate: SliverChildBuilderDelegate((BuildContext c, int index) {
          return headerItem();
        }, childCount: 6),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ));
  }

  Widget headerItem() {
    return Container(
      decoration: HelpStyle.decoration,
      child: Column(
        children: [Text("UT"), Text("40")],
      ),
    );
  }

  Widget chart(String title) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
      padding: EdgeInsets.only(top: 12, left: 12, bottom: 12, right: 12),
      decoration: HelpStyle.decoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
          ),
          SizedBox(height: 4),
          DetailChart(
            aspectRatio: 4,
            spots: [
              FlSpot(0, 0),
              FlSpot(1, 1),
              FlSpot(3, 2),
            ],
          )
        ],
      ),
    );
  }
}
