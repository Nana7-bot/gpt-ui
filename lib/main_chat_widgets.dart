import 'package:flutter/material.dart';

import 'constants.dart';



class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key, required this.labelString,
  });

  final String labelString;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: const BorderRadius.all(
          Radius.circular(7),
        ),
      ),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 250,
            child: Text(
              labelString,
              textAlign: TextAlign.center,
              style: kTextStyle9.copyWith(color: Colors.black),
              overflow: TextOverflow.clip,
            ),
          ),
          // const Icon(Icons.arrow_right_alt,color: Colors.black,)
        ],
      ),
    );
  }
}

class HeadLineWidget extends StatelessWidget {
  const HeadLineWidget({
    super.key, required this.labelString, required this.labelIcon,
  });

  final String labelString;
  final IconData labelIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          labelIcon,
          size: 20,
        ),
        kSizedBoxWidth10,
        Text(
          labelString,
          style: kTextStyle12,
        )
      ],
    );
  }
}

class QuickActionButton extends StatelessWidget {
  const QuickActionButton({
    super.key,
    required this.labelString,
    required this.onTapAction,
  });

  final String labelString;
  final VoidCallback onTapAction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapAction,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 50),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: const BorderRadius.all(
            Radius.circular(7),
          ),
        ),
        height: 70,
        width: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              labelString,
              style: kTextStyle9.copyWith(color: Colors.black),
              overflow: TextOverflow.ellipsis,
            ),
            const Icon(Icons.arrow_right_alt,color: Colors.black,)
          ],
        ),
      ),
    );
  }
}
