# dhiwise_task

Working demo of the task

<img src="https://github.com/parthdasawant/dhiwise_task/assets/80618762/a6d67a62-ad97-425c-b6ff-2f4de2060266" alt="gif1" width="300"/>

<hr>

After Updating the total amount this how it reacts 

<img src="https://github.com/parthdasawant/dhiwise_task/assets/80618762/57cf59b3-562c-4779-8ae7-cba382131f79" alt="gif2" width="300"/>


## Clone and Setup Instructions

1. Clone the repository to your local machine:

    ```bash
    git clone https://github.com/parthdasawant/dhiwise_task.git
    ```

2. Change to the project directory:

    ```bash
    cd dhiwise_task
    ```

3. Install dependencies:

    ```bash
    flutter pub get
    ```


## Connect Flutter Project to Firebase

1. **Create a Firebase Project:**
   - Go to the [Firebase Console](https://console.firebase.google.com/).
   - Click on "Add Project" and follow the setup instructions.

2. **Add Android and iOS Apps:**
   - After creating the project, click on "Add app" and select the appropriate platform (Android/iOS).
   - Follow the setup instructions for each platform. This will include downloading configuration files.

### Android Configuration

3. **Download and Add `google-services.json`:**
   - For Android, download the `google-services.json` file from the Firebase Console.
   - Place it in the `android/app` directory of your Flutter project.

4. **Update `build.gradle` (Module: app):**
   - Open `android/app/build.gradle`.
   - Add the following classpath to the dependencies:

     ```gradle
     dependencies {
         // ...
         classpath 'com.google.gms:google-services:4.3.10'
     }
     ```

   - At the bottom of the same file, apply the Google services plugin:

     ```gradle
     apply plugin: 'com.google.gms.google-services'
     ```

5. **Sync Gradle:**
   - After making these changes, sync your Gradle files by clicking on "Sync Now" in Android Studio.

### iOS Configuration

6. **Download and Add `GoogleService-Info.plist`:**
   - For iOS, download the `GoogleService-Info.plist` file from the Firebase Console.
   - Place it in the `ios/Runner` directory of your Flutter project.

7. **Update `Podfile`:**
   - Open `ios/Podfile`.
   - Add the following line at the end:

     ```ruby
     pod 'FirebaseFirestore'
     ```

   - Save the file.

8. **Run Pod Install:**
   - Open a terminal and navigate to the `ios` directory.
   - Run:

     ```bash
     pod install
     ```

## Creating Firestore Database for Flutter Project

1. Create a Firebase Project

- Go to the [Firebase Console](https://console.firebase.google.com/).
- Click on "Add Project" and follow the setup instructions.

2. Add Android and iOS Apps

- After creating the project, click on "Add app" and select the appropriate platform (Android/iOS).
- Follow the setup instructions for each platform. This will include downloading configuration files.

3. Enable Firestore in Firebase Console

- In the Firebase Console, navigate to your project.
- Click on "Firestore" in the left-hand menu.
- Click on "Create Database."
- Choose "Start in test mode" for now, and click "Next."

4. Create Collections and Documents

- Once the Firestore database is created, you can start adding collections and documents.
- Click on "Start collection" and provide a name for your collection.
- Inside the collection, you can add documents and fields.

5. Define Data Structure

- For each document, define the data structure by adding fields and assigning values.
- Firestore is a NoSQL database, allowing flexibility in data structure.

### Example for seeding the database:

Suppose you are creating a budget tracking app with a collection for financial goals:

<img width="1283" alt="Screenshot 2024-01-04 at 10 29 57 PM" src="https://github.com/parthdasawant/dhiwise_task/assets/80618762/6b2470a0-d6c8-4a2a-9a57-808f38520c0e">

6. Security Rules

- Configure security rules to restrict access to your database. You can do this in the "Rules" tab in the Firestore section of the Firebase Console.

## Run the application:

    ```bash
    flutter run
    ```
