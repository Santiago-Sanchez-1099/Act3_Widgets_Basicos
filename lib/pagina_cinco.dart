import 'package:flutter/material.dart';
import 'package:act3_widgets_basicos/main.dart';

void main() => runApp(MiRutas());

class PantallaCinco extends StatelessWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff50f3ff),
        title: const Center(
          child: Text(
            'Pantalla 5', // Cambiado a Pantalla 5
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 30), // Espacio adicional arriba
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Widget023(), // Widget de autocompletado
          ),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Pantalla inicial'),
            ),
          ),
        ],
      ),
    );
  }
}

//! Autocomplete

class Widget023 extends StatelessWidget {
  const Widget023({Key? key}) : super(key: key);

  static const List<String> listItems = <String>[
    'apple',
    'banana',
    'melon',
    'orange',
    'grape',
    'pear',
    'pineapple',
    'strawberry',
  ]; // Lista ampliada de frutas

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return listItems.where((String item) {
          return item.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String item) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Seleccionaste: $item')),
        );
      },
      optionsViewBuilder: (context, onSelected, options) {
        return Material(
          elevation: 4,
          child: ListView.separated(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              final option = options.elementAt(index);
              return ListTile(
                title: Text(option),
                onTap: () => onSelected(option),
              );
            },
            separatorBuilder: (context, index) => Divider(height: 1),
            itemCount: options.length,
          ),
        );
      },
      fieldViewBuilder:
          (context, textEditingController, focusNode, onFieldSubmitted) {
        return TextField(
          controller: textEditingController,
          focusNode: focusNode,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Buscar frutas',
            hintText: 'Escribe a, b, m...',
          ),
        );
      },
    );
  }
}
