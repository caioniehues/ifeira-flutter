// ignore_for_file: prefer_const_constructors, avoid_print
import 'package:flutter/material.dart';
import 'login_page.dart';

import 'setUrl_page.dart';

/// This is the stateful widget that the main application instantiates.
class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<TelaInicial> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Feed Inicial',
      style: optionStyle,
    ),
    Text(
      'Carrinho',
      style: optionStyle,
    ),
    Text(
      'Acho q é o perfil aqui',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text("Ifeira - Teste"),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text('Menu de Testes'),
            ),
            Card(
              child: ListTile(
                title: const Text('Modo Escuro'),
                trailing: Icon(Icons.dark_mode_outlined),
                onTap: () {
                  Navigator.pop(context); //faz ele fechar o overlay
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Sair'),
                trailing: Icon(
                  Icons.exit_to_app,
                  color: Colors.red,
                ),
                //trailing: Icon(Icons.exit_app),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => TelaLogin()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('URL config'),
                trailing: Icon(
                  Icons.open_in_browser,
                  color: Colors.blue
                ),
                //trailing: Icon(Icons.exit_app),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Urlconfig()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Inicio',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Carrinho',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Perfil',
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
