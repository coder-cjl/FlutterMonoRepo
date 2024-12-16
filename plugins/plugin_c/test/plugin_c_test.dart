import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_c/plugin_c.dart';
import 'package:plugin_c/plugin_c_method_channel.dart';
import 'package:plugin_c/plugin_c_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPluginCPlatform
    with MockPlatformInterfaceMixin
    implements PluginCPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PluginCPlatform initialPlatform = PluginCPlatform.instance;

  test('$MethodChannelPluginC is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPluginC>());
  });

  test('getPlatformVersion', () async {
    PluginC pluginCPlugin = PluginC();
    MockPluginCPlatform fakePlatform = MockPluginCPlatform();
    PluginCPlatform.instance = fakePlatform;

    expect(await pluginCPlugin.getPlatformVersion(), '42');
  });
}
