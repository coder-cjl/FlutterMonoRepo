import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_b/plugin_b.dart';
import 'package:plugin_b/plugin_b_platform_interface.dart';
import 'package:plugin_b/plugin_b_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPlugin_bPlatform
    with MockPlatformInterfaceMixin
    implements Plugin_bPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final Plugin_bPlatform initialPlatform = Plugin_bPlatform.instance;

  test('$MethodChannelPlugin_b is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPlugin_b>());
  });

  test('getPlatformVersion', () async {
    Plugin_b plugin_bPlugin = Plugin_b();
    MockPlugin_bPlatform fakePlatform = MockPlugin_bPlatform();
    Plugin_bPlatform.instance = fakePlatform;

    expect(await plugin_bPlugin.getPlatformVersion(), '42');
  });
}
