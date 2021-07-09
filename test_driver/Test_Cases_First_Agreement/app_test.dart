import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Keywords/First_Agreement.dart' as firstAgreement;
import '../Keywords/common_methods.dart' as common;




void main() {
  group('First Agreement test - ', ()
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

    test("Opening app and go to home with home navigation bar", () async =>await firstAgreement.firstAgreementLogin(driver));

    //test(" go to my page screen", () async =>await firstAgreement.firstAgreementPrivacyPolicy(driver));   Enable this when Webview is changed and gives control to flutter

    //test(" go to notification screen", () async =>await firstAgreement.firstAgreementTermsOfService(driver));  Enable this when Webview is changed and gives control to flutter

    test(" go to my page screen from notification", () async =>await firstAgreement.firstAgreementHome(driver));

  });
}