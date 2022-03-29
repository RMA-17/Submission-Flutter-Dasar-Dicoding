import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission_flutter_dasar/content/news_content.dart';
import 'package:submission_flutter_dasar/widgets/widgets.dart';

class DetaiLPageMobile extends StatelessWidget {
  final NewsContent content;
  final String imageKey, titleKey;

  const DetaiLPageMobile({
    Key? key,
    required this.content,
    required this.imageKey,
    required this.titleKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(CupertinoIcons.back),
                            ),
                            const FavouriteButton(
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Hero(
                          tag: imageKey,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(content.imageUrl),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Hero(
                            tag: titleKey,
                            child: Text(
                              content.newsTitle,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                color: Color(0xff1D2E5A),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ArticleBar(
                    date: content.newsDate,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                content.newsContent,
                                style: const TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal,
                                  wordSpacing: 1,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
