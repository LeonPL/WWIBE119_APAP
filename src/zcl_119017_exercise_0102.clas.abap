CLASS zcl_119017_exercise_0102 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119017_exercise_0102 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA result TYPE p LENGTH 16 DECIMALS 2.

   result = 5 + 3. out->write( |Plus: | && result ).
   result = 5 - 3. out->write( |Minus: | && result ).
   result = 5 * 3. out->write( |Mal: | && result ).
   result = 5 / 3. out->write( |Durch: | && result ).
   result = 5 ** 3. out->write( |Potenz: | && result ). "Potenz
   result = 5 DIV 3. out->write( |Ganzzahliche Division: | && result ).
   result = 5 MOD 3. out->write( |Divisionsrest: | && result ).

   result += 1. out->write( |Zuwesiungsoperatur Addition: | && result ). "Zuwesiungsoperator
   result -= 1. out->write( |Zuwesiungsoperatur Subtraktion: | && result ). "Zuwesiungsoperator
   result *= 1. out->write( |Zuwesiungsoperatur Mal: | && result ). "Zuwesiungsoperator
   result /= 1. out->write( |Zuwesiungsoperatur Durch: | && result ). "Zuwesiungsoperator


    ADD 1 TO result. " result++

    "Numerische Funktionen
    result = abs( -3 ). out->write( |Betrag: | && result ).
    result = ipow( base = 5 exp = 3  ). out->write( |Potenz: | && result ).

  ENDMETHOD.
ENDCLASS.
