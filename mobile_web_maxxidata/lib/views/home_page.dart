import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_web_maxxidata/views/menu_page.dart';
import 'package:mobile_web_maxxidata/views/user_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo.shade900,
          centerTitle: true,
          title: const Text(
            'MaxxiData',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        drawer: const MenuPage(),
        body: FutureBuilder<dynamic>(
          future: pegarUsuarios(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    var usuario = snapshot.data![index];
                    return Card(
                      color: Colors.white54,
                      elevation: 1,
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      UsuarioPage(usuario: usuario)));
                        },
                        leading: const CircleAvatar(child: Text('Foto')),
                        title: Text(usuario['nome']),
                        subtitle: Text(usuario['tipoDeProfissional']),
                      ),
                    );
                  });
            } else if (snapshot.hasError) {
              return Center(child: Text('${snapshot.error}'));
            }
            return Center(
              child: Column(
                children: const [
                  CircularProgressIndicator(),
                ],
              ),
            );
          },
        ));
  }
}

// Consumindo a API.
pegarUsuarios() async {
  final url = Uri.parse('http://localhost:3000/usuarios');
  var resposta = await http.get(url);
  if (resposta.statusCode == 200) {
    return jsonDecode(resposta.body);
  } else {
    throw Exception('Não foi possivel carregar os usuários');
  }
}
