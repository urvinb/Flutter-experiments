import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}
class ProfileApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.teal,
            body: SafeArea(
                child:Center(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/profile.jpeg'),
                        ),
                        Text(
                          'Urvi Bheda',
                          style: TextStyle(
                              fontFamily: 'Shadows',
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          'Computer Engineer',
                          style: TextStyle(
                            fontSize: 15.0,
                            letterSpacing: 2.5,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.email,
                                color: Colors.teal,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "urvi.bheda@somaiya.edu",
                                style: TextStyle(
                                    color: Colors.teal.shade900,
                                    fontSize: 20,
                                    fontFamily: 'Josefin'
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.teal,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "9876543210",
                                style: TextStyle(
                                    color: Colors.teal.shade900,
                                    fontSize: 20,
                                    fontFamily: 'Josefin'
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                )
            )
        )
    );
  }
}