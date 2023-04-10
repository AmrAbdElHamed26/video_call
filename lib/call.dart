
import 'package:flutter/material.dart';
import 'package:videocamm/first_page.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class MyCall extends StatelessWidget {
  MyCall({Key? key , required this.videoCallID}) : super(key: key);

  String videoCallID;

  @override
  Widget build(BuildContext context) {

    return Stack(
      children : [
        ZegoUIKitPrebuiltCall(

          appID: 2010728463, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
          appSign: "06d53ea1ae22173f6e815596a16cac637149fed5645d4462bab51973d1053105", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
          userID: FirstPage.userId,
          userName: FirstPage.userName,
          callID: videoCallID  ,
          // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
          config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
            ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
        ),


      ],
    );
  }
}
