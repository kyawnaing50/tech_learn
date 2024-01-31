import 'package:flutter/material.dart';

class TechLearnTextFormFieldWidget extends StatelessWidget {
  const TechLearnTextFormFieldWidget({
    super.key,
    required this.label,
    this.obscureText = false,
    this.enabled = true,
    this.textEditingController,
  });

  final String label;
  final bool obscureText;
  final bool enabled;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      obscureText: obscureText,
      enabled: enabled,
      decoration: InputDecoration(labelText: label),
    );
  }
}
