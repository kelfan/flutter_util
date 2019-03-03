import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';

class Filer {
  static Future<String> getFilePath() async {
    try {
      String filePath = await FilePicker.getFilePath(type: FileType.ANY);
      print("File path: " + filePath);
      return filePath;
    } catch (e) {
      print("Error while picking the file: " + e.toString());
      return "";
    }
  }

  static Future<String> get getLocalPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }
}
