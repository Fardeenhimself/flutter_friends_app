import 'package:flutter/material.dart';
import 'list_of_friends.dart';

ListOfFriends listOfFriends = ListOfFriends();

void main() => runApp(FriendsApp());

class FriendsApp extends StatelessWidget {
  const FriendsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Friends App',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
          ),
          centerTitle: true,
          backgroundColor: Colors.green[800],
        ),

        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(listOfFriends.getImagePath()),
                    radius: 70.0,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      listOfFriends.getName(),
                      style: TextStyle(fontSize: 30.0, fontFamily: 'GSans'),
                    ),
                    Row(
                      children: [
                        Icon(Icons.email, size: 15.0),
                        SizedBox(width: 5.0),
                        Text(
                          listOfFriends.getEmail(),
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          //SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    fontFamily: 'GSans',
                  ),
                ),
                Text(
                  listOfFriends.getAbout(),
                  style: TextStyle(fontSize: 20.0, fontFamily: 'GSans'),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      setState(() {
                        listOfFriends.previousPage();
                      });
                    },
                    child: Text(
                      'Previous',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'GSans',
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      setState(() {
                        listOfFriends.nextPage();
                      });
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'GSans',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
