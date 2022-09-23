import 'package:drawer_student_id/model/profile_model.dart';
import 'package:flutter/material.dart';

class AddProfile extends StatefulWidget {
  int len = 0;
  AddProfile(int length){
    this.len = length;
  }

  @override
  _AddProfileState createState() => _AddProfileState(len);
}

class _AddProfileState extends State<AddProfile> {

  var firstname = TextEditingController();
  var lastname = TextEditingController();
  var email = TextEditingController();
  var phone = TextEditingController();
  int len = 0;

  _AddProfileState(int len){
    this.len = len;
  }

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
        print(firstname.text);
        print(lastname.text);
        print(email.text);
        print(phone.text);

        ProfileModel profile = new ProfileModel(
          len,
          firstname.text,
          lastname.text,
          email.text,
          phone.text,
        );
        Navigator.pop(context,profile);
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