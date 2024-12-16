import 'plugin_a_platform_interface.dart';

class PluginA {
  Future<String?> getPlatformVersion() {
    return PluginAPlatform.instance.getPlatformVersion();
  }
}
