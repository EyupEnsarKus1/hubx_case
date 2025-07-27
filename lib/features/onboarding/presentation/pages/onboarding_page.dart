import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hubx_case/core/custom_widgets/hubx_button.dart';
import 'package:hubx_case/core/custom_widgets/hubx_images_widgets.dart';
import 'package:hubx_case/core/custom_widgets/hubx_scaffold.dart';
import 'package:hubx_case/core/design_system/theme/hubx_colors.dart';
import 'package:hubx_case/core/design_system/theme/hubx_padding.dart';
import 'package:hubx_case/core/design_system/theme/hubx_sizes.dart';
import 'package:hubx_case/core/services/onboard_service.dart';
import 'package:hubx_case/features/home/presentation/pages/home_page.dart';
import 'package:hubx_case/features/onboarding/presentation/widgets/onboard_legacy_text.dart';
import '../../../../generated/assets.gen.dart';
import '../../data/onboard_data.dart';

class OnboardingPage extends StatefulWidget {
  static const String routeName = '/onboarding';
  static const String routePath = '/onboarding';

  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _completeOnboarding() async {
    final onBoardService = OnBoardService();
    await onBoardService.setHasSeenOnBoarding();
    if (mounted) {
      context.go(HomePage.routePath);
    }
  }

  @override
  Widget build(BuildContext context) {
    final onboardItems = buildOnboardData(context);

    return HubxScaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: HubxImageWidget(
              assetPath: onboardItems[_currentPage].pageBg,
              fit: BoxFit.cover,
            ),
          ),

          SafeArea(
            bottom: false,
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: onboardItems.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      final List<double> _titleTopOffsets = [-70, 60.0, -60.0];
                      final topOffset = _titleTopOffsets[index].h;
                      final model = onboardItems[index];
                      return Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: topOffset,
                            child: HubxImageWidget(
                              assetPath: model.image,
                              width: 1.sw,
                            ),
                          ),
                          Column(
                            children: [
                              Align(alignment: Alignment.topLeft, child: model.title),
                              if (model.description != null) ...[
                                Padding(
                                  padding: HubxPadding.p20.horizontal,
                                  child: Text(
                                    model.description!,
                                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: HubxColors.onboardDescriptionTextColor,
                                      height: 1.38,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
                HubxButton(
                  margin: HubxPadding.p20.horizontal + HubxPadding.p16.onlyBottom,
                  onPressed: () {
                    if (_currentPage == onboardItems.length - 1) {
                      _completeOnboarding();
                    } else {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  title: onboardItems[_currentPage].buttonText,
                ),
                SizedBox(
                  height: HubxSizes.size30,
                  child: _currentPage == 0
                      ? const OnboardLegacyText()
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                            onboardItems.length,
                            (index) => Container(
                              margin: HubxPadding.p4.horizontal,
                              width: HubxSizes.size8,
                              height: HubxSizes.size8,

                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: index == _currentPage
                                    ? HubxColors.mainText
                                    : HubxColors.mainText.withValues(
                                        alpha: .25,
                                      ),
                              ),
                            ),
                          ),
                        ),
                ),
                28.verticalSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
