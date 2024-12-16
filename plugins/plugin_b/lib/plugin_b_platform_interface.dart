import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'plugin_b_method_channel.dart';

abstract class Plugin_bPlatform extends PlatformInterface {
  /// Constructs a Plugin_bPlatform.
  Plugin_bPlatform() : super(token: _token);

  static final Object _token = Object();

  static Plugin_bPlatform _instance = MethodChannelPlugin_b();

  /// The default instance of [Plugin_bPlatform] to use.
  ///
  /// Defaults to [MethodChannelPlugin_b].
  static Plugin_bPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [Plugin_bPlatform] when
  /// they register themselves.
  static set instance(Plugin_bPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
