``` Text
Object
 └── Diagnosticable
      └── DiagnosticableTree
           └── Widget (abstrakt)
                ├── StatelessWidget
                │     ├── Text
                │     ├── Center
                │     └── Column
                │
                └── StatefulWidget
                      ├── MaterialApp
                      └── Scaffold
```


``` Text
Widget
├── StatelessWidget
│   └── MyStatelessWidget (benutzerdefinierte Implementierung)
├── StatefulWidget
│   └── MyStatefulWidget (benutzerdefinierte Implementierung)
│       └── State
│           └── _MyStatefulWidgetState (benutzerdefinierte Implementierung)
├── Element
│   ├── StatelessElement
│   └── StatefulElement
├── BuildContext
└── InheritedWidget

``` 

### Erklärung der Klassen


* Widget: Die Basisklasse für alle Widgets in Flutter.
* StatelessWidget: Eine Klasse, die ein Widget ohne internen Zustand darstellt. Sie erbt von Widget.
* StatefulWidget: Eine Klasse, die ein Widget mit internem Zustand darstellt. Sie erbt von Widget und benötigt eine zugehörige State-Klasse.
* Element: Eine Klasse, die die Instanz eines Widgets in der Widget-Hierarchie darstellt.
* StatelessElement: Ein Element, das ein StatelessWidget darstellt.
* StatefulElement: Ein Element, das ein StatefulWidget darstellt.
* BuildContext: Ein Kontext, der Informationen über die Position eines Widgets in der Widget-Hierarchie bereitstellt.
* InheritedWidget: Eine spezielle Art von Widget, das es ermöglicht, Daten an untergeordnete Widgets weiterzugeben.

<br>

``` Text
Widget
├── StatelessWidget
│   └── MyStatelessWidget (benutzerdefinierte Implementierung)
├── StatefulWidget
│   └── MyStatefulWidget (benutzerdefinierte Implementierung)
│       └── State
│           └── _MyStatefulWidgetState (benutzerdefinierte Implementierung)
├── Element
│   ├── StatelessElement
│   └── StatefulElement
├── BuildContext
├── InheritedWidget
│   └── InheritedModel
├── RenderObject
│   ├── RenderBox
│   ├── RenderFlex
│   ├── RenderParagraph
│   └── RenderViewport
├── GestureDetector
├── Focus
├── Notification
│   ├── ScrollNotification
│   └── SizeChangedNotification
└── ChangeNotifier

```

### Erklärung der Klassen


* Widget: Die Basisklasse für alle Widgets in Flutter.
* StatelessWidget: Eine Klasse, die ein Widget ohne internen Zustand darstellt. Sie erbt von Widget.
* StatefulWidget: Eine Klasse, die ein Widget mit internem Zustand darstellt. Sie erbt von Widget und benötigt eine zugehörige State-Klasse.
* Element: Eine Klasse, die die Instanz eines Widgets in der Widget-Hierarchie darstellt.
* StatelessElement: Ein Element, das ein StatelessWidget darstellt.
* StatefulElement: Ein Element, das ein StatefulWidget darstellt.
* BuildContext: Ein Kontext, der Informationen über die Position eines Widgets in der Widget-Hierarchie bereitstellt.
* InheritedWidget: Eine spezielle Art von Widget, das es ermöglicht, Daten an untergeordnete Widgets weiterzugeben.
* RenderObject: Die Basisklasse für alle Renderobjekte in Flutter, die für die Darstellung von Widgets verantwortlich sind.
* RenderBox: Eine spezielle Art von RenderObject, die ein rechteckiges Layout darstellt.
* RenderFlex: Ein Renderobjekt, das Flexbox-Layouts (z.B. Row und Column) implementiert.
* RenderParagraph: Ein Renderobjekt, das Text darstellt.
* RenderViewport: Ein Renderobjekt, das einen sichtbaren Bereich für andere Renderobjekte bereitstellt, z.B. für Scroll-Layouts.
* GestureDetector: Ein Widget, das Gesten wie Tippen, Wischen und Ziehen erkennt und darauf reagiert.
* Focus: Ein Widget, das den Fokus auf ein bestimmtes Widget verwaltet, um Eingaben zu ermöglichen.
* Notification: Eine Basisklasse für Benachrichtigungen, die in der Widget-Hierarchie gesendet werden können.
* ScrollNotification: Eine spezielle Art von Benachrichtigung, die Informationen über Scrollereignisse bereitstellt.
* SizeChangedNotification: Eine Benachrichtigung, die gesendet wird, wenn sich die Größe eines Widgets ändert.
* ChangeNotifier: Eine Klasse, die es ermöglicht, Benachrichtigungen an Abonnenten zu senden, wenn sich der Zustand ändert. Sie wird häufig in Verbindung mit dem Provider-Paket verwendet.

<br>

``` Text
Widget
├── StatelessWidget
│   └── MyStatelessWidget (benutzerdefinierte Implementierung)
├── StatefulWidget
│   └── MyStatefulWidget (benutzerdefinierte Implementierung)
│       └── State
│           └── _MyStatefulWidgetState (benutzerdefinierte Implementierung)
├── Element
│   ├── StatelessElement
│   └── StatefulElement
├── BuildContext
├── InheritedWidget
│   └── InheritedModel
├── RenderObject
│   ├── RenderBox
│   ├── RenderFlex
│   ├── RenderParagraph
│   ├── RenderViewport
│   └── RenderSliver
├── GestureDetector
├── Focus
├── Notification
│   ├── ScrollNotification
│   ├── SizeChangedNotification
│   └── UserScrollNotification
├── ChangeNotifier
├── ValueNotifier
├── Listenable
├── Animation
│   ├── AnimationController
│   ├── Tween
│   └── CurvedAnimation
├── Route
│   ├── MaterialPageRoute
│   ├── CupertinoPageRoute
│   └── PageRouteBuilder
├── Navigator
├── Scaffold
├── AppBar
├── BottomNavigationBar
├── Drawer
├── Form
│   ├── FormField
│   └── TextFormField
└── Container

```

### Erklärung der Klassen


* Widget: Die Basisklasse für alle Widgets in Flutter.
* StatelessWidget: Eine Klasse, die ein Widget ohne internen Zustand darstellt. Sie erbt von Widget.
* StatefulWidget: Eine Klasse, die ein Widget mit internem Zustand darstellt. Sie erbt von Widget und benötigt eine zugehörige State-Klasse.
* Element: Eine Klasse, die die Instanz eines Widgets in der Widget-Hierarchie darstellt.
* StatelessElement: Ein Element, das ein StatelessWidget darstellt.
* StatefulElement: Ein Element, das ein StatefulWidget darstellt.
* BuildContext: Ein Kontext, der Informationen über die Position eines Widgets in der Widget-Hierarchie bereitstellt.
* InheritedWidget: Eine spezielle Art von Widget, das es ermöglicht, Daten an untergeordnete Widgets weiterzugeben.
* RenderObject: Die Basisklasse für alle Renderobjekte in Flutter, die für die Darstellung von Widgets verantwortlich sind.
* RenderBox: Eine spezielle Art von RenderObject, die ein rechteckiges Layout darstellt.
* RenderFlex: Ein Renderobjekt, das Flexbox-Layouts (z.B. Row und Column) implementiert.
* RenderParagraph: Ein Renderobjekt, das Text darstellt.
* RenderViewport: Ein Renderobjekt, das einen sichtbaren Bereich für andere Renderobjekte bereitstellt, z.B. für Scroll-Layouts.
* RenderSliver: Eine spezielle Art von RenderObject, die für die Darstellung von Sliver-Layouts verwendet wird, die dynamisch scrollen und sich anpassen können.
* GestureDetector: Ein Widget, das Gesten wie Tippen, Wischen und Ziehen erkennt und darauf reagiert.
* Focus: Ein Widget, das den Fokus auf ein bestimmtes Widget verwaltet, um Eingaben zu ermöglichen.
* Notification: Eine Basisklasse für Benachrichtigungen, die in der Widget-Hierarchie gesendet werden können.
* ScrollNotification: Eine spezielle Art von Benachrichtigung, die Informationen über Scrollereignisse bereitstellt.
* UserScrollNotification: Eine Benachrichtigung, die gesendet wird, wenn der Benutzer scrollt.
* SizeChangedNotification: Eine Benachrichtigung, die gesendet wird, wenn sich die Größe eines Widgets ändert.
* ChangeNotifier: Eine Klasse, die es ermöglicht, Benachrichtigungen an Abonnenten zu senden, wenn sich der Zustand ändert. Sie wird häufig in Verbindung mit dem Provider-Paket verwendet.
* ValueNotifier: Eine spezielle Art von ChangeNotifier, die einen einzelnen Wert speichert und Benachrichtigungen sendet, wenn sich dieser Wert ändert.
* Listenable: Eine Schnittstelle, die es ermöglicht, auf Änderungen zu hören. Sowohl ChangeNotifier als auch ValueNotifier implementieren diese Schnittstelle.
* Animation: Eine Basisklasse für Animationen in Flutter. Sie wird verwendet, um animierte Werte zu erstellen.
* AnimationController: Ein Controller, der die Animation steuert, einschließlich Start, Stopp und Wiederholung.
* Tween: Eine Klasse, die den Übergang zwischen zwei Werten definiert, z.B. von 0 bis 1.
* CurvedAnimation: Eine Animation, die eine Kurve verwendet, um den Animationsverlauf zu steuern.
* Route: Eine Klasse, die eine Seite oder einen Bildschirm in der App darstellt. Sie wird verwendet, um zwischen verschiedenen Bildschirmen zu navigieren.
* MaterialPageRoute: Eine spezifische Implementierung von Route, die Material Design-Übergänge verwendet.
* CupertinoPageRoute: Eine spezifische Implementierung von Route, die iOS-Übergänge verwendet.
* PageRouteBuilder: Eine flexible Möglichkeit, benutzerdefinierte Routen zu erstellen.
* Navigator: Eine Klasse, die die Navigation zwischen verschiedenen Routen in der App verwaltet.
* Scaffold: Ein Widget, das eine grundlegende Struktur für die App bereitstellt, einschließlich AppBar, Drawer und BottomNavigationBar.
* AppBar: Ein Widget, das eine obere Navigationsleiste für die App darstellt.
* BottomNavigationBar: Ein Widget, das eine untere Navigationsleiste für die App darstellt.
* Drawer: Ein Widget, das ein seitliches Navigationsmenü darstellt.
* Form: Ein Widget, das eine Gruppe von Formularfeldern darstellt.
* FormField: Eine Basisklasse für Formularfelder, die Eingaben von Benutzern verwalten.
* TextFormField: Ein spezifisches Formularfeld für Texteingaben.
* Container: Ein vielseitiges Widget, das verwendet wird, um andere Widgets zu umschließen und Layout- und Styling-Optionen bereitzustellen.

<br>

``` Text
Widget
├── StatelessWidget
│   └── MyStatelessWidget (benutzerdefinierte Implementierung)
├── StatefulWidget
│   └── MyStatefulWidget (benutzerdefinierte Implementierung)
│       └── State
│           └── _MyStatefulWidgetState (benutzerdefinierte Implementierung)
├── Element
│   ├── StatelessElement
│   └── StatefulElement
├── BuildContext
├── InheritedWidget
│   └── InheritedModel
├── RenderObject
│   ├── RenderBox
│   ├── RenderFlex
│   ├── RenderParagraph
│   ├── RenderViewport
│   ├── RenderSliver
│   └── RenderCustomPaint
├── GestureDetector
├── Focus
├── Notification
│   ├── ScrollNotification
│   ├── SizeChangedNotification
│   ├── UserScrollNotification
│   └── LocaleChangeNotification
├── ChangeNotifier
├── ValueNotifier
├── Listenable
├── Animation
│   ├── AnimationController
│   ├── Tween
│   ├── CurvedAnimation
│   └── AnimationStatus
├── Route
│   ├── MaterialPageRoute
│   ├── CupertinoPageRoute
│   ├── PageRouteBuilder
│   └── ModalRoute
├── Navigator
├── Scaffold
├── AppBar
├── BottomNavigationBar
├── Drawer
├── Form
│   ├── FormField
│   ├── TextFormField
│   └── CheckboxFormField
├── Container
├── Column
├── Row
├── Stack
├── ListView
├── GridView
├── SingleChildScrollView
├── Expanded
├── Flexible
├── Padding
├── Align
├── Center
├── SizedBox
├── Image
├── Icon
├── RaisedButton
├── FlatButton
├── ElevatedButton
├── TextButton
├── Switch
├── Slider
├── Checkbox
├── Radio
└── Tooltip
```

* RenderCustomPaint: Ein Renderobjekt, das benutzerdefinierte Maloperationen ermöglicht.
* LocaleChangeNotification: Eine Benachrichtigung, die gesendet wird, wenn sich die Locale (Sprache und Region) ändert.
* AnimationStatus: Eine Enumeration, die den Status einer Animation beschreibt (z.B. aktiv, abgeschlossen, gestoppt).
* ModalRoute: Eine Route, die einen modalen Dialog oder eine Seite darstellt, die über der aktuellen Seite angezeigt wird.
* Column: Ein Widget, das seine Kinder vertikal anordnet.
* Row: Ein Widget, das seine Kinder horizontal anordnet.
* Stack: Ein Widget, das seine Kinder übereinander anordnet.
* ListView: Ein scrollbares Widget, das eine Liste von Widgets darstellt.
* GridView: Ein scrollbares Widget, das eine Gitteransicht von Widgets darstellt.
* SingleChildScrollView: Ein Widget, das einen einzelnen untergeordneten Widget in einem scrollbaren Bereich anzeigt.
* Expanded: Ein Widget, das ein Kind-Widget in einer Row, Column oder Flex-Anordnung erweitert, um den verfügbaren Platz zu nutzen.
* Flexible: Ein Widget, das es ermöglicht, dass ein Kind-Widget flexibel in einer Row, Column oder Flex-Anordnung ist.
* Padding: Ein Widget, das einen inneren Abstand um ein Kind-Widget hinzufügt.
* Align: Ein Widget, das ein Kind-Widget an einer bestimmten Position innerhalb seines Rahmens ausrichtet.
* Center: Ein Widget, das ein Kind-Widget in der Mitte des verfügbaren Platzes anzeigt.
* SizedBox: Ein Widget, das eine feste Größe für ein Kind-Widget angibt.
* Image: Ein Widget, das ein Bild anzeigt.
* Icon: Ein Widget, das ein Symbol anzeigt.
* RaisedButton: Ein Widget, das einen erhöhten Button darstellt (veraltet, jetzt durch ElevatedButton ersetzt).
* FlatButton: Ein Widget, das einen flachen Button darstellt (veraltet, jetzt durch TextButton ersetzt).
* ElevatedButton: Ein Widget, das einen erhöht

# Flutter Tasks

## Bonus Aufgabe 4.2.2

``` Text
Widget
├── StatelessWidget
│   └── MyStatelessWidget (benutzerdefinierte Implementierung)
├── StatefulWidget
│   └── MyStatefulWidget (benutzerdefinierte Implementierung)
│       └── State
│           └── _MyStatefulWidgetState (benutzerdefinierte Implementierung)
├── Element
│   ├── StatelessElement
│   └── StatefulElement
├── BuildContext
└── InheritedWidget

``` 

### Erklärung der Klassen


* Widget: Die Basisklasse für alle Widgets in Flutter.
* StatelessWidget: Eine Klasse, die ein Widget ohne internen Zustand darstellt. Sie erbt von Widget.
* StatefulWidget: Eine Klasse, die ein Widget mit internem Zustand darstellt. Sie erbt von Widget und benötigt eine zugehörige State-Klasse.
* Element: Eine Klasse, die die Instanz eines Widgets in der Widget-Hierarchie darstellt.
* StatelessElement: Ein Element, das ein StatelessWidget darstellt.
* StatefulElement: Ein Element, das ein StatefulWidget darstellt.
* BuildContext: Ein Kontext, der Informationen über die Position eines Widgets in der Widget-Hierarchie bereitstellt.
* InheritedWidget: Eine spezielle Art von Widget, das es ermöglicht, Daten an untergeordnete Widgets weiterzugeben.

<br>

``` Text
Widget
├── StatelessWidget
│   └── MyStatelessWidget (benutzerdefinierte Implementierung)
├── StatefulWidget
│   └── MyStatefulWidget (benutzerdefinierte Implementierung)
│       └── State
│           └── _MyStatefulWidgetState (benutzerdefinierte Implementierung)
├── Element
│   ├── StatelessElement
│   └── StatefulElement
├── BuildContext
├── InheritedWidget
│   └── InheritedModel
├── RenderObject
│   ├── RenderBox
│   ├── RenderFlex
│   ├── RenderParagraph
│   └── RenderViewport
├── GestureDetector
├── Focus
├── Notification
│   ├── ScrollNotification
│   └── SizeChangedNotification
└── ChangeNotifier

```

### Erklärung der Klassen


* Widget: Die Basisklasse für alle Widgets in Flutter.
* StatelessWidget: Eine Klasse, die ein Widget ohne internen Zustand darstellt. Sie erbt von Widget.
* StatefulWidget: Eine Klasse, die ein Widget mit internem Zustand darstellt. Sie erbt von Widget und benötigt eine zugehörige State-Klasse.
* Element: Eine Klasse, die die Instanz eines Widgets in der Widget-Hierarchie darstellt.
* StatelessElement: Ein Element, das ein StatelessWidget darstellt.
* StatefulElement: Ein Element, das ein StatefulWidget darstellt.
* BuildContext: Ein Kontext, der Informationen über die Position eines Widgets in der Widget-Hierarchie bereitstellt.
* InheritedWidget: Eine spezielle Art von Widget, das es ermöglicht, Daten an untergeordnete Widgets weiterzugeben.
* RenderObject: Die Basisklasse für alle Renderobjekte in Flutter, die für die Darstellung von Widgets verantwortlich sind.
* RenderBox: Eine spezielle Art von RenderObject, die ein rechteckiges Layout darstellt.
* RenderFlex: Ein Renderobjekt, das Flexbox-Layouts (z.B. Row und Column) implementiert.
* RenderParagraph: Ein Renderobjekt, das Text darstellt.
* RenderViewport: Ein Renderobjekt, das einen sichtbaren Bereich für andere Renderobjekte bereitstellt, z.B. für Scroll-Layouts.
* GestureDetector: Ein Widget, das Gesten wie Tippen, Wischen und Ziehen erkennt und darauf reagiert.
* Focus: Ein Widget, das den Fokus auf ein bestimmtes Widget verwaltet, um Eingaben zu ermöglichen.
* Notification: Eine Basisklasse für Benachrichtigungen, die in der Widget-Hierarchie gesendet werden können.
* ScrollNotification: Eine spezielle Art von Benachrichtigung, die Informationen über Scrollereignisse bereitstellt.
* SizeChangedNotification: Eine Benachrichtigung, die gesendet wird, wenn sich die Größe eines Widgets ändert.
* ChangeNotifier: Eine Klasse, die es ermöglicht, Benachrichtigungen an Abonnenten zu senden, wenn sich der Zustand ändert. Sie wird häufig in Verbindung mit dem Provider-Paket verwendet.

<br>

``` Text
Widget
├── StatelessWidget
│   └── MyStatelessWidget (benutzerdefinierte Implementierung)
├── StatefulWidget
│   └── MyStatefulWidget (benutzerdefinierte Implementierung)
│       └── State
│           └── _MyStatefulWidgetState (benutzerdefinierte Implementierung)
├── Element
│   ├── StatelessElement
│   └── StatefulElement
├── BuildContext
├── InheritedWidget
│   └── InheritedModel
├── RenderObject
│   ├── RenderBox
│   ├── RenderFlex
│   ├── RenderParagraph
│   ├── RenderViewport
│   └── RenderSliver
├── GestureDetector
├── Focus
├── Notification
│   ├── ScrollNotification
│   ├── SizeChangedNotification
│   └── UserScrollNotification
├── ChangeNotifier
├── ValueNotifier
├── Listenable
├── Animation
│   ├── AnimationController
│   ├── Tween
│   └── CurvedAnimation
├── Route
│   ├── MaterialPageRoute
│   ├── CupertinoPageRoute
│   └── PageRouteBuilder
├── Navigator
├── Scaffold
├── AppBar
├── BottomNavigationBar
├── Drawer
├── Form
│   ├── FormField
│   └── TextFormField
└── Container

```

### Erklärung der Klassen


* Widget: Die Basisklasse für alle Widgets in Flutter.
* StatelessWidget: Eine Klasse, die ein Widget ohne internen Zustand darstellt. Sie erbt von Widget.
* StatefulWidget: Eine Klasse, die ein Widget mit internem Zustand darstellt. Sie erbt von Widget und benötigt eine zugehörige State-Klasse.
* Element: Eine Klasse, die die Instanz eines Widgets in der Widget-Hierarchie darstellt.
* StatelessElement: Ein Element, das ein StatelessWidget darstellt.
* StatefulElement: Ein Element, das ein StatefulWidget darstellt.
* BuildContext: Ein Kontext, der Informationen über die Position eines Widgets in der Widget-Hierarchie bereitstellt.
* InheritedWidget: Eine spezielle Art von Widget, das es ermöglicht, Daten an untergeordnete Widgets weiterzugeben.
* RenderObject: Die Basisklasse für alle Renderobjekte in Flutter, die für die Darstellung von Widgets verantwortlich sind.
* RenderBox: Eine spezielle Art von RenderObject, die ein rechteckiges Layout darstellt.
* RenderFlex: Ein Renderobjekt, das Flexbox-Layouts (z.B. Row und Column) implementiert.
* RenderParagraph: Ein Renderobjekt, das Text darstellt.
* RenderViewport: Ein Renderobjekt, das einen sichtbaren Bereich für andere Renderobjekte bereitstellt, z.B. für Scroll-Layouts.
* RenderSliver: Eine spezielle Art von RenderObject, die für die Darstellung von Sliver-Layouts verwendet wird, die dynamisch scrollen und sich anpassen können.
* GestureDetector: Ein Widget, das Gesten wie Tippen, Wischen und Ziehen erkennt und darauf reagiert.
* Focus: Ein Widget, das den Fokus auf ein bestimmtes Widget verwaltet, um Eingaben zu ermöglichen.
* Notification: Eine Basisklasse für Benachrichtigungen, die in der Widget-Hierarchie gesendet werden können.
* ScrollNotification: Eine spezielle Art von Benachrichtigung, die Informationen über Scrollereignisse bereitstellt.
* UserScrollNotification: Eine Benachrichtigung, die gesendet wird, wenn der Benutzer scrollt.
* SizeChangedNotification: Eine Benachrichtigung, die gesendet wird, wenn sich die Größe eines Widgets ändert.
* ChangeNotifier: Eine Klasse, die es ermöglicht, Benachrichtigungen an Abonnenten zu senden, wenn sich der Zustand ändert. Sie wird häufig in Verbindung mit dem Provider-Paket verwendet.
* ValueNotifier: Eine spezielle Art von ChangeNotifier, die einen einzelnen Wert speichert und Benachrichtigungen sendet, wenn sich dieser Wert ändert.
* Listenable: Eine Schnittstelle, die es ermöglicht, auf Änderungen zu hören. Sowohl ChangeNotifier als auch ValueNotifier implementieren diese Schnittstelle.
* Animation: Eine Basisklasse für Animationen in Flutter. Sie wird verwendet, um animierte Werte zu erstellen.
* AnimationController: Ein Controller, der die Animation steuert, einschließlich Start, Stopp und Wiederholung.
* Tween: Eine Klasse, die den Übergang zwischen zwei Werten definiert, z.B. von 0 bis 1.
* CurvedAnimation: Eine Animation, die eine Kurve verwendet, um den Animationsverlauf zu steuern.
* Route: Eine Klasse, die eine Seite oder einen Bildschirm in der App darstellt. Sie wird verwendet, um zwischen verschiedenen Bildschirmen zu navigieren.
* MaterialPageRoute: Eine spezifische Implementierung von Route, die Material Design-Übergänge verwendet.
* CupertinoPageRoute: Eine spezifische Implementierung von Route, die iOS-Übergänge verwendet.
* PageRouteBuilder: Eine flexible Möglichkeit, benutzerdefinierte Routen zu erstellen.
* Navigator: Eine Klasse, die die Navigation zwischen verschiedenen Routen in der App verwaltet.
* Scaffold: Ein Widget, das eine grundlegende Struktur für die App bereitstellt, einschließlich AppBar, Drawer und BottomNavigationBar.
* AppBar: Ein Widget, das eine obere Navigationsleiste für die App darstellt.
* BottomNavigationBar: Ein Widget, das eine untere Navigationsleiste für die App darstellt.
* Drawer: Ein Widget, das ein seitliches Navigationsmenü darstellt.
* Form: Ein Widget, das eine Gruppe von Formularfeldern darstellt.
* FormField: Eine Basisklasse für Formularfelder, die Eingaben von Benutzern verwalten.
* TextFormField: Ein spezifisches Formularfeld für Texteingaben.
* Container: Ein vielseitiges Widget, das verwendet wird, um andere Widgets zu umschließen und Layout- und Styling-Optionen bereitzustellen.

<br>

``` Text
Widget
├── StatelessWidget
│   └── MyStatelessWidget (benutzerdefinierte Implementierung)
├── StatefulWidget
│   └── MyStatefulWidget (benutzerdefinierte Implementierung)
│       └── State
│           └── _MyStatefulWidgetState (benutzerdefinierte Implementierung)
├── Element
│   ├── StatelessElement
│   └── StatefulElement
├── BuildContext
├── InheritedWidget
│   └── InheritedModel
├── RenderObject
│   ├── RenderBox
│   ├── RenderFlex
│   ├── RenderParagraph
│   ├── RenderViewport
│   ├── RenderSliver
│   └── RenderCustomPaint
├── GestureDetector
├── Focus
├── Notification
│   ├── ScrollNotification
│   ├── SizeChangedNotification
│   ├── UserScrollNotification
│   └── LocaleChangeNotification
├── ChangeNotifier
├── ValueNotifier
├── Listenable
├── Animation
│   ├── AnimationController
│   ├── Tween
│   ├── CurvedAnimation
│   └── AnimationStatus
├── Route
│   ├── MaterialPageRoute
│   ├── CupertinoPageRoute
│   ├── PageRouteBuilder
│   └── ModalRoute
├── Navigator
├── Scaffold
├── AppBar
├── BottomNavigationBar
├── Drawer
├── Form
│   ├── FormField
│   ├── TextFormField
│   └── CheckboxFormField
├── Container
├── Column
├── Row
├── Stack
├── ListView
├── GridView
├── SingleChildScrollView
├── Expanded
├── Flexible
├── Padding
├── Align
├── Center
├── SizedBox
├── Image
├── Icon
├── RaisedButton
├── FlatButton
├── ElevatedButton
├── TextButton
├── Switch
├── Slider
├── Checkbox
├── Radio
└── Tooltip
```

* RenderCustomPaint: Ein Renderobjekt, das benutzerdefinierte Maloperationen ermöglicht.
* LocaleChangeNotification: Eine Benachrichtigung, die gesendet wird, wenn sich die Locale (Sprache und Region) ändert.
* AnimationStatus: Eine Enumeration, die den Status einer Animation beschreibt (z.B. aktiv, abgeschlossen, gestoppt).
* ModalRoute: Eine Route, die einen modalen Dialog oder eine Seite darstellt, die über der aktuellen Seite angezeigt wird.
* Column: Ein Widget, das seine Kinder vertikal anordnet.
* Row: Ein Widget, das seine Kinder horizontal anordnet.
* Stack: Ein Widget, das seine Kinder übereinander anordnet.
* ListView: Ein scrollbares Widget, das eine Liste von Widgets darstellt.
* GridView: Ein scrollbares Widget, das eine Gitteransicht von Widgets darstellt.
* SingleChildScrollView: Ein Widget, das einen einzelnen untergeordneten Widget in einem scrollbaren Bereich anzeigt.
* Expanded: Ein Widget, das ein Kind-Widget in einer Row, Column oder Flex-Anordnung erweitert, um den verfügbaren Platz zu nutzen.
* Flexible: Ein Widget, das es ermöglicht, dass ein Kind-Widget flexibel in einer Row, Column oder Flex-Anordnung ist.
* Padding: Ein Widget, das einen inneren Abstand um ein Kind-Widget hinzufügt.
* Align: Ein Widget, das ein Kind-Widget an einer bestimmten Position innerhalb seines Rahmens ausrichtet.
* Center: Ein Widget, das ein Kind-Widget in der Mitte des verfügbaren Platzes anzeigt.
* SizedBox: Ein Widget, das eine feste Größe für ein Kind-Widget angibt.
* Image: Ein Widget, das ein Bild anzeigt.
* Icon: Ein Widget, das ein Symbol anzeigt.
* RaisedButton: Ein Widget, das einen erhöhten Button darstellt (veraltet, jetzt durch ElevatedButton ersetzt).
* FlatButton: Ein Widget, das einen flachen Button darstellt (veraltet, jetzt durch TextButton ersetzt).
* ElevatedButton: Ein Widget, das einen erhöht

