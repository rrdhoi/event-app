import 'package:event_app/app/configs/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.backgroundColor,
      ),
      backgroundColor: AppColors.backgroundColor,
      toolbarHeight: 0,
      elevation: 0,
    );
  }
}
