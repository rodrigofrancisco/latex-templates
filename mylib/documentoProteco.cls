\LoadClass[a4paper]{article}
\RequirePackage[utf8]{inputenc}
\RequirePackage[spanish]{babel}
\RequirePackage{graphicx}
\RequirePackage{anysize}
\usepackage{fancyhdr} % Para agregar encabezado y pie de página
\marginsize{2cm}{2cm}{2cm}{2cm} % Izquierda, derecha, arriba, abajo

\decimalpoint

\newcommand{\university}{UNAM}
\newcommand{\University}{Universidad Nacional\\ \vspace{5px} Autónoma de México}
\newcommand{\faculty}{Facultad de Ingeniería}
\newcommand{\org}[1]{\renewcommand{\org}{#1}}
\newcommand{\subject}[1]{\renewcommand{\subject}{#1}}
\newcommand{\mytitle}[1]{\renewcommand{\mytitle}{#1}}
\newcommand{\mysubTitle}[1]{\renewcommand{\mysubTitle}{#1}}
\newcommand{\students}[1]{\renewcommand{\students}{#1}}
\newcommand{\teacher}[1]{\renewcommand{\teacher}{#1}}
\newcommand{\group}[1]{\renewcommand{\group}{#1}}
\newcommand{\deliverDate}[1]{\renewcommand{\deliverDate}{#1}}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\includegraphics[scale=0.07]{img/logos/proteco}} %encabezado izquierda
\fancyhead[R]{ {\LARGE \mytitle }\\ {\Large \mysubTitle } \\ \today}   % dereecha
%\fancyhead[C]{\faculty-\university}
\fancyfoot[R]{\includegraphics[scale=0.05]{img/logos/unamazul}}  % Pie derecha
%\fancyfoot[C]{hola}  % centro
\fancyfoot[L]{\includegraphics[scale=0.3]{img/logos/escudofiazul}}  %izquierda
\fancyfoot[C]{\org}
\renewcommand{\footrulewidth}{0.4pt}
