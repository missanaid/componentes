import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[900],
          title: Text('Avatar Page'),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.anmosugoi.com/wp-content/uploads/2020/04/Kimetsu-no-Yaiba-inosuke-2.jpg'),
                radius: 25.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text('IH'),
                backgroundColor: Colors.orange[900],
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
        body: Center(
          child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://i.ytimg.com/vi/1Tz47XGgo74/maxresdefault.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
          ),
        ));
  }
}
