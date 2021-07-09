import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Object_Repository/xpath_library.dart' ;
import '../Object_Repository/UIElementsConstants.dart';
import 'package:meta/meta.dart';
import 'dart:io';



void justWait({@required int numberOfSeconds}) async {
  await Future.delayed(Duration(seconds: numberOfSeconds));
}

dynamic goToCompanyList (FlutterDriver driver) async {

  await driver.runUnsynchronized(() async {
    await driver.tap(homePageButton);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("TutorialView"));
  });

  await driver.runUnsynchronized(() async {
    await driver.tap(tutorialSkipButton);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("HomeNavigationBarView"));
  });

  await Process.run(
    'adb',
    <String>['shell', 'input', 'keyevent', 'KEYCODE_BACK'],
    runInShell: true,
  );

  await driver.runUnsynchronized(() async {
    await driver.tap(moreButton);
  });

  await justWait(numberOfSeconds: 5);

  await driver.runUnsynchronized(() async {
    await driver.tap(dataProvidingCompanyListButton);
  });

}

dynamic companyListElementCheck (FlutterDriver driver) async {

  await justWait(numberOfSeconds: 5);

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(companyListTitle), companyListTitleText);
  });


}

dynamic backToHomePage (FlutterDriver driver) async {


  await Process.run(
    'adb',
    <String>['shell', 'input', 'keyevent', 'KEYCODE_BACK'],
    runInShell: true,
  );




}