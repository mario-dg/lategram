import 'package:flutter/material.dart';
import 'package:lategram/globals.dart';

class TextInputWidget extends StatefulWidget {
  final TextEditingController? controller;
  final double? fontSize = 14;
  final Key? fieldKey;
  final bool? isPassword;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? keyboardType;

  const TextInputWidget({
    super.key,
    this.controller,
    this.fieldKey,
    this.isPassword,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
    this.keyboardType,
  });

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  var _obscureText = false;

  @override
  void dispose() {
    super.dispose();
    widget.controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
      borderRadius: BorderRadius.circular(25),
    );

    return TextFormField(
      style: TextStyle(color: primaryColor, fontSize: widget.fontSize),
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      key: widget.key,
      obscureText: widget.isPassword == true ? _obscureText : false,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: secondaryColor),
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        filled: true,
        suffixIcon: widget.isPassword ?? false
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: widget.isPassword == true
                    ? Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off)
                    : null,
              )
            : null,
      ),
    );
  }
}
