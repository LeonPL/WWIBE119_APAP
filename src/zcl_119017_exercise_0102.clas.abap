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



  ENDMETHOD.
ENDCLASS.
