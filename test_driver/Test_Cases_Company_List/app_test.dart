import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Keywords/Company_List.dart' as companyList;
import '../Keywords/LogIn.dart' as login;
import '../Object_Repository/UIElementsConstants.dart';
import '../Keywords/common_methods.dart' as common;
import 'dart:io';

void main() {
  group('Data Providing Company List - ', ()
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

    test("Going to Company List Screen",() async =>await companyList.goToCompanyList(driver));

    test("Checking UI of Company List Screen",() async =>await companyList.companyListElementCheck(driver));

    test("Checking back button of Company List Screen",() async =>await companyList.backToHomePage(driver));

    /*test('go to login page', () async {
      login.goToLoginScreen(driver);
    });

    test('login to app', () async {
      login.loginToApp(driver, loginEmail, loginPassword);
    });

    test('Going to Company List page', () async {
      companyList.goToCompanyList(driver);
    });

    test('Checking all elements', () async {
      companyList.companyListElementCheck(driver);
    });

    test('back to home screen', () async {
      companyList.backToHomePage(driver);
    });*/


  });
}