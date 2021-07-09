import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Keywords/Privacy_policy.dart' as privacy;
import '../Keywords/common_methods.dart' as common;




void main() {
  group('Privacy Policy - ', ()
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

    test("Opening app and go to home with home navigation bar", () async =>await privacy.goToHomeScreen(driver));

    test(" go to my page screen", () async =>await privacy.goToMyPageScreen(driver));

    test(" go to notification screen", () async =>await privacy.privacyPolicyVerification(driver));

    //test(" go to my page screen from notification", () async =>await privacy.infoScreenBack(driver)); Enable this when Webview is changed and gives control to flutter

  });
}