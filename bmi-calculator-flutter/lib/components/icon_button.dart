import 'package:flutter/cupertino.dart';

import '../constants.dart';

class IconButtonWidget extends StatelessWidget {
  IconButtonWidget({this.icon, this.textButton});
  final IconData icon;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textButton,
          style: kTextStyleButton,
        )
      ],
    );
  }
}
