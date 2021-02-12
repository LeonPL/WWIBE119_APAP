CLASS zcl_119017_demo_0201 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119017_demo_0201 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data carrier_id type /dmo/carrier_id.
  data connection_id type /dmo/connection_id.
  data airport_from_id type /dmo/airport_from_id.
  data airport_to_id type /dmo/airport_to_id.

  carrier_id = 'LH'.
  connection_id = '0400'.
  airport_from_id = 'FRA'.
  airport_to_id = 'JFK'.


  ENDMETHOD.
ENDCLASS.
