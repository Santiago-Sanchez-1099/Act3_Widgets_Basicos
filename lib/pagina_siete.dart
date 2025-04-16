import 'package:flutter/material.dart';
import 'package:act3_widgets_basicos/main.dart';

void main() => runApp(MiRutas());

class PantallaSiete extends StatelessWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffba51ff),
        title: const Center(
          child: Text(
            'Pantalla 7', // Cambiado a Pantalla 7
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              // Para permitir desplazamiento si hay muchos items
              child: Column(
                children: [
                  Widget034(), // Widget CheckboxListTile
                  SizedBox(height: 20),
                  _buildCustomCheckboxListTile(
                    title: "Opción Premium",
                    subtitle: "Acceso a todas las funciones",
                    value: false,
                  ),
                  _buildCustomCheckboxListTile(
                    title: "Notificaciones",
                    subtitle: "Recibir alertas importantes",
                    value: true,
                  ),
                  _buildCustomCheckboxListTile(
                    title: "Modo Oscuro",
                    subtitle: "Activar tema oscuro",
                    value: false,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Pantalla inicial'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  // Método auxiliar para crear CheckboxListTiles personalizados
  Widget _buildCustomCheckboxListTile({
    required String title,
    required String subtitle,
    required bool value,
  }) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return CheckboxListTile(
          title: Text(title),
          subtitle: Text(subtitle),
          value: value,
          onChanged: (bool? newValue) {
            setState(() {
              value = newValue ?? false;
            });
          },
          activeColor: Color(0xff50ffbd), // Coincide con el AppBar
          checkColor: Colors.black,
          tileColor: Colors.black12,
          controlAffinity: ListTileControlAffinity.leading,
        );
      },
    );
  }
}

//! CheckboxListTile

class Widget034 extends StatefulWidget {
  const Widget034({Key? key}) : super(key: key);

  @override
  State<Widget034> createState() => _Widget034State();
}

class _Widget034State extends State<Widget034> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CheckboxListTile(
        title: const Text('Checkbox Principal'),
        value: _isChecked,
        onChanged: (bool? newValue) {
          setState(() {
            _isChecked = newValue;
          });
        },
        activeColor: Color(0xff50ffbd), // Coincide con el AppBar
        checkColor: Colors.black,
        tileColor: Colors.black12,
        subtitle: const Text('Este es un ejemplo básico'),
        controlAffinity: ListTileControlAffinity.leading,
        tristate: true,
        secondary: Icon(Icons.settings), // Icono adicional
      ),
    );
  }
}
