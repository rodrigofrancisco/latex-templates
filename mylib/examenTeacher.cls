\LoadClass[a4paper]{article}
\RequirePackage[utf8]{inputenc}
\RequirePackage[spanish]{babel}
\RequirePackage{anysize} 
\marginsize{2cm}{2cm}{1.5cm}{2cm}% Izq, der, arriba, abajo

\RequirePackage{amsmath}
\RequirePackage{graphicx}

\RequirePackage{libertine} % linux libertine font
\RequirePackage[T1]{fontenc}

\RequirePackage{fancyhdr}

% This package are for multicol and list layout
\usepackage{multicol}
\usepackage{enumitem}

% Getting close to TeX, simulating for and if control secuences.
\usepackage{forloop}
\usepackage{ifthen} 

% I don't remember what is packages are for, but I promise to figure it out :c
\usepackage{textcomp}
\usepackage{xparse}

% provide text formating such as centiring
\usepackage[document]{ragged2e}

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
\newcommand{\subject}[1]{\renewcommand{\subject}{#1}}
\newcommand{\examDay}[1]{\renewcommand{\examDay}{#1}}
\newcommand{\myexam}[1]{\renewcommand{\myexam}{#1}}

\DeclareFixedFont{\titlefont}{T1}{ppl}{}{}{0.5in}
%%%%%%% Seccion de header y footer %%%%%%%%%%%%%%%%%%%%

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\footnotesize \org} %encabezado izquierda
\fancyhead[R]{\footnotesize \subject}   % dereecha
\fancyfoot[L]{\footnotesize \context}
\fancyfoot[R]{\footnotesize \thepage}  % Pie derecha
\renewcommand{\footrulewidth}{0.4pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%% PORTADA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\coverPage}{
    \begin{center}
        {\Large\textbf{Clave - \myexam}}  \\[0.5cm]
    \end{center}
}
%%%%%%%%%%%%%%%%%%%% TERMINA PORTADA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%MACROS DEFINITION {
  %/**
  % This sections presentes the definition of
  % environments and commands created for the exam
  %*/
  
  %ENVIROMENNTS DEF {
  
    % I don't really know what does this environment do
    % but I promise to check it,just don't delete it.
    \newenvironment{hangingpar}[1]{\begin{list}
        {}
          {
            \setlength{\itemindent}{-#1}%%'
            \setlength{\leftmargin}{#1}%%'
            \setlength{\itemsep}{0pt}%%'
            \setlength{\parsep}{\parskip}%%'
            \setlength{\topsep}{\parskip}%%'
          }
        \setlength{\parindent}{-#1}%%
        \item[]
    }{\end{list}}     
  %}
  %COMMANDS DEF {

  
    \newcommand{\startin}[1]{
      \newcounter{num}
      \setcounter{num}{#1}
    }
    
    \startin{1}
    
    % THE QUESTIONS macro definition is this
    %/** the sintaxis is the following
    %   \pregunta{[text]}{[image path | 'null' if you don't have any images]}
    %   i.e. args are:
    %     1 is equivalent to the question
    %     2 is equivalent to the image
    %     Some useful examples
    %     * \pregunta{what's my name?}{null}
    %     * \pregunta{In the picture, who am I?}{img/pic1}    

    \newcommand{\idpreg}[2]{
      \begin{flushright}
        \textbf{Id:} #1 \textbf{Resp.:} #2
      \end{flushright}
    }

    \newcommand{\pregunta}[2]{
      \justify\textbf{\thenum) #1}
      \ifthenelse{ \equal{#2}{null} }{ %if(args[2] == null)
        % Here is empty
      } %else
      {
        \begin{center}
          \includegraphics[width=5cm]{#2}
        \end{center}
      }
      \stepcounter{num}
    }
    
    \newcounter{op}
    \setcounter{op}{1}
    \makeatletter

    \newcommand{\opciones}[2][texto]{ 
      \par\vspace*{2mm}
      \ifthenelse{ \equal{#1}{imagen}  }{ %if(args[2]==imagen)  
        \textbf{\Alph{op}.} \\%linebreak
        \includegraphics[width=2cm]{#2}\\ 
        \stepcounter{op} 
        \checknextarg[imagen]
      }{%else        
          \begin{hangingpar}
            {1em}\textbf{\Alph{op}.}\,#2
          \end{hangingpar}
          \par\vspace*{2mm}
          \stepcounter{op} 
          \checknextarg
        }
    }

    \newcommand{\checknextarg}[1][texto]{
      \@ifnextchar\bgroup{
        \gobblenextarg[#1]
      }{ %else
        \setcounter{op}{1} 
      }
    }
    
    \newcommand{\gobblenextarg}[2][texto]{
      \ifthenelse{ \equal{#1}{imagen} }{
        \textbf{\Alph{op}.}\\
        \includegraphics[width=2cm]{#2}\\
        \stepcounter{op}
        \@ifnextchar\bgroup{
          \gobblenextarg[imagen]
        }{
          \setcounter{op}{1} 
          }
      }{
        \begin{hangingpar}
          {1em}\textbf{\Alph{op}.}\,#2
        \end{hangingpar}
        \par\vspace*{2mm}
        \stepcounter{op} 
        \@ifnextchar\bgroup{
          \gobblenextarg
        }{
          \setcounter{op}{1} 
        }
      }
    }
%}