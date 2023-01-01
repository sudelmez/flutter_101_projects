import 'package:flutter/material.dart';

class Listviewlearn extends StatefulWidget {
  const Listviewlearn({Key? key}) : super(key: key);

  @override
  State<Listviewlearn> createState() => _ListviewlearnState();
}

class _ListviewlearnState extends State<Listviewlearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //Spacer(), //sayfanın yarısından başlatıyor
          Expanded(
            child: ListView(
              children: [
                FittedBox(
                  //componentin olduğu yere düzgün sıkışmasını sağlar
                  child: Text(
                    'selam',
                    style: Theme.of(context).textTheme.headline4,
                    maxLines: 1,
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: 300,
                ),
                Divider(),
                SizedBox(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        color: Colors.green,
                        width: 50,
                      ),
                      Container(
                        color: Colors.white,
                        width: 50,
                      ),
                      Container(
                        color: Colors.green,
                        width: 50,
                      ),
                      Container(
                        color: Colors.white,
                        width: 50,
                      ),
                      Container(
                        color: Colors.green,
                        width: 50,
                      ),
                      Container(
                        color: Colors.white,
                        width: 50,
                      ),
                      Container(
                        color: Colors.green,
                        width: 50,
                      ),
                      Container(
                        color: Colors.white,
                        width: 50,
                      ),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                FittedBox(
                  //componentin olduğu yere düzgün sıkışmasını sağlar
                  child: Text(
                    'selam',
                    style: Theme.of(context).textTheme.headline4,
                    maxLines: 1,
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: 300,
                ),
                Divider(),
                SizedBox(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        color: Colors.green,
                        width: 50,
                      ),
                      Container(
                        color: Colors.white,
                        width: 50,
                      ),
                      Container(
                        color: Colors.green,
                        width: 50,
                      ),
                      Container(
                        color: Colors.white,
                        width: 50,
                      ),
                      Container(
                        color: Colors.green,
                        width: 50,
                      ),
                      Container(
                        color: Colors.white,
                        width: 50,
                      ),
                      Container(
                        color: Colors.green,
                        width: 50,
                      ),
                      Container(
                        color: Colors.white,
                        width: 50,
                      ),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                listdemo(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class listdemo extends StatefulWidget {
  const listdemo({Key? key}) : super(key: key);

  @override
  State<listdemo> createState() => _listdemoState();
}

class _listdemoState extends State<listdemo> {
  void initState() {
    super.initState(); //aşağı inişleri sayar
    print('hello');
  }

  void dispose() {
    super.dispose(); //çıkışları sayar
    print('exit');
  }

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
