import 'package:feature_switcher/notifiers/features_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeatureBuilder extends ConsumerWidget {
  final Widget Function(BuildContext, List<FeatureEnum>) builder;

  const FeatureBuilder({required this.builder, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final features = ref.watch<List<FeatureEnum>>(featuresProvider);
    return builder.call(context, features);
  }
}
