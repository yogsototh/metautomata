% Le input shadows donne l'acces
% à la macro drawShadow(p);
input shadows


hspace := 8u ;
vspace := 5u ;

drawoptions(withpen pencircle scaled .05u) ;

% affiche un état à la position donnée
def drawStateParam(expr nom, position, anglab) =
  begingroup ;
    path p;
    pair ps;
    path s;
    p :=fullcircle scaled 3u shifted position;
    drawShadow(p);
% fill p withcolor white ;
    unfill p ;
    draw p ;
    s := position -- position shifted (dir anglab scaled 3u) ;
    ps := p intersectionpoint s;
    if (anglab >= -22.5) and (anglab <= 22.5) :
      label.rt(nom, ps) ;
    elseif (anglab > 22.5) and (anglab <= 67.5) :
      label.urt(nom, ps) ;
    elseif (anglab > 67.5) and (anglab <= 112.5) :
      label.top(nom, ps) ;
    elseif (anglab > 112.5) and (anglab <= 157.5) :
      label.ulft(nom, ps) ;
    elseif (anglab > 157.5) or (anglab <= -157.5) :
      label.lft(nom, ps) ;
    elseif (anglab > -157.5) and (anglab <= -112.5) :
      label.llft(nom, ps) ;
    elseif (anglab > -112.5) and (anglab <= -67.5) :
      label.bot(nom, ps) ;
    elseif (anglab > -67.5) and (anglab <= -22.5) :
      label.lrt(nom, ps) ;
    fi
  endgroup ;
enddef ;

% affiche un état
def drawState(expr nom, position) =
  begingroup ;
    drawStateParam(nom, position, -45) ;
  endgroup ;
enddef ;
% message est la valeur dans l'état
def drawFState(expr nom, message, position) =
  begingroup ;
    path p;
    p :=fullcircle scaled 3u shifted position;

    drawState(nom,position);
%    draw p blownup -.3u withpen pencircle scaled .02u;
    draw p blownup -.3u ;
    picture pic;
    pic := thelabel(message,origin);
    numeric taille;
    taille := abs (urcorner pic);
    if (taille <= 1.2u) :
      label(message, position);
    else :
      label(message scaled (1.2u / taille), position);
    fi ;
  endgroup ;
enddef ;

% message est le message d'initialisation
def drawIState(expr nom, message, position) =
  begingroup ;
    path p;
    p :=fullcircle scaled 3u shifted position;

    drawState(nom,position)

    % affiche de la flèche d'entrée
    path r;
    pair debut;
    debut := position shifted (-2.7u,0);
    r:=debut--center p;
    pair pr;
    pr := p intersectionpoint r;
    r := r cutafter pr ;

    numeric taillepen ;
    taillepen := (( xpart urcorner currentpen )+(ypart urcorner currentpen)) ;

     r := r cutafter (point -taillepen on r) ;
%    r := r cutafter (point -.05u on r) ;
%    drawarrow r withpen pencircle scaled .05u;
    drawarrow r ;
    label.lft(message, debut );

  endgroup ;
enddef ;


% message est le message d'initialisation
def drawIFState(expr nom, ini, term, position) =
  begingroup ;
    path p;
    p :=fullcircle scaled 3u shifted position;

    drawIState(nom,ini,position);

  % affichage du second cercle et de la valeur term
%    draw p blownup -.3u withpen pencircle scaled .02u;
    draw p blownup -.3u ;

    %picture pic;
    %pic := thelabel(term,origin);
    %numeric taille;
    %taille := abs (urcorner pic);
    numeric taille;
    taille := diag(term) ;
    if (taille <= 1.2u) :
      label(term, position);
    else :
      label(term scaled (1.2u / taille), position);
    fi ;
  endgroup ;
enddef ;

def largeur(expr texte) =
    begingroup ;
    picture pic;
    pic := thelabel(texte, origin);
    numeric taille;
    taille := abs ((ulcorner pic) - (urcorner pic));
    taille
    endgroup ;
enddef ;

def hauteur(expr texte) =
    begingroup ;
    picture pic;
    pic := thelabel(texte, origin);
    numeric taille;
    taille := abs ((urcorner pic) - (lrcorner pic));
    taille
    endgroup ;
enddef ;

def diag(expr texte) =
    begingroup ;
    picture pic;
    pic := thelabel(texte, origin);
    numeric taille;
    taille := abs(urcorner pic);
    taille
    endgroup ;
enddef ;

def drawLoop(expr ori, angle, mesg) =
  begingroup ;
    path p; p:=fullcircle scaled 3u;
    path r; r=ori -- ori shifted (2u* (dir angle));
    path s; s=ori -- ori shifted (2u* (dir 90) );
    pair prb, pre, prc;
    prb := p shifted ori intersectionpoint r;
    pre := p shifted ori intersectionpoint s;
    prc := ori shifted ((2u+(u*(90-angle)/90)) * (dir ((angle + 90)/2)));
    r := prb .. prc .. pre;

    numeric taillepen ;
    taillepen := (( xpart urcorner currentpen )+(ypart urcorner currentpen)) ;

    r := r cutbefore (point taillepen on r);
    r := r cutafter (point -taillepen on r);
%    drawarrow r withpen pencircle scaled .04u;
    drawarrow r ;
    prc := point .333 length r of r;
    label.rt(mesg, prc);
  endgroup ;
enddef;

def Cadre (expr longueur,hauteur,arrondi) =
  begingroup
    path res ;
    pair A,B ;
    A:=origin ;
    B:=A shifted (arrondi,arrondi) ;

    res := origin -- origin +
           (longueur,0) {right} .. {up} B +
           (longueur,0) -- B+(longueur,hauteur) ;
    res := res {up}..
           {left} res rotated 180 shifted (longueur,hauteur+(2*arrondi)) {down} ..
           {right}cycle ;
    res
  endgroup
enddef;

def drawCadre (expr llcorn, urcorn ) =
  begingroup
    path res ;
    numeric longueur, hauteur ;
    longueur  := ( xpart urcorn ) - ( xpart llcorn ) + 7u ;
    hauteur   := ( ypart urcorn ) - ( ypart llcorn ) + 7u ;
    res = Cadre(longueur, hauteur, 1u) ;
    res := res shifted llcorn ;
    res := res shifted (-4u, -4.5u) ;
    drawShadow(res) ;
%    fill res withcolor white ;
    unfill res withcolor white ;
    draw res ;
  endgroup
enddef ;

def drawCadreLabel (expr llcorn, urcorn, message ) =
  begingroup
    numeric hauteur;
    hauteur := ypart (thelabel(message,origin) scaled 2) ;
    hauteur := hauteur + 2u ;
    milieu := .5[xpart llcorn, xpart urcorn] ;
    drawCadre(llcorn, urcorn shifted (0, hauteur) ) ;
    label (message scaled 2, (milieu, (ypart urcorn) + 4u) ) ;
  endgroup
enddef ;


def drawArcParam(expr ori, arr, angl, mesg, posl, invert) =
  begingroup ;
    if ori = arr:
      drawLoop(ori,angl,mesg);
    else:
      path p; p:=fullcircle scaled 3u;
      path r; r=ori{dir angl}..arr;
      pair prb, pre;

      % calcul de la taille du pen
      taillepen := (( xpart urcorner currentpen )+(ypart urcorner currentpen)) ;

      prb := p shifted ori intersectionpoint r;
      r := r cutbefore prb;
      r := r cutbefore (point taillepen on r);

      pre := p shifted arr intersectionpoint r;
      r := r cutafter pre;
      r := r cutafter (point -taillepen on r);

      picture etiquette ;
      etiquette:=thelabel(mesg, origin);
      pair hauteur, largeur;
      hauteur := (ulcorner etiquette) - (llcorner etiquette);
      hauteur := hauteur scaled .5;
      hauteur := hauteur + (0,.3u);

      largeur := (urcorner etiquette) - (ulcorner etiquette);
      largeur := largeur scaled .5 ;
      largeur := largeur + (.15u,0);

      drawarrow r ;

      pair centre;
      numeric an;

      centre := point posl*length r of r ;
      an := angle direction posl*length r of r ;

      if invert:
        hauteur := -hauteur ;
        largeur := -largeur ;
      fi ;

      if (an > -35) and (an < 35):
        centre := centre shifted (hauteur rotated an) ;
	label(mesg rotated an, centre) ;
      elseif (an > 145) or (an < -145) :
        centre := (point posl*length r of r) shifted (hauteur rotated (an+180)) ;
	label(mesg rotated (an+180), centre) ;
      elseif (an >= 0 ) :
        hauteur := hauteur - (0,.15u) ;
        centre := (point posl*length r of r) shifted largeur shifted -hauteur ;
	label(mesg, centre);
      else :
        hauteur := hauteur - (0,.15u) ;
        centre := (point posl*length r of r) shifted largeur shifted hauteur ;
        label(mesg,centre);
      fi;
    fi;
  endgroup ;
enddef ;


def drawArc(expr ori, arr, angl, mesg) =
  drawArcParam(ori, arr, angl, mesg, .5, false) ;
enddef;
