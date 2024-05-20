\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}
\ProvidesClass{cv}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{multicol}
\RequirePackage{graphicx} % Required for inserting images
\RequirePackage{titlesec}
\RequirePackage{hyperref}
\RequirePackage{xcolor}
\RequirePackage{fontawesome} % fontawesome
\RequirePackage{ifthen}
\RequirePackage{calc}
\RequirePackage{enumitem}
\RequirePackage{tabularx}

\pagestyle{empty}
\newlength\margin
\setlength\margin{1cm}
\RequirePackage[margin=\margin,noheadfoot,a4paper]{geometry}
\setlist{noitemsep}
\renewcommand\labelitemii{$\vcenter{\hbox{\tiny$\bullet$}}$}
\hypersetup{urlbordercolor=blue, pdfborder={0 0 1}, pdfborderstyle={/S/U/W 1}}
\urlstyle{same}

\pdfgentounicode=1

\RequirePackage{datenumber, fp}
\newcounter{birthday}
\newcounter{today}
\setmydatenumber{birthday}{2001}{06}{11}
\setmydatenumber{today}{\the\year}{\the\month}{\the\day}
\FPsub\result{\thetoday}{\thebirthday}
\FPdiv\myage{\result}{365.2425}
\FPtrunc\myage{\myage}{0}

\newcommand\subtitle[1]{\normalfont\textit{#1}}
\titleformat{\section}
{\Large\scshape\raggedright}
{}{0em} % prefix for sections
{} % code before
[\titlerule]
\titleformat{\subsection}
{\large\scshape\raggedright\bf}
{}{0em} % prefix for sections
{} % code before
[]
\titlespacing{\subsection}{0pt}{\baselineskip}{2pt}

\newenvironment{subsections}
{
    \begin{itemize}[leftmargin=0.15in, label={}]
        }{
    \end{itemize}
}

\newcommand{\Subsection}[1]{
    \item\subsection[#1]{#1}
}

\newcommand{\DatedSection}[2]{%
    \item\section[#1]{#1 \hfill #2}%
}
\newcommand{\DatedSubsection}[2]{
    \item\subsection[#1]{#1 \hfill #2}
}

% \newcommand{\Name}[4][]{%
%   \centering{\Huge\textbf{#2}}\hfill #1\\
%   \vspace{0.25em}
%   \begin{minipage}[t]{0.75\textwidth}
%   {\Large#3} \hfill {\Large#4}
%   \end{minipage}
% }

\newcommand{\Name}[2][]{%
    \centering{\Huge\textbf{#2}}\hfill #1\\
}

\newcommand{\DatedEntry}[2]{
    \item
    \begin{tabularx}{\linewidth}{X r}
        #1 & #2
    \end{tabularx}
}