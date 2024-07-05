
# Festival-Design-Poster-Maker Project

A Festival-Design-Poster-Maker project created in flutter. Festival-Design-Poster-Maker supports both ios and android, clone the appropriate branches mentioned below:

* For Mobile: https://github.com/rajiyanareja1517/Festival-Design-Poster-Maker 

Download or clone this repo by using the link below:

```
https://github.com/rajiyanareja1517/Festival-Design-Poster-Maker.git
```

## Festival-Design-Poster-Maker Features:

#### Poster make
  * Using this app you can make poster and edit also.
 
#### Sort Quotes
 * you can directly use readyment sort quotes.

#### Edit 
* You can create fully cusmise quote posters.
  
#### Share
* You can share your quote posters anywhere.

### Folder Structure
Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- assets
|- ios
|- lib
|- test
```

Here is the folder structure we have been using in this project

```
lib/
|- screens/
|- utils/
|- main.dart
```

### screens

This directory screens all the screen of the application together in one place. A separate file is created for each type as shown in example below:

```
screens/
|- splashscreen.dart
|- home_Page.dart
|- detail_page.dart
|- StrapWatch.dart
|- favourite_Page.dart
|- EditPage.dart
|- morePage.dart
```
      
### utils

Contains the common file(s) and utilities used in a project. The folder structure is as follows:

```

|- utils/
    |- global.dart/
    |- globalData.dart/
    |- quote.dart/
    
```


### Main

This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.

```dart
import 'package:flutter/material.dart';
import 'package:wisdomwords/screens/detail_page.dart';
import 'package:wisdomwords/screens/edit_page.dart';
import 'package:wisdomwords/screens/favourite_page.dart';
import 'package:wisdomwords/screens/homepage.dart';
import 'package:wisdomwords/screens/more_page.dart';
import 'package:wisdomwords/screens/splash.dart';

void main() {
  runApp(
    MaterialApp(
        theme: ThemeData(fontFamily: 'marc'),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => splashscreen(),
          'homepage': (context) => home_Page(),
          'detail_page': (context) => detail_page(),
          'favourite_page': (context) => favourite_Page(),
          'edit_page': (context) => EditPage(),
          'more_page': (context) => morePage(),
        }),
  );
}

```




https://github.com/rajiyanareja1517/Festival-Design-Poster-Maker/assets/165259303/3cb0144f-80c4-4388-91ab-a171555025e1




![Screenshot_20240705_180353](https://github.com/rajiyanareja1517/Festival-Design-Poster-Maker/assets/165259303/1e77048c-2ea4-4edf-89ce-a347edec7ff3)
![Screenshot_20240705_180500](https://github.com/rajiyanareja1517/Festival-Design-Poster-Maker/assets/165259303/48572650-7d54-4ce2-a0c0-cae200c022df)
![Screenshot_20240705_180534](https://github.com/rajiyanareja1517/Festival-Design-Poster-Maker/assets/165259303/f0622ce6-6268-41fc-9531-c72870bed7de)
![Screenshot_20240705_180551](https://github.com/rajiyanareja1517/Festival-Design-Poster-Maker/assets/165259303/3b3500f3-b9f6-4157-9b62-1d44a8a032b4)
![Screenshot_20240705_180702](https://github.com/rajiyanareja1517/Festival-Design-Poster-Maker/assets/165259303/f4843bca-0177-4146-bc9b-f868dbf3965d)
![Screenshot_20240705_180620](https://github.com/rajiyanareja1517/Festival-Design-Poster-Maker/assets/165259303/2b009fa8-113f-4710-864e-28112f412852)



## Conclusion

Again to note, this is example can appear as my code for what it is - but it is an example only. If you liked my work, don’t forget to ⭐ star the repo to show your support.
