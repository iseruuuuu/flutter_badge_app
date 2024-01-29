import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FlutterBadge extends StatelessWidget {
  const FlutterBadge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 0,
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                icon: Badge(
                  label: Text('100'),
                  alignment: AlignmentDirectional.topEnd,
                ),
              ),
              Tab(
                icon: Badge(
                  label: Text('100'),
                  alignment: AlignmentDirectional.center,
                ),
              ),
              Tab(
                icon: Badge(
                  alignment: AlignmentDirectional.centerEnd,
                  label: Text('100'),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
