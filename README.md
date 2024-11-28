# Flutter Favorites Management App

A simple Flutter app that demonstrates state management using the Provider package. This app allows users to add products to a favorites list, view the list, and remove items from it. The heart icon dynamically updates its color to reflect whether an item is favorited.

## Features

 • Display a list of products.
 • Add or remove products from favorites with a heart icon.
 • Favorites screen shows all selected products.
 • Heart icon turns red for favorites and grey for non-favorites.
 • State management using the Provider package.
 • Snackbar notifications for add/remove actions.

## Screenshots

**Product List**

**Favorites**

## Technologies Used

 • **Flutter**: For building the app.
 • **Dart**: Programming language.
 • **Provider**: For state management.

## Getting Started

### Prerequisites

 • Flutter SDK installed on your system.
 • A compatible code editor (e.g., VS Code, Android Studio).
 • A device/emulator to run the app.

### Installation

 1. Clone this repository:

```bash
git clone https://github.com/Williedaniels/favorites_final-Y2T3_project.git
cd favorites_final-Y2T3_project
```

 2.Install dependencies:

```bash
flutter pub get
```

 3.Run the app:

```bash
flutter run
```

## Project Structure

```text
lib/
├── main.dart                         # Entry point of the app
├── models/
│   └── favorites.dart                # Favorites model for state management
├── screens/
│   ├── product_list_screen.dart      # Product List screen
│   └── favorites_screen.dart         # Favorites screen
```

## How to Use

 1. Launch the app to view a list of products.
 2. Tap the heart icon to add a product to favorites:
 • The icon turns red for favorited items.
 • A snackbar confirms the action.
 3. Tap the Favorites button (FloatingActionButton) to view all favorite items.
 4. Remove items from favorites by tapping the delete icon in the favorites screen.

## Future Improvements

 • Data Persistence: Use shared_preferences to save favorites across app sessions.
 • Network Integration: Fetch products from an API.
 • Search Functionality: Add a search bar to filter products.

## License

This project is licensed under the ALU License.

## Author

Willie B. Daniels
<w.daniels@alustudent.com> | GitHub
