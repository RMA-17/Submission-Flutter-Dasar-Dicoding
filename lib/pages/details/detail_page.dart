import 'package:flutter/material.dart';
import 'package:submission_flutter_dasar/pages/details/detail_page_mobile.dart';
import 'package:submission_flutter_dasar/pages/details/detail_page_tablet.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth <= 800) {
          return DetaiLPageMobile();
        } else {
          return DetailPageTablet();
        }
      }),
    );
  }
}
