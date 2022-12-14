<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    name: Build & Publish Release APK

  on:
    push:
      tags:
        - '*'
  
  jobs:
    Gradle:
      runs-on: ubuntu-latest
      steps:
      - name: checkout code
        uses: actions/checkout@v2
      - name: setup jdk
        uses: actions/setup-java@v1
        with:
          java-version: 11
      - name: Make Gradle executable
        run: chmod +x ./gradlew
      - name: Build Release APK
        run: ./gradlew assembleRelease
      - name: Releasing using Hub
        uses: kyze8439690/action-release-releaseapk@master
        env:
         GITHUB_TOKEN: ${{ secrets.TOKEN }}
         APP_FOLDER: app
         - name: Build Android release APK when create new tag
  uses: kyze8439690/action-release-releaseapk@1.0.0
    package="Food menu">
    <manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="Food menu">
<?xml version="1.0" encoding="UTF-8"?>
<module type="JAVA_MODULE" version="4">
  <component name="NewModuleRootManager" inherit-compiler-output="true">
    <exclude-output />
    <content url="file://$MODULE_DIR$">
      <sourceFolder url="file://$MODULE_DIR$/lib" isTestSource="false" />
      <sourceFolder url="file://$MODULE_DIR$/test" isTestSource="true" />
      <excludeFolder url="file://$MODULE_DIR$/.dart_tool" />
      <excludeFolder url="file://$MODULE_DIR$/.idea" />
      <excludeFolder url="file://$MODULE_DIR$/.pub" />
      <excludeFolder url="file://$MODULE_DIR$/build" />
    </content>
    <orderEntry type="sourceFolder" forTests="false" />
    <orderEntry type="library" name="Dart SDK" level="project" />
    <orderEntry type="library" name="Flutter Plugins" level="project" />
    <orderEntry type="library" name="Dart Packages" level="project" />
  </component>
</module>
    <!-- io.flutter.app.FlutterApplication is an android.app.Application that
         calls FlutterMain.startInitialization(this); in its onCreate method.
         In most cases you can leave this as-is, but you if you want to provide
         additional functionality it is fine to subclass or reimplement
         FlutterApplication and put your custom class here. -->
    <application
        android:name="io.flutter.app.FlutterApplication"
        android:label="SS Menu"
        android:icon="@mipmap/ic_launcher">
        <activity
            android:name=".MainActivity"
            android:launchMode="singleTop"
            android:theme="@style/LaunchTheme"
            android:configChanges="orientation|keyboardHidden|keyboard|screenSize|locale|layoutDirection|fontScale|screenLayout|density|uiMode"
            android:hardwareAccelerated="true"
            android:windowSoftInputMode="adjustResize">
            <!-- This keeps the window background of the activity showing
                 until Flutter renders its first frame. It can be removed if
                 there is no splash screen (such as the default splash screen
                 defined in @style/LaunchTheme). -->
            <meta-data
                android:name="io.flutter.app.android.SplashScreenUntilFirstFrame"
                android:value="true" />
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>
    </application>
    
    <uses-permission android:name="android.permission.INTERNET" />
</manifest>
    <!-- The INTERNET permission is required for development. Specifically,
         flutter needs it to communicate with the running application
         to allow setting breakpoints, to provide hot reload, etc.
    -->
    <uses-permission android:name="android.permission.INTERNET"/>

</manifest>
def localProperties = new Properties()
def localPropertiesFile = rootProject.file('local.properties')
if (localPropertiesFile.exists()) {
    localPropertiesFile.withReader('UTF-8') { reader ->
        localProperties.load(reader)
    }
}

def flutterRoot = localProperties.getProperty('flutter.sdk')
if (flutterRoot == null) {
    throw new GradleException("Flutter SDK not found. Define location with flutter.sdk in the local.properties file.")
}

def flutterVersionCode = localProperties.getProperty('flutter.versionCode')
if (flutterVersionCode == null) {
    flutterVersionCode = '1'
}

def flutterVersionName = localProperties.getProperty('flutter.versionName')
if (flutterVersionName == null) {
    flutterVersionName = '1.0'
}

apply plugin: 'https://dribbble.com/shots/14218141-Food-App-Concept/attachments/5858715?mode=media'
apply from: "$flutterRot/packages/flutter_tools/gradle/flutter.gradle"

android {
    compileSdkVersion 27

    lintOptions {
        disable 'InvalidPackage'
    }

    defaultConfig {
        // TODO: Specify  unique Application ID
        applicationId "Food App menu"
        minSdkVersion 16
        targetSdkVersion 27
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
        testInstrumentationRunner "android.support.test.runner.AndroidJUnitRunner"
    }

    buildTypes {
        release {
            // TODO: Add signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig signingConfigs.debug
        }
    }
}

flutter {
    source '../..'
}

dependencies {
    testImplementation 'junit:junit:4.12'
    androidTestImplementation 'com.android.support.test:runner:1.0.2'
    androidTestImplementation 'com.android.support.test.espresso:espresso-core:3.0.2'
}
package food menu;

import android.os.Bundle;
import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);
  }
}
<?xml version="1.0" encoding="utf-8"?>
<!-- Modify this file to customize your launch splash screen -->
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:drawable="@android:color/white" />

    <!-- You can insert your own image assets here -->
    <!-- <item>
        <bitmap
            android:gravity="center"
            android:src="@mipmap/launch_image" />
            
    </item> -->
</layer-list>
<?xml version="1.0" encoding="utf-8"?>
<resources>
                </layer-list>
<?xml version="1.0" encoding="utf-8"?>
<resources>

<?xml version="1.0" encoding="utf-8"?>
<resources>
<color name="colorPrimary">#009999</color>
<color name="colorPrimaryDark">#006666</color>
<color name="textColorPrimary">#FFFFFF</color>
<color name="windowBackground">#FFFFFF</color>
<color name="navigationBarColor">#000000</color>
<color name="colorAccent">#006666</color>
</resources>
<resources>
 <!-- Base application theme. -->
 <style name="MyTheme" parent="https://dribbble.com/shots/14218141-Food-App-Concept/attachments/5858715?mode=media"></style>

 <style name="MyTheme.Base" parent="Theme.AppCompat.Light.DarkActionBar">
    <item name="windowNoTitle">true</item>
    <item name="windowActionBar">false</item>
    <item name="colorPrimary">@color/colorPrimary</item>
    <item name="colorPrimaryDark">@color/colorPrimaryDark</item>
    <item name="colorAccent">@color/colorAccent</item>
 </style>
 </resources>
 <resources>
    <style name="MyTheme" parent="https://dribbble.com/shots/14218141-Food-App-Concept/attachments/5858715?mode=media">
    <item name="android:windowContentTransitions">true</item>
    <item name="android:windowAllowEnterTransitionOverlap">true</item>
    <item name="android:windowAllowReturnTransitionOverlap">true</item>
    <item name="android:windowSharedElementEnterTransition">@android:transition/move</item>
    <item name="android:windowSharedElementExitTransition">@android:transition/move</item>
  </style>
  </resources>
    <style name="LaunchTheme" parent="https://dribbble.com/shots/14218141-Food-App-Concept/attachments/5858715?mode=media">
        <!-- Show a splash screen on the activity. Automatically removed when
             Flutter draws its first frame -->
        <item name="android:windowBackground">@drawable/launch_background</item>
    </style>
</resources>
include ':app'

def flutterProjectRoot = rootProject.projectDir.parentFile.toPath()

def plugins = new Properties()
def pluginsFile = new File(flutterProjectRoot.toFile(), '.flutter-plugins')
if (pluginsFile.exists()) {
    pluginsFile.withReader('UTF-8') { reader -> plugins.load(reader) }
}
plugins.each { name, path ->
    def pluginDirectory = flutterProjectRoot.resolve(path).resolve('android').toFile()
    include ":Food Menu"
    project(":Food Menu").projectDir = pluginDirectory
}[
    import 'package:flutter/material.dart';

//Pages
import '../pages/home_page.dart';
import '../pages/order_page.dart';
import '../pages/explore_page.dart';
import '../pages/profile_page.dart';

class MainScreen extends StatefulWidget {
  final MainModel model;
  MainScreen({this.model});
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;

  List<Widget> pages;
  Widget currentPage;

  //Pages
  HomePage homePage;
  OrderPage orderPage;
  FavoritePage favoritePage;
  ProfilePage profilePage;

  @override
  void initState() {
    widget.model.fetchAll();

    homePage = HomePage();
    orderPage = OrderPage(model: widget.model);
    favoritePage = FavoritePage(model: widget.model);
    profilePage = ProfilePage();
    pages = [homePage, favoritePage, orderPage, profilePage];

    currentPage = homePage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            currentTabIndex == 0
                ? "FOOD MENU"
                : currentTabIndex == 1
                    ? "All Food Items"
                    : currentTabIndex == 2 ? "Your Order" : "Profile",
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications_none,
                size: 30.0,
                color: Colors.lightBlueAccent,
              ),
              onPressed: () {},
            )
          ],
        ),
        drawer: ScopedModelDescendant(
            builder: (BuildContext context, Widget child, MainModel model) {
          UserInfo userInfo = model.getUserDetails(PreferenceHelper.getId());
          return Drawer(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset('put prefred image'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      Food Menu",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                userInfo.email == "admin@ntisa.com"
                    ? ListTile(
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => AddFoodItem(),
                          ));
                        },
                        leading: Icon(Icons.fastfood),
                        title: Text(
                          "Add Food Item",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      )
                    : ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => AboutUsPage(),
                          ));
                        },
                        leading: Icon(Icons.info),
                        title: Text(
                          "About Us",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        }),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
              currentPage = pages[index];
            });
          },
          currentIndex: currentTabIndex,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant),
              title: Text("Explore"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text("Cart"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
            ),
          ],
        ),
        body: currentPage,
      ),
    );
  }
}
    {
        apply Theme: "img": "https://dribbble.com/shots/14218141-Food-App-Concept/attachments/5858715?mode=media"


     apply plugin:
      "id": "the-gramercy-tavern-burger-4-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/137148/Gramercy-Tavern-Burger-and-Kielbasa-Kit-6.4.21-72ppi-1x1-15.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Gramercy Tavern",
      "dsc": "The Gramercy Tavern Burger - 4 Pack",
      "price": 99,
      "rate": 5,
      "country": "New York, NY"
    },
    {
      "id": "shake-shack-shackburger-8-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/134862/shake-shack-shackburger-8-pack.973a5e26836ea86d7e86a327becea2b0.png?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Shake Shack",
      "dsc": "Shake Shack ShackBurger?? ??? 8 Pack",
      "price": 49,
      "rate": 5,
      "country": "New York, NY"
    },
    {
      "id": "gotts-cheeseburger-kit-for-4",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/132933/gotts-complete-cheeseburger-kit-for-4.7bdc74104b193427b3fe6eae39e05b5e.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Gott's Roadside",
      "dsc": "Gott's Complete Cheeseburger Kit for 4",
      "price": 99,
      "rate": 5,
      "country": "St. Helena, CA"
    },
    {
      "id": "le-big-matt-kit-for-6",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/131436/le-big-matt-kit-for-6.1ddae6e382bb3218eeb0fd5247de115a.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Emmy Squared",
      "dsc": "Le Big Matt Burger Kit for 6",
      "price": 99,
      "rate": 5,
      "country": "Brooklyn, NY"
    },
    {
      "id": "shake-shack-shackburger-16-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/134022/shake-shack-shackburger-16-pack.316f8b09144db65931ea29e34869287a.png?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Shake Shack",
      "dsc": "Shake Shack Shackburger?? ??? 16 Pack",
      "price": 89,
      "rate": 4,
      "country": "New York, NY"
    },
    {
      "id": "wagyu-burger-patties-12-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/107019/wagyu-burger-patties-12-pack.6116f4cd648dee20651f99e21e7d758b.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Westholme Wagyu",
      "dsc": "Wagyu Burger Patties - 12 Pack",
      "price": 129,
      "rate": 5,
      "country": "Queensland, Australia"
    },
    {
      "id": "21-usda-prime-burgers-pack-of-18-8oz-each",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/133009/usda-prime-burgers-pack-of-18-8oz-each.274c67f15aa1c0b210dbf51801706670.png?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Peter Luger Steak House",
      "dsc": "USDA Prime Burgers - Pack of 18 (8oz each)",
      "price": 175.95,
      "rate": 4,
      "country": "Brooklyn, NY"
    },
    {
      "id": "burger-bomb-kit-for-6",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/133829/burger-bomb-kit-for-6.b0430200cfc153c1c15c7997236a6152.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Old Homestead Steakhouse",
      "dsc": "Burger Bomb Kit for 6",
      "price": 129,
      "rate": 5,
      "country": "New York, NY"
    },
    {
      "id": "double-stack-burger-kit-for-4",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/122768/handf-double-stack-burger-kit-for-4.4ee9f54b1d6087e9996335f07c13e5cd.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Holeman & Finch",
      "dsc": "Double Stack Burger Kit for 4",
      "price": 79,
      "rate": 4,
      "country": "Atlanta, GA"
    },
    {
      "id": "goldbelly-burger-bash-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/66179/the-burger-bash-package.bd9d12d031865940bbe5faf15f1a62f8.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Pat LaFrieda Meats",
      "dsc": "Goldbelly \"Burger Bash\" Pack",
      "price": 109,
      "rate": 5,
      "country": "North Bergen, NJ"
    },
    {
      "id": "burger-au-poivre-kit-4-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/103477/burger-au-poivre-kit-4-pack.3ca0e39b02db753304cd185638dad518.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Raoul's",
      "dsc": "Burger Au Poivre Kit - 4 Pack",
      "price": 99,
      "rate": 4,
      "country": "New York, NY"
    },
    {
      "id": "goldbelly-burger-blend-4-lbs",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/96214/goldbelly-burger-blend-1-lb.13a21b66edf7173a59c75c3a6d2f981b.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Flannery Beef",
      "dsc": "Goldbelly Burger Blend - 4 lbs.",
      "price": 79,
      "rate": 5,
      "country": "San Rafael, CA"
    },
    {
      "id": "gotts-complete-cheeseburger-kit-for-8",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/133967/gotts-complete-cheeseburger-kit-for-8.092aa049d00286fa1733d720decc782e.jpeg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Gott's Roadside",
      "dsc": "Gott's Complete Cheeseburger Kit for 8",
      "price": 149,
      "rate": 4,
      "country": "St. Helena, CA"
    },
    {
      "id": "gramercy-tavern-burger-kielbasa-combo",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/135126/Gramercy-Tavern-Burger-and-Kielbasa-Kit-6.4.21-72ppi-1x1-47.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Gramercy Tavern",
      "dsc": "Gramercy Tavern Burger + Kielbasa Combo",
      "price": 149,
      "rate": 4,
      "country": "New York, NY"
    },
    {
      "id": "classic-juicy-lucy-burgers-sweet-potato-puffs-4-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/114296/classic-juicy-lucy-burgers-sweet-potato-puffs-4-pack.b726cfe63b6e1584a4e3c01db24f97d2.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "5-8 Club",
      "dsc": "Classic Juicy Lucy Burgers + Sweet Potato Puffs - 4 Pack",
      "price": 99,
      "rate": 5,
      "country": "Minneapolis, MN"
    },
    {
      "id": "juicy-lucy-burger-kit-5-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/132203/juicy-lucy-burger-kit-5-pack.2902a0c8549449529e87f902f425f9ae.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Whitmans",
      "dsc": "Juicy Lucy Burger Kit - 5 Pack",
      "price": 79,
      "rate": 5,
      "country": "New York, NY"
    },
    {
      "id": "blue-aged-cheddar-jalapeno-burgers-6-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/124204/blue-aged-cheddar-jalapeno-burgers-6-pack.a8e79d575c4a6883a0a4daed6a18b635.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Old Homestead Steakhouse",
      "dsc": "Blue Aged Cheddar Jalapeno Burgers - 6 Pack",
      "price": 139,
      "rate": 4,
      "country": "New York, NY"
    },
    {
      "id": "wagyu-burger-patties-6-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/106998/wagyu-burger-patties-6-pack.7837b88faa095c92a0a1a00414296beb.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Westholme Wagyu",
      "dsc": "Wagyu Burger Patties - 6 Pack",
      "price": 89,
      "rate": 5,
      "country": "Queensland, Australia"
    },
    {
      "id": "american-wagyu-burger-party-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/109633/american-wagyu-burger-party-pack.6bb259a1c95c067d5da9a1057a9517e7.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Holy Grail Steak Co.",
      "dsc": "American Wagyu Burger Party Pack",
      "price": 199,
      "rate": 5,
      "country": "San Francisco, CA"
    },
    {
      "id": "best-damn-cheeseburger-kit",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/134005/best-damn-cheeseburger-kit-8-pack.0c2ca295cc1b754d2867651184a07140.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "4505 Burgers & BBQ",
      "dsc": "Best Damn Cheeseburger Kit - 8 Pack",
      "price": 89,
      "rate": 5,
      "country": "San Francisco, CA"
    },
    {
      "id": "foie-gras-teriyaki-burger-kit-8-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/137097/Hall-by-Odo-Foie-Gras-Burger-1.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "HALL by Odo",
      "dsc": "Foie Gras Teriyaki Burger Kit - 8 Pack",
      "price": 139,
      "rate": 4,
      "country": "New York, NY"
    },
    {
      "id": "juicy-lucifer-burger-kit-for-4",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/120623/juicy-lucifer-burger-kit-for-4.5a231c2ed989431218aa6062ff89b20a.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Hell's Kitchen",
      "dsc": "Juicy Lucifer Burger Kit for 4",
      "price": 79,
      "rate": 4,
      "country": "Minneapolis, MN"
    },
    {
      "id": "le-pig-mac-kit-for-4",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/106701/le-pig-mac-kit-for-4.d9b274673ffc1a1a2035c9573291cae2.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Cochon Butcher",
      "dsc": "Le Pig Mac Kit for 4",
      "price": 109,
      "rate": 4,
      "country": "New Orleans, LA"
    },
    {
      "id": "juicy-lucy-burgers-sweet-potato-puffs-choose-your-own-4-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/132910/juicy-lucy-burgers-sweet-potato-puffs-choose-your-own-4-pack.c2994c945ac66b003c7763c4b3fd5255.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "5-8 Club",
      "dsc": "Juicy Lucy Burgers + Sweet Potato Puffs - Choose Your Own 4 Pack",
      "price": 99,
      "rate": 5,
      "country": "Minneapolis, MN"
    },
    {
      "id": "the-cheeseburger-wellington-2-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/132490/the-burger-wellington-2-pack.eb53bc9ad74634bb0c5da44bc55f9362.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Wellingtons LA",
      "dsc": "\"The Cheeseburger\" Wellington - 2 Pack",
      "price": 59,
      "rate": 4,
      "country": "Los Angeles, CA"
    },
    {
      "id": "dry-aged-blend-burgers",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/103715/dry-aged-blend-burgers.90e05b1839eff99eb724e7d6265e84f9.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Master Purveyors",
      "dsc": "Dry-Aged Blend Burgers",
      "price": 54,
      "rate": 5,
      "country": "Bronx, NY"
    },
    {
      "id": "double-stack-burger-kit-for-2",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/132733/handf-double-stack-burger-kit-for-2.4ecf6b1bee6b0ecef3b82606860a1b5b.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Holeman & Finch",
      "dsc": "Double Stack Burger Kit for 2",
      "price": 49,
      "rate": 4,
      "country": "Atlanta, GA"
    },
    {
      "id": "the-gold-label-burger-4-patties-6oz-each-15-lbs",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/130074/the-gold-label-burger-4-patties-6oz-each-15-lbs.492945fff05ba5f036eca31df024d22f.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Pat LaFrieda Meats",
      "dsc": "Gold Label Burger",
      "price": 69,
      "rate": 5,
      "country": "North Bergen, NJ"
    },
    {
      "id": "legendary-cheesy-western-burger-kit-4-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/131302/legendary-cheesy-western-burger-kit-4-pack.393ceddb3bca3acd862e762e48e4c207.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Texas Inn",
      "dsc": "Legendary \"Cheesy Western\" Burger Kit - 4 Pack",
      "price": 59,
      "rate": 4,
      "country": "Lynchburg, VA"
    },
    {
      "id": "foie-gras-teriyaki-wagyu-burger-kit-8-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/137099/Hall-by-Odo-Burger-Combo.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "HALL by Odo",
      "dsc": "Foie Gras Teriyaki + Wagyu Burger Kit - 8 Pack",
      "price": 119,
      "rate": 5,
      "country": "New York, NY"
    },
    {
      "id": "keens-burger-kit-for-4",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/105255/keens-burger-kit-for-4.862e70d1671202747d23f732f3453c81.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Keens Steakhouse",
      "dsc": "Keens Burger Kit for 4",
      "price": 99,
      "rate": 4,
      "country": "New York, NY"
    },
    {
      "id": "16001-100-fullblood-wagyu-beef-ground-beef",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/134623/100-fullblood-wagyu-beef-ground-beef.3ce763ed33cc05cddecc1978cb197a7e.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Lone Mountain Wagyu",
      "dsc": "100% Fullblood Wagyu Beef Ground Beef",
      "price": 69,
      "rate": 5,
      "country": "Golden, NM"
    },
    {
      "id": "the-cheeseburger-wellington-4-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/131557/the-burger-wellington-4-pack.aca42e69c68050d853d94eb5d4076dac.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Wellingtons LA",
      "dsc": "\"The Cheeseburger\" Wellington - 4 Pack",
      "price": 89,
      "rate": 5,
      "country": "Los Angeles, CA"
    },
    {
      "id": "17663-mesquite-smoked-brisket-burger-patties-sauce",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/131538/mesquite-smoked-brisket-burger-patties-dry-rub.628f7434c98a870a57b36c0c1dc4ec3f.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Davila's BBQ",
      "dsc": "Mesquite Smoked Brisket Burger Patties + Dry Rub",
      "price": 89,
      "rate": 5,
      "country": "Seguin, TX"
    },
    {
      "id": "gotts-impossible-burger-kit-for-8",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/129127/gott-s-impossible-burger-kit-for-8.83516ceaacc8918f0ccad6575a6b8425.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Gott's Roadside",
      "dsc": "Gott???s Impossible??? Burger Kit for 8",
      "price": 169,
      "rate": 4,
      "country": "St. Helena, CA"
    },
    {
      "id": "goldbelly-steak-burger-sampler",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/133612/goldbelly-steak-burger-sampler.30f9703bf7c2355cffa8846e328481d0.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Pat LaFrieda Meats",
      "dsc": "Goldbelly Steak + Burger Sampler",
      "price": 135,
      "rate": 5,
      "country": "North Bergen, NJ"
    },
    {
      "id": "hall-signature-wagyu-burger-kit-8-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/137095/Hall-by-Odo-Signature-Burger-1.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "HALL by Odo",
      "dsc": "HALL Signature Wagyu Burger Kit - 8 Pack",
      "price": 99,
      "rate": 5,
      "country": "New York, NY"
    },
    {
      "id": "gourmet-burger-box-12-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/97480/gourmet-burger-box-12-pack.a35a99e7afd03e8d1f5d3bf2eb33c46a.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Alewel's Country Meats",
      "dsc": "Gourmet Burger Box - 12 Pack",
      "price": 89,
      "rate": 5,
      "country": "Warrensburg, MO"
    },
    {
      "id": "foie-gras-teriyaki-burger-kit-4-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/137098/Hall-by-Odo-Foie-Gras-Burger-1.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "HALL by Odo",
      "dsc": "Foie Gras Teriyaki Burger Kit - 4 Pack",
      "price": 89,
      "rate": 4,
      "country": "New York, NY"
    },
    {
      "id": "hall-signature-wagyu-burger-kit-4-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/137096/Hall-by-Odo-Signature-Burger-1.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "HALL by Odo",
      "dsc": "HALL Signature Wagyu Burger Kit - 4 Pack",
      "price": 69,
      "rate": 4,
      "country": "New York, NY"
    },
    {
      "id": "burger-patty-assortment-12-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/108388/burger-patty-assortment-12-pack.1a508c39aa7b49a00c1c4349f88670a4.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Rocker Bros. Meat & Provisions",
      "dsc": "Burger Patty Assortment - 12 Pack",
      "price": 39,
      "rate": 5,
      "country": "Los Angeles, CA"
    },
    {
      "id": "gotts-roadside-impossible-burger-kit-for-4",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/135117/IB_Burgers_2.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "The Impossible Foods Shop",
      "dsc": "Gott???s Roadside Impossible??? Burger Kit for 4",
      "price": 109,
      "rate": 4,
      "country": "Oakland, CA"
    },
    {
      "id": "short-rib-blend-burgers",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/103717/short-rib-blend-burgers.a078c983a9ba2b3628a944a0c885ae14.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Master Purveyors",
      "dsc": "Short Rib Blend Burgers",
      "price": 52,
      "rate": 5,
      "country": "Bronx, NY"
    },
    {
      "id": "classic-shrimp-burgers",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/112675/classic-shrimp-burgers.965772a8abe95e6e5579e86312d74de6.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Big Shake's Hot Chicken",
      "dsc": "Classic Shrimp Burgers",
      "price": 79,
      "rate": 4,
      "country": "Franklin, TN"
    },
    {
      "id": "moobys-meal-kit-6-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/134095/moobys-meal-kit-6-pack.d0e1a6e3dd32eb2673b5df60c3db1818.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Mooby's",
      "dsc": "Mooby's Meal Kit - 6 Pack",
      "price": 79,
      "rate": 5,
      "country": "Los Angeles, CA"
    },
    {
      "id": "juicy-lucy-burgers-sweet-potato-puffs-choose-your-own-8-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/132978/juicy-lucy-burgers-sweet-potato-puffs-choose-your-own-8-pack.54ad2dc40fb4708ec1b6e5c3ccdf2f89.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "5-8 Club",
      "dsc": "Juicy Lucy Burgers + Sweet Potato Puffs - Choose Your Own 8 Pack",
      "price": 149,
      "rate": 5,
      "country": "Minneapolis, MN"
    },
    {
      "id": "mesquite-smoked-brisket-burger-patties-hot-links-dry-rub",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/79492/mesquite-smoked-brisket-burger-patties-hot-links-dry-rub.41cbe9a5d29f1a4ef3491ab6eb8713a5.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Davila's BBQ",
      "dsc": "Mesquite Smoked Brisket Burger Patties + Hot Links + Dry Rub",
      "price": 109,
      "rate": 4,
      "country": "Seguin, TX"
    },
    {
      "id": "hatch-green-chile-cheeseburger-kit-6-pack",
      "img": "https://goldbelly.imgix.net/uploads/product_image/image/25753/green-chile-cheeseburger-6-pack.f3b980b43c8661e8fac3634b082668a5.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Sparky's Hatch Green Chile Burgers",
      "dsc": "Hatch Green Chile Cheeseburger Kit - 6 Pack",
      "price": 109,
      "rate": 5,
      "country": "Hatch, NM"
    },
    {
      "id": "Giant-cheese-burger-potstickers-6-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/97098/giant-cheese-burger-potstickers-6-pack.36899150ea75b8869bc2bd46ad126a57.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Shirley Chung's Ms. Chi",
      "dsc": "Giant Cheese Burger Potstickers - 6 Pack",
      "price": 69,
      "rate": 4,
      "country": "Los Angeles, CA"
    },
    {
      "id": "juicy-lucy-burger-kit-10-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/105731/juicy-lucy-burger-kit-10-pack.41d77903b061d6c6b080f990b4ad2fb7.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Whitmans",
      "dsc": "Juicy Lucy Burger Kit - 10 Pack",
      "price": 129,
      "rate": 5,
      "country": "New York, NY"
    },
    {
      "id": "vegan-burger-grill-kit-for-4",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/105946/vegan-burger-grill-kit-for-4.1450ccef8c44f7394c93f58450ce67b9.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Lekka Burger",
      "dsc": "Vegan Burger Grill Kit for 4",
      "price": 79,
      "rate": 4,
      "country": "New York, NY"
    },
    {
      "id": "classic-juicy-lucy-burgers-sweet-potato-puffs-8-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/114319/classic-juicy-lucy-burgers-sweet-potato-puffs-8-pack.36c8d716563c1af2d2ca1c1140d36273.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "5-8 Club",
      "dsc": "Classic Juicy Lucy Burgers + Sweet Potato Puffs - 8 Pack",
      "price": 149,
      "rate": 5,
      "country": "Minneapolis, MN"
    },
    {
      "id": "brisket-burger-8-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/124922/short-rib-burger-blend.6275c3ffad67f0e93de4eafbc4f809df.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Pat LaFrieda Meats",
      "dsc": "Brisket Burger - 8 Pack",
      "price": 31.9,
      "rate": 5,
      "country": "North Bergen, NJ"
    },
    {
      "id": "bfbol-original-blend-burger-8-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/124841/original-blend-burger.50bb5cf520d3f653b0b80187716cc3e2.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Pat LaFrieda Meats",
      "dsc": "Original Blend Burger - 8 Pack",
      "price": 31.9,
      "rate": 5,
      "country": "North Bergen, NJ"
    },
    {
      "id": "ribeye-burger-patties-6-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/133972/ribeye-burger-patties-6-pack.dd62bc3b8a096f15429571865ba5d561.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Rocker Bros. Meat & Provisions",
      "dsc": "Ribeye Burger Patties - 6 Pack",
      "price": 45,
      "rate": 4,
      "country": "Los Angeles, CA"
    },
    {
      "id": "raouls-steak-and-burgers-au-poivre-kit-2-4-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/133421/raouls-burgers-and-steaks-au-poivre-kit.aeafc64d55d6ad7274cb8ba1b562f8eb.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Raoul's",
      "dsc": "Raoul's Burgers and Steaks Au Poivre Kit",
      "price": 249,
      "rate": 4,
      "country": "New York, NY"
    },
    {
      "id": "bfbsr-short-rib-burger-8-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/132398/short-rib-burger-blend.586f10c35edd4d7c6e9cfa41e3b2d0d2.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Pat LaFrieda Meats",
      "dsc": "Short Rib Burger - 8 Pack",
      "price": 36,
      "rate": 4,
      "country": "North Bergen, NJ"
    },
    {
      "id": "gotts-impossible-burger-kit-for-4",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/133852/gott-s-impossible-burger-kit-for-4.1170c94bac2ddef7de0c52cd7df6e0a3.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Gott's Roadside",
      "dsc": "Gott???s Impossible??? Burger Kit for 4",
      "price": 109,
      "rate": 5,
      "country": "St. Helena, CA"
    },
    {
      "id": "famous-french-bread-burger-fries-kit-for-4",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/129511/burger-fries-kit-for-4.ffc10e462cadece50d64f8ce5fd8ea7a.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Rotier's Restaurant",
      "dsc": "Famous French Bread Burger + Fries Kit for 4",
      "price": 99,
      "rate": 4,
      "country": "Nashville, TN"
    },
    {
      "id": "vegan-burger-patties-12-pack",
      "img": "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/119472/vegan-burger-patties-12-pack.56f31f18b126e7f84b02b6f1babd5d12.jpg?ixlib=react-9.0.2&auto=format&ar=1%3A1",
      "name": "Burgerlords",
      "dsc": "Vegan Burger Patties - 12 Pack",
      "price": 79,
      "rate": 4,
      "country": "Los Angeles, CA"
    },
    {
      "id": "GRRstCs"
    }
  ]
  enum AuthMode{
    SignIn,
    SignUp,
  }

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await PreferenceHelper.load();
  await Firebase.initializeApp();
  runApp(App());
}
