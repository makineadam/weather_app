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

  int dayName() {
    DateTime now = DateTime.now();
    return now.day;
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
}