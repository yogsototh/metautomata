% Le input shadows donne l'acces
% à la macro drawShadow(p);
input pfa
%vspace := 2vspace;
%u:=6mm;
%hspace := 2hspace;
beginfig(1) ;

  z1 = origin;
  z2 = z1 shifted (2hspace,0);

  z3-z4 = z1-z2;
  z7-z8 = z5-z6 = 2(z3-z4) ; 
  z3 = z1 shifted (0,-3vspace);
 
  x5-x1=x4-x6;
  y5-y3=y3 - y1;

  y7-y5=-3vspace;
  x7=x5;
  taille := 2hauteur(btex $A$ etex) ;
  drawCadreLabel(z1 shifted (-hspace, 0 ),z2 shifted (hspace,taille),btex $A$ etex);
  drawCadreLabel(z3 shifted (-hspace, 0 ),z4 shifted (hspace,taille),btex $B$ etex);
  drawCadreLabel(z7 shifted (-hspace, 0 ) ,z6 shifted (2.3hspace,taille),btex $A \times B$ etex);

  drawIFState(btex $(q_1)$ etex,
    btex $\iota(q_1)$ etex, 
    btex $\tau(q_1)$ etex, 
    z1) ;
  drawIFState(btex $(q_2)$ etex,
    btex $\iota(q_2)$ etex, 
    btex $\tau(q_2)$ etex, 
    z2) ;

  drawIFState(btex $(r_1)$ etex,
    btex $\iota(r_1)$ etex, 
    btex $\tau(r_1)$ etex, 
    z3) ;
  drawIFState(btex $(r_2)$ etex,
    btex $\iota(r_2)$ etex, 
    btex $\tau(r_2)$ etex, 
    z4) ;


  drawIFState(btex $(q_1,r_1)$ etex,
    btex $\iota(q_1)\iota(r_1)$ etex, 
    btex $\tau(q_1)\tau(r_1)$ etex, 
    z5) ;
  drawIFState(btex $(q_1,r_2)$ etex,
    btex $\iota(q_1)\iota(r_2)$ etex, 
    btex $\tau(q_1)\tau(r_2)$ etex, 
    z6) ;
  drawIFState(btex $(q_2,r_1)$ etex,
    btex $\iota(q_2)\iota(r_1)$ etex, 
    btex $\tau(q_2)\tau(r_1)$ etex, 
    z7) ;
  drawIFState(btex $(q_2,r_2)$ etex,
    btex $\iota(q_2)\iota(r_2)$ etex, 
    btex $\tau(q_2)\tau(r_2)$ etex, 
    z8) ;

  drawArc(z1,z2,30,btex $\varphi(q_1,a,q_2)$ etex);
  drawArc(z2,z2,30,btex $\varphi(q_2,a,q_2)$ etex);

  drawArc(z3,z4,30,btex $\varphi(r_1,a,r_2)$ etex);
  drawArc(z4,z4,30,btex $\varphi(r_2,a,r_2)$ etex);

  drawArc(z5,z8,-10,btex $\varphi(q_1,a,q_2)\varphi(r_1,a,r_2)$ etex);
  drawArc(z7,z8, 20,btex $\varphi(q_2,a,q_2)\varphi(r_1,a,r_2)$ etex);
  drawArc(z6,z8,-100,btex $\varphi(q_1,a,q_2)\varphi(r_2,a,r_2)$ etex);
  drawArc(z8,z8, 30,btex $\varphi(q_2,a,q_2)\varphi(r_2,a,r_2)$ etex);

endfig ;

end.
