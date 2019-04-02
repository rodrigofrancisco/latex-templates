\LoadClass[a4paper,12pt]{article}
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
\fancyhead[L]{\footnotesize \faculty-\textbf{\university}} %encabezado izquierda
\fancyhead[R]{\footnotesize \nouppercase{\leftmark}}   % dereecha
\fancyfoot[R]{\footnotesize \thepage}  % Pie derecha
%\fancyfoot[C]{hola}  % centro
\fancyfoot[L]{\footnotesize \subject-\textbf{\mytitle}}  %izquierda
\renewcommand{\footrulewidth}{0.4pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%% PORTADA %%%%%%%%%%%%%%%%%%%%%%
\newcommand{\coverPage}{
    \thispagestyle{empty}

    \begin{center}
    \newcommand{\HRule}{\rule{\linewidth}{0.5mm}}
    \begin{minipage}{0.48\textwidth} \begin{flushleft}
    \includegraphics[width=3cm]{img/logos/escudofi_negro.jpg}
    \end{flushleft}\end{minipage}
    \begin{minipage}{0.48\textwidth} \begin{flushright}
    \includegraphics[width=3cm]{img/logos/unam-10x10.jpg}
    \end{flushright}\end{minipage}
    \vspace*{-1.5cm}

    \textsc{\huge \University}\\[1.5cm]

    \textsc{\LARGE \faculty}\\[1.5cm]
    \begin{minipage}{0.9\textwidth}
    \begin{center}
    \textsc{\LARGE \subject}
    \end{center}
    \end{minipage}\\[0.5cm]


    \vspace*{1cm}

    \HRule \\[0.4cm]
    { \huge \bfseries \mytitle}\\[0.4cm]
    { \huge \mysubTitle}\\[0.4cm]

    \HRule \\[1.5cm]

    \begin{minipage}{0.60\textwidth}
    \begin{flushleft} \large
    \emph{Alumno(s):}\\
        \students

    %\vspace*{2cm}


    \end{flushleft}
    \end{minipage}
     %%% //Es necesario
    \begin{minipage}{0.32\textwidth}
    \vspace{-0.6cm}
    \begin{flushright} \large
    \emph{Profesor:} \\
        \teacher

    \end{flushright}
    \end{minipage}
    \vspace*{1cm}
    %\begin{flushleft}

    %\end{flushleft}
    %%%
    \flushleft{\Large Grupo: \group }\\
    \vspace{2cm}
    \begin{center}
    {\large \deliverDate}
                \end{center}
    \end{center}

    \newpage
%%%%%%%%%%%%%%%%%%%% TERMINA PORTADA %%%%%%%%%%%%%%%%%%%%%%
}
