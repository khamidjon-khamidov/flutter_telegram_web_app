# Telegram Web App
[![telegram_web_app version](https://img.shields.io/pub/v/telegram_web_app?label=telegram_web_app)](https://pub.dev/packages/telegram_web_app)

Build telegram web apps in flutter using telegram_web_app library

## Getting Started
1. Import Library in your pubspec.yaml
2. And add this line in `web/index.html`

```html
<head>
    <script src="https://telegram.org/js/telegram-web-app.js" defer=""></script>
</head>
```

Checkout details of available telegram_web apis [here](https://core.telegram.org/bots/webapps#webappinitdata)
You can also find detailed examples in example project.


## Setup for development

1. Enable debugging in telegram web app. Checkout [this](https://core.telegram.org/bots/webapps#testing-mini-apps) post for more details
2. Then navigate to `\example` folder
3. Deploy the example app via firebase or any other hosting service. You can find firebase hosting documentation [here](https://firebase.google.com/docs/hosting/frameworks/flutter)
4. Create web app in telegram
5. Use the website url to load the webapp in telegram
6. You can also inspect the app with Javascript logs via debugging as described [here](https://core.telegram.org/bots/webapps#testing-mini-apps)


## How to use

There is a class `TelegramWebApp` which contains all the telegram web apis. You can call the methods via `TelegramWebApp.instance`


#### Example
```dart
// current telegram version
Text(TelegramWebApp.instance.version)

// telegram colors associated with the user's app
Text(TelegramWebApp.instance.themeParams)

// Object containing user details and user validation hash
Text(TelegramWebApp.instance.initData.toString())
```

You can find full list of api examples in example folder. Please feel free to contribute for improvements and any updates.

#### Note
All the apis are only available inside telegram web app. You can't use the apis outside the platform.