import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter101project/202/service/postmodel.dart';

class Servicepostlearn extends StatefulWidget {
  const Servicepostlearn({Key? key}) : super(key: key);

  @override
  State<Servicepostlearn> createState() => _ServicelearnState();
}

class _ServicelearnState extends State<Servicepostlearn> {
  String? name;
  bool _isloading = false;
  late final Dio _dio; //bi kere değer alır bir daha eşitlenmez
  final baseUrl2 = 'https://jsonplaceholder.typicode.com/';

  TextEditingController _titlecont = TextEditingController();
  TextEditingController _useridcont = TextEditingController();
  TextEditingController _bodycont = TextEditingController();

  @override
  void initState() {
    // proje başladığında ilk çağırılacak yer
    super.initState();

    _dio = Dio(BaseOptions(baseUrl: baseUrl2));
    //postman requestlerini ayrı ayrı tanımlamak yerine böyle yaptı
    name = 'sude'; //setstate içine almaya gerek yok.
  }

  void changeloading() {
    //her seferinde tersi
    setState(() {
      _isloading = !_isloading;
    });
  }

  Future<void> _additemtoservice(PostModel postmdl) async {
    //servise yolluyoruz
    changeloading();
    final response = await _dio.post('posts', data: postmdl);
    if (response.statusCode == HttpStatus.ok) {
      name = 'basarili';
    }
    changeloading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name ?? ''),
        actions: [
          _isloading
              ? const CircularProgressIndicator.adaptive()
              : const SizedBox.shrink()
        ],
      ),
      body: Column(
        children: [
          TextField(
            controller: _useridcont, textInputAction: TextInputAction.next,
            //inputFormatters: [], //sayı dışında karakter girilemesin
            autofillHints: [AutofillHints.creditCardNumber],
            keyboardType: TextInputType.number, //number geleceği için
            decoration: InputDecoration(labelText: 'userId '),
          ),
          TextField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            controller: _titlecont,
            decoration: InputDecoration(labelText: 'title '),
          ),
          TextField(
            textInputAction: TextInputAction.next,
            controller: _bodycont,
            decoration: InputDecoration(labelText: 'body '),
          ),
          TextButton(
            onPressed: _isloading
                ? null
                : () {
                    if (_titlecont.text.isNotEmpty &&
                        _useridcont.text.isNotEmpty &&
                        _bodycont.text.isNotEmpty) {
                      final model = PostModel(
                          body: _bodycont.text,
                          name: _titlecont.text,
                          id: int.tryParse(_useridcont.text));
                      _additemtoservice(model);
                    }
                  },
            child: Text('send'),
          ),
        ],
      ),
    );
  }
}
