import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:handi/h2.dart';
import 'package:handi/h3.dart';
import 'package:handi/h4.dart';

class Home1 extends StatelessWidget {
  static String tag = 'home1';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Staggered Image Grid',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new ImageTile(),
    );
  }
}

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 4),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 4),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 4),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 4),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 4),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 4),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 4),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 4),
  const StaggeredTile.count(2, 2),
];

List<Widget> _tiles = const <Widget>[
  const _ImageTile('https://picsum.photos/200/300/?random'),
  const _ImageTile('https://picsum.photos/201/300/?random'),
  const _ImageTile('https://picsum.photos/202/300/?random'),
  const _ImageTile('https://picsum.photos/203/300/?random'),
  const _ImageTile('https://picsum.photos/204/300/?random'),
  const _ImageTile('https://picsum.photos/205/300/?random'),
  const _ImageTile('https://picsum.photos/206/300/?random'),
  const _ImageTile('https://picsum.photos/207/300/?random'),
  const _ImageTile('https://picsum.photos/208/300/?random'),
  const _ImageTile('https://picsum.photos/209/300/?random'),
  const _ImageTile('https://picsum.photos/210/300/?random'),
  const _ImageTile('https://picsum.photos/211/300/?random'),
  const _ImageTile('https://picsum.photos/212/300/?random'),
  const _ImageTile('https://picsum.photos/213/300/?random'),
  const _ImageTile('https://picsum.photos/214/300/?random'),
  const _ImageTile('https://picsum.photos/215/300/?random'),
  const _ImageTile('https://picsum.photos/216/300/?random'),
  const _ImageTile('https://picsum.photos/217/300/?random'),
];

class ImageTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
          )
        ],
      ),
      body: new Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: new StaggeredGridView.count(
            crossAxisCount: 4,
            staggeredTiles: _staggeredTiles,
            children: _tiles,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          )),
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

class _ImageTile extends StatelessWidget {
  const _ImageTile(this.gridImage);

  final gridImage;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: const Color(0x00000000),
      elevation: 3.0,
      child: new GestureDetector(
        onTap: () {
          print("hello");
        },
        child: new Container(
            decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new NetworkImage(gridImage),
            fit: BoxFit.cover,
          ),
          borderRadius: new BorderRadius.all(const Radius.circular(10.0)),
        )),
      ),
    );
  }
}
