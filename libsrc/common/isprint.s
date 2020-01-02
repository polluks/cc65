; isprint.s
;
; This file is part of
; cc65 - a freeware C compiler for 6502 based systems
;
; https://github.com/cc65/cc65
;
; See "LICENSE" file for legal information.
;
; int isprint (int c);
;

        .export         _isprint
        .include        "ctype.inc"
        .import         ctype_preprocessor        

_isprint:
        jsr     ctype_preprocessor      ; (clears always x)
        bcs     @L1                     ; out of range? (everything already clear -> false)
        eor     #CT_CTRL                ; NOT a control char
        and     #CT_CTRL                ; mask control char bit
@L1:    rts
