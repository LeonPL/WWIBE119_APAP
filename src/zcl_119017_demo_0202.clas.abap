CLASS zcl_119017_demo_0202 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_119017_DEMO_0202 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  "Deklaration interner Tabellen
  data connections type z119017_connections. "Typ <Tabellentyp>
  data connections2 type table of z119017_connection. "Type table of Structuretype

  "Einfügen von Datensätzen
  connections = VALUE #(
       ( carrier_id = 'LH' connection_id = '0400' )
       ( carrier_id = 'LH' connection_id = '0401' airport_from_id = 'JFK')
       ( carrier_id = 'UA' connection_id = '3517' ) ).

  "Erweiterung von internen Tabellen
  data connection type z119017_connection.
  connection-carrier_id = 'LH'.
  connection-connection_id = '0400'.
  connection-airport_from_id = 'FRA'.
  connection-airport_to_id = 'JFK'.
  connections = value #( base connections
      ( carrier_id = 'LH' connection_id = '0402' airport_from_id = 'FRA')
      ( connection ) ).

  "METHOD.
  "connections = value #( base connections ( i_connection ) ).

  "Lesen eines Einzelsatzes per
  TRY.
    connection = connections[ 10 ]. "Index fängt bei 1 an
  CATCH cx_sy_itab_line_not_found INTO data(x).
    out->write(  x->get_text( ) ).
  ENDTRY.

  IF line_exists( connections[ carrier_id = 'XX' connection_id = '0400' ] ).
       connection = connections[  carrier_id = 'XX' connection_id = '0400' ].
  ELSE.
    out->write( |Fehler die Zeile existiert nicht| ).
  ENDIF.

  connection = connections[ carrier_id = 'LH' connection_id = '0400' ].


 "Lesen mehrerer Datensätze
    "loop at connections into data(connection2).
    "endloop.

  loop at connections into connection where carrier_id = 'LH'.
      out->write(  | { sy-tabix } - { connection-carrier_id } - { connection-connection_id } | ).
  endloop.

  "Ändern eines Einzelsatzes per
    connections[ 1 ]-airport_from_id = 'BER'. "..Index
    connections[  carrier_id = 'XX' connection_id = '0402' ]-airport_to_id = 'FRA'.


 "Ändern mehrerer Datensätze
    "loop at connections into data(connection2).
    "endloop.

  loop at connections into connection where carrier_id = 'LH'.
    connection-airport_to_id = 'JFK'.

  endloop.

  ENDMETHOD.
ENDCLASS.
