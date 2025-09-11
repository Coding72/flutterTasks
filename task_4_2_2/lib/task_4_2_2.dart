abstract class Widget {

}

class MaterialApp extends Widget {
  final Widget? home;

  MaterialApp({this.home});
}


class Scaffold extends Widget {
  final Widget? body;

  Scaffold({this.body});
}

class Center extends Widget {
  final Widget? child;

  Center({this.child});
}

class Text extends Widget {
  String? text;

  Text(this.text);
}

class Column extends Widget {
  final List<Widget>? children;

  Column({this.children});
}
