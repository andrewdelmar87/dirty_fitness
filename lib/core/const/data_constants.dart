import 'package:flutter/material.dart';

import '../../screens/onboarding/widget/onboarding_tile.dart';
import '../const/text_constants.dart';
import '../const/path_constants.dart';

class DataConstants {
  // Onboarding
  static final onboardingTiles = [
    OnboardingTile(
      title: TextConstants.onboarding1Title,
      imagePath: PathConstants.onboarding1,
      mainText: TextConstants.onboarding1Description,
    ),
    OnboardingTile(
      title: TextConstants.onboardingTitle,
      imagePath: PathConstants.onboarding2,
      mainText: TextConstants.onboarding2Description,
    ),
    OnboardingTile(
      title: TextConstants.onboarding3Title,
      imagePath: PathConstants.onboarding3,
      mainText: TextConstants.onboarding3Description,
    )
  ];
}
