GET 
  FILE='C:\Users\Vianello\Documents\Dropbox\Manylabs\Results\effectsizes.graphdata1.sav'.
DATASET NAME esdata.

DATASET ACTIVATE esdata.

***add overall variables***

 * compute Overalld=0. 
 * if Study='allowedforbiddend' Overalld=1.96.
 * if Study='Anchoring1d' Overalld=1.17.
 * if Study='Anchoring2d' Overalld=1.79.
 * if Study='Anchoring3d' Overalld=2.23.
 * if Study='Anchoring4d' Overalld=2.42.
 * if Study='contactd' Overalld=.13.
 * if Study='flagd' Overalld=.03.
 * if Study='gainlossd' Overalld=.60.
 * if Study='gambfald' Overalld=.61.
 * if Study='IATd' Overalld=.53.
 * if Study='moneyd' Overalld=-.02.
 * if Study='quoted' Overalld=.32.
 * if Study='reciprocityd' Overalld=.30.
 * if Study='scalesd' Overalld=.49.
 * if Study='sunkd' Overalld=.27.
 * EXECUTE.

compute LB=0. 
if Study='allowedforbiddend' LB=1.88.
if Study='Anchoring1d' LB=1.09.
if Study='Anchoring2d' LB=1.71.
if Study='Anchoring3d' LB=2.14.
if Study='Anchoring4d' LB=2.33.
if Study='contactd' LB=.07.
if Study='flagd' LB=-.04.
if Study='gainlossd' LB=.53.
if Study='gambfald' LB=.54.
if Study='IATd' LB=.46.
if Study='moneyd' LB=-.08.
if Study='quoted' LB=.25.
if Study='reciprocityd' LB=.23.
if Study='scalesd' LB=.40.
if Study='sunkd' LB=.20.
if Study='IATr' LB=.75.
EXECUTE.

compute UB=0. 
if Study='allowedforbiddend' UB=2.04.
if Study='Anchoring1d' UB=1.25.
if Study='Anchoring2d' UB=1.87.
if Study='Anchoring3d' UB=2.32.
if Study='Anchoring4d' UB=2.51.
if Study='contactd' UB=.19.
if Study='flagd' UB=.10.
if Study='gainlossd' UB=.67.
if Study='gambfald' UB=.68.
if Study='IATd' UB=.60.
if Study='moneyd' UB=.04.
if Study='quoted' UB=.39.
if Study='reciprocityd' UB=.37.
if Study='scalesd' UB=.58.
if Study='sunkd' UB=.34.
if Study='IATr' UB=.83.
EXECUTE.

COMPUTE OriginalES=0.
EXECUTE.

if Study='sunkd' OriginalES=.23.
if Study='Anchoring1d' OriginalES=.93.
if Study='Anchoring2d' OriginalES=.93.
if Study='Anchoring3d' OriginalES=.93.
if Study='Anchoring4d' OriginalES=.93.
if Study='gambfald' OriginalES=.69.
if Study='scalesd' OriginalES=.498.
if Study='gainlossd' OriginalES=1.13.
if Study='flagd' OriginalES=.50.
if Study='moneyd' OriginalES=.80.
if Study='contactd' OriginalES=.86.
if Study='IATd' OriginalES=1.01.
if Study='allowedforbiddend        ' OriginalES=.65.
if Study='reciprocityd             ' OriginalES=.16.
if Study='IATr                     ' OriginalES=.93.
EXECUTE.

missing values OriginalES (0).

value labels OriginalES 0 'Original ES not available'. 

EXECUTE.

value labels Study 
'allowedforbiddend'	"Allowed/Forbidden (Rugg, 1941)" 
'Anchoring1d'	"Anchoring (Jacowitz & Kahneman, 1995) - NYC" 
'Anchoring2d'	"Anchoring (Jacowitz & Kahneman, 1995) - Chicago"
'Anchoring3d'	"Anchoring (Jacowitz & Kahneman, 1995) - Everest"
'Anchoring4d'	"Anchoring (Jacowitz & Kahneman, 1995) - Babies"
'contactd'	"Imagined contact (Husnu & Crisp, 2010)"
'flagd'	"Flag Priming (Carter et al., 2011)"
'gainlossd'	"Gain vs loss framing (Tversky & Kahneman, 1981)"
'gambfald'	"Retro. gambler’s fallacy (Oppenheimer & Monin, 2009)"
'IATd'	"Sex diff. in implicit math attitudes (Nosek et al., 2002)"
'IATr'	"Corr. between I and E math attitudes (Nosek et al., 2002) "
'moneyd'	"Currency priming (Caruso et al., 2012)"
'quoted'	"Quote Attribution (Lorge & Curtis, 1936)"
'reciprocityd'	"Norm of reciprocity (Hyman and Sheatsley, 1950)"
'scalesd'	"Low-vs.-high category scales (Schwarz et al., 1985)"
'sunkd' "Sunk costs (Oppenheimer et al., 2009)".

compute US_intl=0.
exe.

missing values US_intl (0).

if Sample='abington' 	US_intl=1. 
if Sample='brasilia' 	US_intl=2. 
if Sample='charles' 	US_intl=2. 
if Sample='csun' 	US_intl=1. 
if Sample='help' 	US_intl=2. 
if Sample='ithaca' 	US_intl=1. 
if Sample='jmu' 	US_intl=1. 
if Sample='ku' 	US_intl=2. 
if Sample='laurier' 	US_intl=2. 
if Sample='lse' 	US_intl=2. 
if Sample='mcdaniel' 	US_intl=1. 
if Sample='msvu' 	US_intl=2. 
if Sample='mturk' 	US_intl=1. 
if Sample='osu' 	US_intl=1. 
if Sample='oxy' 	US_intl=1. 
if Sample='pi' 	US_intl=1. 
if Sample='psu' 	US_intl=1. 
if Sample='qccuny' 	US_intl=1. 
if Sample='qccuny2' 	US_intl=1. 
if Sample='sdsu' 	US_intl=1. 
if Sample='swps' 	US_intl=2. 
if Sample='swpson' 	US_intl=2. 
if Sample='tamu' 	US_intl=1. 
if Sample='tamuc' 	US_intl=1. 
if Sample='tamuon' 	US_intl=1. 
if Sample='tilburg' 	US_intl=2. 
if Sample='ufl' 	US_intl=1. 
if Sample='unipd' 	US_intl=2. 
if Sample='uva' 	US_intl=1. 
if Sample='vcu' 	US_intl=1. 
if Sample='wisc' 	US_intl=1. 
if Sample='wku' 	US_intl=1. 
if Sample='wl' 	US_intl=1. 
if Sample='wpi' 	US_intl=1. 
if Sample='luc' 	US_intl=1. 
if Sample='conncoll' 	US_intl=1. 
EXECUTE.

freq US_intl.

**** B&W***

GGRAPH 
  /GRAPHDATASET NAME="graphdataset" VARIABLES=Study EffectSize Overalld LB UB OriginalES US_intl MISSING= VARIABLEWISE REPORTMISSING=NO 
  /GRAPHSPEC SOURCE=INLINE. 
BEGIN GPL 
  SOURCE: s=userSource(id("graphdataset")) 
  DATA: Study=col(source(s), name("Study"), unit.category()) 
  DATA: Overalld=col(source(s), name("Overalld")) 
  DATA: LB=col(source(s), name("LB")) 
  DATA: UB=col(source(s), name("UB")) 
 DATA: EffectSize=col(source(s), name("EffectSize")) 
  DATA: OriginalES=col(source(s), name("OriginalES")) 
  DATA: US_intl=col(source(s), name("US_intl"), unit.category()) 
  COORD: rect(dim(1,2), transpose()) 
  GUIDE: axis(dim(1)) 
  GUIDE: axis(dim(2), label("Standardized Mean Difference (d)")) 
 GUIDE: form.line(position(*,0), color(color.black), size(size.".5px"))
GUIDE: legend(aesthetic(aesthetic.color.interior), label("Sample"))
SCALE:  cat(dim(1), sort.statistic(summary.mean(Overalld)), include("Anchoring4d", "Anchoring3d", "Anchoring2d", "Anchoring1d", "gainlossd", "IATd", "IATr", "scalesd", "allowedforbiddend", "sunkd", "quoted", "gambfald", "contactd", "moneyd", "flagd", "reciprocityd"))
SCALE: linear(dim(2), min(-1), max(3)) 
ELEMENT: point.dodge.symmetric(position(Study*EffectSize), shape.interior(shape.circle), color.interior(US_intl), color.exterior(color.black)) 
ELEMENT: interval(position(region.spread.range(Study*(LB+UB))), shape.interior(shape.ibeam), color.interior(color.black), size(size."60%")) 
ELEMENT: point(position((Study*Overalld)), shape.interior(shape.circle), color.interior(color.white), color.exterior(color.black), size(size."2.5%)) 
ELEMENT: point(position((Study*OriginalES)), shape.interior(shape.cross), color.interior(color.black), color.exterior(color.black), size(size."2.5%)) 
END GPL.

**colored***


GGRAPH 
  /GRAPHDATASET NAME="graphdataset" VARIABLES=Study EffectSize Overalld LB UB OriginalES US_intl MISSING= VARIABLEWISE REPORTMISSING=NO 
  /GRAPHSPEC SOURCE=INLINE. 
BEGIN GPL 
  SOURCE: s=userSource(id("graphdataset")) 
  DATA: Study=col(source(s), name("Study"), unit.category()) 
  DATA: Overalld=col(source(s), name("Overalld")) 
  DATA: LB=col(source(s), name("LB")) 
  DATA: UB=col(source(s), name("UB")) 
 DATA: EffectSize=col(source(s), name("EffectSize")) 
  DATA: OriginalES=col(source(s), name("OriginalES")) 
  DATA: US_intl=col(source(s), name("US_intl"), unit.category()) 
  COORD: rect(dim(1,2), transpose()) 
  GUIDE: axis(dim(1)) 
  GUIDE: axis(dim(2), label("Standardized Mean Difference (d)")) 
 GUIDE: form.line(position(*,0), color(color.black), size(size.".5px"))
GUIDE: legend(aesthetic(aesthetic.color.exterior), label("Sample"))
 SCALE:  cat(dim(1), sort.statistic(summary.mean(Overalld)), include("Anchoring4d", "Anchoring3d", "Anchoring2d", "Anchoring1d", "gainlossd", "IATd", "IATr", "scalesd", "allowedforbiddend", "sunkd", "quoted", "gambfald", "contactd", "moneyd", "flagd", "reciprocityd"))
SCALE: linear(dim(2), min(-1), max(3)) 
ELEMENT: point.dodge.symmetric(position(Study*EffectSize), shape.interior(shape.circle), color.interior(color.grey), color.exterior(US_intl)) 
ELEMENT: interval(position(region.spread.range(Study*(LB+UB))), shape.interior(shape.ibeam), color.interior(color.black), size(size."60%")) 
ELEMENT: point(position((Study*Overalld)), shape.interior(shape.circle), color.interior(color.green), color.exterior(color.black), size(size."2.5%)) 
ELEMENT: point(position((Study*OriginalES)), shape.interior(shape.cross), color.interior(color.blue), color.exterior(color.blue), size(size."2.5%)) 
END GPL.

***ICC graph (transposed***

 
SORT CASES BY Sample. 
AGGREGATE 
  /OUTFILE=* MODE=ADDVARIABLES 
  /PRESORTED 
  /BREAK=Sample 
  /Sample_mean=MEAN(EffectSize) 
  /Sample_sd=SD(EffectSize) 
  /Sample_N=N.


compute SLB=Sample_mean-(1.96*Sample_sd/sqrt(Sample_N)). 
compute SUB=Sample_mean+(1.96*Sample_sd/sqrt(Sample_N)). 
EXECUTE.


GGRAPH 
  /GRAPHDATASET NAME="graphdataset" VARIABLES=Sample EffectSize Sample_mean SLB SUB MISSING= VARIABLEWISE REPORTMISSING=NO 
  /GRAPHSPEC SOURCE=INLINE. 
BEGIN GPL 
  SOURCE: s=userSource(id("graphdataset")) 
  DATA: Sample=col(source(s), name("Sample"), unit.category()) 
  DATA: SLB=col(source(s), name("SLB")) 
  DATA: SUB=col(source(s), name("SUB")) 
 DATA: EffectSize=col(source(s), name("EffectSize")) 
  DATA: Sample_mean=col(source(s), name("Sample_mean")) 
  COORD: rect(dim(1,2)) 
  GUIDE: axis(dim(1), label("Location of Data Collection")) 
  GUIDE: axis(dim(2), label("Standardized Mean Difference (d)")) 
 GUIDE: form.line(position(0), color(color.black), size(size."15px"))
 SCALE:  cat(dim(1))
SCALE: linear(dim(2), min(-1), max(3)) 
ELEMENT: point.dodge.symmetric(position(Sample*EffectSize), shape.interior(shape.circle), color.interior(color.grey), color.exterior(color.grey)) 
ELEMENT: interval(position(region.spread.range(Sample*(SLB+SUB))), shape.interior(shape.ibeam), color.interior(color.black), size(size."60%")) 
ELEMENT: point(position(summary.mean(Sample*Sample_mean)), shape.interior(shape.circle), color.interior(color.black), color.exterior(color.black)) 
END GPL.







