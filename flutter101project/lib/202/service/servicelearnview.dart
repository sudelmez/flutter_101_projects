import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter101project/202/service/postmodel.dart';
import 'package:flutter101project/202/service/postservice.dart';

class Servicelearn extends StatefulWidget {
  const Servicelearn({Key? key}) : super(key: key);

  @override
  State<Servicelearn> createState() => _ServicelearnState();
}

class _ServicelearnState extends State<Servicelearn> {
  List<PostModel>? _items;
  String? name;
  bool _isloading = false;
  late final Dio _dio; //bi kere değer alır bir daha eşitlenmez
  final baseUrl2 = 'https://jsonplaceholder.typicode.com/';
  late final PostService _postservice;

  @override
  void initState() {
    // proje başladığında ilk çağırılacak yer
    super.initState();
    _postservice = PostService();
    _dio = Dio(BaseOptions(baseUrl: baseUrl2));
    //postman requestlerini ayrı ayrı tanımlamak yerine böyle yaptı
    name = 'sude'; //setstate içine almaya gerek yok.
    fetchitemsAdvance();
  }

  void changeloading() {
    //her seferinde tersi
    setState(() {
      _isloading = !_isloading;
    });
  }

  Future<void> fetchitems() async {
    changeloading();
    final response = await _dio.get(
        '/posts'); //future döneceği için await. bu kodu bekle, beklemeden alt satıra geçme...başındaki https://jsonplaceholder.typicode.com kısmını yukarıda dio tanımladığımız için sildik
    if (response.statusCode == HttpStatus.ok) {
      //bu işlem başarılıysa girer
      final _datas = response.data;

      if (_datas is List) {
        //list ise burada listenin özelliklerini kullanabiliyoruz
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
        //maplemek yeni bir obje üretmek demek. listeye göre yeni bir liste yapmak
        changeloading();
      }
    }
  }

  Future<void> fetchitemsAdvance() async {
    changeloading();
    _items = await _postservice.fetchitems();

    /*await Dio().get(
        'https://jsonplaceholder.typicode.com/posts'); //future döneceği için await. bu kodu bekle, beklemeden alt satıra geçme
    if (response.statusCode == HttpStatus.ok) {
      //bu işlem başarılıysa girer
      final _datas = response.data;

      if (_datas is List) {
        //list ise burada listenin özelliklerini kullanabiliyoruz
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
        //maplemek yeni bir obje üretmek demek. listeye göre yeni bir liste yapmak*/

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
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: _items?.length ?? 0, //length null ise 0
        itemBuilder: ((context, index) {
          return _cardpop(index);
        }),
      ) //servisten gelen datayı sıralı ve efektif gösterebilmek için builder kullandık
      ,
    );
  }

  Card _cardpop(int index) {
    //burayı widget olarak çıkaramadım
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(_items?[index].id.toString() ?? ''),
        subtitle: Text(_items?[index].body ?? ''),
      ),
    );
  }
}
