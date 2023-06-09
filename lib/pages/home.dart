import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};
  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)?.settings?.arguments as Map;

    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
          child: Column(
            children: <Widget> [
              ElevatedButton.icon(
                  onPressed: (){
                    Navigator.pushNamed(context, '/location');
                  },
                icon: const Icon(Icons.edit_location),
                label: const Text('Edit Location'),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                    Text(
                      data['location'],
                      style: const TextStyle(
                          fontSize: 28.0,
                          letterSpacing: 2.0
                      ),
                    ),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 66.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
