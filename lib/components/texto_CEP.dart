import 'dart:io';

import 'package:flutter/material.dart';

class textoCEP extends StatefulWidget {
  textoCEP({ Key? key }) : super(key: key);

  @override
  _textoCEPState createState() => _textoCEPState();
}

class _textoCEPState extends State<textoCEP> {

  String textoCep = "";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => {
        setState (() => {
             showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Digite seu CEP'),
            content: TextField(
          decoration: InputDecoration(
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide (width: 1, color: Color(0xfff5d415))
          ),
          ),
    ),

            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child:  const Text(
                    'Cancelar',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                      ),
                      ),
                      ),

              TextButton(
                onPressed: () {
                  print('Ok');
                  Navigator.pop(context);
                  _textoCEPState();
                },
              child: const Text(
                'Ok',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                  ),
                  ),  
              )
            ],
          );
        })
        })
      }),
    
        child: Row (children: [
          const Icon(
            Icons.location_on,
            color: Colors.black,),
          Text("Enviar para ${textoCep}"),
        ]
        ),
        );
  }
}