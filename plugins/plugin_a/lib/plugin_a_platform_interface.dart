import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'plugin_a_method_channel.dart';

abstract class PluginAPlatform extends PlatformInterface {
  /// Constructs a Plugin_aPlatform.
  PluginAPlatform() : super(token: _token);

  static final Object _token = Object();

  static PluginAPlatform _instance = MethodChannelPluginA();

  /// The default instance of [Plugin_aPlatform] to use.
  ///
  /// Defaults to [MethodChannelPlugin_a].
  static PluginAPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [Plugin_aPlatform] when
  /// they register themselves.
  static set instance(PluginAPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
