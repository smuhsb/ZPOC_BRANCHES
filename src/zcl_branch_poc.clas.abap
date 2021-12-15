CLASS zcl_branch_poc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-METHODS:
      _get_data
        EXPORTING
          ev_doc_no TYPE zde_doc_poc.
ENDCLASS.



CLASS zcl_branch_poc IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA: lv_doc_no TYPE zde_doc_poc.
    me->_get_data(
      IMPORTING
        ev_doc_no = lv_doc_no ).

    out->write( lv_doc_no ).
  ENDMETHOD.

  METHOD _get_data.
    ev_doc_no = '201'.
  ENDMETHOD.

ENDCLASS.
