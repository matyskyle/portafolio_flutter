import 'package:flutter/material.dart';
import 'package:portafolio_flutter/widgets/course_details/course_detail_mobile.dart';
import 'package:portafolio_flutter/widgets/course_details/course_detail_tablet.dart';
import 'package:portafolio_flutter/widgets/course_details/course_details_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CourseDetailsMobile(),
      tablet: CourseDetailsTablet(),
      desktop: CourseDetailsDesktop(),
    );
  }
}