import 'package:plugin_c/plugin_c_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class PluginCPlatform extends PlatformInterface {
  /// Constructs a PluginCPlatform.
  PluginCPlatform() : super(token: _token);

  static final Object _token = Object();

  static PluginCPlatform _instance = MethodChannelPluginC();

  /// The default instance of [PluginCPlatform] to use.
  ///
  /// Defaults to [MethodChannelPluginC].
  static PluginCPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PluginCPlatform] when
  /// they register themselves.
  static set instance(PluginCPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
