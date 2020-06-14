import 'package:flutter/cupertino.dart';

class IconButtonWidget extends StatelessWidget {
  IconButtonWidget({this.icon, this.textButton});
  final IconData icon;
  final String textButton;
  final TextStyle textStyleButton = TextStyle(
    fontSize: 18,
    color: Color(0xFF8D8E98),
  );
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
          style: textStyleButton,
        )
      ],
    );
  }
}
