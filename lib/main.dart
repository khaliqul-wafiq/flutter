import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MaterialApp(
    title: 'AAAAA',
    home: Home(),
  ));
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
//   File _image;
//   final picker = ImagePicker();

//   Future getImage() async {
//     final pickedFile = await picker.getImage(source: ImageSource.camera);

//     setState(() {
//       if (pickedFile != null) {
//         _image = File(pickedFile.path);
//       } else {
//         print('No image selected.');
//       }
//     });
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Masukkan Data'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _form(),
                  // _pickImage(),
                  _button(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _form() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        new TextField(
          decoration: new InputDecoration(
              hintText: "Nama Aset",
              labelText: "Nama Aset",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15.0))),
        ),
        new Padding(
          padding: new EdgeInsets.all(10.0),
        ),
        new TextField(
          obscureText: true,
          decoration: new InputDecoration(
              hintText: "Alamat",
              labelText: "Alamat",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15.0))),
        ),
        new Padding(
          padding: new EdgeInsets.all(10.0),
        ),
        new TextField(
          decoration: new InputDecoration(
              hintText: "Luas",
              labelText: "Luas ",
              border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15.0))),
        ),
      ],
    );
  }

  // Widget _pickImage() {
  //   return Scaffold(
  //     body: Center(
  //       child: _image == null ? Text('No image selected.') : Image.file(_image),
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: getImage,
  //       tooltip: 'Pick Image',
  //       child: Icon(Icons.add_a_photo),
  //     ),
  //   );
  // }

  Widget _button() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        FlatButton(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              width: double.infinity,
              child: Text(
                "Selesai",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            onPressed: () {}),
      ],
    );
  }
}
