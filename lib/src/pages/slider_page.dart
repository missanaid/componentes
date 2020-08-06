import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _blockearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        backgroundColor: Colors.amber[900],
        title: Text('Slider Page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.amber[900],
        label: 'Tamaño de la Imagen',
        inactiveColor: Colors.black54,
        value: _valorSlider,
        min: 10.0,
        max: 400.0,
        onChanged: (_blockearCheck)
            ? null
            : (valor) {
                setState(() {
                  _valorSlider = valor;
                });
              });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://media0.giphy.com/media/XbaQRbXnwpgzYVV0sE/giphy.gif'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _checkBox() {
    return CheckboxListTile(
      title: Text(
        'Bloquear Slider',
        style: TextStyle(color: Colors.amber[900]),
      ),
      value: _blockearCheck,
      activeColor: Colors.amber[900],
      onChanged: (valor) {
        setState(() {
          _blockearCheck = valor;
        });
      },

      // return Checkbox(
      //   value: _blockearCheck,
      //   activeColor: Colors.amber[900],
      //   onChanged: (valor) {
      //     setState(() {
      //       _blockearCheck = valor;
      //     });
      //   },
      // );
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text(
        'Bloquear Slider',
        style: TextStyle(color: Colors.amber[900]),
      ),
      value: _blockearCheck,
      activeColor: Colors.amber[900],
      onChanged: (valor) {
        setState(() {
          _blockearCheck = valor;
        });
      },
    );
  }
}
