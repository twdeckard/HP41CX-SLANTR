RPN_SRCS = slantr.rpn rnavfx.rpn about.rpn 
RPN_RAWS =
ASM_SRCS = header.s 

OBJS = $(RPN_SRCS:%.rpn=%.o) $(RPN_RAWS:%.raw=%.o) $(ASM_SRCS:%.s=%.o)

MOD = SLANTR.mod

all:	$(MOD)

clean:
	-rm -f ${OBJS} *.lst $(MOD)

%.o: %.rpn
	rpncomp -I../module-descriptor $<

%.o: %.raw
	rpncomp -I../module-descriptor $<

%.o: %.s
	nutasm $<

$(MOD): $(OBJS) Plugin4K.rules slantr.ModDesc Makefile
	nutlink $(OBJS) --rules=Plugin4K.rules --modfile-description=slantr.ModDesc \
		--no-list-header -o $(MOD)


