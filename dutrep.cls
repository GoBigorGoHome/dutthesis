\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dutrep}[2017/4/23 Basic formating for DUT undergraduate thesis (dutrep)]
% by zjsdut(at)163(dot)com

\LoadClass[a4paper]{report}
\RequirePackage[fontset=founder,zihao=-4,linespread=1.25,UTF8]{ctex}
\RequirePackage{calc}
\RequirePackage{geometry}

\setlength{\@fptop}{0pt}% see https://tex.stackexchange.com/questions/66252/placing-the-figure-exactly-at-the-top-of-the-page-in-latex for detail

% \usepackage[margin=10pt,font=small,labelfont=bf,labelsep=quad]{caption}
\RequirePackage[font=small,labelfont=bf,labelsep=quad]{caption}%format of caption for tables & figures
% \geometry{a4paper,left=2.5cm,right=2.5cm,top=2.5cm+15.8090625pt+30bp,bottom=2.5cm,xetex}

%\RequirePackage{cite}
\RequirePackage[super,square,compress,comma]{natbib}
\renewcommand{\bibfont}{\zihao{5}} % set fontsize of the bibliography, see natbib document 

\RequirePackage[titles]{tocloft}
\renewcommand{\cftdotsep}{0.1}
\renewcommand{\cftchapfont}{\zihao{-4}}
\renewcommand{\cftchappagefont}{}
\renewcommand{\cftchapdotsep}{\cftdotsep}
\renewcommand{\cftchapleader}{\cftdotfill{\cftchapdotsep}}
\setlength{\cftbeforechapskip}{0pt}


\RequirePackage{titlesec}

\titleformat{\chapter}{\raggedright\heiti\zihao{-3}\linespread{1.5}\thispagestyle{fancy}}{\thechapter}{1em}{}
\titlespacing{\chapter}{0pt}{-17pt}{11bp}

\titleformat{\section}{\raggedright\heiti\zihao{4}\linespread{1.5}}{\thesection}{1em}{}
\titlespacing{\section}{0pt}{0.5\baselineskip}{0pt}

\titleformat{\subsection}{\raggedright\heiti\zihao{-4}\linespread{1.5}}{\thesubsection}{1em}{}
\titlespacing{\section}{0pt}{0.5\baselineskip}{0pt}

\renewcommand{\contentsname}{\hfill 目\qquad 录\hfill}
\renewcommand{\bibname}{\hfill 参~考~文~献\hfill}
\RequirePackage{lipsum}% generate random text

\geometry{a4paper,left=2.5cm,right=2.5cm,top=2.5cm+15.8090625pt+30bp,bottom=2cm+30bp+13.550625pt,footskip=13.550625pt+30bp,headsep=30bp,headheight=15.8090625pt,xetex}% 1cm=28.4pt,

\RequirePackage{fancyhdr}
\fancyhf{} % clear all header and footer fields
\chead{\zihao{5}\@title}
\renewcommand{\headrulewidth}{0.75bp}
% \setlength{\headheight}{ 12.72797pt}
\pagestyle{fancy}

\pagenumbering{Roman}
\cfoot{\zihao{-5}-~\thepage~-}

\RequirePackage{fontspec}
\setmainfont{Times New Roman}

\newCJKfontfamily\xingkai{STXingkai}% See xeCJK.pdf page 6.
\newCJKfontfamily\xihei[AutoFakeBold=3]{STXihei}
\let\heiti\relax
\newCJKfontfamily\heiti[AutoFakeBold=3]{FZHei-B01}

\newcommand{\Rule}[1]{\underline{\makebox[5cm][l]{#1}}}





\renewcommand{\maketitle}{%
\newgeometry{left=2.5cm,right=2.5cm,top=2.5cm+15.8090625pt+30bp,bottom=2.5cm}
  \begin{titlepage}
    \centering
\hfill\\
        {\zihao{-1}\bfseries 大连理工大学本科毕业设计（论文）\\}
    \hfill\\
    \hfill\\
       {\zihao{2}\bfseries\xihei\@title\\}
       {\zihao{3}\bfseries\@titleEN\\}
    \hfill\\
    \hfill\\
    \hfill\\
    \hfill\\
    \hfill\\
    \hfill\\
    \hfill\\
    \hfill\\
    \hfill\\
        {\zihao{-3}
          \begin{tabular}[c]{l @{：} l}
            学\hfill 院\hfill（系）& \Rule{\@school}\\
	     专\hfill 业 & \Rule{\@major}\\
	     学\hfill 生\hfill 姓\hfill 名 & \Rule{\@name}\\
	     学\hfill 号 & \Rule{\@ID}\\
	     指\hfill 导\hfill 教\hfill 师 & \Rule{\@advisor}\\
	     评\hfill 阅\hfill 教\hfill 师 & \Rule{\@reviewer}\\
	     完\hfill 成\hfill 日\hfill 期 & \Rule{\@date}\\
	 \end{tabular}}
        \vfill
            {\xingkai\zihao{-2}大连理工大学\\}
            Dalian University of Technology
  \end{titlepage}
  \restoregeometry
}




\newcommand{\keywords}[1]{{\hfill\\\heiti\bfseries 关键词：}{\fangsong{#1}}\clearpage}
\newcommand{\keywordsEN}[1]{{\hfill\\\bfseries Key Words: }{#1}\clearpage}

%  Environment

\newenvironment{introduction}
{\chapter*{\hfill 引\qquad 言\hfill}\addcontentsline{toc}{chapter}{引\qquad 言}\pagenumbering{arabic}\cfoot{\zihao{-5}--\thepage--}}
{}

\renewenvironment{abstract}
{\chapter*{\hfill 摘\qquad 要\hfill}\addcontentsline{toc}{chapter}{摘\qquad 要}}
{}

\newenvironment{abstractEN}
{{\centering{\zihao{-3}\bfseries\@titleEN}% an empty line must follow!
\\
{\zihao{-3}\hfill\\}
\begingroup
\renewcommand{\cleardoublepage}{}
\renewcommand{\clearpage}{}
\chapter*{\hfill Abstract\hfill}
\endgroup
\addcontentsline{toc}{chapter}{Abstract}
}}
{}

\newenvironment{acknowledgement}
{\chapter*{\hfill 致\qquad 谢\hfill}\addcontentsline{toc}{chapter}{致\qquad 谢}}
{}

% \RequirePackage{hyperref}
% Metadata


\newcommand{\@titleEN}{Title in English}
\newcommand{\titleEN}[1]{\renewcommand{\@titleEN}{#1}}
%
\newcommand{\@name}{Your Name}
\newcommand{\name}[1]{\renewcommand{\@name}{#1}}

\newcommand{\@school}{School/Department}
\newcommand{\school}[1]{\renewcommand{\@school}{#1}}

\newcommand{\@major}{Major}
\newcommand{\major}[1]{\renewcommand{\@major}{#1}}

\newcommand{\@ID}{Student ID}
\newcommand{\ID}[1]{\renewcommand{\@ID}{#1}}

\newcommand{\@advisor}{Advisor}
\newcommand{\advisor}[1]{\renewcommand{\@advisor}{#1}}

\newcommand{\@reviewer}{Reviewer}
\newcommand{\reviewer}[1]{\renewcommand{\@reviewer}{#1}}
\RequirePackage[hidelinks]{hyperref}
\endinput
