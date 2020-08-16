import 'package:flutter/material.dart';

class MyRaisedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  MyRaisedButton({@required this.onPressed, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RaisedButton(
          padding: EdgeInsets.all(12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textColor: Colors.white,
          color: Theme.of(context).primaryColor,
          child: Text(text),
          onPressed: onPressed),
    );
  }
}
