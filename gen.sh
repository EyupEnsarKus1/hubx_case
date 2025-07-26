flutter clean
flutter pub get
dart run build_runner clean
dart run build_runner build --delete-conflicting-outputs



flutter pub get
dart run flutter_launcher_icons


flutter build apk --release
flutter build ios --release
flutter build web --release
flutter build macos --release
flutter build linux --release
flutter build windows --release


flutter build appbundle --release

cd ios
pod deintegrate
pod cache clean --all
pod init
pod setup
pod install
