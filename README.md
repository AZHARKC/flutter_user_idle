# flutter_idle_detector

[![pub package](https://img.shields.io/pub/v/flutter_idle_detector.svg)](https://pub.dev/packages/flutter_idle_detector)
[![likes](https://img.shields.io/pub/likes/flutter_idle_detector)](https://pub.dev/packages/flutter_idle_detector/score)
[![popularity](https://img.shields.io/pub/popularity/flutter_idle_detector)](https://pub.dev/packages/flutter_idle_detector/score)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

A simple and lightweight Flutter package to detect user inactivity (idle state) and trigger callbacks when the user becomes idle or active again.

---

## ✨ Features

* Detect user inactivity (idle)
* Trigger callback when user becomes idle
* Detect when user becomes active again
* Lightweight and efficient
* Easy integration with any Flutter app

---

## 🚀 Why This Package?

Handling user inactivity is a common requirement in apps like:

* 🔐 Auto logout systems
* 💤 Session timeout handling
* 📊 User activity tracking
* 🔄 Auto refresh after inactivity

This package provides a simple way to detect inactivity without complex setup.

---

## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_idle_detector: ^0.0.1
```

---

## 🧑‍💻 Usage

Wrap your app with `IdleDetector`:

```dart
import 'package:flutter_idle_detector/flutter_idle_detector.dart';

IdleDetector(
  timeout: Duration(minutes: 5),
  onIdle: () {
    print("User is idle");
  },
  onActive: () {
    print("User is active again");
  },
  child: MyApp(),
);
```

---

## 🧪 Example

```dart
IdleDetector(
  timeout: const Duration(seconds: 10),
  onIdle: () {
    print("🔴 User is IDLE");
  },
  onActive: () {
    print("🟢 User is ACTIVE again");
  },
  child: MaterialApp(
    home: Scaffold(
      body: Center(
        child: Text("Interact or wait 10 seconds"),
      ),
    ),
  ),
);
```

---

## 📸 Demo

> Add your demo GIF here (recommended)

![Demo](https://raw.githubusercontent.com/AZHARKC/flutter_idle_detector/main/demo.gif)

---

## ⚙️ Parameters

| Parameter | Type         | Description                           |
| --------- | ------------ | ------------------------------------- |
| timeout   | Duration     | Time before user is considered idle   |
| onIdle    | VoidCallback | Called when user becomes idle         |
| onActive  | VoidCallback | Called when user becomes active again |
| child     | Widget       | Your app/widget tree                  |

---

## 📱 Behavior

| State                | Supported          |
| -------------------- | ------------------ |
| Foreground           | ✅ Yes              |
| Background           | ❌ No               |
| App Resume Detection | ⚠️ Manual handling |

---

## 🧠 How it works

The package listens to user interactions like taps, gestures, and pointer events.
If no interaction is detected within the given `timeout`, the user is marked as idle.

Once interaction resumes, the `onActive` callback is triggered.

---

## 💡 Best Practices

* Use for session timeout or auto logout
* Combine with app lifecycle for better accuracy
* Avoid very short timeout durations in production

---

## 📂 Example

Check the `/example` folder for a complete working demo.

---

## 🤝 Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

---

## 👤 Author

AZHARKC
GitHub: https://github.com/AZHARKC

---

## 📄 License

MIT License

---

⭐ If you like this package, please consider starring the repository!
