import 'package:feature_switcher/ui/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  const BasicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Basic Page"),
      ),
      bottomNavigationBar: BottomBar(
        page: PageEnum.basic,
      ),
    );
  }
}
