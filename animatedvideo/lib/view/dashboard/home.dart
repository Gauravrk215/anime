import 'package:flutter/material.dart';

import '../../commans/widgets/custome_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      drawer: const MyCustomDrawer(),
    );
  }
}
