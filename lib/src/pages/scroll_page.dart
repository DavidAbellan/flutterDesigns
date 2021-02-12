import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  final stiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [_pagina1(), _pagina2()],
      ),
    );
  }

  Widget _pagina1() {
    // Stack Coloca uno encima del otro
    return Stack(
      children: [
        _colorDeFondo(),
        _textos(),
      ],
    );
  }

  Widget _colorDeFondo2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.greenAccent,
    );
  }

  Widget _colorDeFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Text('11º', style: stiloTexto),
          Text('Miércoles', style: stiloTexto),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white)
        ],
      ),
    );
  }

  Widget _botonBienvenido() {
    return Center(
      child: RaisedButton(
          shape: StadiumBorder(),
          onPressed: () => {},
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              'Bienvenido',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          )),
    );
  }

  Widget _pagina2() {
    return Stack(
      children: [_colorDeFondo2(), _botonBienvenido()],
    );
  }
}
