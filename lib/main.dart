import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main(){
runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Asad Piano",
      home: (HomeBody()),
    );
  }
}

var playAudio =AudioPlayer();

Widget tiledata(Color color , int musicNumber)
{
  return Expanded(
              child: GestureDetector(
                onTap:() {
                  
                  playAudio.setAsset('assets/assets_note$musicNumber.wav');
                  playAudio.play();
                },
                child: Container(
                  color: color,
                  child: Center(child: Text('Sa')),
                ),
              ),
            );
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            tiledata(Colors.red, 1),
            tiledata(Colors.green, 2),
            tiledata(Colors.blue, 3),
            tiledata(Colors.orange, 4),
            tiledata(Colors.purple, 5),
            tiledata(Colors.black, 6),
            tiledata(Colors.amber, 7),

          ],
        ),
        );
  }
}
