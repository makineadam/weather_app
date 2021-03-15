import 'package:flutter/material.dart';

class Date {

  String monthName() {
    DateTime now = DateTime.now();

    int monthNo = now.month;
    String month;

    if (monthNo == 1) {
      month = 'January';
    } else if (monthNo == 2) {
      month = 'February';
    } else if (monthNo == 3) {
      month = 'March';
    } else if (monthNo == 4) {
      month = 'April';
    } else if (monthNo == 5) {
      month = 'May';
    } else if (monthNo == 6) {
      month = 'June';
    } else if (monthNo == 7) {
      month = 'July';
    } else if (monthNo == 8) {
      month = 'August';
    } else if (monthNo == 9) {
      month = 'September';
    } else if (monthNo == 10) {
      month = 'October';
    } else if (monthNo == 11) {
      month = 'November';
    } else if (monthNo == 12) {
      month = 'December';
    }
    return month;
  }

  String monthName2(int passedDays) {
    DateTime now2 = DateTime.now().add(Duration(days: passedDays));

    int monthNo2 = now2.month;
    String month2;

    if (monthNo2 == 1) {
      month2 = 'January';
    } else if (monthNo2 == 2) {
      month2 = 'February';
    } else if (monthNo2 == 3) {
      month2 = 'March';
    } else if (monthNo2 == 4) {
      month2 = 'April';
    } else if (monthNo2 == 5) {
      month2 = 'May';
    } else if (monthNo2 == 6) {
      month2 = 'June';
    } else if (monthNo2 == 7) {
      month2 = 'July';
    } else if (monthNo2 == 8) {
      month2 = 'August';
    } else if (monthNo2 == 9) {
      month2 = 'September';
    } else if (monthNo2 == 10) {
      month2 = 'October';
    } else if (monthNo2 == 11) {
      month2 = 'November';
    } else if (monthNo2 == 12) {
      month2 = 'December';
    }
    return month2;
  }



  int dayName() {
    DateTime now = DateTime.now();
    return now.day;
  }

  int dayName2(int passedDays) {
    DateTime now2 = DateTime.now().add(Duration(days: passedDays));
    return now2.day;
  }

  String weekDayName() {
    DateTime now = DateTime.now();
    int dayN = now.weekday;
    String dayName;

    if (dayN == 1) {
      dayName = 'Monday';
    } else if (dayN == 2) {
      dayName = 'Tuesday';
    } else if (dayN == 3) {
      dayName = 'Wednesday';
    } else if (dayN == 4) {
      dayName = 'Thursday';
    } else if (dayN == 5) {
      dayName = 'Friday';
    } else if (dayN == 6) {
      dayName = 'Saturday';
    } else if (dayN == 7) {
      dayName = 'Sunday';
    }
    return dayName;
  }

  String weekDayName2(int passedDays) {
    DateTime now2 = DateTime.now().add(Duration(days: passedDays));
    int dayN2 = now2.weekday;
    String dayName2;

    if (dayN2 == 1) {
      dayName2 = 'Monday';
    } else if (dayN2 == 2) {
      dayName2 = 'Tuesday';
    } else if (dayN2 == 3) {
      dayName2 = 'Wednesday';
    } else if (dayN2 == 4) {
      dayName2 = 'Thursday';
    } else if (dayN2 == 5) {
      dayName2 = 'Friday';
    } else if (dayN2 == 6) {
      dayName2 = 'Saturday';
    } else if (dayN2 == 7) {
      dayName2 = 'Sunday';
    }
    return dayName2;
  }
}