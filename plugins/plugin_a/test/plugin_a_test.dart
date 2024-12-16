import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_a/plugin_a.dart';
import 'package:plugin_a/plugin_a_method_channel.dart';
import 'package:plugin_a/plugin_a_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPluginAPlatform
    with MockPlatformInterfaceMixin
    implements PluginAPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PluginAPlatform initialPlatform = PluginAPlatform.instance;

  test('$MethodChannelPluginA is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPluginA>());
  });

  test('getPlatformVersion', () async {
    PluginA pluginAPlugin = PluginA();
    MockPluginAPlatform fakePlatform = MockPluginAPlatform();
    PluginAPlatform.instance = fakePlatform;

    expect(await pluginAPlugin.getPlatformVersion(), '42');
  });
}
