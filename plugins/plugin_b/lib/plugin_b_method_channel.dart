import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'plugin_b_platform_interface.dart';

/// An implementation of [Plugin_bPlatform] that uses method channels.
class MethodChannelPlugin_b extends Plugin_bPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('plugin_b');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
