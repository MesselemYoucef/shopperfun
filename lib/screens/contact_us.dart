import 'package:flutter/material.dart';


class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  //Text Field State
  String name= '';
  String phone= '';
  String email= '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
        child: Form(
          child: Column(
            children:<Widget>[
              SizedBox(height: 20.0),
              TextFormField(//Name
                onChanged: (val){setState(() => name = val);},

              ),
              SizedBox(height: 20.0),
              TextFormField(//Phone Number
                onChanged: (val){setState(() => phone = val);},
              ),
              SizedBox(height: 20.0),
              TextFormField(//Email
                onChanged: (val){setState(() => email = val);},
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                color: Colors.teal[400],
                child: Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  onPressed: ()async{

                  },
              ),
            ]
          ),
        ),
      ),
    );
  }
}