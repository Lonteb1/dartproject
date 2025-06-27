import 'dart:io';

void main() {
  print("--- Simple Student Grade Calculator ---");

  double getScore(String componentName) {
    stdout.write("Enter $componentName score: ");

    return double.parse(stdin.readLineSync() ?? '0');
  }

  double caScore = getScore("Continuous Assessment");
  double projectScore = getScore("Project");
  double examScore = getScore("Exam");

  double totalScore = caScore + projectScore + examScore;

  String grade;
  if (totalScore >= 80) {
    grade = 'A';
  } else if (totalScore >= 75) {
    grade = 'B+';
  } else if (totalScore >= 70) {
    grade = 'B';
  } else if (totalScore >= 65) {
    grade = 'C+';
  } else if (totalScore >= 60) {
    grade = 'C';
  } else if (totalScore >= 55) {
    grade = 'D+';
  } else if (totalScore >= 50) {
    grade = 'D';
  } else if (totalScore >= 45) {
    grade = 'E';
  } else {
    grade = 'F';
  }

  print("\n--------------------------");
  print("Total Score: ${totalScore.toStringAsFixed(1)} / 100.0");
  print("Final Grade: $grade");
  print("--------------------------");
}
