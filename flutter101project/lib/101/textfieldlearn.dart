import 'package:flutter/material.dart';

class Textfl extends StatefulWidget {
  const Textfl({Key? key}) : super(key: key);

  @override
  State<Textfl> createState() => _TextflState();
}

class _TextflState extends State<Textfl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
        maxLength: 20,
        buildCounter: (BuildContext context,
            {int? currentLength, bool? isFocused, int? maxLength}) {
          return Container(
            height: 10,
            width: 40,
            color: Colors.green[100 *
                (currentLength ??
                    0)], //bu kısımda istediğimiz gibi kural koyabiliyoruz
          );

          //focusnode sayfa açılınca txtfield focuslar
          //mainde input decoration tema olarak decore edebiliriz
        },
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.mail),
            border: OutlineInputBorder(),
            labelText: 'mail'),
      ),
    );
  }
}
