import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_web_maxxidata/views/user_list_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        child: ListView(
          children: <Widget>[
            Divider(color: Colors.indigo),
            ListTile(
              leading: FlutterLogo(),
              title: Text('Nome da Empressa'),
              tileColor: Colors.orange,
              // onTap: () {},
            ),
            Divider(
              color: Colors.indigo,
            ),
            Card(
              elevation: 6,
              color: Colors.blue,
              child: ListTile(
                leading: Icon(Icons.add_chart),
                trailing: Icon(Icons.arrow_forward),
                title: Text('Empresa e Negócios'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageFunction()),
                  );
                },
              ),
            ),
            Card(
              elevation: 6,
              color: Colors.blue,
              child: ListTile(
                leading: Icon(Icons.precision_manufacturing_outlined),
                trailing: Icon(Icons.arrow_forward),
                title: Text('Serviços e Tecnologia'),
                onTap: null,
              ),
            ),
            Card(
              elevation: 6,
              color: Colors.blue,
              child: ListTile(
                leading: Icon(Icons.emoji_people_outlined),
                trailing: Icon(Icons.arrow_forward),
                title: Text('Pessoas'),
                onTap: null,
              ),
            ),
            Card(
              elevation: 6,
              color: Colors.blue,
              child: ListTile(
                leading: Icon(Icons.contact_phone),
                trailing: Icon(Icons.arrow_forward),
                title: Text('Contato'),
                onTap: null,
              ),
            ),
            Card(
              color: Colors.blue,
              elevation: 6,
              child: ListTile(
                leading: Icon(Icons.language_sharp),
                trailing: Icon(Icons.arrow_forward),
                title: Text('Idioma'),
                onTap: null,
              ),
            ),
            // Divider(height: 100, thickness: 20),
          ],
        ),
      ),
    );
  }
}
