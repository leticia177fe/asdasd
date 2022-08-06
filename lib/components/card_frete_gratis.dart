import 'package:flutter/material.dart';

class CardFrete extends StatelessWidget {
  const CardFrete({ Key? key, required this.titulo,}) : super(key: key);

  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Container( padding:
            EdgeInsets.all(5),
            child: Container(
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 5,
              ),
              
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 0.5,
                    blurRadius: 2,
                    offset: const Offset(0, 1.5),
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  const Icon(
                    Icons.local_shipping_outlined,
                    color: Color(0xff43b176),
                  ),
                  Text(
                    titulo,
                    style: TextStyle(
                      color: Color(0xff43b176),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    " em milhões de produtos a partir de R\$79",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}