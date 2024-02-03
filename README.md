# Tech Learn

A new way to learn smarter.

## Getting Started

## Usefull Plugins

1. `bloc` by _Felix Angelov_

2. `Flutter Intl` by _Localizely_

3. `Prettier-Code formatter` by _Prettier_

4. `Dart Data Class Generator` by _hzgood_

## Environment Setup

This project uses `fvm`

To generate _**localization**_ files manually

- `flutter gen-l10n`

To generate _**freezed**_ classes

- `flutter pub run build_runner build`

To run _**fastlane**_

- `bundle exec fastlane ios {lanename} env:{dev/qa/prod}`

To generate debug.jks
-   `keytool -importkeystore -srckeystore /Users/YZT/debug.jks -destkeystore /Users/YZT/debug.jks -deststoretype pkcs12`

To debug 
- `flutter run lib/main_dev.dart --flavor=dev --dart-define-from-file=.envs/dev.json`

# techlearn-mobile
