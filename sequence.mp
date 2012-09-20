input pfa ;

% Pour LaTeX
verbatimtex
\documentclass{article}
\usepackage{color}
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{amssymb}
\usepackage{dsfont}
\usepackage[nice]{nicefrac}
\begin{document}
etex

beginfig(1)
    z0 = origin ;
    z1 = (hspace, vspace);
    z2 = (hspace, -vspace);
    % drawCadre((xpart(z0), ypart(z2)), z1);
    drawIState(btex $q_\varepsilon$ etex, btex $\phantom{1}$ etex, z0);
    drawFState(btex $q_a$ etex, "", z1);
    drawState(btex $q_b$ etex, z2);
    drawArc(z0,z1,angle(z1-z0),btex $a\phantom{,\nicefrac{1}{2}}$ etex);
    drawArc(z0,z2,angle(z2-z0),btex $b\phantom{,\nicefrac{1}{2}}$ etex);
    drawArc(z1,z1,0,btex $a\phantom{,\nicefrac{1}{2}}$ etex);
    drawArc(z2,z1,90,btex $a\phantom{,-\nicefrac{1}{3}}$ etex);
    drawArc(z2,z2,0,btex $a\phantom{,\nicefrac{4}{3}}$ etex);
endfig;
beginfig(2)
    z0 = origin ;
    z1 = (hspace, vspace);
    z2 = (hspace, -vspace);
    % drawCadre((xpart(z0), ypart(z2)), z1);
    drawIState(btex $q_\varepsilon$ etex, btex ${\color{red} 1 }$ etex, z0);
    drawFState(btex $q_a$ etex, btex ${\color{red} \nicefrac{1}{2}}$ etex, z1);
    drawState(btex $q_b$ etex, z2);
    drawArc(z0,z1,angle(z1-z0),btex $a{\color{red} ,\nicefrac{1}{2} }$ etex);
    drawArc(z0,z2,angle(z2-z0),btex $b{\color{red} ,\nicefrac{1}{2} }$ etex);
    drawArc(z1,z1,0,btex $a{\color{red} ,\nicefrac{1}{2} }$ etex);
    drawArc(z2,z1,90,btex $a{\color{red} ,-\nicefrac{1}{3} }$ etex);
    drawArc(z2,z2,0,btex $a{\color{red} ,\nicefrac{4}{3} }$ etex);
endfig;

beginfig(3)
    z0 = origin ;
    z1 = (hspace, vspace);
    z2 = (hspace, -vspace);
    % drawCadre((xpart(z0), ypart(z2)), z1);
    drawIState(btex $q_\varepsilon$ etex, btex ${\color{red} 1 }$ etex, z0);
    drawFState(btex $q_a$ etex, btex ${\color{red} \nicefrac{1}{2}}$ etex, z1);
    drawState(btex $q_b$ etex, z2);
    drawArc(z0,z2,angle(z2-z0),btex $b,\nicefrac{1}{2}$ etex);
    drawArc(z1,z1,0,btex $a,\nicefrac{1}{2}$ etex);
    drawArc(z2,z1,90,btex $a,-\nicefrac{1}{3}$ etex);
    drawArc(z2,z2,0,btex $a,\nicefrac{4}{3}$ etex);
    drawoptions(withcolor red);
    drawArc(z0,z1,angle(z1-z0),btex $a{\color{red} ,\nicefrac{1}{2} }$ etex);
endfig;

beginfig(4)
    z0 = origin ;
    z1 = (hspace, vspace);
    z2 = (hspace, -vspace);
    % drawCadre((xpart(z0), ypart(z2)), z1);
    drawIState(btex $q_\varepsilon$ etex, btex ${\color{red} 1 }$ etex, z0);
    drawFState(btex $q_a$ etex, btex ${\color{red} \nicefrac{1}{2}}$ etex, z1);
    drawState(btex $q_b$ etex, z2);
    drawArc(z0,z1,angle(z1-z0),btex $a,\nicefrac{1}{2}$ etex);
    drawArc(z1,z1,0,btex $a,\nicefrac{1}{2}$ etex);
    drawoptions(withcolor red);
    drawArc(z0,z2,angle(z2-z0),btex $b{\color{red} ,\nicefrac{1}{2} }$ etex);
    drawArc(z2,z1,90,btex $a{\color{red} ,-\nicefrac{1}{3} }$ etex);
    drawArc(z2,z2,0,btex $a{\color{red} ,\nicefrac{4}{3} }$ etex);
endfig;

beginfig(5)
    z0 = origin ;
    z1 = (hspace, vspace);
    z2 = (hspace, -vspace);
    % drawCadre((xpart(z0), ypart(z2)), z1);
    drawIState(btex $q_\varepsilon$ etex, btex ${\color{red} 1 }$ etex, z0);
    drawFState(btex $q_a$ etex, btex ${\color{red} \nicefrac{1}{2}}$ etex, z1);
    drawState(btex $q_b$ etex, z2);
    drawArc(z0,z1,angle(z1-z0),btex $a,\nicefrac{1}{2}$ etex);
    drawArc(z2,z2,0,btex $a,\nicefrac{4}{3}$ etex);
    drawoptions(withcolor red);
    drawArc(z1,z1,0,btex $a,\nicefrac{1}{2}$ etex);
    drawArc(z0,z2,angle(z2-z0),btex $b{\color{red} ,\nicefrac{1}{2} }$ etex);
    drawArc(z2,z1,90,btex $a{\color{red} ,-\nicefrac{1}{3} }$ etex);
endfig;
beginfig(6)
    z0 = origin ;
    z1 = (hspace, vspace);
    z2 = (hspace, -vspace);
    % drawCadre((xpart(z0), ypart(z2)), z1);
    drawIState(btex $q_\varepsilon$ etex, btex $1$ etex, z0);
    drawFState(btex $q_a$ etex, btex $\nicefrac{1}{2}$ etex, z1);
    drawState(btex $q_b$ etex, z2);
    drawArc(z0,z1,angle(z1-z0),btex $a,\nicefrac{1}{2}$ etex);
    drawArc(z2,z2,0,btex $a,\nicefrac{4}{3}$ etex);
    drawArc(z1,z1,0,btex $a,\nicefrac{1}{2}$ etex);
    drawArc(z0,z2,angle(z2-z0),btex $b,\nicefrac{1}{2}$ etex);
    drawArc(z2,z1,90,btex $a,-\nicefrac{1}{3}$ etex);
endfig;
end.
