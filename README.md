# 🎵 Spotify Auth Screen

This is a **Spotify-clone authentication screen** built with Flutter, styled to match Spotify’s modern aesthetic, and integrated with **Firebase Authentication**.

> 🔒 **Features**
> - Beautiful Spotify-inspired UI
> - Email & Password sign up and sign in
> - Firebase Authentication integration
> - Responsive design

---

## 🚀 Getting Started

Follow these steps to run the project locally.

### 1. Clone the Repo

```bash
git clone https://github.com/Jude254-programmer/Firebase_Auth.git
cd Firebase_Auth 
```
#### 2. Install Dependencies

```bash
flutter pub get
```
#### 3. Set up Firebase
- This app uses Firebase Auth. Before running:
- Go to Firebase Console.
- Create a new project.
- Add an Android and/or iOS app to your Firebase project.
- Download the following file:
  
  * For Android → google-services.json → Place in:
  
```bash
android/app/google-services.json
```
 * For iOS → GoogleService-Info.plist → Place in:
 
```bash
ios/Runner/GoogleService-Info.plist
``` 
#### 4. Run the app
To run on your connected device or emulator:
```bash
flutter run
```
Or build APK:
```bash
flutter build apk
```
---
🛠️ Dependencies
- Flutter SDK
- firebase_core
- firebase_auth
- flutter_svg (if using SVG icons or logos)
```bash
yaml

dependencies:
  flutter:
    sdk: flutter
  firebase_core: ^latest_version
  firebase_auth: ^latest_version
  flutter_svg: ^latest_version

```
## 📚 Helpful Resources

- [Flutter Getting Started](https://docs.flutter.dev/get-started/install)
- [FlutterFire Documentation](https://firebase.flutter.dev/docs/overview)
- [Firebase Console](https://console.firebase.google.com/)
- [Write Your First Flutter App (Codelab)](https://docs.flutter.dev/get-started/codelab)
- [Flutter Cookbook](https://docs.flutter.dev/cookbook)
- [firebase_auth package](https://pub.dev/packages/firebase_auth)

---
🤝 Contributing
Pull requests are welcome! For major changes, please open an issue first to discuss what you’d like to change.


