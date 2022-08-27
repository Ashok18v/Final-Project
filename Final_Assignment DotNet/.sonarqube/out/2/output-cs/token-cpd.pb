½
YC:\visual\Final_Assignment DotNet\Final_Assignment DotNetWebApi\AutoMapper\AutoMapping.cs
	namespace 	)
Final_Assignment_DotNetWebApi
 '
.' (

AutoMapper( 2
{ 
public 

class 
AutoMapping 
: 
Profile %
{ 
public		 
AutoMapping		 
(		 
)		 
{

 	
	CreateMap 
< 
ShoppingMallDetails )
,) *
ShoppingMallModel+ <
>< =
(= >
)> ?
.? @

ReverseMap@ J
(J K
)K L
;L M
} 	
} 
} ÑB
eC:\visual\Final_Assignment DotNet\Final_Assignment DotNetWebApi\Controllers\ShoppingMallController.cs
	namespace

 	)
Final_Assignment_DotNetWebApi


 '
.

' (
Controllers

( 3
{ 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class "
ShoppingMallController '
:( )
ControllerBase* 8
{ 
private 
readonly !
DbContextShoppingMall . 
_contextShoppingMall/ C
;C D
private 
readonly 
IMapper  
_mapper! (
;( )
public "
ShoppingMallController %
(% &!
DbContextShoppingMall& ;
contextShoppingMall< O
,O P
IMapperQ X
mapperY _
)_ `
{ 	 
_contextShoppingMall  
=! "
contextShoppingMall# 6
;6 7
_mapper 
= 
mapper 
; 
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (

GetDetails) 3
(3 4
)4 5
{ 	
if 
(  
_contextShoppingMall $
.$ %
ShoppingMallDetails% 8
==9 ;
null< @
)@ A
{ 
return 
	NoContent  
(  !
)! "
;" #
} 
var   
details   
=   
await    
_contextShoppingMall    4
.  4 5
ShoppingMallDetails  5 H
.  H I
ToListAsync  I T
(  T U
)  U V
;  V W
return!! 
Ok!! 
(!! 
details!! 
)!! 
;!! 
}"" 	
[## 	
HttpPost##	 
]## 
public%% 
async%% 
Task%% 
<%% 
IActionResult%% '
>%%' (#
PostShoppingMallDetails%%) @
(%%@ A
ShoppingMallModel%%A R
shoppingMallModel%%S d
)%%d e
{&& 	
if'' 
('' 
shoppingMallModel'' !
==''" $
null''% )
)'') *
{(( 
return)) 

BadRequest)) !
())! "
)))" #
;))# $
}** 
var++ 
details++ 
=++ 
_mapper++ !
.++! "
Map++" %
<++% &
ShoppingMallDetails++& 9
>++9 :
(++: ;
shoppingMallModel++; L
)++L M
;++M N
if,, 
(,,  
_contextShoppingMall,, $
.,,$ %
ShoppingMallDetails,,% 8
==,,9 ;
null,,< @
),,@ A
{-- 
return.. 
	NoContent..  
(..  !
)..! "
;.." #
}//  
_contextShoppingMall00  
.00  !
ShoppingMallDetails00! 4
.004 5
Add005 8
(008 9
details009 @
)00@ A
;00A B
await22  
_contextShoppingMall22 &
.22& '
SaveChangesAsync22' 7
(227 8
)228 9
;229 :
return33 
Ok33 
(33  
_contextShoppingMall33 *
.33* +
ShoppingMallDetails33+ >
)33> ?
;33? @
}44 	
[55 	
HttpPut55	 
(55 
$str55 
)55 
]55 
public77 
async77 
Task77 
<77 
IActionResult77 '
>77' (
PutDetailsById77) 7
(777 8
int778 ;
id77< >
,77> ?
ShoppingMallModel77@ Q
shoppingMallModel77R c
)77c d
{88 	
if99 
(99 
shoppingMallModel99 !
==99" $
null99% )
)99) *
{:: 
return;; 

BadRequest;; !
(;;! "
);;" #
;;;# $
}<< 
if== 
(==  
_contextShoppingMall== $
.==$ %
ShoppingMallDetails==% 8
====9 ;
null==< @
)==@ A
{>> 
return?? 
	NoContent??  
(??  !
)??! "
;??" #
}@@ 
varAA 
detailsInDatabaseAA !
=AA" #
awaitAA$ ) 
_contextShoppingMallAA* >
.AA> ?
ShoppingMallDetailsAA? R
.AAR S
	FindAsyncAAS \
(AA\ ]
idAA] _
)AA_ `
;AA` a
ifBB 
(BB 
detailsInDatabaseBB !
==BB" $
nullBB% )
)BB) *
{CC 
returnDD 
NotFoundDD 
(DD  
)DD  !
;DD! "
}EE 
_mapperFF 
.FF 
MapFF 
(FF 
shoppingMallModelFF )
,FF) *
detailsInDatabaseFF+ <
)FF< =
;FF= >
detailsInDatabaseGG 
.GG 
IdGG  
=GG! "
idGG# %
;GG% & 
_contextShoppingMallHH  
.HH  !
ShoppingMallDetailsHH! 4
.HH4 5
UpdateHH5 ;
(HH; <
detailsInDatabaseHH< M
)HHM N
;HHN O
awaitII  
_contextShoppingMallII &
.II& '
SaveChangesAsyncII' 7
(II7 8
)II8 9
;II9 :
returnJJ 
OkJJ 
(JJ  
_contextShoppingMallJJ *
.JJ* +
ShoppingMallDetailsJJ+ >
)JJ> ?
;JJ? @
}LL 	
[MM 	

HttpDeleteMM	 
(MM 
$strMM 
)MM 
]MM 
publicNN 
asyncNN 
TaskNN 
<NN 
IActionResultNN '
>NN' (

DeleteByIdNN) 3
(NN3 4
intNN4 7
idNN8 :
)NN: ;
{OO 	
ifPP 
(PP  
_contextShoppingMallPP $
.PP$ %
ShoppingMallDetailsPP% 8
==PP9 ;
nullPP< @
)PP@ A
{QQ 
returnRR 
	NoContentRR  
(RR  !
)RR! "
;RR" #
}SS 
varTT 
detailsTT 
=TT 
awaitTT  
_contextShoppingMallTT  4
.TT4 5
ShoppingMallDetailsTT5 H
.TTH I
	FindAsyncTTI R
(TTR S
idTTS U
)TTU V
;TTV W
ifUU 
(UU 
detailsUU 
==UU 
nullUU 
)UU  
{VV 
returnWW 
NotFoundWW 
(WW  
)WW  !
;WW! "
}XX  
_contextShoppingMallYY  
.YY  !
ShoppingMallDetailsYY! 4
.YY4 5
RemoveYY5 ;
(YY; <
detailsYY< C
)YYC D
;YYD E 
_contextShoppingMallZZ  
.ZZ  !
SaveChangesZZ! ,
(ZZ, -
)ZZ- .
;ZZ. /
return[[ 
Ok[[ 
([[  
_contextShoppingMall[[ *
.[[* +
ShoppingMallDetails[[+ >
)[[> ?
;[[? @
}\\ 	
[]] 	
HttpGet]]	 
(]] 
$str]] 
)]] 
]]] 
public^^ 
async^^ 
Task^^ 
<^^ 
IActionResult^^ '
>^^' (
GetById^^) 0
(^^0 1
int^^1 4
id^^5 7
)^^7 8
{__ 	
if`` 
(``  
_contextShoppingMall`` $
.``$ %
ShoppingMallDetails``% 8
==``9 ;
null``< @
)``@ A
{aa 
returnbb 
	NoContentbb  
(bb  !
)bb! "
;bb" #
}cc 
vardd 
detailsdd 
=dd 
awaitdd  
_contextShoppingMalldd  4
.dd4 5
ShoppingMallDetailsdd5 H
.ddH I
	FindAsyncddI R
(ddR S
idddS U
)ddU V
;ddV W
ifee 
(ee 
detailsee 
==ee 
nullee 
)ee  
{ff 
returngg 
NotFoundgg 
(gg  
)gg  !
;gg! "
}hh 
returnii 
Okii 
(ii 
detailsii 
)ii 
;ii 
}jj 	
}mm 
}nn ÿ	
ZC:\visual\Final_Assignment DotNet\Final_Assignment DotNetWebApi\Model\ShoppingMallModel.cs
	namespace 	)
Final_Assignment_DotNetWebApi
 '
.' (
Model( -
{ 
public 

class 
ShoppingMallModel "
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
ShoppingMallName &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
null7 ;
!; <
;< =
public 
string 
City 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
public 
string 
State 
{ 
get !
;! "
set# &
;& '
}( )
=* +
null, 0
!0 1
;1 2
public		 
int		 
Built_in_Year		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
}

 
} Æ
JC:\visual\Final_Assignment DotNet\Final_Assignment DotNetWebApi\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 
AddDbContext 
< !
DbContextShoppingMall 3
>3 4
(4 5
options5 <
=>= ?
options 
. 
UseSqlServer 
( 
builder 
. 
Configuration *
.* +
GetConnectionString+ >
(> ?
$str? S
)S T
??U W
throw 
new 	%
InvalidOperationException
 #
(# $
$str$ W
)W X
)X Y
)Y Z
;Z [
builder 
. 
Services 
. 
AddControllers 
(  
)  !
;! "
builder 
. 
Services 
. 
AddAutoMapper 
( 
typeof %
(% &
Program& -
)- .
). /
;/ 0
builder 
. 
Services 
. #
AddEndpointsApiExplorer (
(( )
)) *
;* +
builder 
. 
Services 
. 
AddSwaggerGen 
( 
)  
;  !
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if 
( 
app 
. 
Environment 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
app 
. 

UseSwagger 
( 
) 
; 
app 
. 
UseSwaggerUI 
( 
) 
; 
} 
app 
. 
UseHttpsRedirection 
( 
) 
; 
app 
. 
UseAuthorization 
( 
) 
; 
app 
. 
MapControllers 
( 
) 
; 
app!! 
.!! 
Run!! 
(!! 
)!! 	
;!!	 
