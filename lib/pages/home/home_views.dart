import 'package:flutter/material.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: CircleAvatar(
              child: Image.network(
                  'https://blog.jodilogik.com/wp-content/uploads/2016/05/people-1.png'),
            ),
          )
        ],
      ),
    ]);
  }
}

class HomePageTablet extends StatelessWidget {
  const HomePageTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
