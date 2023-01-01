import 'package:flutter/material.dart';
import 'package:flutter101project/202/model.dart';

class Modellearn extends StatefulWidget {
  const Modellearn({Key? key}) : super(key: key);

  @override
  State<Modellearn> createState() => _ModellearnState();
}

class _ModellearnState extends State<Modellearn> {
  final user1 = Postmodel1();
  var user4 = PostModel4(body: 'a');
  void initState() {
    super.initState();

    //final verdiğimiz için sonradan değiştiremeyiz. değiştirebilmek için:
    Postmodel3 user3 = Postmodel3(userId: 4, id: 4, body: 'sd', title: 'dnm');
    final user2 = Postmodel2(1, 2, 'selam', 'mrb');

    user1.userId = 3; //burada tanımlamalar yapabiliriz.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user4 = user4.copyWith(title: 'vb');
            user4.updateBody(null);
          });
        },
      ),
      appBar: AppBar(
        title: Text(user4.title ?? 'data not found'),
      ),
    );
  }
}
