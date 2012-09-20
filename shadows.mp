% permet d'afficher des ombres jolies
% comme dans Omnigraffle
%
% Voilà un exemple d'utilisation
% --------
% input shadows
%
% beginfig(1);
%   path p; p :=fullcircle scaled 3u;
%
%   drawShadow(p);
%   fill p withcolor white;
%   draw p withpen pencircle scaled .02u;
%   draw p blownup -.3u withpen pencircle scaled .02u;
%   label(btex $$\frac{1}{2}$$ etex, origin);
% endfig;
% -------
%
%  Qualité maximale tolérée 84.
%
%

input default ;

% p        est un path pour lequel on va tracer la figure
% decalage est un vecteur de décalge pour l'ombre
% smooth   est l'effacement de l'ombre (0 renvoie une ombre portée parfaite)
%           la valeur par défaut est .06u
% quality  est la qualité du rendu (plus il est élevé meilleur est le rendu)
%           ATTENTION : une valeur trop grande risque de donner des
%           PDF très long à lire...
%           la valeur par défaut est 100
% grey     est le degrès de transparence global
%           la valeur par défaut est .3
% couleur  est la couleur de l'ombre, par défaut c'est black
def drawShadowWithParameters(expr p, decalage, smooth, quality, grey, couleur) =
  begingroup ;
    qual := round(sqrt (quality/2));
    factor := grey/((qual+1)*(qual+1));
    if path p :
      if cycle p :
        path shadow ;
        pair dcl;

        shadow := p shifted decalage ;
        % fill shadow withcolor transparent(1,factor,black) ;
        dcl:=(0,0);
        for j=-qual upto qual :
  	  for k=-qual upto qual :
  	    dcl := (j/qual, k/qual) scaled smooth;
  	    fill shadow shifted dcl withcolor transparent(1,factor,couleur) ;
	  endfor ;
        endfor ;
      else :
        path shadow ;
        pair dcl;

        shadow := p shifted decalage ;
        dcl:=(0,0);
        for j=-qual upto qual :
  	  for k=-qual upto qual :
  	    dcl := (j/qual, k/qual) scaled smooth;
  	    draw shadow shifted dcl withcolor transparent(1,factor,couleur) ;
	  endfor ;
        endfor ;
      fi ;
    else :
      picture shadow ;
      pair dcl ;
      shadow := p shifted decalage ;
      dcl := origin ;
      for j = -qual upto qual :
	for k = -qual upto qual :
	  dcl := (j/qual, k/qual) scaled smooth ;
	  draw shadow shifted dcl withcolor transparent (1, factor, couleur) ;
	endfor ;
      endfor ;
    fi ;

  endgroup ;
enddef ;

pair shadowsDefaultDecalage ;
shadowsDefaultDecalage := (.05u, -.18u) ;

numeric shadowsDefaultSmooth ;
shadowsDefaultSmooth := .18u ;

numeric shadowsDefaultQuality ;
shadowsDefaultQuality := 17 ;

numeric shadowsDefaultGrey ;
shadowsDefaultGrey := .3 ;

color shadowsDefaultColor ;
shadowsDefaultColor := black ;


% affiche l'ombre d'un chemin avec les paramètres par défaults
def drawShadow(expr p) =
    drawShadowWithParameters(p, shadowsDefaultDecalage, shadowsDefaultSmooth,
                             shadowsDefaultQuality, shadowsDefaultGrey,
                             shadowsDefaultColor) ;
enddef ;

