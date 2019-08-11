mkdir .build
pdflatex -output-directory=.build/ $1
cd .build
bibtex $1
cd ..
pdflatex -output-directory=.build/ $1
pdflatex -output-directory=.build/ $1
mv .build/*.pdf . 
