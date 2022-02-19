class CalorieCalculatorBrain {
  late String fullname;
  late int age;
  late int height;
  late double _calorieM;
  late double _calorieF;
  late double weight;
  late double startingWeight;
  late double currentWeight;
  late double goalWeight;

  CalorieCalculatorBrain({
    required this.fullname,
    required this.age,
    required this.height,
    required this.startingWeight,
    required this.currentWeight,
    required this.goalWeight,
  });

  String calculateCalorieForMen() {
    _calorieM = 66 + (6.2 * weight) + (12.7 * height) - (6.76 * age);
    return _calorieM.toStringAsFixed(1);
  }

  String calculateCalorieForFemale() {
    _calorieF = 655.1 + (4.35 * weight) + (4.7 * height) - (4.7 * age);
    return _calorieF.toStringAsFixed(1);
  }

  // String calorieCounting() {
  //
  // }
}
