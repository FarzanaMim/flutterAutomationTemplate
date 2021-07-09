import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
import '../Object_Repository/xpath_library.dart' ;
import '../Object_Repository/UIElementsConstants.dart';
import 'package:meta/meta.dart';
import 'dart:io';

void justWait({@required int numberOfSeconds}) async {
  await Future.delayed(Duration(seconds: numberOfSeconds));
}

dynamic goToContentDetailsScreen (FlutterDriver driver) async {

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
    await driver.tap(goToContentDetails);
  });

  //await justWait(numberOfSeconds: 5);

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("ContentView"));
  });

}

dynamic contentDetailsElementCheck (FlutterDriver driver) async {

  await justWait(numberOfSeconds: 5);

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(contentDetailsTitle), contentDetailsTitleText);
  });

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(contentName), contentNameText);
  });


  await driver.runUnsynchronized(() async {

    expect(await driver.getText(contentDetailsLevel1), contentDetailsLevel1Text);
  });

  await driver.runUnsynchronized(() async {

    expect(await driver.getText(contentDetailsLevel2), contentDetailsLevel2Text);
  });

  /*await driver.runUnsynchronized(() async {

    await driver.scrollIntoView(contentDetails2);
    expect(await driver.getText(contentDetails2), contentDetails2Text);
  });*/
}

dynamic contentDetailsBack (FlutterDriver driver) async {

  await Process.run(
    'adb',
    <String>['shell', 'input', 'keyevent', 'KEYCODE_BACK'],
    runInShell: true,
  );
}