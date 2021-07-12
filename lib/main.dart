import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  TextEditingController filteroption = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade700,
        title: Center(
          child: Text(
            'Profile Finder',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 30,
              fontFamily: 'Odibee Sans',
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Images/backgnd.jpg'), fit: BoxFit.fitHeight),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                "Filter By:-",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 30,
                  fontFamily: 'Odibee Sans',
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                      controller: filteroption,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'ex:- Name/Age/Interests',
                        labelText: 'Enter the filter criteria',
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          if (filteroption == 'sandeep') {
                            print(filteroption);
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (Context) => profile2()),
                            );
                          }
                        },
                        child: const Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 30,
                            fontFamily: 'Odibee Sans',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (Context) => profile1()),
                          );
                        },
                        child: const Text(
                          'See All Profiles',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 30,
                            fontFamily: 'Odibee Sans',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class profile1 extends StatefulWidget {
  @override
  _profile1State createState() => _profile1State();
}

class _profile1State extends State<profile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade800,
      appBar: AppBar(
        backgroundColor: Colors.red.shade700,
        title: Center(
          child: Text(
            'Profile Finder',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 30,
              fontFamily: 'Odibee Sans',
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Images/backgnd2.jpg'), fit: BoxFit.fitHeight),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 60),
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('Images/jaideep2.jpg'),
            ),
            SizedBox(height: 20),
            Container(
              child: Text(
                'Jaideep Jangid',
                style: TextStyle(
                    fontFamily: 'Odibee Sans',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Age',
                    style: TextStyle(
                        fontFamily: 'Odibee Sans',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                Card(
                  color: Colors.redAccent,
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 40,
                    ),
                    title: Text(
                      '24',
                      style: TextStyle(
                        fontFamily: 'Odibee Sans',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Interests',
                    style: TextStyle(
                        fontFamily: 'Odibee Sans',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                Card(
                  color: Colors.redAccent,
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 40,
                    ),
                    title: Text(
                      'Mechanical stuff ,Listening rap song',
                      style: TextStyle(
                        fontFamily: 'Odibee Sans',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: FloatingActionButton(
                  onPressed: (() {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (Context) => profile2()),
                    );
                  }),
                  child: Icon(Icons.arrow_right),
                ),
              ),
            ),
            Expanded(
              child: FloatingActionButton(
                onPressed: (() {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (Context) => Homepage()),
                  );
                }),
                child: Icon(Icons.home),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class profile2 extends StatefulWidget {
  @override
  _profile2State createState() => _profile2State();
}

class _profile2State extends State<profile2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade800,
      appBar: AppBar(
        backgroundColor: Colors.red.shade700,
        title: Center(
          child: Text(
            'Profile Finder',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 30,
              fontFamily: 'Odibee Sans',
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Images/backgnd2.jpg'), fit: BoxFit.fitHeight),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 60),
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('Images/sandeep.jpeg'),
            ),
            SizedBox(height: 20),
            Container(
              child: Text(
                'Sandeep Jangid',
                style: TextStyle(
                    fontFamily: 'Odibee Sans',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Age',
                    style: TextStyle(
                        fontFamily: 'Odibee Sans',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                Card(
                  color: Colors.redAccent,
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 40,
                    ),
                    title: Text(
                      '21',
                      style: TextStyle(
                        fontFamily: 'Odibee Sans',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Interests',
                    style: TextStyle(
                        fontFamily: 'Odibee Sans',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                Card(
                  color: Colors.redAccent,
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 40,
                    ),
                    title: Text(
                      'Coading ,playing badminton',
                      style: TextStyle(
                        fontFamily: 'Odibee Sans',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: FloatingActionButton(
                onPressed: (() {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (Context) => profile1()),
                  );
                }),
                child: Icon(Icons.arrow_right),
              ),
            ),
            Expanded(
              child: FloatingActionButton(
                onPressed: (() {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (Context) => Homepage()),
                  );
                }),
                child: Icon(Icons.home),
              ),
            )
          ],
        ),
      ),
    );
  }
}
