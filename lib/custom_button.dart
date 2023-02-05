import 'package:flutter/material.dart';

import 'constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.imagePath, required this.imageScale, required this.labelString, required this.onPressAction,
  });

  final String imagePath;
  final double imageScale;
  final String labelString;
  final VoidCallback onPressAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade500),
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent, elevation: 0.0),
        onPressed: onPressAction,
        child: Row(
          children: [
            Image.asset(
              imagePath,
              scale: imageScale,
            ),
            kSizedBoxWidth10,
            Text(
              labelString,
              style: kTextStyle8.copyWith(
                  color: Theme.of(context).primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}