import 'dart:async';

import 'package:flutter/services.dart';

const _kChannel = 'flutter_barcode_scanner_plugin';

class FlutterBarcodeScannerPlugin {
  static const MethodChannel _channel = const MethodChannel(_kChannel);

  static FlutterBarcodeScannerPlugin _instance;

  factory FlutterBarcodeScannerPlugin() =>
      _instance ??= new FlutterBarcodeScannerPlugin._();

  FlutterBarcodeScannerPlugin._() {}

  Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
