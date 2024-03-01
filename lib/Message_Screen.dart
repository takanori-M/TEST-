import 'package:flutter/material.dart';
import "package:test1/chat_screen.dart";

class MessageScreen extends StatelessWidget {
  const MessageScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
              return ChatScreens();
            }));
          },
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 8.0,
          ),
          leading: ClipOval(child: Image.asset('assets/img/Image(2).jpg'),
          ),
          trailing: Text('3分前'),
          title: Text('Netくん'),
          subtitle: Text('暇で仕方ないっすわ（笑）'),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 8.0,
          ),
          leading: ClipOval(child: Image.asset('assets/img/Image(3).jpg'),
          ),
          trailing: Text('3分前'),
          title: Text('Tomorrowくん'),
          subtitle: Text('良い加減仕事回してほしいですね'),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 8.0,
          ),
          leading: ClipOval(child: Image.asset('assets/img/Image(2).jpg'),
          ),
          trailing: Text('3分前'),
          title: Text('Netくん'),
          subtitle: Text('暇で仕方ないっすわ（笑）'),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 8.0,
          ),
          leading: ClipOval(child: Image.asset('assets/img/Image(3).jpg'),
          ),
          trailing: Text('3分前'),
          title: Text('Tomorrowくん'),
          subtitle: Text('良い加減仕事回してほしいですね'),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 8.0,
          ),
          leading: ClipOval(child: Image.asset('assets/img/Image(2).jpg'),
          ),
          trailing: Text('3分前'),
          title: Text('Netくん'),
          subtitle: Text('暇で仕方ないっすわ（笑）'),
        ),
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 8.0,
          ),
          leading: ClipOval(child: Image.asset('assets/img/Image(3).jpg'),
          ),
          trailing: Text('3分前'),
          title: Text('Tomorrowくん'),
          subtitle: Text('良い加減仕事回してほしいですね'),
        ),
      ],
    );
  }
}