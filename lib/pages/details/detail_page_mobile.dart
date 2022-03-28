import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission_flutter_dasar/content/news_content.dart';
import 'package:submission_flutter_dasar/widgets/widgets.dart';

class DetaiLPageMobile extends StatefulWidget {
  final NewsContent content;
  final String imageKey, titleKey;

  const DetaiLPageMobile({
    Key? key,
    required this.content,
    required this.imageKey,
    required this.titleKey,
  }) : super(key: key);

  @override
  State<DetaiLPageMobile> createState() => _DetaiLPageMobileState();
}

class _DetaiLPageMobileState extends State<DetaiLPageMobile> {
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
                          tag: widget.imageKey,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(widget.content.imageUrl),
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
                            tag: widget.titleKey,
                            child: Text(
                              widget.content.newsTitle,
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
                    date: widget.content.newsDate,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                widget.content.newsContent,
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
