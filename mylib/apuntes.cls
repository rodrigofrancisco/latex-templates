\LoadClass[a4paper]{article}
\RequirePackage[utf8]{inputenc}
\RequirePackage[spanish]{babel}
\RequirePackage{anysize} 
\marginsize{2cm}{2cm}{2cm}{2cm}% Izq, der, arriba, abajo
\RequirePackage{xcolor}

\RequirePackage{libertine} % linux libertine font
\RequirePackage[T1]{fontenc}

\RequirePackage{amsmath}
\RequirePackage{graphicx}

\RequirePackage{fancyhdr}

%%%%%%%%%% Display the month with letters %%%%%%
\newcommand{\MONTH}{%
  \ifcase\the\month
  \or enero% 1
  \or febrero% 2
  \or marzo% 3
  \or abril% 4
  \or mayo% 5
  \or junio% 6
  \or julio% 7
  \or agosto% 8
  \or septiembre% 9
  \or octubre% 10
  \or noviembre% 11
  \or diciembre% 12
  \fi}


%%%%%%%%%%%% Catching some variables %%%%%%%%%%%

\newcommand{\org}[1]{\renewcommand{\org}{#1}}
\newcommand{\context}[1]{\renewcommand{\context}{#1}}
\newcommand{\resumen}[1]{\renewcommand{\resumen}{#1}}
\newcommand{\mytitle}[1]{\renewcommand{\mytitle}{#1}}
\newcommand{\myauthor}[1]{\renewcommand{\myauthor}{#1}}

\DeclareFixedFont{\titlefont}{T1}{ppl}{}{}{0.5in}
%%%%%%% Seccion de header y footer %%%%%%%%%%%%%%%%%%%%

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\footnotesize \org} %encabezado izquierda
\fancyhead[R]{\footnotesize \nouppercase{\leftmark}}   % dereecha
\fancyfoot[L]{\footnotesize \context}
\fancyfoot[R]{\footnotesize \thepage}  % Pie derecha
\fancyfoot[C]{\footnotesize Última revision \MONTH\,de\,\the\year}  %izquierda
\renewcommand{\footrulewidth}{0.4pt}

%%%%%%%%%% Decorar background %%%%%%%%%%%%%%

\definecolor{apuntes}{RGB}{0,79,158}


\RequirePackage{tikz}
\RequirePackage{epigraph}

\renewcommand\epigraphflush{flushright}
\renewcommand\epigraphsize{\normalsize}
\setlength\epigraphwidth{0.7\textwidth}

\newcommand\titlepagedecoration{%
\begin{tikzpicture}[remember picture,overlay,shorten >= -10pt]
\draw[opacity=0.025,white, fill=apuntes] (-15,20) circle (100pt);
\draw[opacity=0.05,white, fill=apuntes] (2,15) circle (75pt);
\draw[opacity=0.075,white, fill=apuntes] (-5,7) circle (100pt);
\draw[opacity=0.1,white, fill=apuntes] (-15,3) circle (125pt);
\draw[opacity=0.125,white, fill=apuntes] (3,-4) circle (150pt);
\end{tikzpicture}%
}

%%%%%%%%%%% Crear portada

\newcommand{\createcoverpage}{
	\begin{titlepage}

	\vspace*{1cm}

	\noindent
	{\textcolor{apuntes}{\titlefont \mytitle }}\par

	\vspace*{0.5cm}

	\epigraph{\resumen}{\today}
	\null\vfill
	\vspace*{1cm}
	\noindent
	\hfill
	\begin{minipage}{0.39\linewidth}
	    \begin{flushright}
	        {\large \myauthor}
	    \end{flushright}
	\end{minipage}
	%
	\begin{minipage}{0.02\linewidth}
	\null
	\end{minipage}
	\begin{minipage}{0.02\linewidth}
	    \rule{1pt}{125pt}
	\end{minipage}



	\hfill
	\titlepagedecoration

	\end{titlepage}
}