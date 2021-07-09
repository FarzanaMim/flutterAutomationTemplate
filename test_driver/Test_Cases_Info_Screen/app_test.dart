import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Keywords/Info_Screen.dart' as info;
import '../Keywords/common_methods.dart' as common;




void main() {
  group('Information Screen - ', ()
  {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    test('check flutter driver health', () async {
      Health health = await driver.checkHealth();
      print(health.status);
    });
    test("Splash Page", () async =>await common.openApp(driver));

    test("Opening app and go to home with home navigation bar", () async =>await info.goToHomeScreen(driver));

    test(" go to my page screen", () async =>await info.goToMyPageScreen(driver));

    test(" go to notification screen", () async =>await info.infoScreenVerification(driver));

    //test(" go to my page screen from notification", () async =>await info.infoScreenBack(driver)); Enable this when Webview is changed and gives control to flutter

  });
}