\LoadClass[a4paper,12pt]{article}
\RequirePackage[utf8]{inputenc}
\RequirePackage[spanish]{babel} 
\RequirePackage{graphicx} 
\RequirePackage{anysize} 
\usepackage{fancyhdr} % Para agregar encabezado y pie de página
\marginsize{2cm}{2cm}{1.2cm}{2cm} % Izquierda, derecha, arriba, abajo

\newcommand{\university}{UNAM}
\newcommand{\University}{Universidad Nacional\\ \vspace{5px} Autónoma de México}
\newcommand{\faculty}{Facultad de Ingeniería}

\newcommand{\subject}[1]{\renewcommand{\subject}{#1}}
\newcommand{\mytitle}[1]{\renewcommand{\mytitle}{#1}}
\newcommand{\mysubTitle}[1]{\renewcommand{\mysubTitle}{#1}}
\newcommand{\students}[1]{\renewcommand{\students}{#1}}
\newcommand{\teacher}[1]{\renewcommand{\teacher}{#1}}
\newcommand{\group}[1]{\renewcommand{\group}{#1}}
\newcommand{\deliverDate}[1]{\renewcommand{\deliverDate}{#1}}

\usepackage{float}
\usepackage{tabu}
\newcommand{\insertImage}[3]{
    \begin{figure}[H]
        \centering
        \includegraphics[width=#3cm]{#1}
        \caption{#2}
    \end{figure}
}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\includegraphics[scale=0.3]{img/logos/escudofi_negro.jpg}} %encabezado izquierda
\fancyhead[R]{\includegraphics[scale=0.1]{img/logos/unam-10x10.jpg}}   % dereecha
\fancyhead[C]{\faculty-\university}
\fancyfoot[R]{\footnotesize \thepage}  % Pie derecha
%\fancyfoot[C]{hola}  % centro
\fancyfoot[L]{\footnotesize \subject-\textbf{\mytitle}}  %izquierda
\renewcommand{\footrulewidth}{0.4pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%% PORTADA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\coverPage}{
    \begin{center}
        \vspace*{1mm}
        \Large{\textsc{\subject} (grupo: \group)}  \\[0.2cm]
        { \Large \bfseries \mytitle}\\[0.2cm]   
        \large{\students} \\[0.2cm]
        \deliverDate
    \end{center}

%%%%%%%%%%%%%%%%%%%% TERMINA PORTADA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
}