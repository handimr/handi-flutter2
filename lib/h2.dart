import 'package:flutter/material.dart';
import 'package:handi/h1.dart';
import 'package:handi/h3.dart';
import 'package:handi/h4.dart';

class Home2 extends StatelessWidget {
  static String tag = 'home2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 1.0,
        leading: Container(
          margin: EdgeInsets.only(left: 10.0),
          child: Icon(Icons.search),
        ),
        title: SizedBox(
          height: 70.0,
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search...",
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.sms),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.edit),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(List.generate(10, (int index) {
              return Container(
                margin: EdgeInsets.all(1),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/nisa.jpg"),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Nisa',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("Wanadadi", overflow: TextOverflow.ellipsis),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                      child: Image.asset("assets/fluter.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(Icons.chat_bubble_outline),
                              SizedBox(
                                width: 16.0,
                              ),
                              Icon(Icons.share),
                              SizedBox(
                                width: 16.0,
                              ),
                              Icon(Icons.more_horiz),
                              SizedBox(
                                width: 16.0,
                              ),
                            ],
                          ),
                          new Icon(Icons.bookmark_border)
                        ],
                      ),
                    )
                  ],
                ),
              );
            })),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new IconButton(
                  icon: Icon(
                    Icons.home,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(Home1.tag);
                  }),
              new IconButton(
                icon: Icon(
                  Icons.notifications,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Home2.tag);
                },
              ),
              new IconButton(
                icon: Icon(
                  Icons.group,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Home3.tag);
                },
              ),
              new IconButton(
                icon: Icon(
                  Icons.file_download,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Home4.tag);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
