import 'package:flutter/material.dart';
import 'package:submission_flutter_dasar/content/news_content.dart';
import 'package:submission_flutter_dasar/pages/details/detail_page.dart';
import 'package:submission_flutter_dasar/widgets/widgets.dart';

class HomePageTablet extends StatelessWidget {
  final String date;
  const HomePageTablet({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NewsContent contentSport = newsContentList[0];
    final NewsContent contentTech = newsContentList[1];
    final NewsContent contentOtomotive = newsContentList[2];
    final NewsContent contentLifestyle = newsContentList[3];

    final imageKeys = [
      'gambar-berita-sport',
      'gambar-berita-tech',
      'gambar-berita-otomotif',
      'gambar-berita-lifestyle',
      'gambar-berita-header',
    ];

    final titleKeys = [
      'title-berita-sport',
      'title-berita-tech',
      'title-berita-otomotif',
      'title-berita-lifestyle',
      'title-berita-header',
    ];

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TopAppBar(date: date),
                  ),
                ],
              ),
              const SizedBox(height: 28),
              const Text(
                "Breaking News",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 45,
                  color: Color(0xff1D2E5A),
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 28),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            child: InkWell(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Hero(
                                      tag: imageKeys[4],
                                      child: ClipRRect(
                                        child: Image.network(
                                          'https://berita.teknologi.id/uploads/article/1624981261_Windows%2011%20Dapat%20Jalankan%20Applikasi%20Android%20Tanpa%20Emulator%20%28wallpaper%20cave%29.jpg',
                                        ),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                    const SizedBox(height: 18),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Container(
                                            child: Hero(
                                              tag: titleKeys[4],
                                              child: const Text(
                                                "Windows 10 bisa jalankan Aplikasi Android tanpa emulator!",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 24,
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xff1D2E5A),
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    ArticleBar(date: date)
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return DetailPage(
                                    content: contentTech,
                                    imageKey: imageKeys[4],
                                    titleKey: titleKeys[4],
                                  );
                                }));
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "BERITA OLAHRAGA",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Divider(
                            thickness: 1,
                            indent: 12,
                            color: Colors.black,
                          ),
                          MiniNewsBar(
                            content: contentSport,
                            imageKey: imageKeys[0],
                            titleKey: titleKeys[0],
                          ),
                          const Text(
                            "BERITA TEKNO",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Divider(
                            thickness: 1,
                            indent: 12,
                            color: Colors.black,
                          ),
                          MiniNewsBar(
                            content: contentTech,
                            imageKey: imageKeys[1],
                            titleKey: titleKeys[1],
                          ),
                          const Text(
                            "BERITA OTOMOTIVE",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Divider(
                            thickness: 1,
                            indent: 12,
                            color: Colors.black,
                          ),
                          MiniNewsBar(
                            content: contentOtomotive,
                            imageKey: imageKeys[2],
                            titleKey: titleKeys[2],
                          ),
                          const Text(
                            "BERITA LIFESTYLE",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Divider(
                            thickness: 1,
                            indent: 12,
                            color: Colors.black,
                          ),
                          MiniNewsBar(
                            content: contentLifestyle,
                            imageKey: imageKeys[3],
                            titleKey: titleKeys[3],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
