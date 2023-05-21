import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
 String time = 'Loading';
  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Kigali', flag: 'kigali.png', url: 'Africa/Kigali');
    await instance.getTime();
    setState(() {
      time = instance.time;
    });
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
    });
  }

  @override
  void initState(){
    super.initState();
    setupWorldTime();

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text(time),
      )
    );
  }
}
