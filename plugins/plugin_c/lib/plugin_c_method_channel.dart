import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'plugin_c_platform_interface.dart';

/// An implementation of [Plugin_cPlatform] that uses method channels.
class MethodChannelPlugin_c extends Plugin_cPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('plugin_c');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
