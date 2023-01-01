import 'package:flutter/material.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = _titleWidget(context: context);
    var data = 'Create a note';
    var data2 = 'go back';
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(),
      body: Padding(
        padding: PaddingTime.horizontalPadding,
        child: Column(
          children: [
            AssetImage(name: 'Red_Apple'),
            text,
            Padding(
              padding:
                  PaddingTime.horizontalPadding + PaddingTime.verticalPadding,
              child: _subtitletext(),
            ),
            const Spacer(),
            _createbutton(data, context),
            TextButton(onPressed: () {}, child: Text(data2)),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton _createbutton(String data, BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: SizedBox(
          height: 50,
          child: Center(
              child: Text(
            data,
            style: Theme.of(context).textTheme.headline5,
          ))),
    );
  }
}

class _titleWidget extends StatelessWidget {
  const _titleWidget({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Text(
      'create your first note',
      style:
          Theme.of(context).textTheme.headline5!.copyWith(color: Colors.black),
    );
  }
}

class _subtitletext extends StatelessWidget {
  const _subtitletext({Key? key, this.textAlign = TextAlign.center})
      : super(key: key); //vermezse align center olur
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    var s = 'add a note';
    return Text(
      s * 8,
      textAlign: TextAlign.center,
      style:
          Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.amber),
    );
  }
}

class PaddingTime {
  static const EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding =
      const EdgeInsets.symmetric(vertical: 20);
}

class AssetImage extends StatelessWidget {
  const AssetImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_NamewithPath, fit: BoxFit.cover);
  }

  String get _NamewithPath => 'assets/$name.jpg';
}
