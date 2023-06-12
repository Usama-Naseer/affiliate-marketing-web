import 'package:flutter/cupertino.dart';

enum Platform {
  web,
  tab,
  mobile,
}

class HelperFunctions {

  static Platform getPlatform(BuildContext context) {
    if (MediaQuery.of(context).size.width > 1000) {
      return Platform.web;
    } else if (MediaQuery.of(context).size.width < 1000 &&
        MediaQuery.of(context).size.width > 600) {
      return Platform.tab;
    } else {
      return Platform.mobile;
    }
  }
}
