import 'plugin_b_platform_interface.dart';

class PluginB {
  Future<String?> getPlatformVersion() {
    return PluginBPlatform.instance.getPlatformVersion();
  }
}
