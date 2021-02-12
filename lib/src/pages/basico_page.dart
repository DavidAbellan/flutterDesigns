import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Listview == Column con scroll
        //Single child otra forma de scroll
        body: SingleChildScrollView(
      child: Column(
        children: [_crearImagen(), _crearTitulo(), _acciones(), _crearTexto()],
      ),
    ));
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Una tenacidad y La maldición de Neymar con los octavos de final de la Champions League podría continuar una temporada más. El crack del Paris Saint-Germain se ha retirado lesionado en el partido de treindaidosavos de final de Copa de Francia contra el Caen a una semana de medirse contra el Barcelona. El partido de Pochettino declaró: "tiene unas molestias en los adductores, esperemos que sea poca cosa. Veremos mañana con los doctores, por ahora no sabemos si no es nada o si es para varias Di María ya es bajaLas noticias no son buenas para el Paris Saint-Germain. El propio Pochettino lo confirmó en rueda de prensa: "No va a poder estar contra el Barcelona, el club ya comunicará los pasos que tendrá que seguir. Trataremos de sacar en cualquier partido el mejor equipo, que esté al 100% en todas las posiciones. Es un jugador importante pero tenemos una plantilla larga".Además, Keylor Navas es duda. Pochettino, en este caso, no descartó que el meta pueda jugar contra el Barcelona. semanas". El brasileño abandonó el estadio visiblemente cojeando. ida, cabe recordar, está fijado para el 16 de febrero en el Camp Nou. trabajo que lleva por bandera, pero que no le hacen ser una persona reservada ni esquiva. Todo lo contrario. Sus compañeros lo tienen por ',
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _crearImagen() {
    return Image(
        image: NetworkImage(
            'https://www.marinareservation.com/articles/wp-content/uploads/2017/02/Lavender-fields-cover.jpg'));
  }

  Widget _crearTitulo() {
    //SafeArea para problemas de visualización cuando giramos el móvil
    //agrega separaciones por defecto para que se vea mejor
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            //Expanded para que ocupe todo el ancho posible
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'El Campo de mi tio ',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'O no...',
                    style: estiloSubTitulo,
                  )
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text(
              '41',
              style: TextStyle(fontSize: 40.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _acciones() {
    return Row(
      //Space evenly distribuye a el hueco de sus hijos de manera proporcional
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _crearAccion(Icons.call, 'llama'),
        _crearAccion(Icons.near_me, 'Route'),
        _crearAccion(Icons.share, 'Compartir')
      ],
    );
  }

  Widget _crearAccion(IconData icon, String texto) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }
}
