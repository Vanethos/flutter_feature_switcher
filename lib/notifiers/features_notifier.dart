import 'package:flutter_riverpod/flutter_riverpod.dart';

enum FeatureEnum {
  premium,
  diamond,
}

final featuresProvider =
    StateNotifierProvider<FeaturesNotifier, List<FeatureEnum>>((ref) {
  return FeaturesNotifier();
});

class FeaturesNotifier extends StateNotifier<List<FeatureEnum>> {
  FeaturesNotifier() : super([]);
  void addFeature(FeatureEnum feature) => state = [...state, feature];
  void removeFeature(FeatureEnum feature) => state = [...state..remove(feature)];
}
