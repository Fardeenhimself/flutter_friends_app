import 'package:flutter/material.dart';

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
                    backgroundImage: AssetImage('assets/images/img1.png'),
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
                      'Elliot Alderson',
                      style: TextStyle(fontSize: 30.0, fontFamily: 'GSans'),
                    ),
                    Row(
                      children: [
                        Icon(Icons.email, size: 15.0),
                        SizedBox(width: 5.0),
                        Text(
                          'logicBomb@hacker.mail',
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
                  'Elliot was born on September 17, 1986. He suffers from dissociative identity disorder, clinical depression, delusions and paranoia. His internal life is revealed via voice-overs that provide insight into his mental state, his opinions of the people he encounters and the activity around him. These dialogues with the audience are designed to help us interpret Elliot\'s world, but given his mental illness, he\'s an unreliable narrator, leaving us unsure whether what he tells us we\'re seeing is actually what is happening. Typical of this is when Elliot hears everyone around him refer to E-Corp as Evil Corp, reflecting his own opinion of the conglomerate.',
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
                    onPressed: () {},
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
                    onPressed: () {},
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
