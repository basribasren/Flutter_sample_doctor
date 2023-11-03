import 'bloc/iphone_12_pro_6_1_mockup_front_view_four_bloc.dart';
import 'models/iphone_12_pro_6_1_mockup_front_view_four_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class Iphone12Pro61MockupFrontViewFourScreen extends StatelessWidget {
  const Iphone12Pro61MockupFrontViewFourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone12Pro61MockupFrontViewFourBloc>(
      create: (context) => Iphone12Pro61MockupFrontViewFourBloc(
          Iphone12Pro61MockupFrontViewFourState(
        iphone12Pro61MockupFrontViewFourModelObj:
            Iphone12Pro61MockupFrontViewFourModel(),
      ))
        ..add(Iphone12Pro61MockupFrontViewFourInitialEvent()),
      child: Iphone12Pro61MockupFrontViewFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone12Pro61MockupFrontViewFourBloc,
        Iphone12Pro61MockupFrontViewFourState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgIphone12Pro61,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: 445.h,
                padding: EdgeInsets.all(2.h),
                child: SizedBox(
                  height: 888.v,
                  width: 440.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMain,
                        height: 888.v,
                        width: 440.h,
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgIphone12Pro619,
                        height: 850.v,
                        width: 394.h,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
