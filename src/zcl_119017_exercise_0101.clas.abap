CLASS zcl_119017_exercise_0101 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119017_exercise_0101 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


        DATA travel_id TYPE /dmo/travel_id VALUE '00000101'.
        DATA travel_desc TYPE /dmo/description VALUE 'Viel Spaß'.
        DATA begin_date TYPE /dmo/begin_date VALUE '20000521'.
        DATA end_date TYPE /dmo/end_date VALUE '20000531'.

        out->write( |Travel ID: | && travel_id ).
        out->write( |Beschreibung: | && travel_desc ).
        out->write( |Start Date: | && begin_date ).
        out->write( |End Date: | && end_date ).

  ENDMETHOD.
ENDCLASS.
