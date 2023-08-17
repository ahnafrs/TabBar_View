import 'package:day17/page1.dart';
import 'package:day17/page2.dart';
import 'package:day17/page3.dart';
import 'package:flutter/material.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(
      length: 3,
      vsync: this,
    );
    // TODO: implement initState
    super.initState();
  }

  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar Demo'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.pink[50],
            child: TabBar(
                controller: tabController,
                labelColor: Colors.red,
                unselectedLabelColor: Colors.pink[300],
                indicatorColor: Colors.pink,
                tabs: [
                  Tab(
                    text: 'Page 1',
                  ),
                  Tab(
                    text: 'Page 2',
                  ),
                  Tab(
                    text: 'Page 3',
                  ),
                ]),
          ),
          Expanded(
              child: TabBarView(
            controller: tabController,
            children: [Page1(), Page2(), Page3()],
          )),
        ],
      ),
    );
  }
}
