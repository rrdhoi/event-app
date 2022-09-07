import 'package:event_app/app/configs/colors.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final String icon;
  final Function() onTap;
  const CircleButton({required this.icon, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 42,
        height: 42,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: AppColors.primaryLightColor,
          shape: BoxShape.circle,
        ),
        child: Image.asset(icon, width: 18),
      ),
    );
  }
}
