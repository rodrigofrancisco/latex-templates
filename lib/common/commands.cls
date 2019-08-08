%%%%%%%%%%%%%%%%%%% AUXILIAR COMMANDS %%%%%%%%%%%%%%%%%%%%%
\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}
%%
% #1: nombre de la imagen
% #2: pie de la imagen
% #3: tamaño de la imagen
\newcommand{\insertImage}[3]{
    \begin{figure}[H]
        \centering
        \includegraphics[width=#3cm]{#1}
        \caption{#2}
    \end{figure}
}
