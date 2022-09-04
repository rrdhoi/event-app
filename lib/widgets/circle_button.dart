import 'package:event_app/configs/colors.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  const CircleButton({required this.icon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: AppColors.primaryLightColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        size: 18,
      ),
    );
  }
}
