import 'package:flutter/material.dart';

import 'constants.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key, required this.labelText,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: kTextStyle8,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade500),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: kSecondaryColorGreen),
          ),
          labelText: labelText,
          labelStyle: const TextStyle(color: kSecondaryColorGreen)
      ),
    );
  }
}