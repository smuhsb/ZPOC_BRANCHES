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
          ev_doc_no TYPE zde_doc_poc
          ev_desc   TYPE zde_desc_poc.
ENDCLASS.



CLASS zcl_branch_poc IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA: lv_desc   TYPE zde_desc_poc.
    me->_get_data(
      IMPORTING
        ev_desc   = lv_desc ).

    out->write( lv_desc ).
  ENDMETHOD.

  METHOD _get_data.
    ev_doc_no = '0201'.
    ev_desc   = |Hello { ev_doc_no }|.
  ENDMETHOD.

ENDCLASS.
