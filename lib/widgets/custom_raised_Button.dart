import 'package:flutter/material.dart';

class CustomRoundButton extends StatelessWidget {
  final String text;
  final Function onPress;
  final int sel;

  const CustomRoundButton({this.onPress, this.text, this.sel});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: sel == 0 ? Colors.white54 : Colors.blueGrey[100],
      padding: EdgeInsets.all(8.0),
      onPressed: onPress,
      color: sel != 0 ? Theme.of(context).accentColor : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: sel == 0 ? Theme.of(context).primaryColor : Colors.white,
        ),
      ),
    );
  }
}
