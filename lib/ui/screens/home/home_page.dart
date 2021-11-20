import 'package:feature_switcher/notifiers/features_notifier.dart';
import 'package:feature_switcher/ui/widgets/bottom_bar.dart';
import 'package:feature_switcher/ui/widgets/feature_builder.dart';
import 'package:feature_switcher/ui/widgets/feature_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SizedBox(
                height: 20.0,
              ),
              FeatureEnabler(
                feature: FeatureEnum.premium,
                color: Colors.yellow,
                label: "Premium",
              ),
              FeatureSwitcher(
                feature: FeatureEnum.premium,
                child: Text("💰", style: TextStyle(fontSize: 24.0),),
              ),
              SizedBox(
                height: 20.0,
              ),
              FeatureEnabler(
                feature: FeatureEnum.diamond,
                color: Colors.purple,
                label: "Purple",
              ),
              FeatureSwitcher(
                feature: FeatureEnum.diamond,
                child: Text("💎", style: TextStyle(fontSize: 24.0),),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(
        page: PageEnum.home,
      ),
    );
  }
}

class FeatureEnabler extends ConsumerWidget {
  final FeatureEnum feature;
  final String label;
  final Color color;
  const FeatureEnabler(
      {required this.feature,
      required this.label,
      required this.color,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FeatureBuilder(builder: (context, features) {
      final hasFeature = features.contains(feature);
      return MaterialButton(
        color: color,
        child: Text("${hasFeature ? 'Disable' : 'Enable'} $label"),
        onPressed: () => hasFeature
            ? ref.read(featuresProvider.notifier).removeFeature(
                  feature,
                )
            : ref.read(featuresProvider.notifier).addFeature(
                  feature,
                ),
      );
    });
  }
}
