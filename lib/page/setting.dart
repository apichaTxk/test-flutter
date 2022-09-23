import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF444444), Color(0xFFD2D2D2)],
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
            colors: [Color(0xFFD7D7D7), Colors.white],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(blurRadius: 3, color: Colors.grey, spreadRadius: 3)],
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage("https://pbs.twimg.com/medi"
                          "a/E4LRuJhVgAAIzCv.jpg"),
                      radius: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(blurRadius: 3, color: Colors.grey, spreadRadius: 3)],
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage("https://www.personality-"
                          "database.com/profile_images/68964.png"),
                      radius: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(blurRadius: 3, color: Colors.grey, spreadRadius: 3)],
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage("https://myanimecloud.com/"
                          "storage/character/6010a856b2c28.jpg"),
                      radius: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(blurRadius: 3, color: Colors.grey, spreadRadius: 3)],
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage("https://encrypted-tbn0."
                          "gstatic.com/images?q=tbn:ANd9GcQe2zAi6yEE5K8Y9dMCO"
                          "obGPeEYs6qsTqP_tapNvJQHm0F_3i5rkCepZyXZHBXbTzKZzU"
                          "Y&usqp=CAU"),
                      radius: 40,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
