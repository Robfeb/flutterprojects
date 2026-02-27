import 'package:flutter/cupertino.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({super.key, required this.icon, required this.textButton, this.onPress});
  final IconData icon;
  final String textButton;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    // The build method for IconButtonWidget was not provided in the instruction.
    // Adding a placeholder to ensure syntactical correctness.
    // You will need to fill in the actual implementation for this widget.
    return Container(
      child: Column(
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
            style: TextStyle(
              fontSize: 18.0,
              color: Color(0xFF8D8E98),
            ),
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final void Function()? onPress;

  const ReusableCard({super.key, required this.colour, this.cardChild, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
