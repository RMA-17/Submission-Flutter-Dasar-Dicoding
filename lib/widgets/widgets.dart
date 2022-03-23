import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission_flutter_dasar/content/news_content.dart';

class TopAppBar extends StatefulWidget {
  final String date;
  const TopAppBar({Key? key, required this.date}) : super(key: key);

  @override
  State<TopAppBar> createState() => _TopAppBarState();
}

class _TopAppBarState extends State<TopAppBar> {
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
                    'https://blog.jodilogik.com/wp-content/uploads/2016/05/people-1.png'),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              widget.date,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: Color(0xff3660A6),
              ),
            ),
          ],
        ),
        IconButton(
          icon: const Icon(CupertinoIcons.moon_circle_fill),
          onPressed: () {},
        ),
      ],
    );
  }
}

class ArticleBar extends StatelessWidget {
  const ArticleBar({Key? key}) : super(key: key);

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
              const Text(
                "19 Maret 2022",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Color(0xffB6CBEB),
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
  const MiniNewsBar({Key? key, required this.content}) : super(key: key);

  final NewsContent content;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                content.imageUrl,
                fit: BoxFit.cover,
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
                  Text(
                    content.newsTitle,
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
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
    );
  }
}

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({Key? key}) : super(key: key);

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool _isChecked = true;

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
          : const Icon(CupertinoIcons.heart),
    );
  }
}
