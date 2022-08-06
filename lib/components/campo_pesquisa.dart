import 'package:flutter/material.dart';

class CampoPesquisa extends StatelessWidget {
  const CampoPesquisa({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(
            Icons.search,
            color: Colors.black,),

          hintText: "Pesquise seu produto",
          isDense: true,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          ),
          ),
    ),
    );
  }
}
