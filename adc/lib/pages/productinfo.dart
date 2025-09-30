/* ProductInfoPage

baue erst screens ohne actions -> ersetze teile

statefulwidget in stateless

gesamt Statefulwidget: gesamter screen halbtransparent - folgendes ca top:25%  oder column mit sizedbox, oder container mit padding top
obere teil: info (stateful) - preis ändert sich, jenach größe die im unteren order teil ausgewählt wird
  button x führt zum schließen, (animation nach unten ? test mit routes)

  box besteht aus 6 columns, der letzte aus 2 cols die jeweils wieder aus 2 cols bestehen, die stars mit value bestehen aus 2 rows, nur die start wieder aus extra aus rows falls schleife aus datas


untere teil: order (stateful) - 2 cols auswahl und button
  der gesamtpris ist productsize(small|medium|large)*Anzahl
  globale Variable für warenkorb ? bzw. warenkorb in jsonfile speichern, gesamt summe nach orderbutton berechnen

  buttons erst ohne glass effekt
  

  Tests:
    kreisbuttons x - +

*/

//#region [rgba(165,245,205,0.1)] ===== imports =====
  import 'package:flutter/material.dart';

  import '../data/productdata.dart';
//#endregion ===== imports =====


