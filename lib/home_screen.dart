import 'package:flutter/material.dart';
import 'adding_page.dart';
import 'pages/first_screen.dart';
import 'pages/second_screen.dart';
import 'pages/third_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Todos',
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AddTaskPage();
                  },
                ),
              ).then((value) =>setState(() {}));
            },
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
        bottom: TabBar(
          tabs: [
            Tab(
              text: 'All',
            ),
            Tab(
              text: 'Incomplete',
            ),
            Tab(
              text: 'complete',
            ),

          ],
        ),
      ),
      body: TabBarView(
        children: [
          AllPage(),
          InCompletePage(),
          CompletePage(),
        ],
      ),
    );
  }
}
