import 'package:flutter/material.dart';
import 'package:handi/h1.dart';
import 'package:handi/h2.dart';
import 'package:handi/h4.dart';

class Home3 extends StatelessWidget {
  static String tag = 'home3';

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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset("assets/st.png"),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset("assets/android.jpg"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
