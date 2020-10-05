import 'package:flutter/material.dart';
import 'common.dart';
import 'gridview_page.dart';
import 'animation_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF832685),
        primaryColorLight: Color(0xFFC81379),
        accentColor: Color(0xFFFAF2FB),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon searchBtn = Icon(Icons.search);
  Widget appBarTitle = Text(
    'Home Page',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        title: appBarTitle,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Color(0xFF832685),
              Color(0xFFC81379),
            ]),
          ),
        ),
        actions: [
          IconButton(
            icon: searchBtn,
            onPressed: () {
              setState(() {
                if (this.searchBtn.icon == Icons.search) {
                  this.searchBtn = Icon(Icons.close);
                  this.appBarTitle = TextField(
                    autofocus: true,
                    cursorColor: Color(0xFFFAF2FB),
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: 'search...',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  );
                } else {
                  this.searchBtn = Icon(Icons.search);
                  this.appBarTitle = Text('Home Page');
                }
              });
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          MyButton(
            'GridView',
            GridViewPage(),
          ),
          MyButton(
            'Animation',
            AnimationScreen(),
          ),
        ],
      ),
    );
  }
}
