import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission_flutter_dasar/widgets/widgets.dart';

class DetaiLPageMobile extends StatefulWidget {
  const DetaiLPageMobile({Key? key}) : super(key: key);

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
                            const FavouriteButton()
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
                          tag: "header-gambar-berita",
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(
                                'https://berita.teknologi.id/uploads/article/1624981261_Windows%2011%20Dapat%20Jalankan%20Applikasi%20Android%20Tanpa%20Emulator%20%28wallpaper%20cave%29.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Hero(
                            tag: "txt-judul-berita",
                            child: Text(
                              "Windows 11 Dapat Jalankan Aplikasi Android Tanpa Emulator",
                              style: TextStyle(
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
                  const Hero(tag: "article-bar", child: ArticleBar()),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                """Microsoft sudah resmi memperkenalkan Windows 11 sebagai sistem operasi (OS) terbarunya untuk perangkat laptop dan PC. Ada berbagai keunggulan dan terobosan yang dihadirkan di Windows 11, salah satunya kemampuan menjalankan aplikasi Android tanpa bantuan emulator.

      Untuk daoat membawa aplikasi Android ke Windows 11, Microsoft bekerja sama dengan Amazon AppStore. Toko aplikasi Amazon ini akan terintegrasi dengan Microsoft Store untuk memudahkan pengguna dalam mencari dan mendownload aplikasi Android.

      Perusahaan juga menggandeng Intel untuk pemanfaatan teknologi Intel Bridge guna aplikasi Android dapat berjalan secara virtual dengan mulus di Windows 1. Ini berlaku baik perangkat yang berbasis prosesor Intel maupun AMD.

      Di acara peluncuran Windows 11 pada, Microsoft sempat mempraktekkan bagaimana aplikasi TikTok berjalan di komputer Windows 11. TikTok dapat berjalan dengan tampilan serupa di versi mobile-nya.""",
                                style: TextStyle(
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
