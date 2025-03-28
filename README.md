# Buzz Bot

A Flutter application for generating messages using Gemini AI and sending them via WhatsApp.

## Features
- Generate messages using Gemini AI.
- Send messages directly to a specified WhatsApp number.

## Getting Started

### Prerequisites
Make sure you have Flutter installed. If not, follow the [official Flutter installation guide](https://docs.flutter.dev/get-started/install).

### Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/buzz_bot.git
   cd buzz_bot
   ```

2. Install dependencies:
   ```sh
   flutter pub get
   ```

3. Run the app:
   ```sh
   flutter run
   ```

## Getting Google API Key
Some features of this app require a Google API key. Follow these steps to obtain one:

1. Go to the [Google AI For Developers](https://ai.google.dev/).
2. Click **Explore models in Google AI Studio**.
3. Navigate to **Get API Key**.
4. Click **Create API Key**.
5. Search for **Gemini API** and create an API key.
6. Copy the generated API key and add it to your Flutter project.

## Configuration

1. Add the API key to your Flutter project:
   - Create a file named **constants.dart** and add the following:
     ```dart
     // Google AI API Key
     const String GOOGLE_API_KEY = 'YOUR_GOOGLE_API_KEY';
     ```

## Contributing
Feel free to submit pull requests or open issues for improvements.

## License
[MIT License](LICENSE)

