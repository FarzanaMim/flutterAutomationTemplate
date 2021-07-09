import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

import '../Object_Repository/xpath_library.dart' ;
import '../Object_Repository/UIElementsConstants.dart';
import 'package:meta/meta.dart';
import 'dart:io';



void justWait({@required int numberOfSeconds}) async {
  await Future.delayed(Duration(seconds: numberOfSeconds));
}

dynamic goToHomeScreen (FlutterDriver driver) async {

  await driver.runUnsynchronized(() async {
    await driver.tap(homePageButton);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("TutorialView"));
  });

  await driver.runUnsynchronized(() async {
    await driver.tap(tutorialSkipButtonNB);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("HomeNavigationBarView"));
  });

  await Process.run(
    'adb',
    <String>['shell', 'input', 'keyevent', 'KEYCODE_BACK'],
    runInShell: true,
  );


}

dynamic goToMyPageScreen (FlutterDriver driver) async {

  await driver.runUnsynchronized(() async {
    await driver.tap(myPagelink);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("MyPageView"));
  });


}

dynamic goToFavoriteScreen (FlutterDriver driver) async {

  await driver.runUnsynchronized(() async {
    await driver.tap(favouritePage);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("FavouriteView"));
  });

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(favoriteCheck), favoriteCheckText);
  });


}