\LoadClass[a4paper,12pt]{article}
\input{lib/common/tipreqs.cls}
\input{lib/common/tipexam.cls}


%%%%%%%%%%%% Catching some variables %%%%%%%%%%%

\newcommand{\org}[1]{\renewcommand{\org}{#1}}
\newcommand{\context}[1]{\renewcommand{\context}{#1}}
\newcommand{\subject}[1]{\renewcommand{\subject}{#1}}
\newcommand{\examDay}[1]{\renewcommand{\examDay}{#1}}
\newcommand{\myexam}[1]{\renewcommand{\myexam}{#1}}

\DeclareFixedFont{\titlefont}{T1}{ppl}{}{}{0.5in}
%%%%%%%%%%%%%%%%%%%% ENCABEZADO %%%%%%%%%%%%%%%%%%%%%%%%%%%%

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\footnotesize \org} %encabezado izq.
\fancyhead[R]{\footnotesize \subject}   % encabezado der.
\fancyfoot[L]{\footnotesize \context} % Pie izq.
\fancyfoot[R]{\footnotesize \thepage}  % Pie der.
\renewcommand{\footrulewidth}{0.4pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%% PORTADA %%%%%%%%%%%%%%%%%%%%%%
\newcommand{\coverPage}{
    \begin{center}
        {\Large\textbf{\myexam}}  \\[0.5cm]
        \begin{flushleft}
          Nombre: \line(1,0){320}\;
          Fecha: \line(1,0){75}\\
        \end{flushleft}
    \end{center}
}


%%%%%%% COMANDO PARTICULAR DE ESTA PLANTILLA %%%%%%%%%%%%%%

\newcommand{\idpreg}[2]{
  \begin{flushright}
    \textbf{Id:} #1 \textbf{Resp.:} #2
  \end{flushright}
}
