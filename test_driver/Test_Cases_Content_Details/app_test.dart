import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Keywords/Content_Details.dart' as content;
import '../Keywords/LogIn.dart' as login;
import '../Object_Repository/UIElementsConstants.dart';
import '../Keywords/Terms_Of_Use.dart' as terms;
import '../Keywords/common_methods.dart' as common;

void main() {
  group('Content Details - ', ()
  {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    test('check flutter driver health', () async {
      Health health = await driver.checkHealth();
      print(health.status);
    });

    test("Splash Page", () async => await common.openApp(driver));

    test("Going to Content Details Screen", () async => await content.goToContentDetailsScreen(driver));

    test("Content Details Screen Elements check", () async => await content.contentDetailsElementCheck(driver));

    test("Content Details Screen Elements check", () async => await content.contentDetailsBack(driver));

  });
}