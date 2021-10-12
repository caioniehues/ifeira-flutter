// ignore_for_file: prefer_const_constructors, file_names, must_be_immutable

import 'package:flutter/material.dart';

class Urlconfig extends StatelessWidget {

  var setUrl = '';
  

  Urlconfig({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text("Ifeira - URl"),
      ),
      // key: _formKey,
      body: Container(
          padding: EdgeInsets.only(
            top: 60,
            left: 40,
            right: 40,
          ),
          color: Colors.white70,
          child: ListView(
            children: <Widget>[
              TextFormField(
                //E-mail Login----------------------------------------------------
                keyboardType: TextInputType.url,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'URL',
                    labelStyle: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w400,
                        fontSize: 20
                        //adicionar a possibilidade de esse valor ser mutavel pelo usuario
                        ),
                    prefixIcon: Icon(Icons.link_outlined)),
                style: TextStyle(fontSize: 20),
              ),
              Container(
                height: 25,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black54,
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  //_formKey.currentState?.validate();
                },
                child: Text(
                  "Confirmar",
                  textScaleFactor: 1.5,
                ),
              ),
            ],
          )),
    );
  }
}
