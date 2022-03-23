import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
