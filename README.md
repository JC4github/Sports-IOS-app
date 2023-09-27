# Atomic Assignment iOS App

The Atomic Assignment iOS app is a simple SwiftUI-based application that provides information about various sports. It allows users to view details about each sport, including a brief description and an associated emoji, and switch between different sports.

## Table of Contents

- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [App Architecture](#app-architecture)

## Getting Started

### Prerequisites

To run this app, you will need:

- Xcode (latest version recommended)
- An iOS simulator or a physical iOS device

### Installation

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/JC4github/Sports-IOS-app.git
   ```

2. Open the project in Xcode.

3. Build and run the app using the iOS simulator or a physical iOS device.

## Usage

- Upon launching the app, you will see information about a featured sport, including its name, description, and an emoji representation.

- To view information about another sport, tap the "Refresh" button at the bottom of the screen.

- The app provides a simple way to explore and learn about different sports.

## App Architecture

The app is structured as follows:

- **ContentView:** The main view of the app responsible for displaying sport details and providing a "Refresh" button.

- **SportViewModel:** A view model that manages sports data and logic, including selecting and transitioning between sports.

- **SportsData:** A data class containing the list of sports with their names, descriptions, and emojis.

- **SportDetailView:** A SwiftUI view used to display detailed information about a sport, including its name, description, and emoji.

The app, while relatively simple in its current form, adheres to the MVVM (Model-View-ViewModel) architectural pattern. This architectural choice, although streamlined for the app's low complexity, lays the foundation for scalability and maintainability in the future. By following MVVM, the project ensures a clear separation of concerns, allowing for easier management of data, user interface, and logic. This deliberate architectural design positions the app for seamless growth and enhancement should the need arise.
