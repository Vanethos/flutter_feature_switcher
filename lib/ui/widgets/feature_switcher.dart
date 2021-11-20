import 'package:feature_switcher/notifiers/features_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeatureSwitcher extends ConsumerWidget {
  final FeatureEnum feature;
  final Widget child;

  const FeatureSwitcher({required this.feature, required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final features = ref.watch<List<FeatureEnum>>(featuresProvider);
    if (features.contains(feature)) {
      return child;
    }
    return const SizedBox();
  }
}