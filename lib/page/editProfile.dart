import 'package:drawer_student_id/model/profile_model.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  List<ProfileModel> profileList = new List.filled(0, ProfileModel.empty(), growable: true);
  int id = 0;

  EditProfile.setText(List<ProfileModel> proList, int id){
    this.profileList = proList;
    this.id = id;
  }

  @override
  _EditProfileState createState() => _EditProfileState(profileList,id);
}

class _EditProfileState extends State<EditProfile> {
  List<ProfileModel> proList = new List.filled(0, ProfileModel.empty(), growable: true);
  int id = 0;

  _EditProfileState(List<ProfileModel> profileList, int idx){
    proList = profileList;
    id = idx;
    firstname.text = profileList[id].firstname;
    lastname.text = profileList[id].lastname;
    email.text = profileList[id].email;
    phone.text = profileList[id].phone;
  }

  var firstname = TextEditingController();
  var lastname = TextEditingController();
  var email = TextEditingController();
  var phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Profile"),
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
        child: Column(
          children: <Widget>[
            Icon(
              Icons.account_circle,
              color: Colors.black87,
              size: 120,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: rowText('Firstname'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: textFieldInput('firstname', firstname),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 10),
              child: rowText('Lastname'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: textFieldInput('lastname', lastname),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 10),
              child: rowText('Email'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: textFieldInput('email', email),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 10),
              child: rowText('Phone'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: textFieldInput('phone', phone),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
                  child: submitButton('Submit'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                  child: cancleButton('Cancle'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  RaisedButton submitButton(String text) {
    return RaisedButton(
      onPressed: () {
        var edit = proList.firstWhere((element) => element.id == id);
        edit.firstname = firstname.text;
        edit.lastname = lastname.text;
        edit.email = email.text;
        edit.phone = phone.text;
        Navigator.pop(context,proList);
      },
      color: Colors.blue,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }

  RaisedButton cancleButton(String text) {
    return RaisedButton(
      onPressed: () {},
      color: Colors.red,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }

  TextField textFieldInput(String text, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }

  Row rowText(String text) {
    return Row(
      children: <Widget>[
        Text(
          text,
          style: new TextStyle(
            fontSize: 20,
            color: Colors.black87,
            fontWeight: FontWeight.w400,
            fontFamily: 'Roboto',
          ),
        ),
      ],
    );
  }
}
