import 'package:flutter/cupertino.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTapAction;
  final String text;
  BottomButton({this.text, this.onTapAction});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapAction,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kLargeTextButton,
          ),
        ),
        color: kBottomContainerColor,
        height: kContainerButtonHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}
