import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hubx_case/features/home/presentation/pages/search_page.dart';

import '../../features/base_screen/base_screen.dart';
import '../../features/diagnose/presentation/pages/diagnose_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/my_garden/presentation/pages/my_garden_page.dart';
import '../../features/onboarding/presentation/pages/onboarding_page.dart';
import '../../features/paywall/presentation/pages/paywall_page.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import 'onboard_service.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellHomeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell_home');
final GlobalKey<NavigatorState> _shellDiagnoseNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell_diagnose');
final GlobalKey<NavigatorState> _shellMyGardenNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell_my_garden');
final GlobalKey<NavigatorState> _shellProfileNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell_profile');

final GoRouter router = GoRouter(
  navigatorKey: rootNavigatorKey,

  initialLocation: OnboardingPage.routePath,
  redirect: (context, state) async {},
  routes: [
    GoRoute(
      path: OnboardingPage.routePath,
      name: OnboardingPage.routeName,
      pageBuilder: (context, state) => _pageBuilder(state: state, child: const OnboardingPage()),
    ),
    GoRoute(
      path: PaywallPage.routePath,
      name: PaywallPage.routeName,
      pageBuilder: (context, state) => _pageBuilder(
        state: state,
        child: const PaywallPage(),
        fullscreenDialog: true,
      ),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return BaseScreen(fullPath: state.uri.toString(), child: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellHomeNavigatorKey,
          routes: [
            GoRoute(
              path: HomePage.routePath,
              name: HomePage.routeName,
              pageBuilder: (context, state) => _pageBuilder(state: state, child: const HomePage()),
              routes: [
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  path: SearchPage.routePath,
                  name: SearchPage.routeName,
                  pageBuilder: (context, state) => _pageBuilder(state: state, child: const SearchPage()),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellDiagnoseNavigatorKey,
          routes: [
            GoRoute(
              path: DiagnosePage.routePath,
              name: DiagnosePage.routeName,
              pageBuilder: (context, state) => _pageBuilder(state: state, child: const DiagnosePage()),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellMyGardenNavigatorKey,
          routes: [
            GoRoute(
              path: MyGardenPage.routePath,
              name: MyGardenPage.routeName,
              pageBuilder: (context, state) => _pageBuilder(state: state, child: const MyGardenPage()),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellProfileNavigatorKey,
          routes: [
            GoRoute(
              path: ProfilePage.routePath,
              name: ProfilePage.routeName,
              pageBuilder: (context, state) => _pageBuilder(state: state, child: const ProfilePage()),
            ),
          ],
        ),
      ],
    ),
  ],
);

Page<T> _pageBuilder<T>({required GoRouterState state, required Widget child, bool maintainState = true, bool fullscreenDialog = false}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    restorationId: state.pageKey.value,
    maintainState: maintainState,
    fullscreenDialog: fullscreenDialog,
    transitionDuration: const Duration(milliseconds: 300),
    reverseTransitionDuration: const Duration(milliseconds: 300),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      if (state.uri.path == PaywallPage.routePath) {
        return SlideTransition(
          position:
              Tween<Offset>(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeInOut,
                ),
              ),
          child: child,
        );
      }
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}
