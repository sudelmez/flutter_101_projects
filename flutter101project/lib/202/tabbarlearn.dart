import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> with TickerProviderStateMixin {
  late final TabController _tabcontroller;

  void initStane() {
    super.initState();
    _tabcontroller = TabController(length: 2, vsync: this);

    @override
    Widget build(BuildContext context) {
      return DefaultTabController(
        length: 2,
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _tabcontroller.animateTo(0);
            },
          ),
          bottomNavigationBar: const BottomAppBar(
            child: TabBar(indicatorColor: Colors.amber, //buton rengi vb
                tabs: [
                  Tab(
                    text: 'first',
                  ),
                  Tab(
                    text: 'second',
                  )
                ]),
            notchMargin: 10,
          ),
          appBar: AppBar(
            bottom: TabBar(controller: _tabcontroller, tabs: [
              Tab(
                text: 'first',
              ),
              Tab(
                text: 'second',
              )
            ]),
          ),
          body: TabBarView(controller: _tabcontroller, children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            )
          ]),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
//hatalı