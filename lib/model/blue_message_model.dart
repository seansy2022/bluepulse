import 'dart:async';

class Data {
  final c = StreamController<double>();
  late Timer timer;
  int index = 0;
  final List<double> datas = [
    ...list_time1,
    ...list_time2,
    ...list_time3,
    ...list_time4
  ];

  Stream<double> stream() async* {
    while (true) {
      await Future.delayed(Duration(milliseconds: 300));
      yield datas[index].toDouble();
      index = (index >= datas.length - 1) ? 0 : index + 1;
    }
  }
}

final List<double> list_time1 = [
  0.01,
  0.07,
  0.1,
  0.2,
  0.4,
  0.6,
  0.85,
  1.1,
  1.4,
  1.5
];
final List<double> list_time2 = [
  1.5,
  1.3,
  1.1,
  0.9,
  0.8,
  0.7,
  0.85,
  0.9,
  1.1,
  1.2
];
final List<double> list_time3 = [
  1.2,
  1.0,
  0.8,
  0.7,
  0.4,
  0.44,
  0.46,
  0.47,
  0.48,
  0.5
];
final List<double> list_time4 = [
  0.5,
  0.45,
  0.4,
  0.3,
  0.2,
  0.15,
  0.1,
  0.05,
  0.025,
  0
];
