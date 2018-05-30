TARGET := integrate
DROPBOX := ~/Dropbox/experiment/10-04/Document/report
SRC := report_abe.tex report_ike.tex hayakawa_1st.tex tajima_1st.tex mino_1st.tex odagawa_1st.tex hatano_1st.tex lifetime.tex lsm.tex
CNT := 2

all:$(TARGET).pdf

%.pdf:%.dvi
	dvipdfmx $<
	-open $@

%.dvi:%.tex $(SRC)
	for i in `seq 1 $(CNT)`; do platex $<; done

image:
	cp -r $(DROPBOX)/figure .
