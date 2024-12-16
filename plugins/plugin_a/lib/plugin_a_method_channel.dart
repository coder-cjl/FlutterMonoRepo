import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'plugin_a_platform_interface.dart';

/// An implementation of [Plugin_aPlatform] that uses method channels.
class MethodChannelPlugin_a extends Plugin_aPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('plugin_a');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
