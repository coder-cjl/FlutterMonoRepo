import 'plugin_c_platform_interface.dart';

class PluginC {
  Future<String?> getPlatformVersion() {
    return PluginCPlatform.instance.getPlatformVersion();
  }
}
