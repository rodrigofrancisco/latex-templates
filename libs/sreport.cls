\LoadClass[a4paper,12pt]{article}
\input{libs/common/tipreqs.cls}
\input{libs/common/commands.cls}

%%%%%%%%%%%%%%%%%%%% ENCABEZADO %%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\footnotesize \faculty-\textbf{\university}} %encabezado izq.
\fancyhead[R]{\footnotesize \nouppercase{\leftmark}} % encabezado der.
\fancyfoot[R]{\footnotesize \thepage}  % Pie der.
%\fancyfoot[C]{hola}  % Pie centrado
\fancyfoot[L]{\footnotesize \subject-\textbf{\mytitle}}  %Pie izq.
\renewcommand{\footrulewidth}{0.4pt}

%%%%%%%%%%%%%%%%%%% DATOS PORTADA %%%%%%%%%%%%%%%%%%%%%%%%

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

%%%%%%%%%%%%%%%%%%%%%%%%% PORTADA %%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\coverPage}{
    \begin{center}
        \vspace*{1mm}
        \Large{\textsc{\subject} (gpo: \group)}  \\[0.2cm]
        { \Large \bfseries \mytitle}\\[0.2cm]
        \large{\students} \\[0.2cm]
        \deliverDate
    \end{center}
}
