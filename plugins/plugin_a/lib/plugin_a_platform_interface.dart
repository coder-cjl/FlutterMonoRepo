import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'plugin_a_method_channel.dart';

abstract class Plugin_aPlatform extends PlatformInterface {
  /// Constructs a Plugin_aPlatform.
  Plugin_aPlatform() : super(token: _token);

  static final Object _token = Object();

  static Plugin_aPlatform _instance = MethodChannelPlugin_a();

  /// The default instance of [Plugin_aPlatform] to use.
  ///
  /// Defaults to [MethodChannelPlugin_a].
  static Plugin_aPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [Plugin_aPlatform] when
  /// they register themselves.
  static set instance(Plugin_aPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
