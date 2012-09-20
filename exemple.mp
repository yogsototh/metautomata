% le input pour utiliser les macros
input pfa ;

% la défintion de chaque figure se fait entre
% beginfig(numéro de la figure) ;
% ...
% endfig;
beginfig(1) ;
  % z est un nom de variable réservé pour être un tableau de coordonnées
  % par exemple si on écrit z1=origin, alors on peut utiliser directement
  % x1 et y1 qui valent tous les deux 0.
  z1 = origin;
  % hspace correspond à l'espace horizontal standart entre deux états. 
  % Comme dans l'exemple il y a du texte, on rajoute un peu plus
  z2 = (hspace+2cm,0);

  % si on veut dessiner un état non initial et non terminal
  % on utilise 
  %     drawState(texteEtat, position)
  % pour un état terminal et pas initial
  %     drawFState(texteEtat, texteFinal, position)
  % pour un état initial et pas terminal
  %     drawIState(texteEtat, texteInitial, position)
  % pour un état initial et terminal
  %     drawIFState(texteEtat, texteInitial, texteTerminal, position)

  % ici on trace un état initial et terminal qui s'appelle q_1 (écrit
  % LaTeX celà signifie q avec 1 en indice bas)
  % on écrit 1/2 pour la valeur d'initialisation
  % on écrit \alpha pour la valeur terminale
  drawIFState(btex $q_1$ etex,
              btex $$ \frac{1}{2} $$ etex,
    	      btex $ \alpha $ etex,
              z1);
  
  % presque pareil qu'avant seule les valeur changent
  drawIFState(btex $q_2$ etex,
              btex $$ \frac{1}{2} $$ etex,
	      btex $ \alpha^2   $ etex,
              z2);

  % On peut maintenant tracer des transitions avec
  % drawArc(positionDépart, positionArrivé, angle de sortie, texte)
  drawArc(z1,z1,0,btex $$\eqalign{& a,\alpha    \cr & b,1-2\alpha  }  $$ etex) ;
  drawArc(z2,z2,0,btex $$\eqalign{& a,\alpha^2  \cr & c,1-2\alpha^2}  $$ etex) ;

  % remarque si vous voulez donner l'angle de sortie pour qu'il n'y ait
  % pas de courbre, il suffit d'écrire :
  % angle(positionArrivée - positionDépart)

endfig ;

end.
