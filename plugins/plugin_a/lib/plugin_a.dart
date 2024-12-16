
import 'plugin_a_platform_interface.dart';

class Plugin_a {
  Future<String?> getPlatformVersion() {
    return Plugin_aPlatform.instance.getPlatformVersion();
  }
}
