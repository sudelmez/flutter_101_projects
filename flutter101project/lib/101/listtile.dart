import 'package:flutter/material.dart';

class Listtilelearn extends StatelessWidget {
  const Listtilelearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
              title: Text('my cart'),
              onTap: () {},
              subtitle: Text('how do you use your card?'),
              leading: Icon(Icons.money),
              trailing: Icon(Icons.chevron_right)) //sağdaki ok,)
        ],
      ),
    );
  }
}
