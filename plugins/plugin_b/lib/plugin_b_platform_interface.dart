import 'package:plugin_b/plugin_b_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class PluginBPlatform extends PlatformInterface {
  /// Constructs a PluginBPlatform.
  PluginBPlatform() : super(token: _token);

  static final Object _token = Object();

  static PluginBPlatform _instance = MethodChannelPluginB();

  /// The default instance of [PluginBPlatform] to use.
  ///
  /// Defaults to [MethodChannelPluginB].
  static PluginBPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PluginBPlatform] when
  /// they register themselves.
  static set instance(PluginBPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
