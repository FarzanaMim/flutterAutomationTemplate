import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Keywords/Present_Application.dart' as presentApp;
import '../Keywords/LogIn.dart' as login;
import '../Object_Repository/UIElementsConstants.dart';
import '../Keywords/Terms_Of_Use.dart' as terms;
import '../Keywords/common_methods.dart' as common;

void main() {
  group('Present Application - ', ()
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

    test("Going to Present Info Screen",() async =>await presentApp.goToPresentApp(driver));

    test("Checking Elements of Present Info Screen",() async =>await presentApp.presentAppElementCheck(driver));

    test("Checking Registration Button of Present Info Screen",() async =>await presentApp.presentAppRegButton(driver));

    test("Go back to home from Present Info Screen",() async =>await presentApp.goBackToHome(driver));


  });
}