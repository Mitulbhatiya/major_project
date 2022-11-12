import 'package:flutter/material.dart';

class learn {
  String? main;
  List? sub;
  List? text;
  List? url;
  learn({this.main, this.sub,this.text,this.url});
}

List<learn> learnList = [
  learn(
    main: "Beginner Level",
    sub: [
      'Flutter 1.0: An Introduction',
      'An Introduction to Flutter: The Basics',
      'I want to learn Flutter: How to start?',
      //'Flutter Beginner Tutorial - Build Own App',
      'First steps with Flutter - Part 1: Exploring Widgets',
      'First steps with Flutter - Part 2: Build Layout',
      'First steps with Flutter - Part 3: Responding to use input',
      'Example apps that built in flutter'
    ],
    text: [
      "Flutter is a new way to develop apps for Android, iOS and many other platforms (but more on that later"
          "Flutter builds native apps and they are written in the Dart language. "
          "Dart is easy to learn and allows a lot of versatility to the Flutter platform. "
          "It allows you to create apps for Android and iOS with the same codebase!"
          "Flutter has been in Beta since February 2018 and since then the Google team and "
          "the community has been adding new features and tweaks, fixing bugs and creating great resources.",

    "Most of the articles on this topic are well written and straightforward. "
        "The problem is that they require you to know some basic things, and those small things "
        "are not described in articles that are suppose to give you basic knowledge. In this series, "
        "I’ll try to avoid that problem. We’ll start from scratch and create applications sorting out every "
        "step we do. During this series, we will use all basic widgets, design a unique interface, "
        "interact with native modules, and build our app for both iOS and Android platforms.",

      "There are plenty of articles or GitHub repositories that will give you a list of resources to start from,"
          " and I am going to link some of them as well. But this article will be a little different. I want to "
          "hold your hand and help you walk the baby steps to Flutterverse, and then leave you to fly on your own. "
          "Um, excuse me? What is Flutterverse again?"
      "Flutter universe! xD Just pass the infant stage and then you will also know these terms soon.",

      "Mountains are only steep if you climb straight up. And the Flutter learning curve is only hard if "
          "you try to do too much at once. Just as hiking trails with switchbacks makes a mountain climb more "
          "manageable, in this tutorial I will give you an opportunity to take some easy first steps to mastering "
          "Flutter. You are going to discover that it’s a lot easier than you thought."
      "One of the first concepts that you encounter in Flutter are widgets, so we will be looking at what they are "
          "and how to use them. Most importantly, there will be lots of examples that you will be able to experiment"
          " with yourself. I encourage you to actually run the examples and make changes to them as you go through"
          " the tutorial. This will greatly improve your rate of learning and help solidify your understanding of"
          " the topics.",

      "If you have done any iOS programming, then you are used to creating layouts graphically in the Interface "
          "Builder. Just drag a UIView onto the storyboard and use your mouse to add the constraints. Or if you "
          "are an Android developer, then you are probably equally comfortable in the Layout Editor creating "
          "layouts graphically or with XML. But then you come to Flutter and learn that you have to make your "
          "layouts programmatically. You see frightening examples of code indentation that look more like the "
          "mountains and valleys of the Himalayas than a user interface. “What?!” you say. “How am I supposed to "
          "learn this?”",

      "In the two previous tutorials we saw that widgets are blueprints for everything that you can see "
          "(and many things that you can’t see) in the user interface. Simple widgets can be combined together "
          "to make complex layouts. The majority of these layouts can be built by dividing your design into rows "
          "(use the Row widget), columns (use the Column widget), and layers (use the Stack widget)."
      "The thing about those layouts, though, is that they were static. You could touch and tap and swipe them "
          "all day and they wouldn’t do a thing. We are going to fix that in this lesson.",

      "Flutter Apps in Production:\n"
      "Businesses of all sizes around the world are building with Flutter."
    ],
    url: [
      'https://medium.com/swlh/flutter-1-0-an-introduction-cb9540b2e1a',
      'https://www.freecodecamp.org/news/an-introduction-to-flutter-the-basics-9fe541fd39e2/',
      'https://medium.com/flutter-community/i-want-to-learn-flutter-how-to-start-ffb4145f9b26',
      'https://pusher.com/tutorials/flutter-widgets',
      'https://pusher.com/tutorials/flutter-building-layouts',
      'https://pusher.com/tutorials/flutter-user-input/',
      'https://flutter.dev/showcase',
    ]
  ),
  learn(
    main: "Intermediate Level",
    sub: [
      'Flutter Cook Book',
    ],
    text: [
      "Books about Flutter\n"
      "Here’s a collection of books about Flutter, in alphabetical order. If you find another one that we should add, file an issue and (optionally) submit a PR (sample) to add it yourself.",
    ],
    url: [
      "https://docs.flutter.dev/resources/books",
    ]

  ),
  learn(
    main: "Advance Level",
    sub: [
      "What's Revolutionary about Flutter",
      'Architect your Flutter project using BLOC pattern',
      'Parsing complex JSON in Flutter',
      'Bringing Flutter to the Web',
      'Flutter - 5 Reason Why you may love it',
      'Zero to One with Flutter'
    ],
    text: [
  "Mobile app development is a relatively recent field of endeavor. Third-party developers have been able to build mobile apps for less than a decade, so it is no surprise that tools are still evolving. The Apple iOS SDK was released in 2008 and the Google Android SDK in 2009. These two SDKs were based on different languages: Objective-C and Java, respectively. Your app talks to the platform to create widgets, or access services like the camera. The widgets are rendered to a screen canvas, and events are passed back to the widgets. This is a simple architecture, but you pretty much have to create separate apps for each platform because the widgets are different, not to mention the native languages. The first cross-platform frameworks were based on JavaScript and WebViews. Examples include a family of related frameworks: PhoneGap, Apache Cordova, Ionic, and others. Before Apple released their iOS SDK they encouraged third party developers to build webapps for the iPhone, so building cross-platform apps using web technologies was an obvious step.",

      "“Once upon a time in the year 2015. I was a novice competitive programmer(Hackerearth profile) and was also learning android app development. As a competitive programmer, I only cared about the output and efficiency of the program I wrote. I never gave a second thought to structuring my programs or projects I wrote. This trend and style reflected in my android projects as well. I was writing android apps with a competitive programmer’s mindset. At the beginning when I was working on my own projects it was all good as I never had a boss or manager who can give me requirements to add new features or change existing features in the app. But when I started working in a startup and building Android apps for them.",

      "I have to admit, I was missing the gson world of Android after working with JSON in Flutter/Dart. When I started working with APIs in Flutter, JSON parsing really had me struggle a lot. And I’m certain, it confuses a lot of you beginners. We will be using the built in dart:convert library for this blog. This is the most basic parsing method and it is only recommended if you are starting with Flutter or you’re building a small project. Nevertheless, knowing the basics of JSON parsing in Flutter is pretty important. When you’re good at this, or if you need to work with a larger project, consider code generator libraries like json_serializable, etc. If possible, I will discover them in the future articles. Fork this sample project. It has all the code for this blog that you can experiment with.",

      "Since its first beta last year, customers have been using Flutter to create mobile apps that run on iOS and Android. However, Flutter was always architected as a portable UI toolkit and, among other places, runs on Windows, Mac, Fuchsia, and even Raspberry Pi. Since Flutter is built using Dart, which includes production-quality compilers for both native machine code and JavaScript, we had a solid foundation. The remaining challenge was to replace the Skia-based graphics engine and text renderer with web-platform equivalents.",

      "You may be curious and ask yourself a question:\n\n"

      "“What’s so innovative about Flutter? How does it work? How is Flutter different from React Native?”\n\n"

      "I’ll not cover technical topics here, as it was done much better by the other people. If you’re interested in how Flutter works in details, I encourage you to read this article: What’s Revolutionary about Flutter? You can also check wrap-up of Flutter concepts in “The Magic of Flutter” presentation. In the shortcut, Flutter is a mobile SDK that allows us to create cross-platform mobile applications (so you can write one code and run the app both on Android and iOS). You write code in Dart, a language developed by Google, which looks very familiar if you used Java before. ",

      "It was late summer 2016, and my first task as a new hire at the Google office in Aarhus, Denmark was to implement animated charts in an Android/iOS app using Flutter and Dart. Besides being a “Noogler”, I was new to Flutter, new to Dart, and new to animations. In fact, I had never done a mobile app before. My very first smartphone was just a few months old — bought in a fit of panic that I might fail the phone interview by answering the call with my old Nokia...\n"
      "I did have some prior experience with charts from desktop Java, but that wasn’t animated. I felt… weird. Partly a dinosaur, partly reborn."
    ],
    url: [
      'https://medium.com/hackernoon/whats-revolutionary-about-flutter-946915b09514',
      'https://medium.com/codechai/architecting-your-flutter-project-bd04e144a8f1',
      'https://medium.com/flutter-community/parsing-complex-json-in-flutter-747c46655f51',
      'https://medium.com/flutter/bringing-flutter-to-the-web-904de05f0df0',
      'https://medium.com/hackernoon/flutter-5-reasons-why-you-may-love-it-55021fdbf1aa',
      'https://medium.com/flutter/zero-to-one-with-flutter-43b13fd7b354',
    ]
  ),
  // learn(
  //   main: "What to do next?",
  //   sub: [
  //
  //   ],
  // ),

];
