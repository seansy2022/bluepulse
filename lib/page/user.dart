import 'package:bluesun/help_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget {
  final String title;
  User({Key? key, this.title = "填写个人信息"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            header(),
            ...inputUserBase.map(
              ((e) => input(e)),
            ),
            gender(),
            ...inputUserOther.map(
              ((e) => input(e)),
            ),
            jumBtn(context),
          ],
        ),
      ),
    );
  }

  Widget gender() {
    return Row(
      children: [
        Text("gender"),
        genderItem(title, false),
        SizedBox(width: 10),
        genderItem(title, false),
      ],
    );
  }

  Widget genderItem(String title, bool isCheck) {
    return TextButton.icon(
        style: ButtonStyle(),
        onPressed: () {},
        icon: Icon(Icons.check_box_outline_blank),
        label: Text(title));
  }

  Widget jumBtn(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text('Next'));
  }

  Widget input(_UserInputModel model) {
    return Container(
      margin: EdgeInsets.only(left: 8, right: 18, top: 12),
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            isCollapsed: true,
            icon: Container(
                constraints: BoxConstraints(minWidth: 50),
                child: Text(model.title,
                    textAlign: TextAlign.center,
                    style: HelpStyle.contextStyle.copyWith()))),
      ),
    );
  }

  Widget header() {
    Container();
    return Stack(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.heart_broken),
            Text('Real-time Human Health Monitoring System')
          ],
        ),
        const Positioned(
          left: 5,
          right: 5,
          bottom: 3,
          height: 1,
          child: ColoredBox(color: Colors.red),
        ),
      ],
    );
  }

  List<_UserInputModel> get inputUserBase {
    return [
      _UserInputModel('name', TextInputType.name),
      _UserInputModel('age', TextInputType.name),
      _UserInputModel('data', TextInputType.name),
      _UserInputModel('height', TextInputType.name),
    ];
  }

  List<_UserInputModel> get inputUserOther {
    return [
      _UserInputModel('△L', TextInputType.name),
      _UserInputModel('α1', TextInputType.name),
      _UserInputModel('β1', TextInputType.name),
      _UserInputModel('α2', TextInputType.name),
      _UserInputModel('β2', TextInputType.name),
    ];
  }

  List<String> animals = ['🦁️', '🐯', '🐰', '🐼', '🐻‍❄️', '🦊', '🐬'];
}

class _UserInputModel {
  final String title;
  final TextInputType type;

  _UserInputModel(this.title, this.type);
}
