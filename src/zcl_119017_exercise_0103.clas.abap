CLASS zcl_119017_exercise_0103 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119017_EXERCISE_0103 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA string1 type string value 'Hallo Welt Popu'. out->write( |Anfangswort: | && string1 ).
  Data string2 type string.
  string1 = replace( val = string1 sub = 'a' with = '1' occ = 0 ).
  string1 = replace( val = string1 sub = 'e' with = '2' occ = 0 ).
  string1 = replace( val = string1 sub = 'i' with = '3' occ = 0 ).
  string1 = replace( val = string1 sub = 'o' with = '4' occ = 0 ).
  string1 = replace( val = string1 sub = 'u' with = '5' occ = 0 ).

  string2 = string1.

   out->write( |Endwort: | && string2 ).
  ENDMETHOD.
ENDCLASS.
