import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_b/plugin_b.dart';
import 'package:plugin_b/plugin_b_method_channel.dart';
import 'package:plugin_b/plugin_b_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPluginBPlatform
    with MockPlatformInterfaceMixin
    implements PluginBPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PluginBPlatform initialPlatform = PluginBPlatform.instance;

  test('$MethodChannelPluginB is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPluginB>());
  });

  test('getPlatformVersion', () async {
    PluginB pluginBPlugin = PluginB();
    MockPluginBPlatform fakePlatform = MockPluginBPlatform();
    PluginBPlatform.instance = fakePlatform;

    expect(await pluginBPlugin.getPlatformVersion(), '42');
  });
}
