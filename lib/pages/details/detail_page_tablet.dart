import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission_flutter_dasar/content/news_content.dart';
import 'package:submission_flutter_dasar/widgets/widgets.dart';

class DetailPageTablet extends StatelessWidget {
  final NewsContent content;
  final String imageKey, titleKey;

  const DetailPageTablet({
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
          children: [
            SizedBox(
              height: 450,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Hero(
                            tag: imageKey,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                  bottom: Radius.circular(16)),
                              child: Image.network(
                                content.imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  CupertinoIcons.back,
                                  color: Colors.amber[50],
                                ),
                              ),
                              FavouriteButton(
                                color: Colors.amber[50],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Hero(
                                  tag: titleKey,
                                  child: Text(
                                    content.newsTitle,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                      fontFamily: 'Montserrat',
                                      color: Color(0xff1D2E5A),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ArticleBar(date: content.newsDate),
                )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
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
        ),
      ),
    );
  }
}
