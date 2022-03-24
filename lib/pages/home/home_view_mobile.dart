import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:submission_flutter_dasar/content/news_content.dart';
import 'package:submission_flutter_dasar/pages/details/detail_page.dart';
import 'package:submission_flutter_dasar/widgets/widgets.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var timeNow = DateTime.now();
    var formattedDate = DateFormat('dd-MM-yyyy').format(timeNow);

    final tabs = ["Sports", "Tech", "Otomotif", "Lifestyle"];

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

    final NewsContent contentSport = newsContentList[0];
    final NewsContent contentTech = newsContentList[1];
    final NewsContent contentOtomotif = newsContentList[2];
    final NewsContent contentLifestyle = newsContentList[3];

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopAppBar(date: convertToMonthName(formattedDate)),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Expanded(
                          child: Text(
                            "Breaking News",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 30,
                              color: Color(0xff1D2E5A),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              child: InkWell(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Hero(
                                      tag: imageKeys[4],
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.network(
                                          'https://berita.teknologi.id/uploads/article/1624981261_Windows%2011%20Dapat%20Jalankan%20Applikasi%20Android%20Tanpa%20Emulator%20%28wallpaper%20cave%29.jpg',
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Hero(
                                                  tag: titleKeys[4],
                                                  child: const Text(
                                                    "Windows 11 Dapat Jalankan Aplikasi Android Tanpa Emulator",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15,
                                                      fontFamily: 'Montserrat',
                                                      color: Color(0xff1D2E5A),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0,
                                          ),
                                          child: ArticleBar(
                                            date: contentTech.newsDate,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    Container(
                      child: TabBar(
                        isScrollable: true,
                        labelColor: const Color(0xff1D2E5A),
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: [for (final tab in tabs) Tab(text: tab)],
                      ),
                    ),
                    SizedBox(
                      height: 145,
                      child: TabBarView(
                        children: [
                          MiniNewsBar(
                            content: contentSport,
                            imageKey: imageKeys[0],
                            titleKey: titleKeys[0],
                          ),
                          MiniNewsBar(
                            content: contentTech,
                            imageKey: imageKeys[1],
                            titleKey: titleKeys[1],
                          ),
                          MiniNewsBar(
                            content: contentOtomotif,
                            imageKey: imageKeys[2],
                            titleKey: titleKeys[2],
                          ),
                          MiniNewsBar(
                            content: contentLifestyle,
                            imageKey: imageKeys[3],
                            titleKey: titleKeys[3],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

String convertToMonthName(String formattedDate) {
  var splittedDate = formattedDate.split('-');
  String convertedMonth = "";

  if (splittedDate[1] == "01") {
    convertedMonth = "January";
  } else if (splittedDate[1] == "02") {
    convertedMonth = "February";
  } else if (splittedDate[1] == "03") {
    convertedMonth = "Maret";
  } else if (splittedDate[1] == "04") {
    convertedMonth = "April";
  } else if (splittedDate[1] == "05") {
    convertedMonth = "Mei";
  } else if (splittedDate[1] == "06") {
    convertedMonth = "Juni";
  } else if (splittedDate[1] == "07") {
    convertedMonth = "July";
  } else if (splittedDate[1] == "08") {
    convertedMonth = "Agustus";
  } else if (splittedDate[1] == "09") {
    convertedMonth = "September";
  } else if (splittedDate[1] == "10") {
    convertedMonth = "Oktober";
  } else if (splittedDate[1] == "11") {
    convertedMonth = "November";
  } else if (splittedDate[1] == "12") {
    convertedMonth = "Desember";
  }

  return "${splittedDate[0]} $convertedMonth, ${splittedDate[2]}";
}
