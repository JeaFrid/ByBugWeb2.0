import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:flutter/material.dart';

import '../theme/color.dart';

class ByBugDialg {
  
  static void showStory(BuildContext context, BoxConstraints constraints,
      String title, String text) {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.info,
      backgroundColor: BdColorDark.backgroundColor,
      textColor: Colors.white,
      titleColor: Colors.white,
      barrierColor: Colors.transparent,
      confirmBtnColor: BdColorDark.backgroundColor,
      width: constraints.maxWidth / 3,
      title: title,
      text: text,
      customAsset: "assets/images/bybug_stories.jpg",
      confirmBtnText: "Devam Et!",
    );
  }

  static void showSuccessful(BuildContext context, BoxConstraints constraints,
      String title, String text) {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.success,
      backgroundColor: BdColorDark.backgroundColor,
      textColor: Colors.white,
      titleColor: Colors.white,
      barrierColor: Colors.transparent,
      confirmBtnColor: BdColorDark.backgroundColor,
      width: constraints.maxWidth / 3,
      title: title,
      text: text,
      // customAsset: "assets/images/bybug_stories.jpg",
      confirmBtnText: "Kapat",
    );
  }

  static void error(BuildContext context, BoxConstraints constraints,
      String title, String text) {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.error,
      backgroundColor: BdColorDark.backgroundColor,
      textColor: Colors.white,
      titleColor: Colors.white,
      confirmBtnColor: Colors.transparent,
      title: title,
      confirmBtnText: "Tamam",
      text: text,
    );
  }

  static void info(BuildContext context, BoxConstraints constraints,
      String title, String text) {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.info,
      backgroundColor: BdColorDark.backgroundColor,
      textColor: Colors.white,
      titleColor: Colors.white,
      confirmBtnColor: Colors.transparent,
      title: title,
      confirmBtnText: "Tamam",
      text: text,
    );
  }
}
