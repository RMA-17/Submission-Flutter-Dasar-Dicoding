import 'package:flutter/material.dart';
import 'package:submission_flutter_dasar/pages/home/home_views.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth <= 800) {
          return const HomePageMobile();
        } else {
          return const HomePageTablet();
        }
      }),
    );
  }
}
