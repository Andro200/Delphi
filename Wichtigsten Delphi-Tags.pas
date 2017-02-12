strtoint()                                                      // String to int      //Text in Ganzrationale Zahl umwandeln
strtofloat()                                                    // String in Dezimalzahl umwandeln
inttostr()                                                      // Integer to str     //Ganzrationale Zahl in Text umwandeln
floattostr()                                                    // Dezimalzahl bzw. irrationale Zahl in String (Textfeld) umwandeln
floattostrf(Variable, Format, Genauigkeit, Nachkommastellen)    // Wie FloatToStr nur "Schöner" 
                                                                // z.B. Variable = Zahl1, Format = ffNumber, Genauigkeit = 7, Nachkommastellen = 3)                                                  
AB.Caption:='Text'                                              // AB=bezeichner z.B.: Button    // Text = angezeigter Text
  .Visible:=False                                               // Lässt den Bezeichner AB verschwinden bzw. auftauchen  
  .Default:=True                                                // Der Bezeichner AB lässt sich mit der Taste enter ausführen z.B. ein Knopf
beep                                                            // Windows-Ton abspielen
sleep (1000)                                                    // Wartet 1000 milisekunden bevor der nächste Befehl ausgeführt wird
AB.Font.Size                                                    // ändert die Schriftgröße
AB.Caption.Color                                                // ändert die Farbe usw.

Variablen
Integer                                                         // Rationale Zahl
Int64                                                           // Wie Integer nur mit einer vieel größeren Auswahl an Zahlen (meist unnötig)
Real                                                            // Kommazahlen
Double                                                          // Kommazahlen
Char                                                            // Ein Buchstabe
String                                                          // Wörter bzw. Sätze

a:real;                                                         // Integer to Real
b:integer;                                                      // Ganzrationale Zahl in Irrationale Zahl umwandeln
a := round(b);                                                  // praktisch inttoreal nur umgeschrieben, da inttoreal nicht existiert
randomize                                                       // Tag gehört immer oberhalb der random-tags um diese zu "aktivieren"
a := random(xy)                                                 // a wird eine zufällige Zahl von 0 bis xy-1 zugewiesen
div                                                             // ersetzt das Rechenzeichen "/" bei Integer allerdings werden die Stellen 
                                                                   nach dem Komma nicht angezeigt
mod(a/b)                                                        // Rest einer Ganzzahldivision
const Max = 12                                                  // Wird vor var vereinbart eine Feste Konstante, die nicht geändert werden kann 
var a:single;                                                   // Andere Bezeichnung für Float oder Real - Gibt Dezimalzahlen an
    b:double;                                                   // wie single aber meist unnötig - gibt ein genaueres Ergebnis an
    c:boolean;                                                  // Datentyp c , dem wahr oder falsch zugeordnet werden kann
showmessage('xy')                                               // xy = Text der angezeigt wird z.B. Fehlermeldung 
length (Edit1.Text)                                             // Anzahl der Buchstaben in Edit1.Text
> <                                                             // kleiner - größer als
=                                                               // gleich
<>                                                              // ungleich
<==                                                             // kleiner oder gleich
>==                                                             // größer oder gleich

Scrollbar
.kind := sbVertical                                             // Vertikale oder Horizontale Ausrichtung
         sbHorizontal
.min                                                            // Minimum der Scrollbar festlegen
.max                                                            // Maximum der Scrollbar festlegen
.position                                                       // Startposition festlegen
.smallchange                                                    // kleine oder größe Änderung beim scrolln

OnKeyUp                                                         // Wenn Taste gedrückt
OnKeyDown                                                       // Wenn keine Taste gedrückt
OnEnter                                                         // Wenn etwas fokussiert wird (Tab-Taste)
OnExit                                                          // Wenn etwas den Fokus verliert (Tab-Taste)
Alignment                                                       // Text in der Mitte / Links / Rechts

try                                                             // Beispielsweise wenn ein Int in der Eingabe erwartet wird aber der Benutzer ein String eingibt
(was versucht werden soll auszuführen)                          // ein String eingibt Dann wird das beim except passieren statt einer Fehleranzeige
except                                                          // !!! Wichtig dabei auf Tools -> Debugger-Optionen -> "Bei Delphi-Exceptions stoppen" ausstellen
(was passieren soll wenn es nicht klappt)                       // !!! damit übernimmt man das Abfangen von Ausnahme-Fehlern (Exceptions) (S.95)
if (Bedingung1) and bzw. or (Bedingung2)                        // Bedingungen in Klammern setzten !!!
AB.SetFocus                                                     // Fokus wird gesetzt z.B. im Edit Feld damit nicht immer draufgeklickt werden muss
inc(Variable, Schritte)                                         // z.B. inc(zaeler, 5) = zaeler := zaeler + 5 addiert jedes mal zu der variable v  x Schritte hinzu
dec(Variable, Schritte)                                         // z.B. inc(zaeler, 5) = zaeler := zaeler - 5 subtrahiert jedes mal x Schritte von der Variable v
close                                                           // Anwendung wird beendet
ClientWidth                                                     // Breite der Anwendung
ClientHeight                                                    // Höhe der Anwendung
