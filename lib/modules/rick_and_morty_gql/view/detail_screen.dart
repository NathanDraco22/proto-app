import 'package:flutter/material.dart';


class DetailAlertCustom extends PageRoute{
  DetailAlertCustom(this.builder);
  final WidgetBuilder builder;

  @override
  Color? get barrierColor =>  Colors.black87;

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => true;

  @override
  String? get barrierLabel => null;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    return builder(context);
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(
      opacity:CurvedAnimation(
        parent: animation, 
        curve: Curves.ease
      ),
      child: child,
    );
  }

  @override
  bool get maintainState => false;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 250);

}

