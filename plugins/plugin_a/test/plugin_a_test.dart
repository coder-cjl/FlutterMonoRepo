import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_a/plugin_a.dart';
import 'package:plugin_a/plugin_a_platform_interface.dart';
import 'package:plugin_a/plugin_a_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPlugin_aPlatform
    with MockPlatformInterfaceMixin
    implements Plugin_aPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final Plugin_aPlatform initialPlatform = Plugin_aPlatform.instance;

  test('$MethodChannelPlugin_a is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPlugin_a>());
  });

  test('getPlatformVersion', () async {
    Plugin_a plugin_aPlugin = Plugin_a();
    MockPlugin_aPlatform fakePlatform = MockPlugin_aPlatform();
    Plugin_aPlatform.instance = fakePlatform;

    expect(await plugin_aPlugin.getPlatformVersion(), '42');
  });
}
