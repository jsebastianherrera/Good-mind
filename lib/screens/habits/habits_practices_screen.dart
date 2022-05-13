import 'package:flutter/material.dart';

import 'habits.dart';

class HabitAndPractices extends StatefulWidget {
  const HabitAndPractices({Key? key}) : super(key: key);

  @override
  State<HabitAndPractices> createState() => _HabitAndPracticesState();
}

class _HabitAndPracticesState extends State<HabitAndPractices>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'HÁBITOS'),
    Tab(text: 'PRÁCTICAS'),
  ];
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
      ),
      body: const Habits(),
    );
  }
}
