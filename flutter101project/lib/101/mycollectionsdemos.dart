import 'package:flutter/material.dart';

class MyCollect extends StatefulWidget {
  const MyCollect({Key? key}) : super(key: key);

  @override
  State<MyCollect> createState() => _MyCollectState();
}

class _MyCollectState extends State<MyCollect> {
  late List<CollectionModel>
      items; //late sonradan değer alıyor demek. late final olursa değer alır ve hiç değişmez.

  void initState() {
    super.initState();
    items = Collectionitems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemCount: items.length, //bu kadar çiz demek
        itemBuilder: (context, index) {
          return _CardCategory(model: items[index]);
        },
      ),
    );
  }
}

class _CardCategory extends StatelessWidget {
  const _CardCategory({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: Paddingutility().PaddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: Paddingutility().generalpadding,
          child: Column(
            children: [
              Expanded(
                  child: Image.asset(
                _model.imagePad,
                fit: BoxFit.cover,
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_model.title),
                  Text('${_model.price} eth'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePad;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePad, required this.title, required this.price});
}

class Paddingutility {
  final PaddingBottom = const EdgeInsets.only(bottom: 40);
  final generalpadding = const EdgeInsets.all(8.0);
}

class Collectionitems {
  late List<CollectionModel> items;
  Collectionitems() {
    items = [
      CollectionModel(
          imagePad: 'assets/png-transpaflag.png', title: 'flag', price: 3.4),
      CollectionModel(
          imagePad: 'assets/png-transpaflag.png', title: 'flag', price: 3.4),
      CollectionModel(
          imagePad: 'assets/png-transpaflag.png', title: 'flag', price: 3.4),
      CollectionModel(
          imagePad: 'assets/png-transpaflag.png', title: 'flag', price: 3.4),
    ];
  }
}
