import 'package:flutter/material.dart';

class Buttonlearn extends StatelessWidget {
  const Buttonlearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text('a'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.green;
                }
                return Colors.white;
              }),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('b')),
          IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit_outlined)),
          FloatingActionButton(onPressed: () {}),
          OutlinedButton(
            onPressed: () {},
            child: Text('c'),
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.pink,
                shape: CircleBorder(),
                padding: EdgeInsets.all(10)),
          ),
          InkWell(
            child: Text('data'),
            onTap: () {},
          ) //texti buton yapmak için inkwell kullanırız.
          //bir butonu düzenlemek için sized box veya container ile sarabiliriz.
          ,
          SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('button'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              )),
        ],
      ),
    );
  }
}
