# Weather App

A Weather App with login and signup functionality.

## Features
* Email and Password Authentication
* Persisting Auth state
* Searching different places
* Giving realtime weather data
* Sign Out

## Running Locally
 After cloning this repository, migrate to `login_and_signup` folder. Then, follow the following steps:
* Create MongoDB Project & Cluster
* Click on Connect, follow the process where you will get the uri.- Replace the MongoDB uri with yours in `server/index.js`.
* Head to `lib\utils\constants.dart file`, replace with your IP Address.
  Then run the following commands to run your app:
### Server Side
```
  cd server
  npm install
  npm run dev (for continuous development)
  OR
  npm start (to run script 1 time)
```
### Client Side
```
  flutter pub get
  open -a simulator (to get iOS Simulator)
  flutter run
```
## Tech Used
* **Server**:  Node.js, Express, Mongoose, MongoDB
* **Client**: Flutter, Provider
