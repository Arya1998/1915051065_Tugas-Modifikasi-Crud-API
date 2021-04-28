import 'package:flutter/material.dart';
import 'package:flutter_crud_api_sample_app/identitas.dart';
import 'package:flutter_crud_api_sample_app/navbar.dart';
import 'package:flutter_crud_api_sample_app/src/ui/formadd/form_add_screen.dart';
import 'home/home_screen.dart';

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        drawer: NavBar(),
        backgroundColor: Colors.black38,
        key: _scaffoldState,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person_outline),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyProfile()),
                );
              },
            ),
          ],
          title: Text(
            "FLUTTER CRUD API",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: HomeScreen(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FormAddScreen()),
            );
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.orange,
        ),
      ),
    );
  }
}
