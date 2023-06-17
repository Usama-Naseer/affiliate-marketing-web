import 'package:flutter/cupertino.dart';

enum Platform {
  web,
  ipad,
  tab,
  mobile,
}

class HelperFunctions {
  static Platform getPlatform(BuildContext context) {

    if (MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 600) {
      return Platform.mobile;
    } else if (MediaQuery.of(context).size.width > 600 && MediaQuery.of(context).size.width < 1000) {
      return Platform.tab;
    } else if (MediaQuery.of(context).size.width > 1000 && MediaQuery.of(context).size.width < 1400) {
      return Platform.ipad;
    } else {
      return Platform.web;
    }
  }
}
