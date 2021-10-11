// ignore_for_file: prefer_const_constructors, avoid_print, use_function_type_syntax_for_parameters, unused_field, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/Material.dart';
import 'package:ifeira_testes/pages/login_page.dart';

class TelaInicial extends StatelessWidget {
//Função pra saber o item selecionado (mudar a corzinha)
  int _selectedIndex = 0;

  void setState(int index) {
    _selectedIndex = index;
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
              child: Text('Menu'),
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
                title: const Text('Testes Telas'),
                trailing: Icon(Icons.swipe),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => TelaInicial()),
                  ); //faz ele fechar o overlay
                },
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: <Widget>[],
        ),
      ),
      //Barrinha de icones inferior
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
        onTap: setState,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
      ),
    );
  }
}
