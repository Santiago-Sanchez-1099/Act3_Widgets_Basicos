import 'package:flutter/material.dart';
import 'package:act3_widgets_basicos/main.dart';

void main() => runApp(MiRutas());

class PantallaSeis extends StatelessWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5382ff),
        title: const Center(
          child: Text(
            'Pantalla 6',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: Widget028(), // Widget de BottomNavigationBar
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Pantalla inicial'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

//! BottomNavigationBar

class Widget028 extends StatefulWidget {
  const Widget028({Key? key}) : super(key: key);

  @override
  State<Widget028> createState() => _Widget028State();
}

class _Widget028State extends State<Widget028> {
  int _currentIndex = 0;
  final List<Widget> _bodyContent = const [
    Icon(Icons.home, size: 100, color: Colors.blue),
    Icon(Icons.menu, size: 100, color: Colors.green),
    Icon(Icons.person, size: 100, color: Colors.orange),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: _bodyContent[_currentIndex],
          ),
        ),
        BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          backgroundColor: Color(0xff50ffbd), // Coincide con el AppBar
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              label: 'Inicio',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Menú',
              icon: Icon(Icons.menu),
            ),
            BottomNavigationBarItem(
              label: 'Perfil',
              icon: Icon(Icons.person),
            )
          ],
        ),
      ],
    );
  }
}
