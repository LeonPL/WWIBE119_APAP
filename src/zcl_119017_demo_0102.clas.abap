CLASS zcl_119017_demo_0102 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119017_demo_0102 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

      "Wichtige ABAP-Standardtypen
      DATA i1 TYPE i. "i = ganze Zahl (Bsp.: 42)
      DATA string1 TYPE string. "Zeichenkette dynamischer Menge(Bsp.: 'Hallo Welt!')
      DATA c1 TYPE c LENGTH 6. " Zeichenkette mit fester länge(Bsp.: 'A1B2C3')
      DATA n1 TYPE n LENGTH 7. " Nummerische Folge (Bsp.:  '1234567')
      DATA d1 TYPE d. "Datum (Bsp.: '20210202' --> JahrMonatTag)
      DATA t1 TYPE t. "Zeit (Bsp.: '123114' --> StundeMinuteSekunde)
      DATA p1 TYPE p LENGTH 16 DECIMALS 2. "Gepackte Zahl (Bsp.: '734.23')
      DATA b1 TYPE c LENGTH 1. "Gibt kein Boolean, nur Char länge eins: Boolscher Wahrheitswert (Bsp.: 'X' --> true ' ' -->x false


      "Deklaration variabler Datenobjekte per...
      DATA carrier_id TYPE c LENGTH 3. "...ABAP-Standardtyp
      DATA CARRIER_ID2 TYPE /dmo/carrier_id. "...Datenelement


      "Wertzuweisung per...
      carrier_id = 'LH'.  "... Zuwesiungsoperator
      DATA connection_id TYPE /dmo/connection_id VALUE '0400'. "...statische Vorbelegung
      DATA(flight_data) = '20170101'. "... Inlinedeklaration

      CLEAR carrier_id. "Initialisierung

      "Deklaration fixer Datenobjekte
      CONSTANTS co_pi type p length 2 decimals 2 value '3.14' .


  ENDMETHOD.
ENDCLASS.
