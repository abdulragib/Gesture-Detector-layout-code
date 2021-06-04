import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String title = "Gestures";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new CustomButton(),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: () {
        final snackBar = new SnackBar(
          content: new Text("hello Gestures!"),
          backgroundColor: Theme.of(context).backgroundColor,
          duration: new Duration(
            hours: 0,
            minutes: 0,
            seconds: 0,
            milliseconds: 1100,
            microseconds: 0,
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },

      // the actual button
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        decoration: new BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: new BorderRadius.circular(5.5),

        ),
        child: new Text("First Button"),
      ),
    );
  }
}

//final keyword is used to fixed value of Variable.abstract.
//A Key is an identifier for Widgets, Elements and SemanticsNodes.

// A new widget will only be used to update an existing element if its key is the same as the key of the current widget associated with the element.
// snackbar is a lightweight message with an optional action which briefly displays at the bottom of the screen.

//This build context describes where you are in the tree of widgets of your application.

//Scaffold.of(context) says “From the given build context, return the nearest ancestor scaffold”.
//--The of method can be used in many places in Flutter for example Theme.of(context) takes the supplied context and returns the nearest theme.

//The Scaffold is designed to be a top level container for a MaterialApp.
// This means that adding a Scaffold to each route on a Material app will provide the app with Material's basic visual layout structure.

//The ScaffoldMessenger now handles SnackBars in order to persist across routes and always be displayed on the current Scaffold.
//The Theme.of(context) method looks up the widget tree and returns the nearest Theme in the tree.