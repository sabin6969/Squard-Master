import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projectmanagement_for_project_manager/constants/image_paths.dart';
import 'package:projectmanagement_for_project_manager/constants/on_boarding_constant_text.dart';
import 'package:projectmanagement_for_project_manager/main.dart';
import 'package:projectmanagement_for_project_manager/pages/onboarding_page/bloc/onboarding_bloc.dart';
import 'package:projectmanagement_for_project_manager/widgets/onboarding_container.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    OnboardingBloc onboardingBloc = BlocProvider.of<OnboardingBloc>(context);
    size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                onPageChanged: (index) {
                  index == 2
                      ? onboardingBloc.add(PageViewEndEvent())
                      : onboardingBloc.add(
                          NormalButtomSheetEvent(),
                        );
                },
                controller: _pageController,
                children: const [
                  OnboardingContainer(
                    imagePath: projectManagerImagePath,
                    text: welcomeText,
                  ),
                  OnboardingContainer(
                    imagePath: projectTeamImagePath,
                    text: findBestTalent,
                  ),
                  OnboardingContainer(
                    imagePath: onTimeImagePath,
                    text: meetDeadlines,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
          if (state is NextButtonState) {
            return BottomSheet(
              backgroundColor: Colors.white,
              shape: const BeveledRectangleBorder(),
              enableDrag: false,
              onClosing: () {},
              builder: (context) {
                return Container(
                  color: Colors.white,
                  height: 100.h,
                  width: double.infinity,
                  child: Center(
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        "Get Started",
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return BottomSheet(
              enableDrag: false,
              shape: const BeveledRectangleBorder(),
              onClosing: () {},
              builder: (context) {
                return Container(
                  color: Colors.white,
                  height: 100.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          _pageController.jumpToPage(2);
                        },
                        child: const Text("Skip"),
                      ),
                      SmoothPageIndicator(
                        onDotClicked: (index) =>
                            _pageController.jumpToPage(index),
                        effect: const WormEffect(),
                        controller: _pageController,
                        count: 3,
                      ),
                      TextButton(
                        onPressed: () {
                          _pageController.nextPage(
                            duration: const Duration(
                              milliseconds: 200,
                            ),
                            curve: Curves.bounceIn,
                          );
                        },
                        child: const Text(
                          "Next",
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
