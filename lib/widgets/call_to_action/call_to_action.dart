import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portafolio_flutter/widgets/call_to_action/call_to_action_desktop_tablet.dart';
import 'package:portafolio_flutter/widgets/call_to_action/call_to_action_mobile.dart';
//import 'package:imagebutton/imagebutton.dart';import 'package:flutter/gestures.dart';

import 'package:responsive_builder/responsive_builder.dart';

class CallToAction extends StatelessWidget {
  const CallToAction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile:  CallToActionMobile(),
      desktop: CallToActionTabletDesktop(),
    );
  }
}