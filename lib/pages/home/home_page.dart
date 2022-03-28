import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:submission_flutter_dasar/pages/home/home_view_mobile.dart';
import 'package:submission_flutter_dasar/pages/home/home_view_tablet.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var timeNow = DateTime.now();
    var formattedDate = DateFormat('dd-MM-yyyy').format(timeNow);
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth <= 1120) {
          return HomePageMobile(
            date: convertToMonthName(formattedDate),
          );
        } else {
          return HomePageTablet(
            date: formattedDate,
          );
        }
      }),
    );
  }
}

String convertToMonthName(String formattedDate) {
  var splittedDate = formattedDate.split('-');
  String convertedMonth = "";

  if (splittedDate[1] == "01") {
    convertedMonth = "January";
  } else if (splittedDate[1] == "02") {
    convertedMonth = "February";
  } else if (splittedDate[1] == "03") {
    convertedMonth = "Maret";
  } else if (splittedDate[1] == "04") {
    convertedMonth = "April";
  } else if (splittedDate[1] == "05") {
    convertedMonth = "Mei";
  } else if (splittedDate[1] == "06") {
    convertedMonth = "Juni";
  } else if (splittedDate[1] == "07") {
    convertedMonth = "July";
  } else if (splittedDate[1] == "08") {
    convertedMonth = "Agustus";
  } else if (splittedDate[1] == "09") {
    convertedMonth = "September";
  } else if (splittedDate[1] == "10") {
    convertedMonth = "Oktober";
  } else if (splittedDate[1] == "11") {
    convertedMonth = "November";
  } else if (splittedDate[1] == "12") {
    convertedMonth = "Desember";
  }

  return "${splittedDate[0]} $convertedMonth, ${splittedDate[2]}";
}
