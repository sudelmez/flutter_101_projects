import 'package:flutter/material.dart';
import 'package:flutter101project/101/imagelearn.dart';
import 'package:flutter101project/101/navigatenextpge.dart';

class Navigationlearn extends StatefulWidget {
  const Navigationlearn({Key? key}) : super(key: key);

  @override
  State<Navigationlearn> createState() => _NavigationlearnState();
}

class _NavigationlearnState extends State<Navigationlearn>
    with Navigatormanager {
  List<int> selecteditems = [];
  void addselected(int index, bool isAdd) {
    setState(() {
      isAdd ? selecteditems.add(index) : selecteditems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return TextButton(
          onPressed: () async {
            final response = await Navigatesecongp<bool>(
                context,
                Navigatesecong(
                  context,
                  isOkey: selecteditems.contains(index),
                )); //bool şeklinde bir geri dönüş bekliyoruz. await eklersek async farz. async: aşağıdaki if satırına sadece sayfadan geri dönünce giriyor
            if (response is bool) {
              addselected(index,
                  response); //burası alttaki on presseddaydı ama buraya getirerek hangisine tıkladığımızı görmüş olduk.
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(
              color: selecteditems.contains(index) ? Colors.green : Colors.red,
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {},
        child: Icon(Icons.navigate_next_rounded),
      ),
    );
  }
}

mixin Navigatormanager {
  //static class
  void Navigatetowidget(BuildContext context, Widget widget) {
    //contexti versin, widgeti söylesin ben ona yollayayım.
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true, //sayfanın yukarıya doğru açılmasını sağlar
        settings: RouteSettings()));
  }

  //geri geleceğimiz senaryo:
  Future<T?> Navigatesecongp<T>(BuildContext context, Widget widget) {
    //<T> jenerik demek. alacağımız veriyi döndürür future ile
    //contexti versin, widgeti söylesin ben ona yollayayım.
    return Navigator.of(context).push<T>(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        settings: RouteSettings()));
  }
}
