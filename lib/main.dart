import 'package:bluesun/help_style.dart';
import 'package:bluesun/model/blue_message_model.dart';
import 'package:bluesun/page/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

const _themeColor = Colors.blue;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final blue_message = Data();
  runApp(
    MultiProvider(
      providers: [
        StreamProvider<double>(
            create: (_) => blue_message.stream(), initialData: 0.0),
      ],
      child: MaterialApp(
        title: 'Flutter Reactive BLE example',
        color: _themeColor,
        theme: ThemeData(
          scaffoldBackgroundColor: HelpStyle.backgroundColor,
          primarySwatch: _themeColor,
        ),
        home: const Home(),
        builder: EasyLoading.init(),
      ),
    ),
  );
}
// }
