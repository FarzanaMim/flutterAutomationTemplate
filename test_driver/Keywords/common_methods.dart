import 'package:test/test.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:meta/meta.dart';

Future<FlutterDriver> setupAndGetDriver() async {
  FlutterDriver driver = await FlutterDriver.connect();
  var connected = false;
  while (!connected) {
    try {
      await driver.waitUntilFirstFrameRasterized();
      connected = true;
    } catch (error) {}
  }
  return driver;
}

void justWait({@required int numberOfSeconds}) async {
  await Future.delayed(Duration(seconds: numberOfSeconds));
}


dynamic openApp( FlutterDriver driver) async {
  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("SplashView"));
    await justWait(numberOfSeconds: 5);
  });

  await driver.runUnsynchronized(() async {
    await driver.waitFor(find.byType("FirstTimeConsentView"));
    await justWait(numberOfSeconds: 5);
  });
}