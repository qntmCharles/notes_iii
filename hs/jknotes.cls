\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesPackage{jknotes}
    [2015/12/26 JKNotes]

\LoadClass[a4paper,11pt]{scrartcl}

\RequirePackage{fancyhdr} % Fancy headers
\pagestyle{fancy} % Section in header
\RequirePackage{mathtools} % Mathtools
\mathtoolsset{
    showonlyrefs=true % Only number referenced equations
}

\RequirePackage[left=2.3cm,right=2.3cm,top=3.2cm,bottom=3.2cm,footskip=1cm,marginparwidth=1.5cm]{geometry}
\fancyhfoffset[E,O]{0pt}

\RequirePackage{xcolor}
\RequirePackage{framed}
\RequirePackage{varwidth}
\makeatletter
\def\notetaker#1{\gdef\@notetaker{#1}}
\def\@notetaker{\@latex@warning@no@line{No \noexpand\notetaker given.}}
\def\lecturer#1{\gdef\@lecturer{#1}}
\def\@lecturer{\@latex@warning@no@line{No \noexpand\lecturer given.}}
\def\institution#1{\gdef\@institution{#1}}
\def\@institution{\@latex@warning@no@line{No \noexpand\institution given.}}
\def\@maketitle{%
    \begin{center}
        \begin{tabular}{c}
            {\bfseries\Large\@institution}\\[0.6em]
            {\@date}\\[1em]
            \setlength{\fboxsep}{3em}\fcolorbox{white}{black!10}{\begin{varwidth}{\dimexpr\linewidth-2\fboxsep-2\fboxrule}\centering\sffamily\bfseries\Huge\@title\end{varwidth}}\\
            \\[.5em]
            \begin{tabular}{ccc}
                based on a course given by &\quad\quad& written up by \\[0.4em]
                {\Large\@lecturer}&&{\Large\@notetaker}
            \end{tabular}
        \end{tabular}
        \vspace{0.4em}
    \end{center}
}
\makeatother

\newcounter{lecturenum}
\newcommand{\lecture}[1]{{\stepcounter{lecturenum}\reversemarginpar\marginpar{\raggedleft\scriptsize\textbf{Lecture \thelecturenum} #1}\reversemarginpar}}

