% collected graphics of job "tmp"
if unknown context_tool : input mp-tool.mpii ;
fi ;
if unknown context_spec : input mp-spec.mpii ;
fi ;
if unknown context_grph : input mp-grph.mpii ;
fi ;
defaultfont := "cmr10" ;
defaultscale := 12.0pt/10pt ;
graphictextformat := "context" ;
graphictextdirective "\global \loadfontfileoncetrue " ;
string contextversion ;
contextversion := "2003.1.31" ;
if not known _data_prefix_ : string _data_prefix_ , _data_suffix_ ;
fi ;
_data_prefix_ := "mpd-" ;
_data_suffix_ := ".mpd" ;
boolean collapse_data ;
collapse_data := true ;
_data_suffix_ := ".mpd" ;
cmykcolors := true ;
spotcolors := true ;
color OverlayColor, OverlayLineColor ;
OverlayWidth := 138.0014pt ;
OverlayHeight := 17.84998pt ;
OverlayDepth := 17.84998pt ;
OverlayColor := (0,0,0) ;
OverlayLineWidth := 0.4pt;
OverlayLineColor := (0,0,0) ;
BaseLineSkip := 14.46669pt;
LineHeight := 14.46669pt;
BodyFontSize := 12.0pt;
TopSkip := 12.0pt;
StrutHeight := 10.41603pt;
StrutDepth := 4.05064pt;
CurrentWidth := 138.0014pt;
CurrentHeight := 17.84998pt;
EmWidth := 11.74988pt;
ExHeight := 5.16667pt;
PageNumber := 1;
RealPageNumber := 1;
LastPageNumber := 1;
prologues := 2;
if unknown context_page : input mp-page.mpii ;
fi ;
boolean PageStateAvailable, OnRightPage, InPageBody ;
PageStateAvailable := OnRightPage := true ;
InPageBody := false ;
def LoadPageState = OnRightPage := true;
RealPageNumber := 1;
PageNumber := 1;
NOfPages := 1;
PaperHeight := 845.04684pt;
PaperWidth := 597.50787pt;
PrintPaperHeight := 845.04684pt;
PrintPaperWidth := 597.50787pt;
TopSpace := 71.12546pt;
BottomSpace := 62.60228pt;
BackSpace := 71.13275pt;
CutSpace := 99.58769pt;
MakeupHeight := 711.3191pt;
MakeupWidth := 426.78743pt;
TopHeight := 0.0pt;
TopDistance := 0.0pt;
HeaderHeight := 56.90294pt;
HeaderDistance := 0.0pt;
TextHeight := 597.51323pt;
FooterDistance := 0.0pt;
FooterHeight := 56.90294pt;
BottomDistance := 0.0pt;
BottomHeight := 0.0pt;
LeftEdgeWidth := 0.0pt;
LeftEdgeDistance := 0.0pt;
LeftMarginWidth := 75.58197pt;
LeftMarginDistance := 11.99829pt;
TextWidth := 426.78743pt;
RightMarginDistance := 11.99829pt;
RightMarginWidth := 75.58197pt;
RightEdgeDistance := 0.0pt;
RightEdgeWidth := 0.0pt;
InnerMarginDistance := 11.99829pt;
InnerMarginWidth := 75.58197pt;
OuterMarginDistance := 11.99829pt;
OuterMarginWidth := 75.58197pt;
InnerEdgeDistance := 0.0pt;
InnerEdgeWidth := 0.0pt;
OuterEdgeDistance := 0.0pt;
OuterEdgeWidth := 0.0pt;
PageOffset := 0.0pt;
PageDepth := 0.0pt;
enddef ;
ResetTextAreas ;
SaveTextAreas ;
ResetTextAreas ;
if unknown context_core : input mp-core.mpii ;
fi ;
local_multi_par_area:=false;
;;
let mprunend = end ;

% On choisit l'unit� de mesure principale
% celle l� est pas mal pour utiliser l'ombre comme il faut.

u:=2mm;
