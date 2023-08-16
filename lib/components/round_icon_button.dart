import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  final Function()? onPress;
  final IconData? icon;
  const RoundIconButton({super.key, this.onPress, this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 0.0,
      shape: const CircleBorder(),
      fillColor: kGreyColor,
      onPressed: onPress,
      child: Icon(
          icon
      ),
    );
  }
}