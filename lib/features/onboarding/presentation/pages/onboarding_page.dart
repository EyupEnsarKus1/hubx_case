import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hubx_case/core/custom_widgets/hubx_button.dart';
import 'package:hubx_case/core/custom_widgets/hubx_images_widgets.dart';
import 'package:hubx_case/core/custom_widgets/hubx_scaffold.dart';
import 'package:hubx_case/core/design_system/theme/hubx_padding.dart';
import 'package:hubx_case/core/services/onboard_service.dart';
import 'package:hubx_case/features/home/presentation/pages/home_page.dart';
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
          // Arka plan görseli
          Positioned.fill(
            child: HubxImageWidget(
              assetPath: onboardItems[_currentPage].pageBg,
              fit: BoxFit.cover,
            ),
          ),

          // İçerik
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: onboardItems.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      final model = onboardItems[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            model.title,
                            if (model.description != null) ...[
                              8.verticalSpace,
                              Text(
                                model.description!,
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.center,
                              ),
                            ],

                            HubxImageWidget(
                              assetPath: model.image,
                            ),
                            const SizedBox(height: 24),

                            const SizedBox(height: 16),
                          ],
                        ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onboardItems.length,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == _currentPage ? Colors.green : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
