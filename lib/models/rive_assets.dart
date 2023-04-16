import 'package:rive/rive.dart';

class RiveAsset {
  final String artboard, stateMachineName, title, src;
  late SMIBool? input;

  RiveAsset(this.src,
      {required this.artboard,
        required this.stateMachineName,
        required this.title,
        this.input});

  set setInput(SMIBool status) {
    input = status;
  }
}

List<RiveAsset> bottomNavs = [
  // path depends on device/system (macos/ios: 'assets' included, windows: without 'assets')
  // TODO: create a general solution for assets loading independent of device
  RiveAsset("assets/tab-icons.riv",
      artboard: "CHAT", stateMachineName: "CHAT_Interactivity", title: "Chat"),
  RiveAsset("assets/tab-icons.riv",
      artboard: "HOME", stateMachineName: "HOME_interactivity", title: "Home"),
  RiveAsset("assets/tab-icons.riv",
      artboard: "USER", stateMachineName: "USER_Interactivity", title: "User")
];