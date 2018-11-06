import 'dart:async';

import 'package:flutter/services.dart';

class FlutterBarcodeScannerPlugin {
  static const MethodChannel _channel =
      const MethodChannel('flutter_barcode_scanner_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
