import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Keywords/Terms_Of_Use.dart' as terms;
import '../Keywords/common_methods.dart' as common;




void main() {
  group('Terms of Use - ', ()
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

    test("Opening app and go to home with home navigation bar", () async =>await terms.goToHomeScreen(driver));

    test(" go to my page screen", () async =>await terms.goToMyPageScreen(driver));

    test(" go to notification screen", () async =>await terms.termsOfUseVerification(driver));

    //test(" go to my page screen from notification", () async =>await privacy.infoScreenBack(driver)); Enable this when Webview is changed and gives control to flutter

  });
}