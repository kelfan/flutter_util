import 'package:flutter_util/log.dart';
import 'package:flutter_util/toast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class Config {
  static const String Settings = "setting";
  static const String settingPath = "setting_path";
  static const String settingFile = "/config.json";

  static Map configs = new Map();
  static SharedPreferences prefs;

  static void init() async {
    // get object to persistent settings.
    SharedPreferences.getInstance().then((pref) {
      prefs = pref;
      String settings = prefs.getString(Settings) ?? "";
      if (settings != "") {
        configs = json.decode(settings);
      }
      Log.info("Init setting: " + json.encode(configs));
    });
  }

  static void set(String key, String value) {
    configs[key] = value;
    save();
  }

  static void save() {
    if (prefs != null) {
      prefs.setString(Settings, json.encode(configs));
      Log.info("Save setting done.");
    } else {
      Toaster.error("Error in saving settings");
      Log.warn("Error in saving settings");
    }
  }
}
