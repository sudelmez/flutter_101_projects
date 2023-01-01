import 'package:flutter/material.dart';

class Lifecyc extends StatefulWidget {
  const Lifecyc({Key? key, required this.message}) : super(key: key);
  final String message;
  @override
  State<Lifecyc> createState() => _LifecycState();
}

class _LifecycState extends State<Lifecyc> {
  String _message = '';
  late final bool _isodd;

  @override
  void didChangeDependencies() {
    //ekran çizdirmeden önce, initstateden sonra çalışır
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
//dispose sayfayı temizlemek için kullanılır. özellikle sayfayı değiştirdiğmizde

  @override
  void didUpdateWidget(covariant Lifecyc oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget); //eğer widgettaki veri değiştiyse çalışır
  }

  void initState() {
    super.initState();
    _message = widget.message;
    _isodd = widget.message.length.isOdd;
    //initstateten sonra stateful ekran çizilir
    _computeitem();
  }

  void _computeitem() {
    if (_isodd) {
      _message += ' tek';
    } else {
      _message += ' çift';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: widget.message.length.isOdd
              ? Text('kelime tek')
              : Text(
                  'kelime çift'), //widget.message ile gelen inputa erişiriz. burada kelime tek mi çift mi diye baktık
        ),
        body: _isodd
            ? TextButton(onPressed: () {}, child: Text(_message))
            : ElevatedButton(onPressed: () {}, child: Text(_message)));
  }
}
