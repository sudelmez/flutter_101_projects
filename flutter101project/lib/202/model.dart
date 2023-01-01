class Postmodel1 {
  late int userId;
  late int id;
  late String
      title; //değer vermezse hepsine rastgele değerler verebiliriz. o değeri döndürür
  late String body;
}

class Postmodel2 {
  late int userId;
  late int id;
  late String title;
  late String body;
  Postmodel2(this.userId, this.id, this.title, this.body);
}

class Postmodel3 {
  int userId;
  int id;
  String title;
  String body;
  Postmodel3(
      {required this.userId,
      required this.id,
      required this.body,
      required this.title}); //süslü parantez koymak zorunda değiliz. koyduğumuz için named parametresi alır
}

class PostModel4 {
  final int? userId;
  final int? id;
  final String? title;
  String? body;

  PostModel4({this.userId, this.id, this.title, this.body});
  void updateBody(String? data) {
    if (data != null && data.isNotEmpty) {
      body = data;
    }
  }

  PostModel4 copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostModel4(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}
