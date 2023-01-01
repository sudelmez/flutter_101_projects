//post servisi burada yönetiyoruz

import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter101project/202/service/postmodel.dart';

class PostService {
  late final Dio _dio; //bi kere değer alır bir daha eşitlenmez
  PostService()
      : _dio =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  Future<bool> additemtoservice(PostModel postmdl) async {
    //servise yolluyoruz
    final response = await _dio.post('posts', data: postmdl);
    return response.statusCode == HttpStatus.created; //bool doğru ise döndürür

    //service kısmında changeloading olmaz
  }

  Future<List<PostModel>?> fetchitems() async {
    final response = await _dio.get(_postservicepath.posts.name);
    //future döneceği için await. bu kodu bekle, beklemeden alt satıra geçme...başındaki https://jsonplaceholder.typicode.com kısmını yukarıda dio tanımladığımız için sildik
    if (response.statusCode == HttpStatus.ok) {
      //bu işlem başarılıysa girer
      final _datas = response.data;

      if (_datas is List) {
        return _datas.map((e) => PostModel.fromJson(e)).toList();
      }
    } else {
      return null;
    }
  }
}

enum _postservicepath { posts, comments }
