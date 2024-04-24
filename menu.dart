import 'dart:math';

import 'package:flutter/material.dart';

void main () {
  runApp(Menu());
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            cabecalho(nome: "Victor", email: "Victor@gmail.com", imagem: "https://www.google.com/url?sa=i&url=https%3A%2F%2Ftwitter.com%2FIMG&psig=AOvVaw3lE4yrDZyEbvrO4EWkzTp0&ust=1714068937249000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCKiG5Mu624UDFQAAAAAdAAAAABAE"),
            const SizedBox(
              height: 40,
            ),
            itemmenu(texto: "Menu", icone: Icons.home),
            const SizedBox(
              height: 30,
            ),
            itemmenu(texto: "Ajuda", icone: Icons.help)   
          ],
        ),
      ),
    );
  }
}

Widget itemmenu ({
  required String texto,
  required IconData icone,
}) {
  return ListTile(
    leading: Icon(icone, color: Colors.white,),
    title: Text(texto, style: TextStyle(color: Colors.white),),
    hoverColor: Colors.white70,
  );
}

cabecalho({
  required String nome,
  required String email,
  required String imagem,
}) => 

ListView(
  children: [
    CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(imagem),

    ),
    const SizedBox(
      width: 20,
    ),
    Column(
      children: [
        Text(nome),
        const SizedBox(height: 40,),
        Text(email)
      ],
    )
  ],
);