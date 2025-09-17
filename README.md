# A beamer theme based https://2025.demuxed.com

## Installation
 - `$ cd your/presentation/directory`
 - `$ git clone https://github.com/tmathmeyer/beamerthemedemuxed demuxed`
 - `$ xelatex -shell-escape -interaction=nostopmode slides.tex -o slides.pdf`

## Screenshots
![My HLS talk](https://raw.githubusercontent.com/tmathmeyer/beamerthemedemuxed/refs/heads/master/screenshots/hls-in-chrome.png "Example 2025 talk")


## Usage (slides.tex)
```LaTeX
\documentclass{beamer}
\usepackage[]{demuxed/beamerthemedemuxed}

\title{Your Talk Title}
\subtitle{Your Talk Subtitle - nobody reads this part anyway, so whatever}
\date[2025/10/18]{Demuxed '25}
\author[Your Name]{Your Name}

\begin{document}

% Use something pixelated to match the theme!
% You can also comment this line out when developing as images
% slow down LaTeX compilation quite a bit.
\framebackground{img/title_background.png}
\begin{frame}
    % Set your "window" title box width
    \settitleboxwidth{3.5cm}
    \titlepage
\end{frame}

% Again, I recommend commenting this out when writing
\framebackground{img/slide_background.png}
\begin{frame}
    % Beamer blocks are rendered as fake "window" views - the format for
    % The title is Xpos|Ypos|Width|xcolor|WindowTitle
    \begin{block}{1cm|1cm|7cm|black|This is a window title}
        \begin{itemize}[<+->]
            \item<1->{ First Bullet }
            \item<2->{ Second Bullet }
            \item<3->{ Third Bullet }
        \end{itemize}
    \end{block}

    % Like all beamer objects, you can specify when a block becomes visible -
    % This one will be visible on the 4th iteration of this slide.
    \begin{block}<4->{3cm|4cm|8cm|red|Windows Windows Everywhere}
        \begin{itemize}[<+->]
            \item<4-> Another Bullet
            \item<5-> Another another bullet
            \item<5-> Ok stop adding bullets
        \end{itemize}
    \end{block}
\end{frame}

% Reset the background for future slides to a white canvas,
% or set a new background using \framebackground
\setbeamertemplate{background canvas}{}
```

## Notes
 - you might have to run the xelatex command twice
 - Contributions Welcome!
