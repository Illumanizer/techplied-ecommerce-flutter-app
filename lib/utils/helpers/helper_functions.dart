import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AppHelperFunctions {
  static Color? getColor(String value) {
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'LightGreen') {
      return Colors.lightGreen;
    } else if (value == 'LightBlue') {
      return Colors.lightBlue;
    } else if (value == 'LightBlack') {
      return Colors.black;
    } else if (value == 'LightWhite') {
      return Colors.white;
    } else if (value == 'LightGrey') {
      return Colors.grey;
    } else if (value == 'DarkGreen') {
      return Colors.green;
    } else if (value == 'DarkRed') {
      return Colors.red;
    } else if (value == 'DarkBlue') {
      return Colors.blue;
    } else if (value == 'DarkYellow') {
      return Colors.yellow;
    } else if (value == 'DarkBlack') {
      return Colors.black;
    } else if (value == 'DarkWhite') {
      return Colors.white;
    } else if (value == 'DarkGrey') {
      return Colors.grey;
    } else {
      return null;
    }
  }

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'))
          ],
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  static String tranculateText(String text, int maxLength) {
    if (text.length > maxLength) {
      return '${text.substring(0, maxLength)}...';
    }
    return text;
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }
  static double screenHeight() {
    return screenSize().height;
  }
  static double screenWidth() {
    return screenSize().width;
  }
  static String getFormattedDate(DateTime? date,{String format='dd MM yyyy'}) {
    return DateFormat(format).format(date!);
  }
  static List removeDuplicates(List list){
    return list.toSet().toList(); 
  }
  static List<Widget> wrapWidgets(List<Widget> widgets,int rowSize) {
    final wrappedList=<Widget>[];
    for(var i=0;i<widgets.length;i+=rowSize){
      final rowWidgets=widgets.sublist(i, i+rowSize > widgets.length ? widgets.length : i+rowSize);
      final row=Row(
        children: rowWidgets,
      );
      wrappedList.add(row);
    }
    return wrappedList;
  }

}
