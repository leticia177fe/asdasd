import 'package:flutter/material.dart';

class CardAssinatura extends StatelessWidget {
  const CardAssinatura({ Key? key, required this.titulo }) : super(key: key);

  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Container( padding:
              EdgeInsets.all(5),
              child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xffaa0f91), Color(0xff171955)]),
                
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    titulo,
                    style: TextStyle(color: Colors.white),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  )
                ],
              ),
            ),
);
}
}