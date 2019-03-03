class Log {
  static bool on = true;

  static void info(String msg) {
    if (on) {
      print("[info] " + msg);
    }
  }

  static void warn(String msg) {
    if (on) {
      print("[warn] " + msg);
    }
  }

  static void error(Error err, String msg) {
    if (on) {
      print("[warn] " + msg);
      print(err);
    }
  }

  static void fatal(String msg) {
    if (on) {
      print("[fatal] " + msg);
    }
  }
}
