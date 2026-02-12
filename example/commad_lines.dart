// =============================================================================
// COMMAND-LINE REFERENCE FOR DEVELOPERS
// =============================================================================
// Copy the command you need and run it in the project root (no dart run needed).
// Replace <your-production-project-id> and package names with your actual values.
// =============================================================================

// -----------------------------------------------------------------------------
// RUN APP (Development)
// -----------------------------------------------------------------------------
// Run the app in debug mode using the DEV flavor and main entry point.
//
// flutter run --flavor dev -t lib/main_dev.dart

// -----------------------------------------------------------------------------
// CODE GENERATION (Freezed, json_serializable, assets)
// -----------------------------------------------------------------------------
// Regenerates .freezed.dart and .g.dart files. Run after changing models or
// when adding/updating @freezed or @JsonSerializable classes.
// --delete-conflicting-outputs removes old generated code that might conflict.
//
// dart run build_runner build --delete-conflicting-outputs

// -----------------------------------------------------------------------------
// BUILD APK (Android installable)
// -----------------------------------------------------------------------------
// Dev flavor, release build (single APK):
// flutter build apk --flavor dev -t lib/main_dev.dart --release
//
// Dev flavor, release, one APK per ABI (smaller downloads per device):
// flutter build apk --flavor dev -t lib/main_dev.dart --release --split-per-abi
//
// Prod flavor, release:
// flutter build apk --flavor prod -t lib/main_prod.dart --release
//
// No flavor (default main.dart), release, split per ABI:
// flutter build apk --release --split-per-abi

// -----------------------------------------------------------------------------
// BUILD APP BUNDLE (Android – for Play Store)
// -----------------------------------------------------------------------------
// Prod flavor, for Play Store upload (recommended for release):
// flutter build appbundle --flavor prod -t lib/main_prod.dart --release --verbose
//
// No flavor, release app bundle:
// flutter build appbundle --release --verbose

// -----------------------------------------------------------------------------
// FIREBASE CONFIGURATION
// -----------------------------------------------------------------------------
// One-time or when switching Firebase project. Generates lib/firebase_options_*.dart.
// Use your real project ID and package names.
//
// Basic (output file based on project):
// flutterfire configure --project=<your-production-project-id> --out=lib/firebase_options_prod.dart
//
// With explicit Android/iOS package names:
// flutterfire configure \
//   --project=myapp-prod \
//   --out=lib/firebase_options_prod.dart \
//   --android-package-name=com.yourcompany.app \
//   --ios-bundle-id=com.yourcompany.app
