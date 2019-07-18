import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo    = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle( fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      )
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?cs=srgb&dl=arch-bridge-clouds-814499.jpg&fm=jpg'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Lago con un puente', style: estiloTitulo),
                  SizedBox(height: 8.0),
                  Text('Un lago en alemania', style: estiloSubTitulo),
                ],
              ),
            ),

            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0
            ),
            Text('41', style: TextStyle( fontSize: 20.0 ))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _crearAccion(Icons.call, 'CALL'),
        _crearAccion(Icons.near_me, 'ROUTE'),
        _crearAccion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _crearAccion(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 15.0),
        Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Text(
          'Reprehenderit anim occaecat laboris quis pariatur incididunt sunt cupidatat ea. Amet veniam aliquip consectetur sunt eu magna in elit reprehenderit nostrud dolore. Cupidatat fugiat labore cillum quis deserunt nulla nisi qui. Reprehenderit nisi adipisicing reprehenderit sint aliquip aliquip elit dolor.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}