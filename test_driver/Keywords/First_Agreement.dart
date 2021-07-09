import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Object_Repository/xpath_library.dart' ;
import '../Object_Repository/UIElementsConstants.dart';
import 'package:meta/meta.dart';
import 'dart:io';


void justWait({@required int numberOfSeconds}) async {
  await Future.delayed(Duration(seconds: numberOfSeconds));
}

void firstAgreementTermsOfService (FlutterDriver driver) async{

  await driver.runUnsynchronized(() async {
    await driver.tap(firstAgreementUAButton);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("TermsOfUseView"));
  });

  await Process.run(
    'adb',
    <String>['shell', 'input', 'keyevent', 'KEYCODE_BACK'],
    runInShell: true,
  );

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("FirstTimeConsentView"));
  });
}

dynamic firstAgreementPrivacyPolicy (FlutterDriver driver) async{

  await driver.runUnsynchronized(() async {
    await driver.tap(firstAgreementPrivacyPolicyButton);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("PrivacyPolicyView"));
  });

  await Process.run(
    'adb',
    <String>['shell', 'input', 'keyevent', 'KEYCODE_BACK'],
    runInShell: true,
  );

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("FirstTimeConsentView"));
  });
}

dynamic firstAgreementLogin (FlutterDriver driver) async{

  await driver.runUnsynchronized(() async {
    await driver.tap(firstAgreementLoginButton);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("LoginView"));
  });

  await Process.run(
    'adb',
    <String>['shell', 'input', 'keyevent', 'KEYCODE_BACK'],
    runInShell: true,
  );

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("FirstTimeConsentView"));
  });


}

dynamic firstAgreementHome (FlutterDriver driver) async{

  await driver.runUnsynchronized(() async {
    await driver.tap(firstAgreementHomeButton);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("HomeView"));
  });
}

