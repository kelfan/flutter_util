import 'package:flutter/services.dart';
import 'package:simple_permissions/simple_permissions.dart';

class Permit{
  static Future checkExternal() async {
    PermissionStatus res = await SimplePermissions.requestPermission(Permission. WriteExternalStorage);

//    print("permit"+res.toString());

    if (res == PermissionStatus.denied) {
      SystemNavigator.pop();
    }

  }
}