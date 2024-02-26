import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../utils/app_print.dart';

class DateTimeParserService {
  String PB_FORMAT = 'MMM dd yyyy';
  String PB_FORMAT2 = 'MM-dd-yyyy';
  String PB_FORMAT3 = 'yyyy MM dd';

  String timeDifferenceTillNowToDisplay(String stringDate, {myCurrentTime = false}) {
    String differenceInString = "Just now.";

    if(myCurrentTime){
      // convertToTimeZone('','');
    }

    DateTime oldTime = DateTime.parse(stringDate);

    Duration duration = DateTime.now().difference(oldTime);

    int years = (duration.inDays / 365).floor();

    int months = (duration.inDays / 30).floor();

    int weeks = (duration.inDays / 7).floor();

    int days = (duration.inDays).floor();

    int hours = duration.inHours.floor();

    int minutes = duration.inMinutes.floor();

    int seconds = duration.inSeconds.floor();

    if (years > 0) {
      return "${years}Y ago";
    } else if (months > 0) {
      return "${months}mon ago";
    } else if (weeks > 0) {
      return "${weeks}w ago";
    } else if (days > 0) {
      return "${days}d ago";
    } else if (hours > 0) {
      return "${hours}h ago";
    } else if (minutes > 0) {
      return "${minutes}m ago";
    } else if (seconds > 0) {
      return "${seconds}s ago";
    } else {
      return differenceInString;
    }
  }
  // DateTime convertToTimeZone(String utcTimeString, String timeZone) {
  //   // findSystemLocale().then(runTheRestOfMyProgram);
  //   // final inputFormat = DateFormat("E MMM d y H:m:s 'GMT'Z (z)");
  //   // final utcDateTime = inputFormat.parse(utcTimeString);
  //   // final location = getLocation(timeZone);
  //   final localDateTime = TZDateTime.from(utcDateTime, location);
  //   return localDateTime;
  // }
  String dateParser(String date, {String? format}) {
     String formatted = '';
    try{
      final DateTime parseDate = DateTime.parse(date);
      final DateFormat formatter = DateFormat(format ?? PB_FORMAT2, 'en_US');
      formatted = formatter.format(parseDate);
    }catch(e){
      formatted = date;
    }

    return formatted;
  }

  String pbParseDateOnly(String date){
    // DateFormat format = DateFormat("EEE MMM d yyyy HH:mm:ss");
    DateFormat format = DateFormat(PB_FORMAT3);
    var dateTime = format.parseUTC(date);
    DateTime dateOnly = DateTime(dateTime.year, dateTime.month, dateTime.day);
    return DateFormat(PB_FORMAT).format(dateOnly);
  }
  String pbParseDate2(String date, {format}){
    appDebugPrint(date);
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat(format ?? PB_FORMAT).format(dateTime);
    return formattedDate;
  }



  String pbParseTime(String date){
    DateFormat format = DateFormat("HH:mm:ss");
    var dateTime = format.parseUTC(date);
    DateTime dateOnly = DateTime(dateTime.year, dateTime.month, dateTime.day);
    return dateOnly.toString();
  }
  String pbParseTime3(DateTime date){
    DateFormat formatter = DateFormat(PB_FORMAT);
    return formatter.format(date);
  }

  DateTime getDate(String date, {format}) {
    if (date != '') {
      DateTime dateTime = DateFormat(format ?? PB_FORMAT).parse(date);
      return dateTime;
    }
    return DateTime.now();
  }

  TimeOfDay parseTimeString(String timeString) {

    List<String> parts = timeString.split(' ');
    if (parts.length != 2) {
      throw FormatException("Invalid time format: $timeString");
    }

    int? hour = int.tryParse(parts[0]);
    if (hour == null || hour < 1 || hour > 12) {
      throw FormatException("Invalid hour: $hour");
    }

    String period = parts[1].toUpperCase();
    if (period != 'AM' && period != 'PM') {
      throw FormatException("Invalid period: $period");
    }

    // Convert to 24-hour format if necessary
    if (period == 'PM' && hour != 12) {
      hour += 12;
    } else if (period == 'AM' && hour == 12) {
      hour = 0;
    }

    return TimeOfDay(hour: hour, minute: 0);
  }

  parseTimeInto24Hours(timeStr){
    try {
      DateTime time = DateFormat('h a').parse(timeStr);
      int hour = time.hour;
      return hour;
    } catch (e) {
      // Handle parsing errors, such as invalid time format
      appDebugPrint('Error parsing time: $timeStr');
      return -1; // Return a default value or indicate an error
    }
  }


  convertDateIntoTimeDateTime(dateTime){

    TimeOfDay timeOfDay = TimeOfDay.fromDateTime(dateTime);
    int hour = timeOfDay.hour;
    int minute = timeOfDay.minute;
    var period = timeOfDay.period.name;
    appDebugPrint('$hour:$minute $period');
    return '$hour:$minute $period';
  }
  String getCurrentDate() {
    final DateTime parseDate = DateTime.now();
    final DateFormat formatter = DateFormat(PB_FORMAT);
    final String formatted = formatter.format(parseDate);

    return formatted;
  }

  compareDates(String a, String b){
    DateTime dateA = parseCustomDate(a);
    DateTime dateB = parseCustomDate(b);
    return dateA.compareTo(dateB);
  }

  DateTime parseCustomDate(String createdAt) {

    String dateString = createdAt.split(' (')[0];
    final inputFormat = DateFormat('EEE MMM dd yyyy HH:mm:ss "GMT"Z');
    const customFormat = 'EEE MMM dd yyyy HH:mm:ss';
    return DateTime.parse(
      DateFormat(customFormat, 'en_US').parse(dateString).toString(),
    );
  }
  String getCurrentDateFormatted() {
    DateTime currentDate = DateTime.now();
    return DateFormat(PB_FORMAT).format(currentDate);
  }
  DateTime parseDateFormatted(date) {
    DateFormat dateFormat = DateFormat(PB_FORMAT);
    DateTime dateTime = dateFormat.parse(date);
    return dateTime;
  }

  DateTime tempDateConvert(DateTime dateTime){
    String formattedDateTime = DateFormat(PB_FORMAT).format(dateTime);
    return getDate(formattedDateTime);
  }


  String getCurrentDateInString(){
    var now = DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(now);
    return formattedDate;
  }

  String getFormattedDate(DateTime date) {
    var formatter = DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(date);
    return formattedDate;
  }


}

DateTimeParserService dateTimeParserService = DateTimeParserService();
