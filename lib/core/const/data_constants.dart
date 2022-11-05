import '../../screens/onboarding/widget/onboarding_tile.dart';
import '../const/text_constants.dart';
import '../const/path_constants.dart';
import '../../data/workout_data.dart';
import '../../data/exercise_data.dart';

class DataConstants {
  // Onboarding
  static final onboardingTiles = [
    OnboardingTile(
      title: TextConstants.onboarding1Title,
      imagePath: PathConstants.onboarding1,
      mainText: TextConstants.onboarding1Description,
    ),
    OnboardingTile(
      title: TextConstants.onboarding2Title,
      imagePath: PathConstants.onboarding2,
      mainText: TextConstants.onboarding2Description,
    ),
    OnboardingTile(
      title: TextConstants.onboarding3Title,
      imagePath: PathConstants.onboarding3,
      mainText: TextConstants.onboarding3Description,
    ),
    OnboardingTile(
      title: TextConstants.onboarding4Title,
      imagePath: PathConstants.onboarding3,
      mainText: TextConstants.onboarding4Description,
    )
  ];

  // Workouts
  static final List<WorkoutData> workouts = [
    WorkoutData(
        id: 'workout1',
        title: TextConstants.yogaTitle,
        exercises: TextConstants.yogaExercises,
        minutes: TextConstants.yogaMinutes,
        currentProgress: 0,
        progress: 3,
        image: PathConstants.yoga,
        exerciseDataList: [
          ExerciseData(
            id: 'exercise1',
            title: TextConstants.reclining,
            minutes: TextConstants.recliningMinutes,
            progress: 0,
            video: PathConstants.recliningVideo,
            description: TextConstants.warriorDescription,
            steps: [
              TextConstants.warriorStep1,
              TextConstants.warriorStep2,
              TextConstants.warriorStep1,
              TextConstants.warriorStep2,
              TextConstants.warriorStep1,
              TextConstants.warriorStep2,
            ],
          ),
          ExerciseData(
            id: 'exercise2',
            title: TextConstants.cowPose,
            minutes: TextConstants.cowPoseMinutes,
            progress: 0,
            video: PathConstants.cowPoseVideo,
            description: TextConstants.warriorDescription,
            steps: [TextConstants.warriorStep1, TextConstants.warriorStep2],
          ),
          ExerciseData(
            id: 'exercise3',
            title: TextConstants.warriorPose,
            minutes: TextConstants.warriorPoseMinutes,
            progress: 0,
            video: PathConstants.warriorIIVideo,
            description: TextConstants.warriorDescription,
            steps: [TextConstants.warriorStep1, TextConstants.warriorStep2],
          ),
        ]),
  ];
}
