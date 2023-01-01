import 'package:flutter/material.dart';
//ctrl+space

class Textview extends StatelessWidget {
  const Textview({Key? key}) : super(key: key);
  final String name = 'sude';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ('selam $name , ${name.length} ' * 10), //*10, 10 kere yazdırır
            maxLines: 2, //maksimum 2 satır
            overflow: TextOverflow
                .ellipsis, //yazının devamı varsa sonuna 3 nokta ekler
            textAlign:
                TextAlign.center, //textin hangi konumda yazılacağını belirler
            style: Projectstyle.welcomesty,
          ),
          Text(
            ('selam $name , ${name.length} ' * 10), //*10, 10 kere yazdırır
            maxLines: 2, //maksimum 2 satır
            overflow: TextOverflow
                .ellipsis, //yazının devamı varsa sonuna 3 nokta ekler
            textAlign:
                TextAlign.center, //textin hangi konumda yazılacağını belirler
            style: Theme.of(context).textTheme.headline5!.copyWith(
                color: Colors
                    .pink), //libdeki hazır temayı kullanıp sadece renk ekledik
          ),
        ],
      ),
    ) //ctrl+space
        );
  }
}

class Projectstyle {
  static TextStyle welcomesty = const TextStyle(
      color: Colors.amberAccent,
      wordSpacing: 2,
      letterSpacing: 2,
      decoration: TextDecoration.lineThrough,
      fontStyle: FontStyle.italic); //texte çizgi verdik ve stilini değiştirdik
}
