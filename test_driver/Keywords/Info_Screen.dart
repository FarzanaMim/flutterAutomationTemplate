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
    await driver.tap(tutorialSkipButtonIS);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("HomeNavigationBarView"));
    await justWait(numberOfSeconds: 5);
  });


}


dynamic goToMyPageScreen (FlutterDriver driver) async {
  await driver.runUnsynchronized(() async {
    await driver.tap(myPagelink);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("MyPageView"));
    await justWait(numberOfSeconds: 3);
  });

  await driver.runUnsynchronized(() async {

    await driver.scrollIntoView(others);
  });

  await driver.runUnsynchronized(() async {
    await driver.tap(infoButton);
    await justWait(numberOfSeconds: 3);
    //await driver.waitFor(find.byType("MyPageView"));
  });

}

dynamic infoScreenVerification (FlutterDriver driver) async {

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("NotificationView"));
  });
  await justWait(numberOfSeconds: 3);

  await Process.run(
    'adb',
    <String>['shell', 'input', 'keyevent', 'KEYCODE_BACK'],
    runInShell: true,
  );

  /*await driver.runUnsynchronized(() async {

    expect(await driver.getText(infoTitle), infoTitleText);
  });*/

}

dynamic infoScreenBack (FlutterDriver driver) async {

  await Process.run(
    'adb',
    <String>['shell', 'input', 'keyevent', 'KEYCODE_BACK'],
    runInShell: true,
  );

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("MyPageView"));
  });


}