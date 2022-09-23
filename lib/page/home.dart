import 'package:drawer_student_id/page/add_friend.dart';
import 'package:drawer_student_id/page/developer.dart';
import 'package:drawer_student_id/page/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:drawer_student_id/page/profile_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MorDeveloper"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.lightBlueAccent],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
        ),
        elevation: 20,
      ),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF9AC9FF), Colors.white],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: <Widget>[
            Row(),
          ],
        ),
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/myacc.jpg",),
              ),
              accountName: Text(
                "Apicha T.",
                style: TextStyle(fontSize: 20),
              ),
              accountEmail: Text("62011212078@msu.ac.th"),
            ),
            ListTile(
              title: Text("Profile List"),
              leading: Icon(Icons.account_box_rounded, color: Colors.blue,),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new ProfileList()
                  ),
                ).then((value) => null);
              },
            ),
            ListTile(
              title: Text("Developer"),
              leading: Icon(Icons.android, color: Colors.red,),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new Developer()
                  ),
                ).then((value) => null);
              },
            ),
            ListTile(
              title: Text("Add friend"),
              leading: Icon(Icons.face, color: Colors.green,),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new AddFriend()
                  ),
                ).then((value) => null);
              },
            ),
            ListTile(
              title: Text("Setting"),
              leading: Icon(Icons.settings, color: Colors.black54,),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new Setting()
                  ),
                ).then((value) => null);
              },
            ),
            ListTile(
              title: Text("Close"),
              leading: Icon(Icons.close),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
