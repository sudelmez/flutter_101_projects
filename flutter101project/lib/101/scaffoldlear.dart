import 'package:flutter/material.dart';
import 'package:flutter101project/101/containerlearn.dart';

class Scaffoldlearning extends StatelessWidget {
  const Scaffoldlearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, //aşağıda görünmeyen ekran varsa o açılır
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => Container(height: 200));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(), //yandan açılan ekran
      /* bottomSheet: BottomSheet(
          onClosing: () {},
          builder: (context) {
            return Text('aa');
          }), //açılabilen text*/
      appBar: AppBar(
        title: Center(child: Text('scaffold deneme')),
      ),
      body: Text('selam'),
      bottomNavigationBar: Container(
        decoration: Boxdecoration(),
        height: 100,
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_outlined), label: 'a'),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_outlined), label: 'b')
        ]),
      ),
    );
  }
}
