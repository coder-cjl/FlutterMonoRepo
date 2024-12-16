import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:plugin_c/plugin_c_platform_interface.dart';

/// An implementation of [PluginCPlatform] that uses method channels.
class MethodChannelPluginC extends PluginCPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('pluginC');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
