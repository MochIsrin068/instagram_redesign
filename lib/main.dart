import 'package:flutter/material.dart';
import './data.dart';
import './detail.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Redesign Instagram',
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  String _follow = 'Follow';
  Gradient _color =
      LinearGradient(colors: [Colors.blue[600], Colors.deepPurple[400]]);

  @override
  Widget build(BuildContext context) {
    final _headerMenu = Container(
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          // SizedBox(width: 15.0),
          Text('John Doe',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              )),
          Container(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );

    final _headerProfile = Container(
      padding: EdgeInsets.only(left: 30.0, right: 15),
      child: Row(
        children: <Widget>[
          Center(
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(50.0),
              elevation: 10.0,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/usrbig4.jpg'),
                radius: 40.0,
              ),
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('John Doe',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 5.0),
              Text('Fashion',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0)),
              SizedBox(height: 5.0),
              Text('Photographer',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                  )),
              SizedBox(height: 5.0),
              Text('www.dribble.com/john_doe',
                  style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0)),
            ],
          )
        ],
      ),
    );

    final _border = Container(
      padding: EdgeInsets.only(left: 30.0, right: 30.0),
      child: Divider(),
    );

    final _descProfile = Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Desc('490', 'Posts'),
          Desc('120k', 'Followers'),
          Desc('80k', 'Following'),
        ],
      ),
    );

    final _button = Container(
      padding: EdgeInsets.only(left: 30.0, right: 30.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 55.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), gradient: _color),
              child: InkWell(
                highlightColor: Colors.blue[800],
                splashColor: Colors.purple[600],
                onTap: () {
                  if (_follow == 'Follow') {
                    setState(() {
                      _color = LinearGradient(
                          colors: [Colors.orange[600], Colors.pink[600]]);
                      _follow = 'Unfollow';
                    });
                  } else if (_follow == 'Unfollow') {
                    setState(() {
                      _color = LinearGradient(
                          colors: [Colors.blue[600], Colors.deepPurple[400]]);
                      _follow = 'Follow';
                    });
                  }
                },
                child: Center(
                  child: Text(_follow,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Container(
            height: 55.0,
            width: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey[100],
            ),
            child: InkWell(
              highlightColor: Colors.blue[800],
              splashColor: Colors.purple[600],
              onTap: () {
                print('object');
              },
              child: Center(
                child: Icon(
                  Icons.send,
                  size: 25.0,
                ),
              ),
            ),
          )
        ],
      ),
    );

    final _story = Container(
        padding: EdgeInsets.only(left: 15.0),
        height: 50.0,
        child: ListView(
          // shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            History('assets/preview-6.jpg'),
            SizedBox(
              width: 15.0,
            ),
            History('assets/preview-7.jpg'),
            SizedBox(
              width: 15.0,
            ),
            History('assets/preview-8.jpg'),
            SizedBox(
              width: 15.0,
            ),
            History('assets/usrbig6.jpg'),
            SizedBox(
              width: 15.0,
            ),
            History('assets/usrbig5.jpg'),
            SizedBox(
              width: 15.0,
            ),
            History('assets/usrbig3.jpg'),
            SizedBox(
              width: 15.0,
            ),
            History('assets/usrbig4.jpg'),
            SizedBox(
              width: 15.0,
            ),
          ],
        ));

    final _image = Container(
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      child: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        Detail('assets/preview-1.jpg', '200', '5')));
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 3 - 15,
                height: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: AssetImage('assets/preview-1.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        Detail('assets/preview-2.jpg', '100', '5')));
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 3 - 15,
                height: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: AssetImage('assets/preview-2.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        Detail('assets/preview-3.jpg', '10', '5')));
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 3 - 15,
                height: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: AssetImage('assets/preview-3.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      Detail('assets/preview-4.jpg', '90', '5')));
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 3 - 15,
              height: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage('assets/preview-4.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        Detail('assets/preview-5.jpg', '130', '5')));
              },
              child: Container(
                // width: MediaQuery.of(context).size.width / 3 - 15,
                height: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: AssetImage('assets/preview-5.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
        ])
      ]),
    );

    final List<Tab> _tabs = [
      Tab(icon: Icon(Icons.home)),
      Tab(icon: Icon(Icons.search)),
      Tab(icon: Icon(Icons.favorite_border)),
      Tab(icon: Icon(Icons.person)),
    ];

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            _headerMenu,
            SizedBox(
              height: 15.0,
            ),
            _headerProfile,
            SizedBox(
              height: 15.0,
            ),
            _border,
            SizedBox(
              height: 15.0,
            ),
            _descProfile,
            SizedBox(
              height: 15.0,
            ),
            _border,
            SizedBox(
              height: 15.0,
            ),
            _button,
            SizedBox(
              height: 25.0,
            ),
            _story,
            SizedBox(
              height: 25.0,
            ),
            _image,
            SizedBox(
              height: 25.0,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            gradient: LinearGradient(colors: [Colors.orange, Colors.pink])),
        child: FloatingActionButton(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          onPressed: () {},
          mini: true,
          child: Center(child: Icon(Icons.add)),
          isExtended: true,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.transparent,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: _tabs,
        ),
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
