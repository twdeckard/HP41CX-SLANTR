;;; Assembler code needed to describe an RPN module

              section HEADER
              con   11              ; XROM number
              con   (fatend - fatstart) / 2
fatstart:     fat   header

              section FATEND
;;; End marker for function address table
fatend:       con   0,0

              section Code
;;; Make an empty name function for the module to show up in CAT 2
              name  "SLANTR 1B" ; The name of the module
header:       rtn

              section TAIL
;;; Tail of the module with empty poll points and module ID
              con   0,0,0,0,0,0,0
              text  "B1RS"          ; SR1B
