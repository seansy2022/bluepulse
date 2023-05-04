import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Heat extends StatefulWidget {
  const Heat({Key? key}) : super(key: key);

  @override
  State<Heat> createState() => _HeatState();
}

class _HeatState extends State<Heat> with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _controller2;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat(reverse: true);
    _controller2 =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = Tween(begin: 30.0, end: 40.0).animate(_controller);
    final height1 = Tween(begin: 60.0, end: 80.0).animate(_controller2);
    final a = Tween(begin: 255, end: 0).animate(_controller2);
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          print(a is double);
          return Center(
            child: Container(
              width: height1.value,
              height: height1.value,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  // color: Colors.green,
                  border: Border.all(
                      color: Color.fromARGB(255, 255, 0, 0), width: 2)),
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          // color: Colors.green,
                          border: Border.all(color: Colors.red, width: 2)),
                      child: Center(
                        child: Container(
                          height: height.value,
                          width: height.value,
                          child: SvgPicture.asset(
                            'assets/heart-icon.svg',
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        child: Text("data"),
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
