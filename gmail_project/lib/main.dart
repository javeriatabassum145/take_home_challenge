import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Material(
              elevation: 8,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search in emails",
                  border: InputBorder.none,
                  icon: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Icon(Icons.dehaze),
                  ),
                  suffixIcon: Container(
                    margin: EdgeInsets.all(5),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/profile_img.jpg'),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                20,
                (int i) {
                  return _listItem(i);
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Compose'),
        icon: Icon(Icons.edit),
        foregroundColor: Colors.red,
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _listItem(int i) {
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      leading: CircleAvatar(
        child: Text(i.toString()),
        backgroundColor: Colors.green[200],
        foregroundColor: Colors.green[700],
        maxRadius: 25,
      ),
      title: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Javeria Tabassum',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "11:00",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            "I am learning Flutter and made this gmail UI. Flutter is an open-source UI software development kit created by Google. It is used to develop applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia, and the web from a single codebase. The first version of Flutter was known as codename Sky and ran on the Android operating system.",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('This is gmail UI using Flutter'),
          Icon(Icons.star_border),
        ],
      ),
    );
  }
}
