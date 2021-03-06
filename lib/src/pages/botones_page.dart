import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _botonNavigationBarColor(context),
        body: Stack(
          children: [
            _fondoApp(),
            SingleChildScrollView(
              child: Column(
                children: [_titulos(), _botonesRedondeados()],
              ),
            )
          ],
        ));
  }

  Widget _crearBotonRed(Color color, IconData icono, String texto) {
    return ClipRect(
        child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Container(
        height: 180.0,
        margin: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 35.0,
              backgroundColor: color,
              child: Icon(
                icono,
                color: Colors.white,
                size: 30.0,
              ),
            ),
            Text(
              texto,
              style: TextStyle(color: color),
            ),
            SizedBox(
              height: 5.0,
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)),
      ),
    ));
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(children: [
          _crearBotonRed(Colors.blue, Icons.border_all, 'General'),
          _crearBotonRed(Colors.pink, Icons.youtube_searched_for, 'Insets')
        ]),
        TableRow(children: [
          _crearBotonRed(Colors.yellow, Icons.west_outlined, 'Reflex'),
          _crearBotonRed(Colors.brown, Icons.addchart, 'Magnicide')
        ]),
        TableRow(children: [
          _crearBotonRed(
              Colors.purple, Icons.account_balance_wallet_outlined, 'Money'),
          _crearBotonRed(Colors.red, Icons.arrow_forward_outlined, 'Fire')
        ]),
        TableRow(children: [
          _crearBotonRed(Colors.black, Icons.last_page_sharp, 'WarZone'),
          _crearBotonRed(Colors.orange, Icons.vpn_key_outlined, 'Peace')
        ]),
      ],
    );
  }

  Widget _botonNavigationBarColor(BuildContext context) {
    return new Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
            primaryColor: Colors.pinkAccent,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_today,
                  size: 30.0,
                ),
                title: Container()),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.supervised_user_circle,
                  size: 30.0,
                ),
                title: Container()),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bubble_chart,
                  size: 30.0,
                ),
                title: Container())
          ],
        ));
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify Transaction',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text('Classify transaction into particular category',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ))
          ],
        ),
      ),
    );
  }

  Widget _fondoApp() {
    final cajaRosa = Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          height: 300.0,
          width: 300.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]),
            borderRadius: BorderRadius.circular(80.0),
          ),
        ));

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(52, 54, 101, 1.0),
        Color.fromRGBO(35, 37, 57, 1.0)
      ], begin: FractionalOffset(0.0, 0.6), end: FractionalOffset(0.0, 1.0))),
    );
    return Stack(
      children: [
        gradiente,
        Positioned(
          child: cajaRosa,
          top: -100,
        )
      ],
    );
  }
}
