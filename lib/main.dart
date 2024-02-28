import 'package:flutter/material.dart';

void main() => runApp(const MilistaCard());

class MilistaCard extends StatelessWidget {
  const MilistaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi ListaView Barrios",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const PaginaInicial(),
    );
  }
}

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/avatar14.jpg",
    "assets/images/avatar12.png",
    "assets/images/avatar13.jpg",
    "assets/images/avatar14.jpg",
    "assets/images/avatar13.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Barrios"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index]),
              ),
              title: Text("El Titulo"),
              subtitle: Text("subtitulos"),
            ),
          );
        },
        itemCount: images.length,
        shrinkWrap: true,
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
