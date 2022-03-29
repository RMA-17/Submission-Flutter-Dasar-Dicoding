import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:submission_flutter_dasar/content/news_content.dart';
import 'package:submission_flutter_dasar/pages/details/detail_page.dart';

class TopAppBar extends StatelessWidget {
  final String date;
  const TopAppBar({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: CircleAvatar(
                child: Image.network(
                  'https://blog.jodilogik.com/wp-content/uploads/2016/05/people-1.png',
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              date,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: Color(0xff3660A6),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ArticleBar extends StatelessWidget {
  final String date;
  const ArticleBar({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: const [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Mamang Sumamang",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff3660A6),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                date,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Color.fromARGB(255, 123, 138, 160),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class MiniNewsBar extends StatelessWidget {
  const MiniNewsBar({
    Key? key,
    required this.content,
    required this.imageKey,
    required this.titleKey,
  }) : super(key: key);

  final NewsContent content;
  final String imageKey, titleKey;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: SizedBox(
        height: 120,
        child: InkWell(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Hero(
                  tag: imageKey,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      content.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: titleKey,
                        child: Text(
                          content.newsTitle,
                          style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.person, size: 18),
                          SizedBox(width: 5),
                          Text(
                            "Mamang Sumamang",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff3660A6),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailPage(
                  content: content, imageKey: imageKey, titleKey: titleKey);
            }));
          },
        ),
      ),
    );
  }
}

class FavouriteButton extends StatefulWidget {
  final Color? color;
  const FavouriteButton({Key? key, required this.color}) : super(key: key);

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool _isChecked = false;

  void setFavourite() {
    setState(() {
      _isChecked = !_isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: setFavourite,
      icon: _isChecked
          ? const Icon(
              CupertinoIcons.heart_fill,
              color: Colors.redAccent,
            )
          : Icon(
              CupertinoIcons.heart,
              color: widget.color,
            ),
    );
  }
}
