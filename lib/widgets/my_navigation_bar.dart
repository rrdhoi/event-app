import 'package:event_app/configs/colors.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 60,
      elevation: 0,
      animationDuration: const Duration(seconds: 3),
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      backgroundColor: AppColors.whiteColor,
      destinations: const [
        NavigationDestination(
          icon: Icon(
            Icons.home_rounded,
          ),
          label: "Home",
        ),
        NavigationDestination(
          icon: Icon(
            Icons.event_outlined,
          ),
          label: "Event",
        ),
        NavigationDestination(
            icon: Icon(
              Icons.airplane_ticket_outlined,
            ),
            label: "Ticket"),
        NavigationDestination(
            icon: Icon(
              Icons.person_outline,
            ),
            label: "Profile"),
      ],
    );
  }
}
