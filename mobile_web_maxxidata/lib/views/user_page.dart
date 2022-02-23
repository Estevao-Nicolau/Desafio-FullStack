import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsuarioPage extends StatelessWidget {
  Map<String, dynamic> usuario;

  UsuarioPage({Key? key, required this.usuario}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(usuario['nome']),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Color.fromARGB(255, 255, 174, 0),
      body: Stack(children: <Widget>[
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 6,
              ),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.height / 2.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Text(
                            usuario['nome'],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: Text(
                              usuario['tipoDeProfissional'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            child: Divider(color: Colors.red),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1,
                            child: SizedBox(
                                child: Card(
                              color: Colors.greenAccent,
                              elevation: 6,
                              child: Container(
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    children: <Widget>[
                                      Text("Acesse o Site usando este Usuário")
                                    ],
                                  )),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1,
                            child: SizedBox(
                                child: Card(
                              color: Colors.blueAccent,
                              elevation: 6,
                              child: Container(
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    children: <Widget>[
                                      Text("Tarefas para este usuario")
                                    ],
                                  )),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1,
                            child: SizedBox(
                                child: Card(
                              color: Colors.yellowAccent,
                              elevation: 6,
                              child: Container(
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    children: <Widget>[
                                      Text("Enviar Relatórios")
                                    ],
                                  )),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1,
                            child: SizedBox(
                                child: Card(
                              color: Colors.white30,
                              elevation: 6,
                              child: Container(
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Sala da Reunião",
                                      )
                                    ],
                                  )),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
              width: 20,
            ),
            Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    // Sombra nas Bordas.
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 25.0,
                      spreadRadius: 0.1,
                    ),
                  ],
                ),
                child: Text('FOTO DO USUARIO')) // Foto do Usuario.
          ],
        )),
      ]),
    );
  }
}
