CLASS zcl_119017_demo_0104 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119017_demo_0104 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data carrier_id type /dmo/carrier_id value 'LH'.
  data flight_date type /dmo/flight_date value '20210209'.
  data is_fulfilled TYPE c Length 1.

  "Einfachverzweigung
  IF NOT ( flight_date >= '20210101' AND flight_date <= '20211231')
    OR carrier_id = 'LH'.
        is_fulfilled = 'X'.
  ELSE.
        is_fulfilled = ''.
  ENDIF.

  IF is_fulfilled is not initial.
      out->write( |Bedinung erfüllt| ).
  ENDIF.



  ENDMETHOD.
ENDCLASS.
