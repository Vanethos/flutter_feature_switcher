import 'package:feature_switcher/ui/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class DiamondPage extends StatelessWidget {
  const DiamondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
        child: const Center(
          child: Text("Diamond Page"),
        ),
      ),
      bottomNavigationBar: const BottomBar(
        page: PageEnum.diamond,
      ),
    );
  }
}
