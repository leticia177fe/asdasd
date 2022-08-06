
import 'package:flutter/material.dart';
import 'package:mercado_aberto/components/botao_categoria.dart';
import 'package:mercado_aberto/components/campo_pesquisa.dart';
import 'package:mercado_aberto/components/card_assinatura.dart';
import 'package:mercado_aberto/components/card_frete_gratis.dart';
import 'package:mercado_aberto/components/texto_CEP.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: const Color(0xfff5d415),

        leading: const Icon(
          Icons. menu,
          color: Colors.black,
      ),

          title: CampoPesquisa(),

        actions: [
          Container(
            padding: const EdgeInsets.all(5.0),
            child: const Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
          ),
          ],

       bottom: PreferredSize(
            preferredSize: const Size.fromHeight(20.0),
              child: textoCEP(),

      )

    ),
    
    body: Center(
        child: Container(
          padding: EdgeInsets.only(right: 25, left: 25,),
          decoration: const BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          colors: [
            Color(0xfff5d415),
            Color(0xfff5f5f5),
          ],

      ),

     ), 
       
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(5)),
            Container(
              padding: const EdgeInsets.all(3), 
              height: 140,
              child: Image.network(
                'https://http2.mlstatic.com/D_NQ_NP650326-MLA50239834698_062022-B.jpg',
              ),

            ),
            
          CardAssinatura(titulo:"Assine o nível 6 por R\$ 9,90/mês!"),

          CardFrete(titulo:"Frete grátis",),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children:[
                BotaoCategoria(
                  iconeTipos: Icons.ac_unit_outlined,
                  ),
                  
                  SizedBox(width: 10,),

                BotaoCategoria(
                iconeTipos: Icons.bedroom_child,
                ),
                
                SizedBox(width: 10,),

              BotaoCategoria(
                iconeTipos: Icons.ad_units_sharp,
                ),
                
                SizedBox(width: 10,),

              BotaoCategoria(
                iconeTipos: Icons.filter_9_plus,
                ),
                
                SizedBox(width: 10,),

              BotaoCategoria(
                iconeTipos: Icons.plus_one,
                ),

          ],)

          ],

          ),

          ),

          ),

);

}

}