CLASS zcl_119017_exercise_0201 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119017_exercise_0201 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  Data travel type z119017_travel.

  travel = CORRESPONDING #( zcl_119000_flight=>get_latest_travel( ) ).
  out->write( |TravelId: { travel-travel_id }| ).
  out->write( |Beschreibung: { travel-description }| ).
  out->write( |Startdatum: { travel-begin_date }| ).
  out->write( |Enddatum: { travel-end_date }| ).

  ENDMETHOD.
ENDCLASS.
