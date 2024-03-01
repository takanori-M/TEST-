import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatScreens extends StatelessWidget {
  const ChatScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Theme.of(context).canvasColor,
        elevation: .6,
        title: const Text(
          'Netくん',
          style: TextStyle(
            color: Colors.black87
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black87
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
             Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 32.0,
                ),
                child: Column(
                  children: <Widget>[
                    rightBalloon(),
                    leftBalloon(),
                    rightBalloon(),
                    leftBalloon(),
                    rightBalloon(),
                  ],
                ),
              )
            ),
            textInputWidget(),
          ],
        ),
      ),
    );
  }

  Padding leftBalloon() {
    return Padding(
                    padding: const EdgeInsets.only(bottom: 28.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          child: ClipOval(
                            child: Image.asset('assets/img/Image(3).jpg'),
                          ),
                        ),
                        const SizedBox(width: 16.0,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 233, 233, 233),
                          ),
                          padding: const EdgeInsets.all(16.0),
                          child: Text('仕事ならいくらでも与えるよ'),
                        )
                      ],
                    ),
                  );
  }

  Padding rightBalloon() {
    return Padding(
                    padding: const EdgeInsets.only(bottom: 28.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40),
                            bottomLeft: Radius.circular(40)
                          ),
                          gradient: LinearGradient(
                            begin: FractionalOffset.topLeft,
                            end: FractionalOffset.bottomRight,
                            colors: [
                            Color.fromARGB(255, 108, 132, 235),
                            Color.fromARGB(250, 132, 199, 250)
                            ],
                            stops: [
                              0.0,
                              1.0,
                            ]
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            "Flutterって便利だね",
                            style: TextStyle(
                            color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
  }

  SizedBox textInputWidget() {
    return SizedBox(
            height: 48,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.camera_alt_outlined),
                  iconSize: 28,
                  color: Colors.black45,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.photo_outlined),
                  iconSize: 28,
                  color: Colors.black45,
                  onPressed: () {},
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color:Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: const TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.mic),
                  iconSize: 28,
                  color: Colors.black45,
                  onPressed: () {},
                ),
              ],
            ),
          );
  }
}