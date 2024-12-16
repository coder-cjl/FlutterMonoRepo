
import 'plugin_c_platform_interface.dart';

class Plugin_c {
  Future<String?> getPlatformVersion() {
    return Plugin_cPlatform.instance.getPlatformVersion();
  }
}
