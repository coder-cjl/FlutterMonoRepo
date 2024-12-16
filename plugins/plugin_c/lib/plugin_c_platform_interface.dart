import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'plugin_c_method_channel.dart';

abstract class Plugin_cPlatform extends PlatformInterface {
  /// Constructs a Plugin_cPlatform.
  Plugin_cPlatform() : super(token: _token);

  static final Object _token = Object();

  static Plugin_cPlatform _instance = MethodChannelPlugin_c();

  /// The default instance of [Plugin_cPlatform] to use.
  ///
  /// Defaults to [MethodChannelPlugin_c].
  static Plugin_cPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [Plugin_cPlatform] when
  /// they register themselves.
  static set instance(Plugin_cPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
