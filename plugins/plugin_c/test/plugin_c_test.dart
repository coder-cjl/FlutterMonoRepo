import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_c/plugin_c.dart';
import 'package:plugin_c/plugin_c_platform_interface.dart';
import 'package:plugin_c/plugin_c_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPlugin_cPlatform
    with MockPlatformInterfaceMixin
    implements Plugin_cPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final Plugin_cPlatform initialPlatform = Plugin_cPlatform.instance;

  test('$MethodChannelPlugin_c is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPlugin_c>());
  });

  test('getPlatformVersion', () async {
    Plugin_c plugin_cPlugin = Plugin_c();
    MockPlugin_cPlatform fakePlatform = MockPlugin_cPlatform();
    Plugin_cPlatform.instance = fakePlatform;

    expect(await plugin_cPlugin.getPlatformVersion(), '42');
  });
}
