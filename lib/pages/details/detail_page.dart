import 'package:flutter/material.dart';
import 'package:submission_flutter_dasar/content/news_content.dart';
import 'package:submission_flutter_dasar/pages/details/detail_page_mobile.dart';
import 'package:submission_flutter_dasar/pages/details/detail_page_tablet.dart';

class DetailPage extends StatelessWidget {
  final NewsContent content;
  final String imageKey, titleKey;
  const DetailPage(
      {Key? key,
      required this.content,
      required this.imageKey,
      required this.titleKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth <= 800) {
          return DetaiLPageMobile(
            content: content,
            imageKey: imageKey,
            titleKey: titleKey,
          );
        } else {
          return DetailPageTablet(
            content: content,
            imageKey: imageKey,
            titleKey: titleKey,
          );
        }
      }),
    );
  }
}
