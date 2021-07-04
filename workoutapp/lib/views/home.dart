import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                text: 'hej',
              )
            ]),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.ac_unit_outlined),
              Icon(Icons.h_mobiledata),
              Icon(Icons.face),
            ],
          ),
        ),
      ),
    );
  }
}
