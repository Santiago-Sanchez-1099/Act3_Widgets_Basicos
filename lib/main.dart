import 'package:flutter/material.dart';
import 'package:act3_widgets_basicos/pagina_inicial.dart';
import 'package:act3_widgets_basicos/pagina_dos.dart';
import 'package:act3_widgets_basicos/pagina_tres.dart';
import 'package:act3_widgets_basicos/pagina_cuatro.dart';
import 'package:act3_widgets_basicos/pagina_cinco.dart';
import 'package:act3_widgets_basicos/pagina_seis.dart';
import 'package:act3_widgets_basicos/pagina_siete.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre páginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
      },
    );
  }
}
