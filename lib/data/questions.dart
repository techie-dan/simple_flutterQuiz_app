import 'package:flutter_tutorial_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'Combining widgets in  visual editor',
    'By defining widgets in config files',
    'Using XCode for iOS & AStudio for Android',
  ]),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'Which Flutter package is commonly used for making HTTP requests?',
    [
      'http',
      'provider',
      'sqflite',
      'path_provider',
    ],
  ),
   QuizQuestion(
    'Which widget allows for input from the user?',
    [
      'TextField',
      'Scalffold',
      'Image',
      'SizedBox',
    ],
  ),
  QuizQuestion(
    'Which method is called when a StatefulWidget is first created?',
    [
      'initState()',
      'build()',
      'dispose()',
      'setState()',
    ],
  ),
  QuizQuestion(
    'Which widget is used to display a scrollable list of items in Flutter?',
    [
      'ListView',
      'Container',
      'Stack',
      'Row',
    ],
  ),
  QuizQuestion(
    'What method is used to build a user interface in a StatefulWidget?',
    [
      'build()',
      'setState()',
      'initState()',
      'dispose()',
    ],
  ),
  QuizQuestion(
    'What of the following widgets is used for layouts in Flutter?',
    [
      'Column',
      'Text',
      'Button',
      'Scaffold',
    ],
  ),
  QuizQuestion(
    'What is the difference between StatelessWidget and Statefuwidget?',
    [
      'StatelessWidget cannot rebuild.',
      'Both can rebuild, but StatefulWidget is faster.',
      'StatefulWidget cannot change state after creation',
      'StatelessWidget stores more data.',
    ],
  ),
  QuizQuestion(
    'What is Flutter?',
    [
      'A UI toolkit for building natively compiled apps',
      'A programming language',
      'A database managemnt system',
      'A web development framework',
    ],
  ),
   QuizQuestion(
    'Which language is used to write Flutter apps?',
    [
      'Kotlin',
      'Swift',
      'Dart',
      'Javascript',
    ],
  ), 



    QuizQuestion(
    'Which widget is used to create animations in Flutter?',
    [
      'AnimatedWidget',
      'AnimatedBuilder',
      'AnimationController',
      'Animation',
    ],
  ), 
   QuizQuestion(
    'What does FutereBuilder do in Flutter?',
    [
      'Displays data after the future completes',
      'Creates future objects ',
      'Executes asynchronous tasks',
      'Handles streams',
    ],
  ), 
  QuizQuestion(
    'Which of the following is used to navigate betwwen screens in Flutter?',
    [
      'Navigator.push()',
      'Navigator.move()',
      'Navigator.start()',
      'Navigator.show()',
    ],
  ),
   QuizQuestion(
    'What is the purpose of the InheritedWidget in Flutter?',
    [
      'To pass data down the widget tree efficiently',
      'To manage state between multiple screens',
      'To create animations',
      'To manage UI updates',
    ],
  ),
   QuizQuestion(
    'How do you ensure that a widget rebuilds when the state changes?',
    [
      'By using setState()',
      'By using rebuild()',
      'By using initState()',
      'By using onStateChange()',
    ],
  ),
   QuizQuestion(
    'Which of the following is NOT a lifecycle method in a StatefulWidget?',
    [
      'buildContext()',
      'dispose()',
      'initState()',
      'didUpdateWidget()',
    ],
  ),
   QuizQuestion(
    'What does the setState() function do in a StatefulWidget?',
    [
      'Modifies the widget’s state and triggers a rebuild',
      'Builds the widget tree',
      'Disposes of the state',
      'Initializes the state of the widget',
    ],
  ),
  QuizQuestion(
    'Which of the following is a commonly used state management technique in Flutter?',
    [
      'Provider',
      'SQLite',
      'AsyncTask',
      'DartPad',
    ],
  ),
  QuizQuestion(
    'How do you access assets like images or fonts in Flutter?',
    [
      'Define them in the pubspec.yaml file',
      'Call them directly in the lib folder',
      'Import them as a Dart Package',
      'Access them via URL only',
    ],
  ),
  QuizQuestion(
    'What is the role of the BuildContext in Flutter?',
    [
      'To provide metadata about the widget tree',
      'To manage theme data',
      'To create animations',
      'To store the widget’s state',
    ],
  ),
  QuizQuestion(
    'Which widget is used to create a scrollable grid layout in Flutter?',
    [
      'GridView',
      'ListView',
      'Row',
      'Column',
    ],
  ),
   QuizQuestion(
    'What does the await keyword do in Flutter',
    [
      'Without blocking the thread, suspends the function',
      'Waits for the widget tree to rebuild',
      'Blocks the thread until the task completes',
      'Cancels the async operation',
    ],
  ),
  QuizQuestion(
    'Which widget is used to handle gestures like taps and swipes in Flutter?',
    [
      'GestureDetector',
      'GestureManager',
      'InteractionDetector',
      'TapListener',
    ],
  ),
  QuizQuestion(
    'Which of the following is used to fetch data over HTTP in Flutter?',
    [
      'http.get()',
      'Network.request()',
      'fetch()',
      'await.http()',
    ],
  ),
  QuizQuestion(
    'Which of the following best describes StreamBuilder in Flutter?',
    [
      'It builds widgets based on the state of a stream',
      'It creates a new stream',
      'It handles HTTP requests',
      'It transforms streams into future objects',
    ],
  ),


QuizQuestion(
    ' Which pattern is recommended for separating business logic from UI in Flutter apps?',
    [
      'Bloc(Business Logic Component)',
      'MVC(Model-View-Controller)',
      'MVP(Model-View-Presenter)',
      'MVVM(Model-View-ViewModel)',
    ],
  ), 
  QuizQuestion(
    'What does the flutter build apk --split-per-abi command do?',
    [
      'Builds multiple APKs for differnet platforms',
      'Builds a single APK for all platforms',
      'Builds a web version of the app',
      'Optimizes the app for performance ',
    ],
  ),
  QuizQuestion(
    'Which widget would you use to efficiently manage a large number of child widgets with different sizes in Flutter?',
    [
      'SliverList',
      'GridView.builder',
      'ListView.buildr',
      'CustomScrollView',
    ],
  ),
  // QuizQuestion(
  //   'What is the primary difference between StatefulWidget and InheritedWidget for state management?',
  //   [
  //     'StatefulWidget handles state internally, while InheritedWidget allows state to be shared across widgets',
  //     'InheritedWidget can rebuild only on specific changes, while StatefulWidget rebuilds with every state change',
  //     'InheritedWidget supports only asynchronous tasks, while StatefulWidget does not',
  //     'StatefulWidget can manage data but InheritedWidget cannot',
  //   ],
  // ),
  
  QuizQuestion(
    'What is the purpose of GlobalKey in Flutter?',
    [
      'Identify a Widget across rebuilds and allow accessing its state',
      "To globalize the app's theme",
      'To handle navigation across screens',
      'To manage debugging sessions',
    ],
  ),
  QuizQuestion(
    'Which widget would you use for a Flutter app with complex, custom scrollable effects?',
    [
      'CustomScrollView',
      "ListView",
      'PageView',
      'NestedScrollView',
    ],
  ),
  QuizQuestion(
    'What is the best way to handle asynchronous streams of data in Flutter?',
    [
      'Using StreamBuilder',
      "Using FutureBuilder",
      'Using AsyncSnapshot',
      'Using Completer',
    ],
  ),
  QuizQuestion(
    'What does the FlutterDriver package enable you to do?',
    [
      'Simulate gestures and interactions for testing your Flutter app',
      "Manage Firebase authentication",
      'Render widgets on multiple platforms',
      'Build iOS and Android apps from a single codebase',
    ],
  ),
  QuizQuestion(
    'Which of the following is true about Flutter’s isolate?',
    [
      'It allows for parallel computation without blocking the main thread',
      "It handles the app’s lifecycle events",
      'It manages network requests',
      'It is used to isolate the widget tree for background rendering',
    ],
  ),
  QuizQuestion(
    'Which of the following methods is most suitable for deeply nested widgets sharing state across the app?',
    [
      'Using Provider',
      "Using FutureBuilder",
      'Passing data via constructors',
      'Using InheritedWidget',
    ],
  ),
  QuizQuestion(
    'Which widget would you use to create a floating button with dynamic state changes based on scroll behavior?',
    [
      'SliverAppBar',
      "FloatingActionButton",
      'AnimatedFab',
      'FloatingActionButton.extended',
    ],
  ),
  QuizQuestion(
    'What’s the best approach to manage local database interactions in Flutter?',
    [
      'Use the sqflite package',
      "Use SharedPreferences",
      'Use the hive package',
      'Use a JSON file',
    ],
  ),
  QuizQuestion(
    'What is the key benefit of using flutter_bloc for state management?',
    [
      'It provides unidirectional data flow, making the app easier to maintain',
      "It allows for real-time data synchronization",
      'It integrates easily with native iOS and Android code',
      'It manages routing efficiently',
    ],
  ),
  QuizQuestion(
    'What is the main advantage of using Keys in Flutter?',
    [
      'They help differentiate widgets that would otherwise be identical',
      "They can be used to pass data between widgets",
      'They help automatically update the state of all widgets in the tree',
      'They improve performance in all scenarios',

    ],
  ),  
];

const interviewQuestions = [
   QuizQuestion(
    'How do you optimize the performance of a Flutter app with a large number of widgets?',
    [
      'Using const constructors where possible & reducing unnecessary rebuilds',
      'By using ListView for all lists, regardless of size',
      'By making heavy use of GlobalKey to access widget states',
      'By increasing the frequency of setState() calls to keep the UI updated',
    ],
  ),
  QuizQuestion(
    'Which of the following state management techniques is most suitable for managing large-scale, complex Flutter applications?',
    [
      'Using Provider/Riverpod for dependency injection & state management',
      'Using setState() throughout the app',
      'Using InheritedWidget for all state management',
      'Using only StreamBuilder for reactive programming',
    ],
  ),
  QuizQuestion(
    'What is the best approach to handle expensive computational tasks in Flutter to avoid blocking the UI thread?',
    [
      'Run the task in an isolate using compute()',
      'Use FutureBuilder to offload the task',
      'Use await within setState()',
      'Split computation into smaller tasks inside build() method',
    ],
  ),
  // QuizQuestion(
  //   'How would you integrate a native Android or iOS SDK into a Flutter application?',
  //   [
  //     'Use platform channels to communicate between Dart and native code (Java/Kotlin for Android, Swift/Objective-C for iOS)',
  //     'Use the dart:ffi library to directly call native SDK functions',
  //     'Embed the SDK directly into the lib folder and import it into Dart files',
  //     'Convert the SDK into Dart code using automated tools',
  //   ],
  // ),
  QuizQuestion(
    'In a production-ready Flutter app, which of the following techniques should you employ to secure sensitive data?',
    [
      'Obfuscate code using flutter build --obfuscate & encrypt sensitive data',
      'Store sensitive data in SharedPreferences',
      'Use only Firebase for all data storage needs',
      'Store sensitive data as constants in Dart files',
    ],
  ),

  
];







  

  



  
  
