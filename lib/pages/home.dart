import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        left: false,
        right: false,
        bottom: true,
        minimum: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.01,
            30, MediaQuery.of(context).size.width * 0.01, 0),
        child: _mainColumn(context),
      ),
    );
  }
}

Widget _mainColumn(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.menu,
            color: Colors.black87,
            size: 25,
          ),
          Container(
            width: 200,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/logo_single.png"))),
            // child: SvgPicture.asset('assets/images/logo.svg'),
          ),
          Icon(
            Icons.search,
            color: Colors.black87,
            size: 25,
          ),
        ],
      ),
      _postList(context)
    ],
  );
}

Widget _postList(BuildContext context) {
  return Expanded(
    child: ListView(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      children: <Widget>[
        _contentCard(context,
            isLiked: false,
            likes: "1.5k",
            comments: "2.4k",
            poll: "5.0k",
            name: "Sam Chispas",
            title: "Is Flutter worth to learn"),
        _contentCard(context,
            isLiked: true,
            likes: "2,1k",
            comments: "3.1k",
            poll: "1.0k",
            name: "Elsa Pato",
            title: "Web development in 2020"),
        _contentCard(context,
            isLiked: false,
            likes: "1.2k",
            comments: "1.2k",
            poll: "1.4.0k",
            name: "Jhon Newmann",
            title: "What is AI"),
        _contentCard(context,
            isLiked: true,
            likes: "9k",
            comments: "2.8k",
            poll: "1.8k",
            name: "Cat Jhons",
            title: "JS for dummies"),
        _contentCard(context,
            isLiked: false,
            likes: "3.1k",
            comments: "1.5k",
            poll: "9.3k",
            name: "Trent Palmer",
            title: "Structured programming"),
        _contentCard(context,
            isLiked: true,
            likes: "4.2k",
            comments: "2.3k",
            poll: "7.4k",
            name: "Joe Moma",
            title: "POO in python"),
        _contentCard(context,
            isLiked: false,
            likes: "12",
            comments: "1.9k",
            poll: "8.7k",
            name: "Sam Chispas",
            title: "How to use this app"),
        _contentCard(context,
            isLiked: true,
            likes: "6.2k",
            comments: "3.8k",
            poll: "7.6k",
            name: "Sam Chispas",
            title: "AWS vs GCP vs Azure"),
      ],
    ),
  );
}

Widget _contentCard(context,
    {bool isLiked = false,
    String likes = "0",
    String comments = "0",
    String poll = "0",
    String name = "",
    String title = ""}) {
  return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 12.0),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(title, style: TextStyle(fontSize: 18.0),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 8.0, bottom: 14.0),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore...", style: TextStyle(fontSize: 14.0),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 40.0, left: 16.0),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        isLiked ? Icons.favorite : Icons.favorite_border,
                        size: 16.0,
                        color: isLiked
                            ? Colors.pink
                            : Theme.of(context).primaryColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 5.0),
                    ),
                    Text(likes),
                    Padding(
                      padding: EdgeInsets.only(right: 16.0),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.chat_bubble_outline,
                        size: 16.0,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 5.0),
                    ),
                    Text(comments),
                    Padding(
                      padding: EdgeInsets.only(right: 16.0),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.outlined_flag,
                        size: 16.0,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 5.0),
                    ),
                    Text(poll),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(name),
                    Padding(
                      padding: EdgeInsets.only(right: 5.0),
                    ),
                    CircleAvatar(
                      backgroundImage:
                          NetworkImage('https://i.pravatar.cc/300'),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ));
}
