import 'package:flutter/material.dart';
import 'package:proyectly/widgets/colors.dart';

class InputField extends StatefulWidget {
  String hintText;
  String labelText;
  bool obscureText;
  TextInputType inputType;
  Function onChanged;

  InputField(
      {Key? key,
      required this.hintText,
      required this.labelText,
      required this.obscureText,
      required this.inputType,
      required this.onChanged});

  @override
  State<StatefulWidget> createState() {
    return _InputField();
  }
}

class _InputField extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText : widget.obscureText,
      onChanged: (value) => widget.onChanged(value),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        
        hintText: widget.hintText,
        labelText: widget.labelText,
        labelStyle: TextStyle(color: ColorsApp.color3),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: ColorsApp.color3, width: 1.0),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.white, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.white, width: 1.0),
        ),
      ),
    );
  }
}
