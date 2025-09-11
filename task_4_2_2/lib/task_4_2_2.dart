abstract class Widget { }

abstract class WidgetsApp { }

class MaterialApp extends WidgetsApp {
  final Widget? home;
  MaterialApp({required this.home});
}

class Scaffold extends Widget {
  final Widget? body;

  Scaffold({this.body});
}

class Center extends Widget {
  final Widget? child;

  Center({this.child});
}

class Column extends Widget {
  final List<Widget>? children;

  Column({this.children});
}

class Text extends Widget {
  String? text;

  Text(this.text);
}

