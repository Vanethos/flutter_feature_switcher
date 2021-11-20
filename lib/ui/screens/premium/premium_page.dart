import 'package:feature_switcher/ui/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class PremiumPage extends StatelessWidget {
  const PremiumPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.yellow, child: const Center(child: Text("Diamond Page"),),),
      bottomNavigationBar: const BottomBar(page: PageEnum.premium,),
    );
  }
}