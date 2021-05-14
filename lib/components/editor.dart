
import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController textEditingController;
  final String rotulo;
  final String dica;
  final IconData iconData;

  Editor({this.textEditingController, this.rotulo, this.dica, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: textEditingController,
        style: TextStyle(
          fontSize: 24.0,
        ),
        decoration: InputDecoration(
          icon: this.iconData != null ? Icon(iconData) : null,
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
