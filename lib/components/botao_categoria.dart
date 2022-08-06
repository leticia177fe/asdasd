import 'package:flutter/material.dart';
class BotaoCategoria extends StatefulWidget {
  const BotaoCategoria({ Key? key, required this.iconeTipos, }) : super(key: key);

    final IconData iconeTipos;

  @override
  __BotaoCategoriaState createState() => __BotaoCategoriaState();
}

class __BotaoCategoriaState extends State<BotaoCategoria> {
  bool selecionado = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        setState(() => {
          selecionado = !selecionado
        })
      },

      child: Container(
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: selecionado ? Colors.yellow : Colors.white ,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(
          widget.iconeTipos,
          size: 20,
          color: Colors.black,
          
        )
      )
    );
  }
}