
_aff_base2:

;hall_258V1.mbas,61 :: 		sub procedure aff_base2()
;hall_258V1.mbas,62 :: 		tempo1 = 1
	MOVLW       1
	MOVWF       _tempo1+0 
	MOVLW       0
	MOVWF       _tempo1+1 
;hall_258V1.mbas,63 :: 		while tempo1 < 10000
L__aff_base22:
	MOVLW       39
	SUBWF       _tempo1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__aff_base2184
	MOVLW       16
	SUBWF       _tempo1+0, 0 
L__aff_base2184:
	BTFSC       STATUS+0, 0 
	GOTO        L__aff_base23
;hall_258V1.mbas,64 :: 		if porta.0 = 0 then
	BTFSC       PORTA+0, 0 
	GOTO        L__aff_base27
;hall_258V1.mbas,65 :: 		count = 1
	MOVLW       1
	MOVWF       _count+0 
;hall_258V1.mbas,66 :: 		for count = 1 to 154
	MOVLW       1
	MOVWF       _count+0 
L__aff_base210:
;hall_258V1.mbas,67 :: 		portb = lyce_2[count]
	MOVLW       _lyce_2+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_lyce_2+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_lyce_2+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, PORTB+0
;hall_258V1.mbas,68 :: 		portc =  polyval_2[count]
	MOVLW       _polyval_2+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_polyval_2+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_polyval_2+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, PORTC+0
;hall_258V1.mbas,69 :: 		Delay_us(300)
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L__aff_base214:
	DECFSZ      R13, 1, 1
	BRA         L__aff_base214
	DECFSZ      R12, 1, 1
	BRA         L__aff_base214
	NOP
;hall_258V1.mbas,70 :: 		inc (tempo1)
	INFSNZ      _tempo1+0, 1 
	INCF        _tempo1+1, 1 
;hall_258V1.mbas,71 :: 		next count
	MOVF        _count+0, 0 
	XORLW       154
	BTFSC       STATUS+0, 2 
	GOTO        L__aff_base213
	INCF        _count+0, 1 
	GOTO        L__aff_base210
L__aff_base213:
;hall_258V1.mbas,72 :: 		portb = 0
	CLRF        PORTB+0 
;hall_258V1.mbas,73 :: 		portc = 0
	CLRF        PORTC+0 
L__aff_base27:
;hall_258V1.mbas,75 :: 		wend
	GOTO        L__aff_base22
L__aff_base23:
;hall_258V1.mbas,76 :: 		end sub
	RETURN      0
; end of _aff_base2

_aff_base3:

;hall_258V1.mbas,78 :: 		sub procedure aff_base3()
;hall_258V1.mbas,79 :: 		tempo1 = 1
	MOVLW       1
	MOVWF       _tempo1+0 
	MOVLW       0
	MOVWF       _tempo1+1 
;hall_258V1.mbas,80 :: 		while tempo1 < 10000
L__aff_base317:
	MOVLW       39
	SUBWF       _tempo1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__aff_base3185
	MOVLW       16
	SUBWF       _tempo1+0, 0 
L__aff_base3185:
	BTFSC       STATUS+0, 0 
	GOTO        L__aff_base318
;hall_258V1.mbas,81 :: 		if porta.0 = 0 then
	BTFSC       PORTA+0, 0 
	GOTO        L__aff_base322
;hall_258V1.mbas,82 :: 		count = 1
	MOVLW       1
	MOVWF       _count+0 
;hall_258V1.mbas,83 :: 		for count = 1 to 154
	MOVLW       1
	MOVWF       _count+0 
L__aff_base325:
;hall_258V1.mbas,84 :: 		portb = labrique2[count]
	MOVLW       _labrique2+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_labrique2+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_labrique2+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, PORTB+0
;hall_258V1.mbas,85 :: 		portc =  thionv[count]
	MOVLW       _thionv+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_thionv+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_thionv+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, PORTC+0
;hall_258V1.mbas,86 :: 		Delay_us(300)
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L__aff_base329:
	DECFSZ      R13, 1, 1
	BRA         L__aff_base329
	DECFSZ      R12, 1, 1
	BRA         L__aff_base329
	NOP
;hall_258V1.mbas,87 :: 		inc (tempo1)
	INFSNZ      _tempo1+0, 1 
	INCF        _tempo1+1, 1 
;hall_258V1.mbas,88 :: 		next count
	MOVF        _count+0, 0 
	XORLW       154
	BTFSC       STATUS+0, 2 
	GOTO        L__aff_base328
	INCF        _count+0, 1 
	GOTO        L__aff_base325
L__aff_base328:
;hall_258V1.mbas,89 :: 		portb = 0
	CLRF        PORTB+0 
;hall_258V1.mbas,90 :: 		portc = 0
	CLRF        PORTC+0 
L__aff_base322:
;hall_258V1.mbas,92 :: 		wend
	GOTO        L__aff_base317
L__aff_base318:
;hall_258V1.mbas,93 :: 		end sub
	RETURN      0
; end of _aff_base3

_aff_base_anim2:

;hall_258V1.mbas,95 :: 		sub procedure aff_base_anim2()
;hall_258V1.mbas,96 :: 		tempo1 = 1
	MOVLW       1
	MOVWF       _tempo1+0 
	MOVLW       0
	MOVWF       _tempo1+1 
;hall_258V1.mbas,97 :: 		i = 1
	MOVLW       1
	MOVWF       _i+0 
;hall_258V1.mbas,98 :: 		i1 = 128
	MOVLW       128
	MOVWF       _i1+0 
;hall_258V1.mbas,99 :: 		i2 = 128
	MOVLW       128
	MOVWF       _i2+0 
;hall_258V1.mbas,100 :: 		itt = 1
	MOVLW       1
	MOVWF       _itt+0 
;hall_258V1.mbas,101 :: 		while itt <> 7
L__aff_base_anim232:
	MOVF        _itt+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L__aff_base_anim233
;hall_258V1.mbas,102 :: 		if porta.0 = 0 then
	BTFSC       PORTA+0, 0 
	GOTO        L__aff_base_anim237
;hall_258V1.mbas,103 :: 		count = 1
	MOVLW       1
	MOVWF       _count+0 
;hall_258V1.mbas,104 :: 		if tempo1 >= 510 then
	MOVLW       1
	SUBWF       _tempo1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__aff_base_anim2186
	MOVLW       254
	SUBWF       _tempo1+0, 0 
L__aff_base_anim2186:
	BTFSS       STATUS+0, 0 
	GOTO        L__aff_base_anim240
;hall_258V1.mbas,105 :: 		i = (i+i)+1
	MOVF        _i+0, 0 
	ADDWF       _i+0, 1 
	INCF        _i+0, 1 
;hall_258V1.mbas,106 :: 		i2 = i2/2
	MOVF        _i2+0, 0 
	MOVWF       R0 
	RRCF        R0, 1 
	BCF         R0, 7 
	MOVF        R0, 0 
	MOVWF       _i2+0 
;hall_258V1.mbas,107 :: 		i1 = i1 + i2
	MOVF        R0, 0 
	ADDWF       _i1+0, 1 
;hall_258V1.mbas,108 :: 		inc (itt)
	INCF        _itt+0, 1 
;hall_258V1.mbas,109 :: 		tempo1 = 1
	MOVLW       1
	MOVWF       _tempo1+0 
	MOVLW       0
	MOVWF       _tempo1+1 
L__aff_base_anim240:
;hall_258V1.mbas,112 :: 		for count = 1 to 154
	MOVLW       1
	MOVWF       _count+0 
L__aff_base_anim243:
;hall_258V1.mbas,113 :: 		portb  = lyce_2[count] and i1
	MOVLW       _lyce_2+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_lyce_2+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_lyce_2+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, R0
	MOVF        _i1+0, 0 
	ANDWF       R0, 0 
	MOVWF       PORTB+0 
;hall_258V1.mbas,114 :: 		portc  = polyval_2[count] and i
	MOVLW       _polyval_2+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_polyval_2+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_polyval_2+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, R0
	MOVF        _i+0, 0 
	ANDWF       R0, 0 
	MOVWF       PORTC+0 
;hall_258V1.mbas,115 :: 		Delay_us(300)
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L__aff_base_anim247:
	DECFSZ      R13, 1, 1
	BRA         L__aff_base_anim247
	DECFSZ      R12, 1, 1
	BRA         L__aff_base_anim247
	NOP
;hall_258V1.mbas,116 :: 		inc (tempo1)
	INFSNZ      _tempo1+0, 1 
	INCF        _tempo1+1, 1 
;hall_258V1.mbas,117 :: 		next count
	MOVF        _count+0, 0 
	XORLW       154
	BTFSC       STATUS+0, 2 
	GOTO        L__aff_base_anim246
	INCF        _count+0, 1 
	GOTO        L__aff_base_anim243
L__aff_base_anim246:
;hall_258V1.mbas,118 :: 		portb = 0
	CLRF        PORTB+0 
;hall_258V1.mbas,119 :: 		portc = 0
	CLRF        PORTC+0 
L__aff_base_anim237:
;hall_258V1.mbas,121 :: 		wend
	GOTO        L__aff_base_anim232
L__aff_base_anim233:
;hall_258V1.mbas,122 :: 		end sub
	RETURN      0
; end of _aff_base_anim2

_aff_base_anim3:

;hall_258V1.mbas,124 :: 		sub procedure aff_base_anim3()
;hall_258V1.mbas,125 :: 		tempo1 = 1
	MOVLW       1
	MOVWF       _tempo1+0 
	MOVLW       0
	MOVWF       _tempo1+1 
;hall_258V1.mbas,126 :: 		i = 1
	MOVLW       1
	MOVWF       _i+0 
;hall_258V1.mbas,127 :: 		i1 = 128
	MOVLW       128
	MOVWF       _i1+0 
;hall_258V1.mbas,128 :: 		i2 = 128
	MOVLW       128
	MOVWF       _i2+0 
;hall_258V1.mbas,129 :: 		itt = 1
	MOVLW       1
	MOVWF       _itt+0 
;hall_258V1.mbas,130 :: 		while itt <> 7
L__aff_base_anim350:
	MOVF        _itt+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L__aff_base_anim351
;hall_258V1.mbas,131 :: 		if porta.0 = 0 then
	BTFSC       PORTA+0, 0 
	GOTO        L__aff_base_anim355
;hall_258V1.mbas,132 :: 		count = 1
	MOVLW       1
	MOVWF       _count+0 
;hall_258V1.mbas,133 :: 		if tempo1 >= 510 then
	MOVLW       1
	SUBWF       _tempo1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__aff_base_anim3187
	MOVLW       254
	SUBWF       _tempo1+0, 0 
L__aff_base_anim3187:
	BTFSS       STATUS+0, 0 
	GOTO        L__aff_base_anim358
;hall_258V1.mbas,134 :: 		i = (i+i)+1
	MOVF        _i+0, 0 
	ADDWF       _i+0, 1 
	INCF        _i+0, 1 
;hall_258V1.mbas,135 :: 		i2 = i2/2
	MOVF        _i2+0, 0 
	MOVWF       R0 
	RRCF        R0, 1 
	BCF         R0, 7 
	MOVF        R0, 0 
	MOVWF       _i2+0 
;hall_258V1.mbas,136 :: 		i1 = i1 + i2
	MOVF        R0, 0 
	ADDWF       _i1+0, 1 
;hall_258V1.mbas,137 :: 		inc (itt)
	INCF        _itt+0, 1 
;hall_258V1.mbas,138 :: 		tempo1 = 1
	MOVLW       1
	MOVWF       _tempo1+0 
	MOVLW       0
	MOVWF       _tempo1+1 
L__aff_base_anim358:
;hall_258V1.mbas,141 :: 		for count = 1 to 154
	MOVLW       1
	MOVWF       _count+0 
L__aff_base_anim361:
;hall_258V1.mbas,142 :: 		portb  = labrique2[count] and i1
	MOVLW       _labrique2+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_labrique2+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_labrique2+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, R0
	MOVF        _i1+0, 0 
	ANDWF       R0, 0 
	MOVWF       PORTB+0 
;hall_258V1.mbas,143 :: 		portc  = thionv[count] and i
	MOVLW       _thionv+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_thionv+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_thionv+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, R0
	MOVF        _i+0, 0 
	ANDWF       R0, 0 
	MOVWF       PORTC+0 
;hall_258V1.mbas,144 :: 		Delay_us(300)
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L__aff_base_anim365:
	DECFSZ      R13, 1, 1
	BRA         L__aff_base_anim365
	DECFSZ      R12, 1, 1
	BRA         L__aff_base_anim365
	NOP
;hall_258V1.mbas,145 :: 		inc (tempo1)
	INFSNZ      _tempo1+0, 1 
	INCF        _tempo1+1, 1 
;hall_258V1.mbas,146 :: 		next count
	MOVF        _count+0, 0 
	XORLW       154
	BTFSC       STATUS+0, 2 
	GOTO        L__aff_base_anim364
	INCF        _count+0, 1 
	GOTO        L__aff_base_anim361
L__aff_base_anim364:
;hall_258V1.mbas,147 :: 		portb = 0
	CLRF        PORTB+0 
;hall_258V1.mbas,148 :: 		portc = 0
	CLRF        PORTC+0 
L__aff_base_anim355:
;hall_258V1.mbas,150 :: 		wend
	GOTO        L__aff_base_anim350
L__aff_base_anim351:
;hall_258V1.mbas,151 :: 		end sub
	RETURN      0
; end of _aff_base_anim3

_rotate_2:

;hall_258V1.mbas,153 :: 		sub procedure rotate_2()
;hall_258V1.mbas,154 :: 		tempo1 = 1
	MOVLW       1
	MOVWF       _tempo1+0 
	MOVLW       0
	MOVWF       _tempo1+1 
;hall_258V1.mbas,155 :: 		j1 = 65
	MOVLW       65
	MOVWF       _j1+0 
;hall_258V1.mbas,156 :: 		j2 = 130
	MOVLW       130
	MOVWF       _j2+0 
;hall_258V1.mbas,157 :: 		while j1 <> 1
L__rotate_268:
	MOVF        _j1+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L__rotate_269
;hall_258V1.mbas,158 :: 		if porta.0 = 0 then
	BTFSC       PORTA+0, 0 
	GOTO        L__rotate_273
;hall_258V1.mbas,159 :: 		count = 1
	MOVLW       1
	MOVWF       _count+0 
;hall_258V1.mbas,160 :: 		if tempo1 >= 100 then
	MOVLW       0
	SUBWF       _tempo1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rotate_2188
	MOVLW       100
	SUBWF       _tempo1+0, 0 
L__rotate_2188:
	BTFSS       STATUS+0, 0 
	GOTO        L__rotate_276
;hall_258V1.mbas,161 :: 		dec (j1)
	DECF        _j1+0, 1 
;hall_258V1.mbas,162 :: 		dec (j2)
	DECF        _j2+0, 1 
;hall_258V1.mbas,163 :: 		tempo1 = 1
	MOVLW       1
	MOVWF       _tempo1+0 
	MOVLW       0
	MOVWF       _tempo1+1 
L__rotate_276:
;hall_258V1.mbas,166 :: 		for count = j1 to j2
	MOVF        _j1+0, 0 
	MOVWF       _count+0 
L__rotate_278:
	MOVF        _count+0, 0 
	SUBWF       _j2+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L__rotate_282
;hall_258V1.mbas,167 :: 		portb  = not(P_lyce[count])
	MOVLW       _P_lyce+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_P_lyce+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_P_lyce+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, R0
	COMF        R0, 0 
	MOVWF       PORTB+0 
;hall_258V1.mbas,168 :: 		portc  = not(p_brique[count])
	MOVLW       _p_brique+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_p_brique+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_p_brique+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, R0
	COMF        R0, 0 
	MOVWF       PORTC+0 
;hall_258V1.mbas,169 :: 		Delay_us(300)
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L__rotate_283:
	DECFSZ      R13, 1, 1
	BRA         L__rotate_283
	DECFSZ      R12, 1, 1
	BRA         L__rotate_283
	NOP
;hall_258V1.mbas,170 :: 		inc (tempo1)
	INFSNZ      _tempo1+0, 1 
	INCF        _tempo1+1, 1 
;hall_258V1.mbas,171 :: 		next count
	MOVF        _count+0, 0 
	XORWF       _j2+0, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L__rotate_282
	INCF        _count+0, 1 
	GOTO        L__rotate_278
L__rotate_282:
;hall_258V1.mbas,172 :: 		portb = 0
	CLRF        PORTB+0 
;hall_258V1.mbas,173 :: 		portc = 0
	CLRF        PORTC+0 
L__rotate_273:
;hall_258V1.mbas,175 :: 		wend
	GOTO        L__rotate_268
L__rotate_269:
;hall_258V1.mbas,176 :: 		tempo1 = 1
	MOVLW       1
	MOVWF       _tempo1+0 
	MOVLW       0
	MOVWF       _tempo1+1 
;hall_258V1.mbas,177 :: 		while tempo1 < 5000
L__rotate_285:
	MOVLW       19
	SUBWF       _tempo1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__rotate_2189
	MOVLW       136
	SUBWF       _tempo1+0, 0 
L__rotate_2189:
	BTFSC       STATUS+0, 0 
	GOTO        L__rotate_286
;hall_258V1.mbas,178 :: 		if porta.0 = 0 then
	BTFSC       PORTA+0, 0 
	GOTO        L__rotate_290
;hall_258V1.mbas,179 :: 		count = 1
	MOVLW       1
	MOVWF       _count+0 
;hall_258V1.mbas,180 :: 		for count = 1 to 65
	MOVLW       1
	MOVWF       _count+0 
L__rotate_293:
;hall_258V1.mbas,181 :: 		portb = not(P_lyce2[count])
	MOVLW       _P_lyce2+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_P_lyce2+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_P_lyce2+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, R0
	COMF        R0, 0 
	MOVWF       PORTB+0 
;hall_258V1.mbas,182 :: 		portc = not(p_brique2[count])
	MOVLW       _p_brique2+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_p_brique2+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_p_brique2+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, R0
	COMF        R0, 0 
	MOVWF       PORTC+0 
;hall_258V1.mbas,183 :: 		Delay_us(300)
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L__rotate_297:
	DECFSZ      R13, 1, 1
	BRA         L__rotate_297
	DECFSZ      R12, 1, 1
	BRA         L__rotate_297
	NOP
;hall_258V1.mbas,184 :: 		inc (tempo1)
	INFSNZ      _tempo1+0, 1 
	INCF        _tempo1+1, 1 
;hall_258V1.mbas,185 :: 		next count
	MOVF        _count+0, 0 
	XORLW       65
	BTFSC       STATUS+0, 2 
	GOTO        L__rotate_296
	INCF        _count+0, 1 
	GOTO        L__rotate_293
L__rotate_296:
;hall_258V1.mbas,186 :: 		portb = 0
	CLRF        PORTB+0 
;hall_258V1.mbas,187 :: 		portc = 0
	CLRF        PORTC+0 
L__rotate_290:
;hall_258V1.mbas,189 :: 		wend
	GOTO        L__rotate_285
L__rotate_286:
;hall_258V1.mbas,191 :: 		end sub
	RETURN      0
; end of _rotate_2

_anim_horz:

;hall_258V1.mbas,193 :: 		sub procedure anim_horz()
;hall_258V1.mbas,194 :: 		tempo1 = 1
	MOVLW       1
	MOVWF       _tempo1+0 
	MOVLW       0
	MOVWF       _tempo1+1 
;hall_258V1.mbas,195 :: 		while tempo1 < 300
L__anim_horz100:
	MOVLW       1
	SUBWF       _tempo1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__anim_horz190
	MOVLW       44
	SUBWF       _tempo1+0, 0 
L__anim_horz190:
	BTFSC       STATUS+0, 0 
	GOTO        L__anim_horz101
;hall_258V1.mbas,196 :: 		if porta.0 = 0 then
	BTFSC       PORTA+0, 0 
	GOTO        L__anim_horz105
;hall_258V1.mbas,197 :: 		count = 1
	MOVLW       1
	MOVWF       _count+0 
;hall_258V1.mbas,198 :: 		for count = 1 to 17
	MOVLW       1
	MOVWF       _count+0 
L__anim_horz108:
;hall_258V1.mbas,199 :: 		portb = ligne_haut[count]
	MOVLW       _ligne_haut+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_ligne_haut+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_ligne_haut+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, PORTB+0
;hall_258V1.mbas,200 :: 		portc = ligne_bas[count]
	MOVLW       _ligne_bas+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_ligne_bas+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_ligne_bas+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, PORTC+0
;hall_258V1.mbas,201 :: 		Delay_us(300)
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L__anim_horz112:
	DECFSZ      R13, 1, 1
	BRA         L__anim_horz112
	DECFSZ      R12, 1, 1
	BRA         L__anim_horz112
	NOP
;hall_258V1.mbas,202 :: 		inc (tempo1)
	INFSNZ      _tempo1+0, 1 
	INCF        _tempo1+1, 1 
;hall_258V1.mbas,203 :: 		next count
	MOVF        _count+0, 0 
	XORLW       17
	BTFSC       STATUS+0, 2 
	GOTO        L__anim_horz111
	INCF        _count+0, 1 
	GOTO        L__anim_horz108
L__anim_horz111:
;hall_258V1.mbas,204 :: 		portb = 0
	CLRF        PORTB+0 
;hall_258V1.mbas,205 :: 		portc = 0
	CLRF        PORTC+0 
L__anim_horz105:
;hall_258V1.mbas,207 :: 		wend
	GOTO        L__anim_horz100
L__anim_horz101:
;hall_258V1.mbas,208 :: 		tempo1 = 1
	MOVLW       1
	MOVWF       _tempo1+0 
	MOVLW       0
	MOVWF       _tempo1+1 
;hall_258V1.mbas,209 :: 		while tempo1 < 100
L__anim_horz114:
	MOVLW       0
	SUBWF       _tempo1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__anim_horz191
	MOVLW       100
	SUBWF       _tempo1+0, 0 
L__anim_horz191:
	BTFSC       STATUS+0, 0 
	GOTO        L__anim_horz115
;hall_258V1.mbas,210 :: 		if porta.0 = 0 then
	BTFSC       PORTA+0, 0 
	GOTO        L__anim_horz119
;hall_258V1.mbas,211 :: 		count = 1
	MOVLW       1
	MOVWF       _count+0 
;hall_258V1.mbas,212 :: 		for count = 1 to 17
	MOVLW       1
	MOVWF       _count+0 
L__anim_horz122:
;hall_258V1.mbas,213 :: 		portb = ligne_haut1[count]
	MOVLW       _ligne_haut1+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_ligne_haut1+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_ligne_haut1+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, PORTB+0
;hall_258V1.mbas,214 :: 		portc = ligne_bas1[count]
	MOVLW       _ligne_bas1+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_ligne_bas1+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_ligne_bas1+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, PORTC+0
;hall_258V1.mbas,215 :: 		Delay_us(300)
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L__anim_horz126:
	DECFSZ      R13, 1, 1
	BRA         L__anim_horz126
	DECFSZ      R12, 1, 1
	BRA         L__anim_horz126
	NOP
;hall_258V1.mbas,216 :: 		inc (tempo1)
	INFSNZ      _tempo1+0, 1 
	INCF        _tempo1+1, 1 
;hall_258V1.mbas,217 :: 		next count
	MOVF        _count+0, 0 
	XORLW       17
	BTFSC       STATUS+0, 2 
	GOTO        L__anim_horz125
	INCF        _count+0, 1 
	GOTO        L__anim_horz122
L__anim_horz125:
;hall_258V1.mbas,218 :: 		portb = 0
	CLRF        PORTB+0 
;hall_258V1.mbas,219 :: 		portc = 0
	CLRF        PORTC+0 
L__anim_horz119:
;hall_258V1.mbas,221 :: 		wend
	GOTO        L__anim_horz114
L__anim_horz115:
;hall_258V1.mbas,222 :: 		end sub
	RETURN      0
; end of _anim_horz

_aff_base4:

;hall_258V1.mbas,224 :: 		sub procedure aff_base4()
;hall_258V1.mbas,225 :: 		tempo1 = 1
	MOVLW       1
	MOVWF       _tempo1+0 
	MOVLW       0
	MOVWF       _tempo1+1 
;hall_258V1.mbas,226 :: 		while tempo1 < 20000
L__aff_base4129:
	MOVLW       78
	SUBWF       _tempo1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__aff_base4192
	MOVLW       32
	SUBWF       _tempo1+0, 0 
L__aff_base4192:
	BTFSC       STATUS+0, 0 
	GOTO        L__aff_base4130
;hall_258V1.mbas,228 :: 		for count = 1 to 154
	MOVLW       1
	MOVWF       _count+0 
L__aff_base4134:
;hall_258V1.mbas,229 :: 		portb = lyce_2[count]
	MOVLW       _lyce_2+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_lyce_2+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_lyce_2+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, PORTB+0
;hall_258V1.mbas,230 :: 		portc =  polyval_2[count]
	MOVLW       _polyval_2+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_polyval_2+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_polyval_2+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, PORTC+0
;hall_258V1.mbas,231 :: 		Delay_us(300)
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L__aff_base4138:
	DECFSZ      R13, 1, 1
	BRA         L__aff_base4138
	DECFSZ      R12, 1, 1
	BRA         L__aff_base4138
	NOP
;hall_258V1.mbas,232 :: 		inc (tempo1)
	INFSNZ      _tempo1+0, 1 
	INCF        _tempo1+1, 1 
;hall_258V1.mbas,233 :: 		next count
	MOVF        _count+0, 0 
	XORLW       154
	BTFSC       STATUS+0, 2 
	GOTO        L__aff_base4137
	INCF        _count+0, 1 
	GOTO        L__aff_base4134
L__aff_base4137:
;hall_258V1.mbas,234 :: 		portb = 0
	CLRF        PORTB+0 
;hall_258V1.mbas,235 :: 		portc = 0
	CLRF        PORTC+0 
;hall_258V1.mbas,237 :: 		wend
	GOTO        L__aff_base4129
L__aff_base4130:
;hall_258V1.mbas,238 :: 		end sub
	RETURN      0
; end of _aff_base4

_aff_base5:

;hall_258V1.mbas,240 :: 		sub procedure aff_base5()
;hall_258V1.mbas,241 :: 		tempo1 = 1
	MOVLW       1
	MOVWF       _tempo1+0 
	MOVLW       0
	MOVWF       _tempo1+1 
;hall_258V1.mbas,242 :: 		while tempo1 < 20000
L__aff_base5141:
	MOVLW       78
	SUBWF       _tempo1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__aff_base5193
	MOVLW       32
	SUBWF       _tempo1+0, 0 
L__aff_base5193:
	BTFSC       STATUS+0, 0 
	GOTO        L__aff_base5142
;hall_258V1.mbas,243 :: 		for count = 1 to 154
	MOVLW       1
	MOVWF       _count+0 
L__aff_base5146:
;hall_258V1.mbas,244 :: 		portb = labrique2[count]
	MOVLW       _labrique2+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_labrique2+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_labrique2+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, PORTB+0
;hall_258V1.mbas,245 :: 		portc =  thionv[count]
	MOVLW       _thionv+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_thionv+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_thionv+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, PORTC+0
;hall_258V1.mbas,246 :: 		Delay_us(300)
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L__aff_base5150:
	DECFSZ      R13, 1, 1
	BRA         L__aff_base5150
	DECFSZ      R12, 1, 1
	BRA         L__aff_base5150
	NOP
;hall_258V1.mbas,247 :: 		inc (tempo1)
	INFSNZ      _tempo1+0, 1 
	INCF        _tempo1+1, 1 
;hall_258V1.mbas,248 :: 		next count
	MOVF        _count+0, 0 
	XORLW       154
	BTFSC       STATUS+0, 2 
	GOTO        L__aff_base5149
	INCF        _count+0, 1 
	GOTO        L__aff_base5146
L__aff_base5149:
;hall_258V1.mbas,249 :: 		portb = 0
	CLRF        PORTB+0 
;hall_258V1.mbas,250 :: 		portc = 0
	CLRF        PORTC+0 
;hall_258V1.mbas,252 :: 		wend
	GOTO        L__aff_base5141
L__aff_base5142:
;hall_258V1.mbas,253 :: 		end sub
	RETURN      0
; end of _aff_base5

_aff_base6:

;hall_258V1.mbas,255 :: 		sub procedure aff_base6()
;hall_258V1.mbas,256 :: 		tempo1 = 1
	MOVLW       1
	MOVWF       _tempo1+0 
	MOVLW       0
	MOVWF       _tempo1+1 
;hall_258V1.mbas,257 :: 		while tempo1 < 20000
L__aff_base6153:
	MOVLW       78
	SUBWF       _tempo1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__aff_base6194
	MOVLW       32
	SUBWF       _tempo1+0, 0 
L__aff_base6194:
	BTFSC       STATUS+0, 0 
	GOTO        L__aff_base6154
;hall_258V1.mbas,258 :: 		if porta.0 = 0 then
	BTFSC       PORTA+0, 0 
	GOTO        L__aff_base6158
;hall_258V1.mbas,259 :: 		count = 1
	MOVLW       1
	MOVWF       _count+0 
;hall_258V1.mbas,260 :: 		for count = 1 to 154
	MOVLW       1
	MOVWF       _count+0 
L__aff_base6161:
;hall_258V1.mbas,261 :: 		portb = formation[count]
	MOVLW       _formation+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_formation+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_formation+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, PORTB+0
;hall_258V1.mbas,262 :: 		portc =  sti[count]
	MOVLW       _sti+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_sti+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_sti+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, PORTC+0
;hall_258V1.mbas,263 :: 		Delay_us(300)
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L__aff_base6165:
	DECFSZ      R13, 1, 1
	BRA         L__aff_base6165
	DECFSZ      R12, 1, 1
	BRA         L__aff_base6165
	NOP
;hall_258V1.mbas,264 :: 		inc (tempo1)
	INFSNZ      _tempo1+0, 1 
	INCF        _tempo1+1, 1 
;hall_258V1.mbas,265 :: 		next count
	MOVF        _count+0, 0 
	XORLW       154
	BTFSC       STATUS+0, 2 
	GOTO        L__aff_base6164
	INCF        _count+0, 1 
	GOTO        L__aff_base6161
L__aff_base6164:
;hall_258V1.mbas,266 :: 		portb = 0
	CLRF        PORTB+0 
;hall_258V1.mbas,267 :: 		portc = 0
	CLRF        PORTC+0 
L__aff_base6158:
;hall_258V1.mbas,269 :: 		wend
	GOTO        L__aff_base6153
L__aff_base6154:
;hall_258V1.mbas,270 :: 		end sub
	RETURN      0
; end of _aff_base6

_aff_base7:

;hall_258V1.mbas,272 :: 		sub procedure aff_base7()
;hall_258V1.mbas,273 :: 		tempo1 = 1
	MOVLW       1
	MOVWF       _tempo1+0 
	MOVLW       0
	MOVWF       _tempo1+1 
;hall_258V1.mbas,274 :: 		while tempo1 < 30000
L__aff_base7168:
	MOVLW       117
	SUBWF       _tempo1+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__aff_base7195
	MOVLW       48
	SUBWF       _tempo1+0, 0 
L__aff_base7195:
	BTFSC       STATUS+0, 0 
	GOTO        L__aff_base7169
;hall_258V1.mbas,275 :: 		for count = 1 to 154
	MOVLW       1
	MOVWF       _count+0 
L__aff_base7173:
;hall_258V1.mbas,276 :: 		portb = formation[count]
	MOVLW       _formation+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_formation+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_formation+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, PORTB+0
;hall_258V1.mbas,277 :: 		portc =  sti[count]
	MOVLW       _sti+0
	ADDWF       _count+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_sti+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_sti+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, PORTC+0
;hall_258V1.mbas,278 :: 		Delay_us(300)
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       28
	MOVWF       R13, 0
L__aff_base7177:
	DECFSZ      R13, 1, 1
	BRA         L__aff_base7177
	DECFSZ      R12, 1, 1
	BRA         L__aff_base7177
	NOP
;hall_258V1.mbas,279 :: 		inc (tempo1)
	INFSNZ      _tempo1+0, 1 
	INCF        _tempo1+1, 1 
;hall_258V1.mbas,280 :: 		next count
	MOVF        _count+0, 0 
	XORLW       154
	BTFSC       STATUS+0, 2 
	GOTO        L__aff_base7176
	INCF        _count+0, 1 
	GOTO        L__aff_base7173
L__aff_base7176:
;hall_258V1.mbas,281 :: 		portb = 0
	CLRF        PORTB+0 
;hall_258V1.mbas,282 :: 		portc = 0
	CLRF        PORTC+0 
;hall_258V1.mbas,283 :: 		wend
	GOTO        L__aff_base7168
L__aff_base7169:
;hall_258V1.mbas,284 :: 		end sub
	RETURN      0
; end of _aff_base7

_main:

;hall_258V1.mbas,285 :: 		main:
;hall_258V1.mbas,287 :: 		ADCON1 = %0111
	MOVLW       7
	MOVWF       ADCON1+0 
;hall_258V1.mbas,288 :: 		trisa = %00000001
	MOVLW       1
	MOVWF       TRISA+0 
;hall_258V1.mbas,289 :: 		portb = 0x00
	CLRF        PORTB+0 
;hall_258V1.mbas,290 :: 		LATB = 0x00
	CLRF        LATB+0 
;hall_258V1.mbas,291 :: 		trisb = 0x00
	CLRF        TRISB+0 
;hall_258V1.mbas,292 :: 		trisc = 0x00
	CLRF        TRISC+0 
;hall_258V1.mbas,293 :: 		portc = 0x00
	CLRF        PORTC+0 
;hall_258V1.mbas,294 :: 		INTCON2.7 = 1
	BSF         INTCON2+0, 7 
;hall_258V1.mbas,295 :: 		Delay_1sec
	CALL        _Delay_1sec+0, 0
;hall_258V1.mbas,296 :: 		Delay_1sec
	CALL        _Delay_1sec+0, 0
;hall_258V1.mbas,297 :: 		while true
L__main180:
;hall_258V1.mbas,298 :: 		aff_base_anim2
	CALL        _aff_base_anim2+0, 0
;hall_258V1.mbas,299 :: 		aff_base2
	CALL        _aff_base2+0, 0
;hall_258V1.mbas,301 :: 		aff_base_anim3
	CALL        _aff_base_anim3+0, 0
;hall_258V1.mbas,302 :: 		aff_base3
	CALL        _aff_base3+0, 0
;hall_258V1.mbas,303 :: 		rotate_2
	CALL        _rotate_2+0, 0
;hall_258V1.mbas,305 :: 		aff_base4
	CALL        _aff_base4+0, 0
;hall_258V1.mbas,306 :: 		aff_base5
	CALL        _aff_base5+0, 0
;hall_258V1.mbas,307 :: 		aff_base6
	CALL        _aff_base6+0, 0
;hall_258V1.mbas,308 :: 		aff_base7
	CALL        _aff_base7+0, 0
;hall_258V1.mbas,309 :: 		wend
	GOTO        L__main180
	GOTO        $+0
; end of _main
