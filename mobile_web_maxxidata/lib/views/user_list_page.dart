import 'package:flutter/material.dart';

class PageFunction extends StatefulWidget {
  PageFunction({Key? key}) : super(key: key);

  @override
  State<PageFunction> createState() => _PageFunctionState();
}

class _PageFunctionState extends State<PageFunction> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 300,
          ),
          child: Column(
            children: [
              Card(
                color: Colors.orange,
                child: ListTile(
                  title: Text('Empresa'),
                ),
              ),
              Card(
                color: Colors.orange,
                child: ListTile(
                  title: Text('Negócios'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// subtitle: Text('Negócios'),