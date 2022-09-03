import 'package:event_app/pages/detail_page.dart';
import 'package:event_app/pages/home_page.dart';
import 'package:event_app/pages/ticket_page.dart';
import 'package:event_app/resources/constant/named_routes.dart';
import 'package:flutter/material.dart';

import 'configs/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes.lightTheme,
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case NamedRoutes.homeScreen:
            return MaterialPageRoute(builder: (context) => const HomePage());
          case NamedRoutes.detailScreen:
            return MaterialPageRoute(builder: (_) => const DetailPage());
          case NamedRoutes.ticketScreen:
            return MaterialPageRoute(builder: (context) => const TicketPage());
          default:
            return MaterialPageRoute(builder: (context) => const HomePage());
        }
      },
    );
  }
}
