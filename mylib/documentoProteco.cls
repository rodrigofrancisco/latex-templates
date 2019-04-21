\LoadClass[a4paper,11pt]{article}
\RequirePackage[utf8]{inputenc}
\RequirePackage[spanish]{babel}
\RequirePackage{graphicx}
\RequirePackage{anysize}
\usepackage{fancyhdr} % Para agregar encabezado y pie de página
\usepackage{xcolor}

\marginsize{2cm}{2cm}{2cm}{2cm} % Izquierda, derecha, arriba, abajo

\decimalpoint

\newcommand{\org}[1]{\renewcommand{\org}{#1}}
\newcommand{\mytitle}[1]{\renewcommand{\mytitle}{#1}}
\newcommand{\mysubTitle}[1]{\renewcommand{\mysubTitle}{#1}}
\newcommand{\deliverDate}[1]{\renewcommand{\deliverDate}{#1}}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\includegraphics[scale=0.07]{img/logos/proteco}} %encabezado izquierda
\fancyhead[R]{ {\color{blue}\Huge \mytitle }\\[2mm] {\color{green}\LARGE \mysubTitle } \\[2mm] \deliverDate}   % dereecha
%\fancyhead[C]{\faculty-\university}
\fancyfoot[R]{\includegraphics[scale=0.08]{img/logos/unamazul}}  % Pie derecha
%\fancyfoot[C]{hola}  % centro
\fancyfoot[L]{\includegraphics[scale=0.5]{img/logos/escudofiazul}}  %izquierda
\fancyfoot[C]{\vspace{-1cm} {\color{blue}\org}}
\renewcommand{\footrulewidth}{0.4pt}
