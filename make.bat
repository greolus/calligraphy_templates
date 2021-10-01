@set filename=calligraphy
@REM rm -r pythontex-files-* 2>NUL
@REM rm  %filename%.pytxcode  %filename%.pdf 2>NUL

@REM @docker run -w /root -v %cd%:/root/ texlive/texlive xelatex  %filename%.tex > NUL
@REM @docker run -w /root -v %cd%:/root/ texlive/texlive pythontex %filename%.tex
@REM @docker run -w /root -v %cd%:/root/ texlive/texlive xelatex  %filename%.tex
@docker run -w /root -v %cd%:/root/ texlive/texlive xelatex  %filename%.tex
@docker run -w /root -v %cd%:/root/ texlive/texlive xelatex  %filename%.tex


@REM rm %filename%.aux %filename%.log %filename%.pytxcode texput.log 2>NUL
@REM rm -r pythontex-files-* 2>NUL

@start %filename%.pdf