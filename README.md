# Firebase Authentication with GetX

## Overview
This Flutter application demonstrates the integration of **Firebase Authentication** with **GetX** for state management. It is designed with a clean and maintainable architecture, adhering to **SOLID principles**. The project structure is organized into two main folders: **core** and **screens**.

### Project Structure
```
lib/
├── main.dart             # Entry point of the app
├── my_app.dart           # Root widget of the application
├── core/                 # Core functionality and shared resources
│   ├── routes/           # App-routes
│   ├── constants/        # App-wide constants (e.g., colors, styles)
│   ├── services/         # Firebase and API-related services
│   ├── repository/       # Data handling and business logic
│   ├── widgets/          # Reusable UI components
│   └── utils/            # Helper functions and utilities
└── screens/              # Application screens
    ├── splash/           # Splash screen
    │   ├── bindings/     # GetX Bindings for Splash screen
    │   ├── controller/   # GetX controller for Splash logic
    │   └── view/         # UI for the Splash screen
    ├── login/            # Login screen
    │   ├── bindings/     # GetX Bindings for login screen
    │   ├── controller/   # GetX controller for login logic
    │   └── view/         # UI for the login screen
    ├── register/          # Register screen
    │   ├── bindings/     # GetX Bindings for login screen
    │   ├── controller/   # GetX controller for Register logic
    │   └── view/         # UI for the Register screen
    └── home/             # Home screen
        ├── controller/   # GetX controller for home logic
        └── view/         # UI for the home screen
```

This structure ensures separation of concerns, making the project scalable and easy to maintain.

## Features
- **User Registration**: Create accounts using email and password.
- **Secure Login**: Authenticate users with Firebase.
- **Logout Functionality**: Allow users to securely log out of their accounts.

## Why This Project?
This project showcases my ability to:
- Build scalable and maintainable Flutter applications.
- Integrate Firebase services for backend functionality.
- Utilize GetX for efficient state management and routing.
- Design apps following SOLID principles and clean architecture.

## Technologies Used
- **Flutter**: For creating a cross-platform user interface.
- **Firebase Authentication**: To handle secure user authentication.
- **GetX**: For simplified state management and navigation.

## Screenshots

![splash](https://github.com/user-attachments/assets/f40dbd51-1728-4071-9405-1027ac25363e)
![register](https://github.com/user-attachments/assets/396fdd37-7458-4857-96e5-65f66f49ef76)
![login](https://github.com/user-attachments/assets/694e82c8-d48d-47ff-8cf3-f2e1afab6ada)
![home](https://github.com/user-attachments/assets/afccbc17-7011-4da7-be8e-f25bb6cbf931)

## Future Improvements
- Add support for social login (Google, Facebook).
- Implement password reset functionality.
- Enhance UI/UX with modern design practices.

## Contact
If you have any questions or feedback, feel free to reach out at [mustafa.mahmoud.sheha@gmail.com].

---
Thank you for reviewing my project! 🚀

