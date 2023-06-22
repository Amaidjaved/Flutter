import 'dart:io';

// Map<String, int> monthMap = {
//     "January": 1,
//     "February": 2,
//     "March": 3,
//     "April": 4,
//     "May": 5,
//     "June": 6,
//     "July": 7,
//     "August": 8,
//     "September": 9,
//     "October": 10,
//     "November": 11,
//     "December": 12
//   };
Map<String, dynamic> my_detail = {
  "Name": 'Amaid Javed',
  "Age": 23,
  "Adress": 'Dhoke ratta, Rawlpindi',
  "markingMAD": [100,55,44, 33, 22]
};
Map<String, List> grade_boundariesMAD = {
  'A': [70, 100],
  'B': [60, 69],
  'C': [50, 59],
  'D': [40, 49],
  'E': [30, 39],
  'F': [0, 29],
};
void main() {
//   print("Entre the current month");
//   String fMonth = stdin.readLineSync()!;
//   print("Entre the last month");
//   String lMonth = stdin.readLineSync()!;
//   int sMonth = monthMap[fMonth]!;
//   int eMonth = monthMap[lMonth]!;
//   int? rMonth;
//   if (sMonth < eMonth) {
//     rMonth = eMonth - sMonth;
//     print("Remaining months from $fMonth to $lMonth are $rMonth.");
//     for (MapEntry month in monthMap.entries) {
//       if (month.value >= sMonth && month.value < eMonth) {
//         print(month.key);
//       }
//     }
//   } else {
//     rMonth = 12 - sMonth + eMonth;
//     print("Remaining months from $fMonth to $lMonth are $rMonth.");
//     for (MapEntry month in monthMap.entries) {
//       if (month.value >= sMonth && month.value <= 12) {
//         print(month.key);
//       }
//     }
//     for (MapEntry month in monthMap.entries) {
//       if (month.value < eMonth) {
//         print(month.key);
//       }
//     }
//   }

  print("Student personal Details(LMS)");
  my_detail.forEach((key, value) {
    print("$key ,$value");
  });
  int gradelength = (my_detail['markingMAD']).length;
  List gradeList = [];
  for (int i = 0; i < gradelength; i++) {
    for (MapEntry grade in grade_boundariesMAD.entries) {
      if (my_detail['markingMAD'][i] >= grade.value[0] && my_detail['markingMAD'][i] <= grade.value[1]) {
        gradeList.add(grade.key);
      }
    }
  }
  my_detail.addEntries({'gradeMAD': gradeList}.entries);
  print("Student personal Details with grades(LMS)");
  my_detail.forEach((key, value) {
    print("$key ,$value");
  });
}
