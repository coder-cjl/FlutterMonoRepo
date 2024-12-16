import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:plugin_b/plugin_b_platform_interface.dart';

/// An implementation of [PluginBPlatform] that uses method channels.
class MethodChannelPluginB extends PluginBPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('pluginB');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
