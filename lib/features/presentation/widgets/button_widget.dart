import 'package:flutter/material.dart';
import 'package:lategram/globals.dart';

class ButtonWidget extends StatefulWidget {
  final Color? color;
  final String? text;
  final VoidCallback? onTapCallback;

  const ButtonWidget({super.key, this.color, this.text, this.onTapCallback});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  var isLoading = false;

  executeOnTapCallback() {
    setState(() {
      isLoading = true;
    });
    widget.onTapCallback!();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: executeOnTapCallback,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(color: primaryColor)
              : Text(
                  "${widget.text}",
                  style: const TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
        ),
      ),
    );
  }
}
