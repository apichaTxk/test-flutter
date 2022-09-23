import 'package:drawer_student_id/model/profile_model.dart';
import 'package:flutter/material.dart';

import 'addProfile.dart';
import 'editProfile.dart';

class ProfileList extends StatefulWidget {
  const ProfileList({Key? key}) : super(key: key);

  @override
  _ProfileListState createState() => _ProfileListState();
}

class _ProfileListState extends State<ProfileList> {
  List<ProfileModel> proList =
      new List.filled(0, ProfileModel.empty(), growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile List"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => new AddProfile(proList.length),
                ),
              ).then((value) {
                if (value == null) {
                } else {
                  proList.add(value);
                }
                setState(() {});
              });
            },
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0055FF), Color(0xFF7AC5FF)],
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
            colors: [Color(0xFFBAE9FF), Colors.white],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: (proList.length != 0)
            ? ListView.builder(
                itemCount: proList.length,
                itemBuilder: (BuildContext buildContext, int index) {
                  return ListTile(
                    leading: Icon(Icons.person),
                    title: Text(proList[index].firstname),
                    subtitle: Text(proList[index].email),
                    trailing: Wrap(
                      children: <Widget>[
                        IconButton(
                          icon : Icon(Icons.edit),
                          onPressed: (){
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (context) => new EditProfile.setText(proList, index),
                              ),
                            ).then((value){
                              if(value == null){
                              }else{
                                proList = value;
                              }
                              setState((){});
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: (){
                            proList.removeWhere((element) => element.id == proList[index].id);
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  );
                })
            : Container(),
      ),
    );
  }
}
