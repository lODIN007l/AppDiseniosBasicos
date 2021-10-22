import 'package:flutter/material.dart';

class BaiscScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image(image: AssetImage('assets/landscape.jpg')),
        //titulo
        Titulo(),
        //botones
        bottomSection(),
        //descripcion
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            'Ullamco aute ea nulla consectetur non ea mollit culpa fugiat laboris nulla nostrud non velit. Irure esse ex ex cillum dolor mollit sint nostrud ullamco. Aliquip quis ut commodo ullamco mollit irure labore officia Lorem dolor anim ex non aliqua.',
          ),
        )
      ],
    ));
  }
}

class bottomSection extends StatelessWidget {
  const bottomSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomPerso(icon: Icons.call, texto: 'Llamada'),
          BottomPerso(icon: Icons.map_rounded, texto: 'Route'),
          BottomPerso(icon: Icons.share, texto: 'Compartir'),
        ],
      ),
    );
  }
}

class BottomPerso extends StatelessWidget {
  final IconData icon;
  final String texto;

  const BottomPerso({Key? key, required this.icon, required this.texto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blueAccent,
          size: 35,
        ),
        Text(
          texto,
          style: TextStyle(color: Colors.blueAccent),
        )
      ],
    );
  }
}

class Titulo extends StatelessWidget {
  const Titulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ttitulo de la foto',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
              ),
              Text('esta es la parte de la descripccion xd '),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41')
        ],
      ),
    );
  }
}
