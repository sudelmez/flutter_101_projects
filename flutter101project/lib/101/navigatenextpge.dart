import 'package:flutter/material.dart';

class Navigatesecong extends StatefulWidget {
  const Navigatesecong(BuildContext context, {Key? key, required this.isOkey})
      : super(key: key); //defaultu false
  final bool isOkey;
  @override
  State<Navigatesecong> createState() => _NavigatesecongState();
}

class _NavigatesecongState extends State<Navigatesecong> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context)
                      .pop(!widget.isOkey); //istenilen bool değeri döndürüyoruz
                },
                icon: Icon(Icons.check),
                label: widget.isOkey ? Text('onayla') : Text('Reddet'))));
  }
}
