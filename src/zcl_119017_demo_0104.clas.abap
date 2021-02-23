CLASS zcl_119017_demo_0104 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119017_DEMO_0104 IMPLEMENTATION.


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

  "Mehrfachverzwigung
  CASE carrier_id.
    WHEN 'LH' OR 'lh' OR 'lH' OR 'Lh'.
    out->write( |Lufthansa| ).
    WHEN 'BH'.
    out->write( |British Airways| ).
    WHEN OTHERS.
        out->write( |Sonstiges| ).
  ENDCASE.




  ENDMETHOD.
ENDCLASS.
