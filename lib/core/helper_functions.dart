import 'package:flutter/cupertino.dart';

enum Platform {
  web,
  tab,
  mobile,
}

enum PlatformStanding {
  greaterWeb,
  webStart,
  webCenter,
  webEnd,
  tabStart,
  tabCenter,
  tabEnd,
  mobile,
}

class HelperFunctions {
  static Platform getPlatform(BuildContext context) {
    if (MediaQuery.of(context).size.width > 400 &&
        MediaQuery.of(context).size.width <= 500) {
      return Platform.mobile;
    } else if (MediaQuery.of(context).size.width > 500 &&
        MediaQuery.of(context).size.width < 1000) {
      return Platform.tab;
    } else {
      return Platform.web;
    }
  }

  static PlatformStanding getPlatformStanding(BuildContext context) {
    if (MediaQuery.of(context).size.width > 0 &&
        MediaQuery.of(context).size.width <= 500) {
      return PlatformStanding.mobile;
    } else if (MediaQuery.of(context).size.width > 500 &&
        MediaQuery.of(context).size.width <= 650) {
      return PlatformStanding.tabEnd;
    } else if (MediaQuery.of(context).size.width > 650 &&
        MediaQuery.of(context).size.width <= 800) {
      return PlatformStanding.tabCenter;
    } else if (MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width <= 1000) {
      return PlatformStanding.tabStart;
    } else if (MediaQuery.of(context).size.width > 1000 &&
        MediaQuery.of(context).size.width <= 1150) {
      return PlatformStanding.webEnd;
    } else if (MediaQuery.of(context).size.width > 1150 &&
        MediaQuery.of(context).size.width <= 1300) {
      return PlatformStanding.webCenter;
    }
    else if (MediaQuery.of(context).size.width > 1300 &&
        MediaQuery.of(context).size.width <= 1500) {
      return PlatformStanding.webStart;
    }
    else {
      return PlatformStanding.greaterWeb;
    }
  }
}
