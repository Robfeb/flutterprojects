import 'package:flutter/material.dart';

import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {super.key, required this.icon, required this.onPressAction});
  final IconData icon;
  final void Function() onPressAction;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 0.0,
      onPressed: onPressAction,
      shape: const CircleBorder(),
      fillColor: kButtonColor,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
