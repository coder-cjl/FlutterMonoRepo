
import 'plugin_b_platform_interface.dart';

class Plugin_b {
  Future<String?> getPlatformVersion() {
    return Plugin_bPlatform.instance.getPlatformVersion();
  }
}
