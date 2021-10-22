import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.border_all,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.pinkAccent,
            icon: Icons.car_rental,
            text: 'Mantenimiento',
          ),
        ]),
        //2
        TableRow(children: [
          _SingleCard(
            color: Colors.brown,
            icon: Icons.shopping_bag_sharp,
            text: 'Compra',
          ),
          _SingleCard(
            color: Colors.redAccent,
            icon: Icons.verified_user,
            text: 'Seguridad',
          ),
        ]),
        //3
        TableRow(children: [
          _SingleCard(
            color: Colors.purpleAccent,
            icon: Icons.wallet_membership,
            text: 'Billetera',
          ),
          _SingleCard(
            color: Colors.lightGreen,
            icon: Icons.access_alarm_outlined,
            text: 'Alarma',
          ),
        ]),
        //4
        TableRow(children: [
          _SingleCard(
            color: Colors.deepOrange,
            icon: Icons.qr_code_2_outlined,
            text: 'Codigo QR',
          ),
          _SingleCard(
            color: Colors.cyanAccent,
            icon: Icons.picture_as_pdf_sharp,
            text: 'Documentos',
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  var boxDecoration = BoxDecoration(
      color: Color.fromRGBO(62, 66, 107, 0.7),
      borderRadius: BorderRadius.circular(20));
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            // margin: EdgeInsets.all(15),
            height: 180,
            decoration: boxDecoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 40,
                  ),
                  radius: 30,
                ),
                SizedBox(height: 10),
                Text(
                  text,
                  style: TextStyle(color: color, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
