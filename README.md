🛒 GroceryMart — Flutter Grocery App
GroceryMart is a modern Flutter application developed as part of the MUST Company Flutter Intern Assessment. This project demonstrates essential e-commerce app features with a focus on clean architecture, reusable UI components, and persistent cart data — all without using a backend. The app follows scalable state management with Provider, simulates product data from local sources, and persists user cart selections using SharedPreferences.

📲 Features
✅ Core Functionalities
Home Screen

Display featured products (Exclusive Offers, Best Selling, Groceries)

Category filtering using horizontal chips (e.g., Pulses)

Reusable and clean product cards

Shopping Cart

Add/remove products from cart

Adjust quantity with + / - buttons

Persistent cart (saved locally)

Local Data Management

Hardcoded/mock product data (JSON-like structure)

Cart persisted using SharedPreferences (can easily be switched to Hive)

🧱 Architecture & Stack
State Management: Provider

Routing: go_router

Storage: SharedPreferences (Hive support optional)

UI: Flutter + ScreenUtil for responsiveness

Animations: Carousel, Transitions, and ScaleEffects

Modular Structure: Clean folder separation (features, models, utils, widgets)

