\LoadClass[a4paper,12pt]{article}
\input{libs/common/tipreqs.cls}

\RequirePackage{xcolor}

\newcommand{\org}[1]{\renewcommand{\org}{#1}}
\newcommand{\mytitle}[1]{\renewcommand{\mytitle}{#1}}
\newcommand{\mysubTitle}[1]{\renewcommand{\mysubTitle}{#1}}
\newcommand{\deliverDate}[1]{\renewcommand{\deliverDate}{#1}}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\includegraphics[scale=0.07]{img/logos/proteco}} %encabezado izq.
\fancyhead[R]{ {\color{blue}\Huge \mytitle }\\[2mm] {\color{green}\LARGE \mysubTitle } \\[2mm] \deliverDate}   % encabezado der.
\fancyfoot[R]{\includegraphics[scale=0.08]{img/logos/unamazul}}  % Pie der.
\fancyfoot[L]{\includegraphics[scale=0.5]{img/logos/escudofiazul}}  %Pie izq-
\fancyfoot[C]{\vspace{-1cm} {\color{blue}\org}}
\renewcommand{\footrulewidth}{0.4pt}
