;
; 2022-04-16, Karri Kaksonen
;
; unsigned char wherex()
;

        .export         _wherex
        .import         CURS_X

;-----------------------------------------------------------------------------
; Get cursor X position
;
        .proc   _wherex

        ldx     #0
        lda     CURS_X
        rts
        .endproc

