•
SC:\visual\Final_Assignment DotNet\WebAppMvc\Areas\Identity\Data\WebAppMvcContext.cs
	namespace 	
	WebAppMvc
 
. 
Data 
; 
public 
class 
WebAppMvcContext 
: 
IdentityDbContext  1
<1 2
IdentityUser2 >
>> ?
{ 
public		 

WebAppMvcContext		 
(		 
DbContextOptions		 ,
<		, -
WebAppMvcContext		- =
>		= >
options		? F
)		F G
:

 	
base


 
(

 
options

 
)

 
{ 
} 
} Á
_C:\visual\Final_Assignment DotNet\WebAppMvc\Areas\Identity\Pages\Account\ConfirmEmail.cshtml.cs
	namespace 	
	WebAppMvc
 
. 
Areas 
. 
Identity "
." #
Pages# (
.( )
Account) 0
{ 
public 

class 
ConfirmEmailModel "
:# $
	PageModel% .
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
public 
ConfirmEmailModel  
(  !
UserManager! ,
<, -
IdentityUser- 9
>9 :
userManager; F
)F G
{ 	
_userManager 
= 
userManager &
;& '
} 	
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public   
async   
Task   
<   
IActionResult   '
>  ' (

OnGetAsync  ) 3
(  3 4
string  4 :
userId  ; A
,  A B
string  C I
code  J N
)  N O
{!! 	
if"" 
("" 
userId"" 
=="" 
null"" 
||"" !
code""" &
==""' )
null""* .
)"". /
{## 
return$$ 
RedirectToPage$$ %
($$% &
$str$$& .
)$$. /
;$$/ 0
}%% 
var'' 
user'' 
='' 
await'' 
_userManager'' )
.'') *
FindByIdAsync''* 7
(''7 8
userId''8 >
)''> ?
;''? @
if(( 
((( 
user(( 
==(( 
null(( 
)(( 
{)) 
return** 
NotFound** 
(**  
$"**  "
$str**" ?
{**? @
userId**@ F
}**F G
$str**G I
"**I J
)**J K
;**K L
}++ 
code-- 
=-- 
Encoding-- 
.-- 
UTF8--  
.--  !
	GetString--! *
(--* +
WebEncoders--+ 6
.--6 7
Base64UrlDecode--7 F
(--F G
code--G K
)--K L
)--L M
;--M N
var.. 
result.. 
=.. 
await.. 
_userManager.. +
...+ ,
ConfirmEmailAsync.., =
(..= >
user..> B
,..B C
code..D H
)..H I
;..I J
StatusMessage// 
=// 
result// "
.//" #
	Succeeded//# ,
?//- .
$str/// U
://V W
$str//X v
;//v w
return00 
Page00 
(00 
)00 
;00 
}11 	
}22 
}33 Æ#
eC:\visual\Final_Assignment DotNet\WebAppMvc\Areas\Identity\Pages\Account\ConfirmEmailChange.cshtml.cs
	namespace 	
	WebAppMvc
 
. 
Areas 
. 
Identity "
." #
Pages# (
.( )
Account) 0
{ 
public 

class #
ConfirmEmailChangeModel (
:) *
	PageModel+ 4
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public #
ConfirmEmailChangeModel &
(& '
UserManager' 2
<2 3
IdentityUser3 ?
>? @
userManagerA L
,L M
SignInManagerN [
<[ \
IdentityUser\ h
>h i
signInManagerj w
)w x
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
[ 	
TempData	 
] 
public   
string   
StatusMessage   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
public"" 
async"" 
Task"" 
<"" 
IActionResult"" '
>""' (

OnGetAsync"") 3
(""3 4
string""4 :
userId""; A
,""A B
string""C I
email""J O
,""O P
string""Q W
code""X \
)""\ ]
{## 	
if$$ 
($$ 
userId$$ 
==$$ 
null$$ 
||$$ !
email$$" '
==$$( *
null$$+ /
||$$0 2
code$$3 7
==$$8 :
null$$; ?
)$$? @
{%% 
return&& 
RedirectToPage&& %
(&&% &
$str&&& .
)&&. /
;&&/ 0
}'' 
var)) 
user)) 
=)) 
await)) 
_userManager)) )
.))) *
FindByIdAsync))* 7
())7 8
userId))8 >
)))> ?
;))? @
if** 
(** 
user** 
==** 
null** 
)** 
{++ 
return,, 
NotFound,, 
(,,  
$",,  "
$str,," ?
{,,? @
userId,,@ F
},,F G
$str,,G I
",,I J
),,J K
;,,K L
}-- 
code// 
=// 
Encoding// 
.// 
UTF8//  
.//  !
	GetString//! *
(//* +
WebEncoders//+ 6
.//6 7
Base64UrlDecode//7 F
(//F G
code//G K
)//K L
)//L M
;//M N
var00 
result00 
=00 
await00 
_userManager00 +
.00+ ,
ChangeEmailAsync00, <
(00< =
user00= A
,00A B
email00C H
,00H I
code00J N
)00N O
;00O P
if11 
(11 
!11 
result11 
.11 
	Succeeded11 !
)11! "
{22 
StatusMessage33 
=33 
$str33  7
;337 8
return44 
Page44 
(44 
)44 
;44 
}55 
var99 
setUserNameResult99 !
=99" #
await99$ )
_userManager99* 6
.996 7
SetUserNameAsync997 G
(99G H
user99H L
,99L M
email99N S
)99S T
;99T U
if:: 
(:: 
!:: 
setUserNameResult:: "
.::" #
	Succeeded::# ,
)::, -
{;; 
StatusMessage<< 
=<< 
$str<<  ;
;<<; <
return== 
Page== 
(== 
)== 
;== 
}>> 
await@@ 
_signInManager@@  
.@@  !
RefreshSignInAsync@@! 3
(@@3 4
user@@4 8
)@@8 9
;@@9 :
StatusMessageAA 
=AA 
$strAA I
;AAI J
returnBB 
PageBB 
(BB 
)BB 
;BB 
}CC 	
}DD 
}EE ÃL
XC:\visual\Final_Assignment DotNet\WebAppMvc\Areas\Identity\Pages\Account\Login.cshtml.cs
	namespace 	
	WebAppMvc
 
. 
Areas 
. 
Identity "
." #
Pages# (
.( )
Account) 0
{ 
public 

class 

LoginModel 
: 
	PageModel '
{ 
private 
readonly 
SignInManager &
<& ' 
RegisterCustomFields' ;
>; <
_signInManager= K
;K L
private 
readonly 
ILogger  
<  !

LoginModel! +
>+ ,
_logger- 4
;4 5
private 
readonly 
UserManager $
<$ % 
RegisterCustomFields% 9
>9 :
_userManager; G
;G H
private 
readonly 
AdminDbContext '
_adminDbContext( 7
;7 8
public 

LoginModel 
( 
SignInManager '
<' ( 
RegisterCustomFields( <
>< =
signInManager> K
,K L
ILoggerM T
<T U

LoginModelU _
>_ `
loggera g
,g h
UserManageri t
<t u!
RegisterCustomFields	u â
>
â ä
userManager
ã ñ
,
ñ ó
AdminDbContext
ò ¶
adminDbContext
ß µ
)
µ ∂
{ 	
_signInManager 
= 
signInManager *
;* +
_logger   
=   
logger   
;   
_userManager!! 
=!! 
userManager!! &
;!!& '
_adminDbContext"" 
="" 
adminDbContext"" ,
;"", -
}## 	
[)) 	
BindProperty))	 
])) 
public** 

InputModel** 
Input** 
{**  !
get**" %
;**% &
set**' *
;*** +
}**, -
public00 
IList00 
<00  
AuthenticationScheme00 )
>00) *
ExternalLogins00+ 9
{00: ;
get00< ?
;00? @
set00A D
;00D E
}00F G
public66 
string66 
	ReturnUrl66 
{66  !
get66" %
;66% &
set66' *
;66* +
}66, -
[<< 	
TempData<<	 
]<< 
public== 
string== 
ErrorMessage== "
{==# $
get==% (
;==( )
set==* -
;==- .
}==/ 0
publicCC 
classCC 

InputModelCC 
{DD 	
[II 
RequiredII 
]II 
[JJ 
EmailAddressJJ 
]JJ 
publicKK 
stringKK 
EmailKK 
{KK  !
getKK" %
;KK% &
setKK' *
;KK* +
}KK, -
[QQ 
RequiredQQ 
]QQ 
[RR 
DataTypeRR 
(RR 
DataTypeRR 
.RR 
PasswordRR '
)RR' (
]RR( )
publicSS 
stringSS 
PasswordSS "
{SS# $
getSS% (
;SS( )
setSS* -
;SS- .
}SS/ 0
[YY 
DisplayYY 
(YY 
NameYY 
=YY 
$strYY *
)YY* +
]YY+ ,
publicZZ 
boolZZ 

RememberMeZZ "
{ZZ# $
getZZ% (
;ZZ( )
setZZ* -
;ZZ- .
}ZZ/ 0
}[[ 	
public]] 
async]] 
Task]] 

OnGetAsync]] $
(]]$ %
string]]% +
	returnUrl]], 5
=]]6 7
null]]8 <
)]]< =
{^^ 	
if__ 
(__ 
!__ 
string__ 
.__ 
IsNullOrEmpty__ %
(__% &
ErrorMessage__& 2
)__2 3
)__3 4
{`` 

ModelStateaa 
.aa 
AddModelErroraa (
(aa( )
stringaa) /
.aa/ 0
Emptyaa0 5
,aa5 6
ErrorMessageaa7 C
)aaC D
;aaD E
}bb 
	returnUrldd 
??=dd 
Urldd 
.dd 
Contentdd %
(dd% &
$strdd& *
)dd* +
;dd+ ,
awaitgg 
HttpContextgg 
.gg 
SignOutAsyncgg *
(gg* +
IdentityConstantsgg+ <
.gg< =
ExternalSchemegg= K
)ggK L
;ggL M
ExternalLoginsii 
=ii 
(ii 
awaitii #
_signInManagerii$ 2
.ii2 31
%GetExternalAuthenticationSchemesAsyncii3 X
(iiX Y
)iiY Z
)iiZ [
.ii[ \
ToListii\ b
(iib c
)iic d
;iid e
	ReturnUrlkk 
=kk 
	returnUrlkk !
;kk! "
}ll 	
publicnn 
asyncnn 
Tasknn 
<nn 
IActionResultnn '
>nn' (
OnPostAsyncnn) 4
(nn4 5
stringnn5 ;
	returnUrlnn< E
=nnF G
nullnnH L
)nnL M
{oo 	
	returnUrlpp 
??=pp 
Urlpp 
.pp 
Contentpp %
(pp% &
$strpp& *
)pp* +
;pp+ ,
ifqq 
(qq 

ModelStateqq 
.qq 
IsValidqq "
)qq" #
{rr 
varss 
rejecteddatass  
=ss! "
_adminDbContextss# 2
.ss2 3
approvalRejectedss3 C
.ssC D
FindssD H
(ssH I
InputssI N
.ssN O
EmailssO T
)ssT U
;ssU V
iftt 
(tt 
rejecteddatatt  
!=tt! #
nulltt$ (
)tt( )
{uu 
ifvv 
(vv 
rejecteddatavv #
.vv# $
Statusvv$ *
==vv+ -
$strvv. 6
)vv6 7
{ww 
returnxx 
RedirectToActionxx /
(xx/ 0
$strxx0 @
,xx@ A
$strxxB I
)xxI J
;xxJ K
}yy 
}zz 
var{{ 
result{{ 
={{ 
await{{ "
_signInManager{{# 1
.{{1 2
PasswordSignInAsync{{2 E
({{E F
Input{{F K
.{{K L
Email{{L Q
,{{Q R
Input{{S X
.{{X Y
Password{{Y a
,{{a b
Input{{c h
.{{h i

RememberMe{{i s
,{{s t
lockoutOnFailure	{{u Ö
:
{{Ö Ü
false
{{á å
)
{{å ç
;
{{ç é
if|| 
(|| 
result|| 
.|| 
	Succeeded|| $
)||$ %
{}} 
var~~ 
userdetails~~ #
=~~$ %
await~~& +
_userManager~~, 8
.~~8 9
FindByEmailAsync~~9 I
(~~I J
Input~~J O
.~~O P
Email~~P U
)~~U V
;~~V W
var 
s 
= 
await !
_userManager" .
.. /
GetRolesAsync/ <
(< =
userdetails= H
)H I
;I J
foreach
ÄÄ 
(
ÄÄ 
var
ÄÄ  
item
ÄÄ! %
in
ÄÄ& (
s
ÄÄ) *
)
ÄÄ* +
{
ÅÅ 
if
ÇÇ 
(
ÇÇ 
item
ÇÇ  
==
ÇÇ! #
$str
ÇÇ$ +
)
ÇÇ+ ,
{
ÉÉ 
return
ÑÑ "
RedirectToAction
ÑÑ# 3
(
ÑÑ3 4
$str
ÑÑ4 ;
,
ÑÑ; <
$str
ÑÑ= D
)
ÑÑD E
;
ÑÑE F
}
ÖÖ 
else
ÜÜ 
{
áá 
return
àà "
RedirectToAction
àà# 3
(
àà3 4
$str
àà4 B
,
ààB C
$str
ààD Q
)
ààQ R
;
ààR S
}
ââ 
}
ãã 
_logger
åå 
.
åå 
LogInformation
åå *
(
åå* +
$str
åå+ <
)
åå< =
;
åå= >
return
çç 
LocalRedirect
çç (
(
çç( )
	returnUrl
çç) 2
)
çç2 3
;
çç3 4
}
éé 
if
èè 
(
èè 
result
èè 
.
èè 
RequiresTwoFactor
èè ,
)
èè, -
{
êê 
return
ëë 
RedirectToPage
ëë )
(
ëë) *
$str
ëë* :
,
ëë: ;
new
ëë< ?
{
ëë@ A
	ReturnUrl
ëëB K
=
ëëL M
	returnUrl
ëëN W
,
ëëW X

RememberMe
ëëY c
=
ëëd e
Input
ëëf k
.
ëëk l

RememberMe
ëël v
}
ëëw x
)
ëëx y
;
ëëy z
}
íí 
if
ìì 
(
ìì 
result
ìì 
.
ìì 
IsLockedOut
ìì &
)
ìì& '
{
îî 
_logger
ïï 
.
ïï 

LogWarning
ïï &
(
ïï& '
$str
ïï' A
)
ïïA B
;
ïïB C
return
ññ 
RedirectToPage
ññ )
(
ññ) *
$str
ññ* 5
)
ññ5 6
;
ññ6 7
}
óó 
else
òò 
{
ôô 

ModelState
öö 
.
öö 
AddModelError
öö ,
(
öö, -
string
öö- 3
.
öö3 4
Empty
öö4 9
,
öö9 :
$str
öö; S
)
ööS T
;
ööT U
return
õõ 
Page
õõ 
(
õõ  
)
õõ  !
;
õõ! "
}
úú 
}
ùù 
return
ûû 
Page
ûû 
(
ûû 
)
ûû 
;
ûû 
}
üü 	
}
†† 
}°° ˇ
YC:\visual\Final_Assignment DotNet\WebAppMvc\Areas\Identity\Pages\Account\Logout.cshtml.cs
	namespace 	
	WebAppMvc
 
. 
Areas 
. 
Identity "
." #
Pages# (
.( )
Account) 0
{ 
public 

class 
LogoutModel 
: 
	PageModel (
{ 
private 
readonly 
SignInManager &
<& ' 
RegisterCustomFields' ;
>; <
_signInManager= K
;K L
private 
readonly 
ILogger  
<  !
LogoutModel! ,
>, -
_logger. 5
;5 6
public 
LogoutModel 
( 
SignInManager (
<( ) 
RegisterCustomFields) =
>= >
signInManager? L
,L M
ILoggerN U
<U V
LogoutModelV a
>a b
loggerc i
)i j
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnPost) /
(/ 0
string0 6
	returnUrl7 @
=A B
nullC G
)G H
{ 	
await 
_signInManager  
.  !
SignOutAsync! -
(- .
). /
;/ 0
_logger 
. 
LogInformation "
(" #
$str# 5
)5 6
;6 7
if 
( 
	returnUrl 
!= 
null !
)! "
{   
return!! 
LocalRedirect!! $
(!!$ %
	returnUrl!!% .
)!!. /
;!!/ 0
}"" 
else## 
{$$ 
return'' 
RedirectToPage'' %
(''% &
)''& '
;''' (
}(( 
})) 	
}** 
}++ ã>
hC:\visual\Final_Assignment DotNet\WebAppMvc\Areas\Identity\Pages\Account\Manage\ChangePassword.cshtml.cs
	namespace 	
	WebAppMvc
 
. 
Areas 
. 
Identity "
." #
Pages# (
.( )
Account) 0
.0 1
Manage1 7
{ 
public 

class 
ChangePasswordModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !
ChangePasswordModel! 4
>4 5
_logger6 =
;= >
public 
ChangePasswordModel "
(" #
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< 
ChangePasswordModel '
>' (
logger) /
)/ 0
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[## 	
BindProperty##	 
]## 
public$$ 

InputModel$$ 
Input$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
[** 	
TempData**	 
]** 
public++ 
string++ 
StatusMessage++ #
{++$ %
get++& )
;++) *
set+++ .
;++. /
}++0 1
public11 
class11 

InputModel11 
{22 	
[77 
Required77 
]77 
[88 
DataType88 
(88 
DataType88 
.88 
Password88 '
)88' (
]88( )
[99 
Display99 
(99 
Name99 
=99 
$str99 .
)99. /
]99/ 0
public:: 
string:: 
OldPassword:: %
{::& '
get::( +
;::+ ,
set::- 0
;::0 1
}::2 3
[@@ 
Required@@ 
]@@ 
[AA 
StringLengthAA 
(AA 
$numAA 
,AA 
ErrorMessageAA +
=AA, -
$strAA. l
,AAl m
MinimumLengthAAn {
=AA| }
$numAA~ 
)	AA Ä
]
AAÄ Å
[BB 
DataTypeBB 
(BB 
DataTypeBB 
.BB 
PasswordBB '
)BB' (
]BB( )
[CC 
DisplayCC 
(CC 
NameCC 
=CC 
$strCC *
)CC* +
]CC+ ,
publicDD 
stringDD 
NewPasswordDD %
{DD& '
getDD( +
;DD+ ,
setDD- 0
;DD0 1
}DD2 3
[JJ 
DataTypeJJ 
(JJ 
DataTypeJJ 
.JJ 
PasswordJJ '
)JJ' (
]JJ( )
[KK 
DisplayKK 
(KK 
NameKK 
=KK 
$strKK 2
)KK2 3
]KK3 4
[LL 
CompareLL 
(LL 
$strLL "
,LL" #
ErrorMessageLL$ 0
=LL1 2
$strLL3 m
)LLm n
]LLn o
publicMM 
stringMM 
ConfirmPasswordMM )
{MM* +
getMM, /
;MM/ 0
setMM1 4
;MM4 5
}MM6 7
}NN 	
publicPP 
asyncPP 
TaskPP 
<PP 
IActionResultPP '
>PP' (

OnGetAsyncPP) 3
(PP3 4
)PP4 5
{QQ 	
varRR 
userRR 
=RR 
awaitRR 
_userManagerRR )
.RR) *
GetUserAsyncRR* 6
(RR6 7
UserRR7 ;
)RR; <
;RR< =
ifSS 
(SS 
userSS 
==SS 
nullSS 
)SS 
{TT 
returnUU 
NotFoundUU 
(UU  
$"UU  "
$strUU" ?
{UU? @
_userManagerUU@ L
.UUL M
	GetUserIdUUM V
(UUV W
UserUUW [
)UU[ \
}UU\ ]
$strUU] _
"UU_ `
)UU` a
;UUa b
}VV 
varXX 
hasPasswordXX 
=XX 
awaitXX #
_userManagerXX$ 0
.XX0 1
HasPasswordAsyncXX1 A
(XXA B
userXXB F
)XXF G
;XXG H
ifYY 
(YY 
!YY 
hasPasswordYY 
)YY 
{ZZ 
return[[ 
RedirectToPage[[ %
([[% &
$str[[& 5
)[[5 6
;[[6 7
}\\ 
return^^ 
Page^^ 
(^^ 
)^^ 
;^^ 
}__ 	
publicaa 
asyncaa 
Taskaa 
<aa 
IActionResultaa '
>aa' (
OnPostAsyncaa) 4
(aa4 5
)aa5 6
{bb 	
ifcc 
(cc 
!cc 

ModelStatecc 
.cc 
IsValidcc #
)cc# $
{dd 
returnee 
Pageee 
(ee 
)ee 
;ee 
}ff 
varhh 
userhh 
=hh 
awaithh 
_userManagerhh )
.hh) *
GetUserAsynchh* 6
(hh6 7
Userhh7 ;
)hh; <
;hh< =
ifii 
(ii 
userii 
==ii 
nullii 
)ii 
{jj 
returnkk 
NotFoundkk 
(kk  
$"kk  "
$strkk" ?
{kk? @
_userManagerkk@ L
.kkL M
	GetUserIdkkM V
(kkV W
UserkkW [
)kk[ \
}kk\ ]
$strkk] _
"kk_ `
)kk` a
;kka b
}ll 
varnn  
changePasswordResultnn $
=nn% &
awaitnn' ,
_userManagernn- 9
.nn9 :
ChangePasswordAsyncnn: M
(nnM N
usernnN R
,nnR S
InputnnT Y
.nnY Z
OldPasswordnnZ e
,nne f
Inputnng l
.nnl m
NewPasswordnnm x
)nnx y
;nny z
ifoo 
(oo 
!oo  
changePasswordResultoo %
.oo% &
	Succeededoo& /
)oo/ 0
{pp 
foreachqq 
(qq 
varqq 
errorqq "
inqq# % 
changePasswordResultqq& :
.qq: ;
Errorsqq; A
)qqA B
{rr 

ModelStatess 
.ss 
AddModelErrorss ,
(ss, -
stringss- 3
.ss3 4
Emptyss4 9
,ss9 :
errorss; @
.ss@ A
DescriptionssA L
)ssL M
;ssM N
}tt 
returnuu 
Pageuu 
(uu 
)uu 
;uu 
}vv 
awaitxx 
_signInManagerxx  
.xx  !
RefreshSignInAsyncxx! 3
(xx3 4
userxx4 8
)xx8 9
;xx9 :
_loggeryy 
.yy 
LogInformationyy "
(yy" #
$stryy# N
)yyN O
;yyO P
StatusMessagezz 
=zz 
$strzz =
;zz= >
return|| 
RedirectToPage|| !
(||! "
)||" #
;||# $
}}} 	
}~~ 
} ´`
_C:\visual\Final_Assignment DotNet\WebAppMvc\Areas\Identity\Pages\Account\Manage\Email.cshtml.cs
	namespace 	
	WebAppMvc
 
. 
Areas 
. 
Identity "
." #
Pages# (
.( )
Account) 0
.0 1
Manage1 7
{ 
public 

class 

EmailModel 
: 
	PageModel '
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 

EmailModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
IEmailSender 
emailSender $
)$ %
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_emailSender 
= 
emailSender &
;& '
}   	
public&& 
string&& 
Email&& 
{&& 
get&& !
;&&! "
set&&# &
;&&& '
}&&( )
public,, 
bool,, 
IsEmailConfirmed,, $
{,,% &
get,,' *
;,,* +
set,,, /
;,,/ 0
},,1 2
[22 	
TempData22	 
]22 
public33 
string33 
StatusMessage33 #
{33$ %
get33& )
;33) *
set33+ .
;33. /
}330 1
[99 	
BindProperty99	 
]99 
public:: 

InputModel:: 
Input:: 
{::  !
get::" %
;::% &
set::' *
;::* +
}::, -
public@@ 
class@@ 

InputModel@@ 
{AA 	
[FF 
RequiredFF 
]FF 
[GG 
EmailAddressGG 
]GG 
[HH 
DisplayHH 
(HH 
NameHH 
=HH 
$strHH '
)HH' (
]HH( )
publicII 
stringII 
NewEmailII "
{II# $
getII% (
;II( )
setII* -
;II- .
}II/ 0
}JJ 	
privateLL 
asyncLL 
TaskLL 
	LoadAsyncLL $
(LL$ %
IdentityUserLL% 1
userLL2 6
)LL6 7
{MM 	
varNN 
emailNN 
=NN 
awaitNN 
_userManagerNN *
.NN* +
GetEmailAsyncNN+ 8
(NN8 9
userNN9 =
)NN= >
;NN> ?
EmailOO 
=OO 
emailOO 
;OO 
InputQQ 
=QQ 
newQQ 

InputModelQQ "
{RR 
NewEmailSS 
=SS 
emailSS  
,SS  !
}TT 
;TT 
IsEmailConfirmedVV 
=VV 
awaitVV $
_userManagerVV% 1
.VV1 2!
IsEmailConfirmedAsyncVV2 G
(VVG H
userVVH L
)VVL M
;VVM N
}WW 	
publicYY 
asyncYY 
TaskYY 
<YY 
IActionResultYY '
>YY' (

OnGetAsyncYY) 3
(YY3 4
)YY4 5
{ZZ 	
var[[ 
user[[ 
=[[ 
await[[ 
_userManager[[ )
.[[) *
GetUserAsync[[* 6
([[6 7
User[[7 ;
)[[; <
;[[< =
if\\ 
(\\ 
user\\ 
==\\ 
null\\ 
)\\ 
{]] 
return^^ 
NotFound^^ 
(^^  
$"^^  "
$str^^" ?
{^^? @
_userManager^^@ L
.^^L M
	GetUserId^^M V
(^^V W
User^^W [
)^^[ \
}^^\ ]
$str^^] _
"^^_ `
)^^` a
;^^a b
}__ 
awaitaa 
	LoadAsyncaa 
(aa 
useraa  
)aa  !
;aa! "
returnbb 
Pagebb 
(bb 
)bb 
;bb 
}cc 	
publicee 
asyncee 
Taskee 
<ee 
IActionResultee '
>ee' ("
OnPostChangeEmailAsyncee) ?
(ee? @
)ee@ A
{ff 	
vargg 
usergg 
=gg 
awaitgg 
_userManagergg )
.gg) *
GetUserAsyncgg* 6
(gg6 7
Usergg7 ;
)gg; <
;gg< =
ifhh 
(hh 
userhh 
==hh 
nullhh 
)hh 
{ii 
returnjj 
NotFoundjj 
(jj  
$"jj  "
$strjj" ?
{jj? @
_userManagerjj@ L
.jjL M
	GetUserIdjjM V
(jjV W
UserjjW [
)jj[ \
}jj\ ]
$strjj] _
"jj_ `
)jj` a
;jja b
}kk 
ifmm 
(mm 
!mm 

ModelStatemm 
.mm 
IsValidmm #
)mm# $
{nn 
awaitoo 
	LoadAsyncoo 
(oo  
useroo  $
)oo$ %
;oo% &
returnpp 
Pagepp 
(pp 
)pp 
;pp 
}qq 
varss 
emailss 
=ss 
awaitss 
_userManagerss *
.ss* +
GetEmailAsyncss+ 8
(ss8 9
userss9 =
)ss= >
;ss> ?
iftt 
(tt 
Inputtt 
.tt 
NewEmailtt 
!=tt !
emailtt" '
)tt' (
{uu 
varvv 
userIdvv 
=vv 
awaitvv "
_userManagervv# /
.vv/ 0
GetUserIdAsyncvv0 >
(vv> ?
uservv? C
)vvC D
;vvD E
varww 
codeww 
=ww 
awaitww  
_userManagerww! -
.ww- .)
GenerateChangeEmailTokenAsyncww. K
(wwK L
userwwL P
,wwP Q
InputwwR W
.wwW X
NewEmailwwX `
)ww` a
;wwa b
codexx 
=xx 
WebEncodersxx "
.xx" #
Base64UrlEncodexx# 2
(xx2 3
Encodingxx3 ;
.xx; <
UTF8xx< @
.xx@ A
GetBytesxxA I
(xxI J
codexxJ N
)xxN O
)xxO P
;xxP Q
varyy 
callbackUrlyy 
=yy  !
Urlyy" %
.yy% &
Pageyy& *
(yy* +
$strzz 1
,zz1 2
pageHandler{{ 
:{{  
null{{! %
,{{% &
values|| 
:|| 
new|| 
{||  !
area||" &
=||' (
$str||) 3
,||3 4
userId||5 ;
=||< =
userId||> D
,||D E
email||F K
=||L M
Input||N S
.||S T
NewEmail||T \
,||\ ]
code||^ b
=||c d
code||e i
}||j k
,||k l
protocol}} 
:}} 
Request}} %
.}}% &
Scheme}}& ,
)}}, -
;}}- .
await~~ 
_emailSender~~ "
.~~" #
SendEmailAsync~~# 1
(~~1 2
Input 
. 
NewEmail "
," #
$str
ÄÄ (
,
ÄÄ( )
$"
ÅÅ 
$str
ÅÅ >
{
ÅÅ> ?
HtmlEncoder
ÅÅ? J
.
ÅÅJ K
Default
ÅÅK R
.
ÅÅR S
Encode
ÅÅS Y
(
ÅÅY Z
callbackUrl
ÅÅZ e
)
ÅÅe f
}
ÅÅf g
$str
ÅÅg {
"
ÅÅ{ |
)
ÅÅ| }
;
ÅÅ} ~
StatusMessage
ÉÉ 
=
ÉÉ 
$str
ÉÉ  b
;
ÉÉb c
return
ÑÑ 
RedirectToPage
ÑÑ %
(
ÑÑ% &
)
ÑÑ& '
;
ÑÑ' (
}
ÖÖ 
StatusMessage
áá 
=
áá 
$str
áá 6
;
áá6 7
return
àà 
RedirectToPage
àà !
(
àà! "
)
àà" #
;
àà# $
}
ââ 	
public
ãã 
async
ãã 
Task
ãã 
<
ãã 
IActionResult
ãã '
>
ãã' (.
 OnPostSendVerificationEmailAsync
ãã) I
(
ããI J
)
ããJ K
{
åå 	
var
çç 
user
çç 
=
çç 
await
çç 
_userManager
çç )
.
çç) *
GetUserAsync
çç* 6
(
çç6 7
User
çç7 ;
)
çç; <
;
çç< =
if
éé 
(
éé 
user
éé 
==
éé 
null
éé 
)
éé 
{
èè 
return
êê 
NotFound
êê 
(
êê  
$"
êê  "
$str
êê" ?
{
êê? @
_userManager
êê@ L
.
êêL M
	GetUserId
êêM V
(
êêV W
User
êêW [
)
êê[ \
}
êê\ ]
$str
êê] _
"
êê_ `
)
êê` a
;
êêa b
}
ëë 
if
ìì 
(
ìì 
!
ìì 

ModelState
ìì 
.
ìì 
IsValid
ìì #
)
ìì# $
{
îî 
await
ïï 
	LoadAsync
ïï 
(
ïï  
user
ïï  $
)
ïï$ %
;
ïï% &
return
ññ 
Page
ññ 
(
ññ 
)
ññ 
;
ññ 
}
óó 
var
ôô 
userId
ôô 
=
ôô 
await
ôô 
_userManager
ôô +
.
ôô+ ,
GetUserIdAsync
ôô, :
(
ôô: ;
user
ôô; ?
)
ôô? @
;
ôô@ A
var
öö 
email
öö 
=
öö 
await
öö 
_userManager
öö *
.
öö* +
GetEmailAsync
öö+ 8
(
öö8 9
user
öö9 =
)
öö= >
;
öö> ?
var
õõ 
code
õõ 
=
õõ 
await
õõ 
_userManager
õõ )
.
õõ) *1
#GenerateEmailConfirmationTokenAsync
õõ* M
(
õõM N
user
õõN R
)
õõR S
;
õõS T
code
úú 
=
úú 
WebEncoders
úú 
.
úú 
Base64UrlEncode
úú .
(
úú. /
Encoding
úú/ 7
.
úú7 8
UTF8
úú8 <
.
úú< =
GetBytes
úú= E
(
úúE F
code
úúF J
)
úúJ K
)
úúK L
;
úúL M
var
ùù 
callbackUrl
ùù 
=
ùù 
Url
ùù !
.
ùù! "
Page
ùù" &
(
ùù& '
$str
ûû '
,
ûû' (
pageHandler
üü 
:
üü 
null
üü !
,
üü! "
values
†† 
:
†† 
new
†† 
{
†† 
area
†† "
=
††# $
$str
††% /
,
††/ 0
userId
††1 7
=
††8 9
userId
††: @
,
††@ A
code
††B F
=
††G H
code
††I M
}
††N O
,
††O P
protocol
°° 
:
°° 
Request
°° !
.
°°! "
Scheme
°°" (
)
°°( )
;
°°) *
await
¢¢ 
_emailSender
¢¢ 
.
¢¢ 
SendEmailAsync
¢¢ -
(
¢¢- .
email
££ 
,
££ 
$str
§§ $
,
§§$ %
$"
•• 
$str
•• :
{
••: ;
HtmlEncoder
••; F
.
••F G
Default
••G N
.
••N O
Encode
••O U
(
••U V
callbackUrl
••V a
)
••a b
}
••b c
$str
••c w
"
••w x
)
••x y
;
••y z
StatusMessage
ßß 
=
ßß 
$str
ßß O
;
ßßO P
return
®® 
RedirectToPage
®® !
(
®®! "
)
®®" #
;
®®# $
}
©© 	
}
™™ 
}´´ Ùf
mC:\visual\Final_Assignment DotNet\WebAppMvc\Areas\Identity\Pages\Account\Manage\EnableAuthenticator.cshtml.cs
	namespace 	
	WebAppMvc
 
. 
Areas 
. 
Identity "
." #
Pages# (
.( )
Account) 0
.0 1
Manage1 7
{ 
public 

class $
EnableAuthenticatorModel )
:* +
	PageModel, 5
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !$
EnableAuthenticatorModel! 9
>9 :
_logger; B
;B C
private 
readonly 

UrlEncoder #
_urlEncoder$ /
;/ 0
private 
const 
string "
AuthenticatorUriFormat 3
=4 5
$str6 m
;m n
public $
EnableAuthenticatorModel '
(' (
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< $
EnableAuthenticatorModel ,
>, -
logger. 4
,4 5

UrlEncoder 

urlEncoder !
)! "
{ 	
_userManager   
=   
userManager   &
;  & '
_logger!! 
=!! 
logger!! 
;!! 
_urlEncoder"" 
="" 

urlEncoder"" $
;""$ %
}## 	
public)) 
string)) 
	SharedKey)) 
{))  !
get))" %
;))% &
set))' *
;))* +
})), -
public// 
string// 
AuthenticatorUri// &
{//' (
get//) ,
;//, -
set//. 1
;//1 2
}//3 4
[55 	
TempData55	 
]55 
public66 
string66 
[66 
]66 
RecoveryCodes66 %
{66& '
get66( +
;66+ ,
set66- 0
;660 1
}662 3
[<< 	
TempData<<	 
]<< 
public== 
string== 
StatusMessage== #
{==$ %
get==& )
;==) *
set==+ .
;==. /
}==0 1
[CC 	
BindPropertyCC	 
]CC 
publicDD 

InputModelDD 
InputDD 
{DD  !
getDD" %
;DD% &
setDD' *
;DD* +
}DD, -
publicJJ 
classJJ 

InputModelJJ 
{KK 	
[PP 
RequiredPP 
]PP 
[QQ 
StringLengthQQ 
(QQ 
$numQQ 
,QQ 
ErrorMessageQQ )
=QQ* +
$strQQ, j
,QQj k
MinimumLengthQQl y
=QQz {
$numQQ| }
)QQ} ~
]QQ~ 
[RR 
DataTypeRR 
(RR 
DataTypeRR 
.RR 
TextRR #
)RR# $
]RR$ %
[SS 
DisplaySS 
(SS 
NameSS 
=SS 
$strSS /
)SS/ 0
]SS0 1
publicTT 
stringTT 
CodeTT 
{TT  
getTT! $
;TT$ %
setTT& )
;TT) *
}TT+ ,
}UU 	
publicWW 
asyncWW 
TaskWW 
<WW 
IActionResultWW '
>WW' (

OnGetAsyncWW) 3
(WW3 4
)WW4 5
{XX 	
varYY 
userYY 
=YY 
awaitYY 
_userManagerYY )
.YY) *
GetUserAsyncYY* 6
(YY6 7
UserYY7 ;
)YY; <
;YY< =
ifZZ 
(ZZ 
userZZ 
==ZZ 
nullZZ 
)ZZ 
{[[ 
return\\ 
NotFound\\ 
(\\  
$"\\  "
$str\\" ?
{\\? @
_userManager\\@ L
.\\L M
	GetUserId\\M V
(\\V W
User\\W [
)\\[ \
}\\\ ]
$str\\] _
"\\_ `
)\\` a
;\\a b
}]] 
await__ *
LoadSharedKeyAndQrCodeUriAsync__ 0
(__0 1
user__1 5
)__5 6
;__6 7
returnaa 
Pageaa 
(aa 
)aa 
;aa 
}bb 	
publicdd 
asyncdd 
Taskdd 
<dd 
IActionResultdd '
>dd' (
OnPostAsyncdd) 4
(dd4 5
)dd5 6
{ee 	
varff 
userff 
=ff 
awaitff 
_userManagerff )
.ff) *
GetUserAsyncff* 6
(ff6 7
Userff7 ;
)ff; <
;ff< =
ifgg 
(gg 
usergg 
==gg 
nullgg 
)gg 
{hh 
returnii 
NotFoundii 
(ii  
$"ii  "
$strii" ?
{ii? @
_userManagerii@ L
.iiL M
	GetUserIdiiM V
(iiV W
UseriiW [
)ii[ \
}ii\ ]
$strii] _
"ii_ `
)ii` a
;iia b
}jj 
ifll 
(ll 
!ll 

ModelStatell 
.ll 
IsValidll #
)ll# $
{mm 
awaitnn *
LoadSharedKeyAndQrCodeUriAsyncnn 4
(nn4 5
usernn5 9
)nn9 :
;nn: ;
returnoo 
Pageoo 
(oo 
)oo 
;oo 
}pp 
varss 
verificationCodess  
=ss! "
Inputss# (
.ss( )
Codess) -
.ss- .
Replacess. 5
(ss5 6
$strss6 9
,ss9 :
stringss; A
.ssA B
EmptyssB G
)ssG H
.ssH I
ReplacessI P
(ssP Q
$strssQ T
,ssT U
stringssV \
.ss\ ]
Emptyss] b
)ssb c
;ssc d
varuu 
is2faTokenValiduu 
=uu  !
awaituu" '
_userManageruu( 4
.uu4 5%
VerifyTwoFactorTokenAsyncuu5 N
(uuN O
uservv 
,vv 
_userManagervv "
.vv" #
Optionsvv# *
.vv* +
Tokensvv+ 1
.vv1 2&
AuthenticatorTokenProvidervv2 L
,vvL M
verificationCodevvN ^
)vv^ _
;vv_ `
ifxx 
(xx 
!xx 
is2faTokenValidxx  
)xx  !
{yy 

ModelStatezz 
.zz 
AddModelErrorzz (
(zz( )
$strzz) 5
,zz5 6
$strzz7 V
)zzV W
;zzW X
await{{ *
LoadSharedKeyAndQrCodeUriAsync{{ 4
({{4 5
user{{5 9
){{9 :
;{{: ;
return|| 
Page|| 
(|| 
)|| 
;|| 
}}} 
await 
_userManager 
. $
SetTwoFactorEnabledAsync 7
(7 8
user8 <
,< =
true> B
)B C
;C D
var
ÄÄ 
userId
ÄÄ 
=
ÄÄ 
await
ÄÄ 
_userManager
ÄÄ +
.
ÄÄ+ ,
GetUserIdAsync
ÄÄ, :
(
ÄÄ: ;
user
ÄÄ; ?
)
ÄÄ? @
;
ÄÄ@ A
_logger
ÅÅ 
.
ÅÅ 
LogInformation
ÅÅ "
(
ÅÅ" #
$str
ÅÅ# g
,
ÅÅg h
userId
ÅÅi o
)
ÅÅo p
;
ÅÅp q
StatusMessage
ÉÉ 
=
ÉÉ 
$str
ÉÉ G
;
ÉÉG H
if
ÖÖ 
(
ÖÖ 
await
ÖÖ 
_userManager
ÖÖ "
.
ÖÖ" #%
CountRecoveryCodesAsync
ÖÖ# :
(
ÖÖ: ;
user
ÖÖ; ?
)
ÖÖ? @
==
ÖÖA C
$num
ÖÖD E
)
ÖÖE F
{
ÜÜ 
var
áá 
recoveryCodes
áá !
=
áá" #
await
áá$ )
_userManager
áá* 6
.
áá6 74
&GenerateNewTwoFactorRecoveryCodesAsync
áá7 ]
(
áá] ^
user
áá^ b
,
ááb c
$num
áád f
)
ááf g
;
áág h
RecoveryCodes
àà 
=
àà 
recoveryCodes
àà  -
.
àà- .
ToArray
àà. 5
(
àà5 6
)
àà6 7
;
àà7 8
return
ââ 
RedirectToPage
ââ %
(
ââ% &
$str
ââ& ;
)
ââ; <
;
ââ< =
}
ää 
else
ãã 
{
åå 
return
çç 
RedirectToPage
çç %
(
çç% &
$str
çç& A
)
ççA B
;
ççB C
}
éé 
}
èè 	
private
ëë 
async
ëë 
Task
ëë ,
LoadSharedKeyAndQrCodeUriAsync
ëë 9
(
ëë9 :
IdentityUser
ëë: F
user
ëëG K
)
ëëK L
{
íí 	
var
îî 
unformattedKey
îî 
=
îî  
await
îî! &
_userManager
îî' 3
.
îî3 4&
GetAuthenticatorKeyAsync
îî4 L
(
îîL M
user
îîM Q
)
îîQ R
;
îîR S
if
ïï 
(
ïï 
string
ïï 
.
ïï 
IsNullOrEmpty
ïï $
(
ïï$ %
unformattedKey
ïï% 3
)
ïï3 4
)
ïï4 5
{
ññ 
await
óó 
_userManager
óó "
.
óó" #(
ResetAuthenticatorKeyAsync
óó# =
(
óó= >
user
óó> B
)
óóB C
;
óóC D
unformattedKey
òò 
=
òò  
await
òò! &
_userManager
òò' 3
.
òò3 4&
GetAuthenticatorKeyAsync
òò4 L
(
òòL M
user
òòM Q
)
òòQ R
;
òòR S
}
ôô 
	SharedKey
õõ 
=
õõ 
	FormatKey
õõ !
(
õõ! "
unformattedKey
õõ" 0
)
õõ0 1
;
õõ1 2
var
ùù 
email
ùù 
=
ùù 
await
ùù 
_userManager
ùù *
.
ùù* +
GetEmailAsync
ùù+ 8
(
ùù8 9
user
ùù9 =
)
ùù= >
;
ùù> ?
AuthenticatorUri
ûû 
=
ûû 
GenerateQrCodeUri
ûû 0
(
ûû0 1
email
ûû1 6
,
ûû6 7
unformattedKey
ûû8 F
)
ûûF G
;
ûûG H
}
üü 	
private
°° 
string
°° 
	FormatKey
°°  
(
°°  !
string
°°! '
unformattedKey
°°( 6
)
°°6 7
{
¢¢ 	
var
££ 
result
££ 
=
££ 
new
££ 
StringBuilder
££ *
(
££* +
)
££+ ,
;
££, -
int
§§ 
currentPosition
§§ 
=
§§  !
$num
§§" #
;
§§# $
while
•• 
(
•• 
currentPosition
•• "
+
••# $
$num
••% &
<
••' (
unformattedKey
••) 7
.
••7 8
Length
••8 >
)
••> ?
{
¶¶ 
result
ßß 
.
ßß 
Append
ßß 
(
ßß 
unformattedKey
ßß ,
.
ßß, -
AsSpan
ßß- 3
(
ßß3 4
currentPosition
ßß4 C
,
ßßC D
$num
ßßE F
)
ßßF G
)
ßßG H
.
ßßH I
Append
ßßI O
(
ßßO P
$char
ßßP S
)
ßßS T
;
ßßT U
currentPosition
®® 
+=
®®  "
$num
®®# $
;
®®$ %
}
©© 
if
™™ 
(
™™ 
currentPosition
™™ 
<
™™  !
unformattedKey
™™" 0
.
™™0 1
Length
™™1 7
)
™™7 8
{
´´ 
result
¨¨ 
.
¨¨ 
Append
¨¨ 
(
¨¨ 
unformattedKey
¨¨ ,
.
¨¨, -
AsSpan
¨¨- 3
(
¨¨3 4
currentPosition
¨¨4 C
)
¨¨C D
)
¨¨D E
;
¨¨E F
}
≠≠ 
return
ØØ 
result
ØØ 
.
ØØ 
ToString
ØØ "
(
ØØ" #
)
ØØ# $
.
ØØ$ %
ToLowerInvariant
ØØ% 5
(
ØØ5 6
)
ØØ6 7
;
ØØ7 8
}
∞∞ 	
private
≤≤ 
string
≤≤ 
GenerateQrCodeUri
≤≤ (
(
≤≤( )
string
≤≤) /
email
≤≤0 5
,
≤≤5 6
string
≤≤7 =
unformattedKey
≤≤> L
)
≤≤L M
{
≥≥ 	
return
¥¥ 
string
¥¥ 
.
¥¥ 
Format
¥¥  
(
¥¥  !
CultureInfo
µµ 
.
µµ 
InvariantCulture
µµ ,
,
µµ, -$
AuthenticatorUriFormat
∂∂ &
,
∂∂& '
_urlEncoder
∑∑ 
.
∑∑ 
Encode
∑∑ "
(
∑∑" #
$str
∑∑# E
)
∑∑E F
,
∑∑F G
_urlEncoder
∏∏ 
.
∏∏ 
Encode
∏∏ "
(
∏∏" #
email
∏∏# (
)
∏∏( )
,
∏∏) *
unformattedKey
ππ 
)
ππ 
;
ππ  
}
∫∫ 	
}
ªª 
}ºº ü4
_C:\visual\Final_Assignment DotNet\WebAppMvc\Areas\Identity\Pages\Account\Manage\Index.cshtml.cs
	namespace 	
	WebAppMvc
 
. 
Areas 
. 
Identity "
." #
Pages# (
.( )
Account) 0
.0 1
Manage1 7
{ 
public 

class 

IndexModel 
: 
	PageModel '
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public 

IndexModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
public   
string   
Username   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
[&& 	
TempData&&	 
]&& 
public'' 
string'' 
StatusMessage'' #
{''$ %
get''& )
;'') *
set''+ .
;''. /
}''0 1
[-- 	
BindProperty--	 
]-- 
public.. 

InputModel.. 
Input.. 
{..  !
get.." %
;..% &
set..' *
;..* +
}.., -
public44 
class44 

InputModel44 
{55 	
[:: 
Phone:: 
]:: 
[;; 
Display;; 
(;; 
Name;; 
=;; 
$str;; *
);;* +
];;+ ,
public<< 
string<< 
PhoneNumber<< %
{<<& '
get<<( +
;<<+ ,
set<<- 0
;<<0 1
}<<2 3
}== 	
private?? 
async?? 
Task?? 
	LoadAsync?? $
(??$ %
IdentityUser??% 1
user??2 6
)??6 7
{@@ 	
varAA 
userNameAA 
=AA 
awaitAA  
_userManagerAA! -
.AA- .
GetUserNameAsyncAA. >
(AA> ?
userAA? C
)AAC D
;AAD E
varBB 
phoneNumberBB 
=BB 
awaitBB #
_userManagerBB$ 0
.BB0 1
GetPhoneNumberAsyncBB1 D
(BBD E
userBBE I
)BBI J
;BBJ K
UsernameDD 
=DD 
userNameDD 
;DD  
InputFF 
=FF 
newFF 

InputModelFF "
{GG 
PhoneNumberHH 
=HH 
phoneNumberHH )
}II 
;II 
}JJ 	
publicLL 
asyncLL 
TaskLL 
<LL 
IActionResultLL '
>LL' (

OnGetAsyncLL) 3
(LL3 4
)LL4 5
{MM 	
varNN 
userNN 
=NN 
awaitNN 
_userManagerNN )
.NN) *
GetUserAsyncNN* 6
(NN6 7
UserNN7 ;
)NN; <
;NN< =
ifOO 
(OO 
userOO 
==OO 
nullOO 
)OO 
{PP 
returnQQ 
NotFoundQQ 
(QQ  
$"QQ  "
$strQQ" ?
{QQ? @
_userManagerQQ@ L
.QQL M
	GetUserIdQQM V
(QQV W
UserQQW [
)QQ[ \
}QQ\ ]
$strQQ] _
"QQ_ `
)QQ` a
;QQa b
}RR 
awaitTT 
	LoadAsyncTT 
(TT 
userTT  
)TT  !
;TT! "
returnUU 
PageUU 
(UU 
)UU 
;UU 
}VV 	
publicXX 
asyncXX 
TaskXX 
<XX 
IActionResultXX '
>XX' (
OnPostAsyncXX) 4
(XX4 5
)XX5 6
{YY 	
varZZ 
userZZ 
=ZZ 
awaitZZ 
_userManagerZZ )
.ZZ) *
GetUserAsyncZZ* 6
(ZZ6 7
UserZZ7 ;
)ZZ; <
;ZZ< =
if[[ 
([[ 
user[[ 
==[[ 
null[[ 
)[[ 
{\\ 
return]] 
NotFound]] 
(]]  
$"]]  "
$str]]" ?
{]]? @
_userManager]]@ L
.]]L M
	GetUserId]]M V
(]]V W
User]]W [
)]][ \
}]]\ ]
$str]]] _
"]]_ `
)]]` a
;]]a b
}^^ 
if`` 
(`` 
!`` 

ModelState`` 
.`` 
IsValid`` #
)``# $
{aa 
awaitbb 
	LoadAsyncbb 
(bb  
userbb  $
)bb$ %
;bb% &
returncc 
Pagecc 
(cc 
)cc 
;cc 
}dd 
varff 
phoneNumberff 
=ff 
awaitff #
_userManagerff$ 0
.ff0 1
GetPhoneNumberAsyncff1 D
(ffD E
userffE I
)ffI J
;ffJ K
ifgg 
(gg 
Inputgg 
.gg 
PhoneNumbergg !
!=gg" $
phoneNumbergg% 0
)gg0 1
{hh 
varii 
setPhoneResultii "
=ii# $
awaitii% *
_userManagerii+ 7
.ii7 8
SetPhoneNumberAsyncii8 K
(iiK L
useriiL P
,iiP Q
InputiiR W
.iiW X
PhoneNumberiiX c
)iic d
;iid e
ifjj 
(jj 
!jj 
setPhoneResultjj #
.jj# $
	Succeededjj$ -
)jj- .
{kk 
StatusMessagell !
=ll" #
$strll$ W
;llW X
returnmm 
RedirectToPagemm )
(mm) *
)mm* +
;mm+ ,
}nn 
}oo 
awaitqq 
_signInManagerqq  
.qq  !
RefreshSignInAsyncqq! 3
(qq3 4
userqq4 8
)qq8 9
;qq9 :
StatusMessagerr 
=rr 
$strrr ;
;rr; <
returnss 
RedirectToPagess !
(ss! "
)ss" #
;ss# $
}tt 	
}uu 
}vv ¬)
aC:\visual\Final_Assignment DotNet\WebAppMvc\Areas\Identity\Pages\Account\Manage\ManageNavPages.cs
	namespace 	
	WebAppMvc 
. 
Areas 
. 
Identity #
.# $
Pages$ )
.) *
Account* 1
.1 2
Manage2 8
{		 
public 

static 
class 
ManageNavPages &
{ 
public 
static 
string 
Index "
=># %
$str& -
;- .
public 
static 
string 
Email "
=># %
$str& -
;- .
public   
static   
string   
ChangePassword   +
=>  , .
$str  / ?
;  ? @
public&& 
static&& 
string&&  
DownloadPersonalData&& 1
=>&&2 4
$str&&5 K
;&&K L
public,, 
static,, 
string,, 
DeletePersonalData,, /
=>,,0 2
$str,,3 G
;,,G H
public22 
static22 
string22 
ExternalLogins22 +
=>22, .
$str22/ ?
;22? @
public88 
static88 
string88 
PersonalData88 )
=>88* ,
$str88- ;
;88; <
public>> 
static>> 
string>> #
TwoFactorAuthentication>> 4
=>>>5 7
$str>>8 Q
;>>Q R
publicDD 
staticDD 
stringDD 
IndexNavClassDD *
(DD* +
ViewContextDD+ 6
viewContextDD7 B
)DDB C
=>DDD F
PageNavClassDDG S
(DDS T
viewContextDDT _
,DD_ `
IndexDDa f
)DDf g
;DDg h
publicJJ 
staticJJ 
stringJJ 
EmailNavClassJJ *
(JJ* +
ViewContextJJ+ 6
viewContextJJ7 B
)JJB C
=>JJD F
PageNavClassJJG S
(JJS T
viewContextJJT _
,JJ_ `
EmailJJa f
)JJf g
;JJg h
publicPP 
staticPP 
stringPP "
ChangePasswordNavClassPP 3
(PP3 4
ViewContextPP4 ?
viewContextPP@ K
)PPK L
=>PPM O
PageNavClassPPP \
(PP\ ]
viewContextPP] h
,PPh i
ChangePasswordPPj x
)PPx y
;PPy z
publicVV 
staticVV 
stringVV (
DownloadPersonalDataNavClassVV 9
(VV9 :
ViewContextVV: E
viewContextVVF Q
)VVQ R
=>VVS U
PageNavClassVVV b
(VVb c
viewContextVVc n
,VVn o!
DownloadPersonalData	VVp Ñ
)
VVÑ Ö
;
VVÖ Ü
public\\ 
static\\ 
string\\ &
DeletePersonalDataNavClass\\ 7
(\\7 8
ViewContext\\8 C
viewContext\\D O
)\\O P
=>\\Q S
PageNavClass\\T `
(\\` a
viewContext\\a l
,\\l m
DeletePersonalData	\\n Ä
)
\\Ä Å
;
\\Å Ç
publicbb 
staticbb 
stringbb "
ExternalLoginsNavClassbb 3
(bb3 4
ViewContextbb4 ?
viewContextbb@ K
)bbK L
=>bbM O
PageNavClassbbP \
(bb\ ]
viewContextbb] h
,bbh i
ExternalLoginsbbj x
)bbx y
;bby z
publichh 
statichh 
stringhh  
PersonalDataNavClasshh 1
(hh1 2
ViewContexthh2 =
viewContexthh> I
)hhI J
=>hhK M
PageNavClasshhN Z
(hhZ [
viewContexthh[ f
,hhf g
PersonalDatahhh t
)hht u
;hhu v
publicnn 
staticnn 
stringnn +
TwoFactorAuthenticationNavClassnn <
(nn< =
ViewContextnn= H
viewContextnnI T
)nnT U
=>nnV X
PageNavClassnnY e
(nne f
viewContextnnf q
,nnq r$
TwoFactorAuthentication	nns ä
)
nnä ã
;
nnã å
publictt 
statictt 
stringtt 
PageNavClasstt )
(tt) *
ViewContexttt* 5
viewContexttt6 A
,ttA B
stringttC I
pagettJ N
)ttN O
{uu 	
varvv 

activePagevv 
=vv 
viewContextvv (
.vv( )
ViewDatavv) 1
[vv1 2
$strvv2 >
]vv> ?
asvv@ B
stringvvC I
??ww 
Systemww 
.ww 
IOww 
.ww 
Pathww !
.ww! "'
GetFileNameWithoutExtensionww" =
(ww= >
viewContextww> I
.wwI J
ActionDescriptorwwJ Z
.wwZ [
DisplayNameww[ f
)wwf g
;wwg h
returnxx 
stringxx 
.xx 
Equalsxx  
(xx  !

activePagexx! +
,xx+ ,
pagexx- 1
,xx1 2
StringComparisonxx3 C
.xxC D
OrdinalIgnoreCasexxD U
)xxU V
?xxW X
$strxxY a
:xxb c
nullxxd h
;xxh i
}yy 	
}zz 
}{{ Ÿ5
eC:\visual\Final_Assignment DotNet\WebAppMvc\Areas\Identity\Pages\Account\Manage\SetPassword.cshtml.cs
	namespace 	
	WebAppMvc
 
. 
Areas 
. 
Identity "
." #
Pages# (
.( )
Account) 0
.0 1
Manage1 7
{ 
public 

class 
SetPasswordModel !
:" #
	PageModel$ -
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public 
SetPasswordModel 
(  
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
[ 	
BindProperty	 
] 
public   

InputModel   
Input   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
[&& 	
TempData&&	 
]&& 
public'' 
string'' 
StatusMessage'' #
{''$ %
get''& )
;'') *
set''+ .
;''. /
}''0 1
public-- 
class-- 

InputModel-- 
{.. 	
[33 
Required33 
]33 
[44 
StringLength44 
(44 
$num44 
,44 
ErrorMessage44 +
=44, -
$str44. l
,44l m
MinimumLength44n {
=44| }
$num44~ 
)	44 Ä
]
44Ä Å
[55 
DataType55 
(55 
DataType55 
.55 
Password55 '
)55' (
]55( )
[66 
Display66 
(66 
Name66 
=66 
$str66 *
)66* +
]66+ ,
public77 
string77 
NewPassword77 %
{77& '
get77( +
;77+ ,
set77- 0
;770 1
}772 3
[== 
DataType== 
(== 
DataType== 
.== 
Password== '
)==' (
]==( )
[>> 
Display>> 
(>> 
Name>> 
=>> 
$str>> 2
)>>2 3
]>>3 4
[?? 
Compare?? 
(?? 
$str?? "
,??" #
ErrorMessage??$ 0
=??1 2
$str??3 m
)??m n
]??n o
public@@ 
string@@ 
ConfirmPassword@@ )
{@@* +
get@@, /
;@@/ 0
set@@1 4
;@@4 5
}@@6 7
}AA 	
publicCC 
asyncCC 
TaskCC 
<CC 
IActionResultCC '
>CC' (

OnGetAsyncCC) 3
(CC3 4
)CC4 5
{DD 	
varEE 
userEE 
=EE 
awaitEE 
_userManagerEE )
.EE) *
GetUserAsyncEE* 6
(EE6 7
UserEE7 ;
)EE; <
;EE< =
ifFF 
(FF 
userFF 
==FF 
nullFF 
)FF 
{GG 
returnHH 
NotFoundHH 
(HH  
$"HH  "
$strHH" ?
{HH? @
_userManagerHH@ L
.HHL M
	GetUserIdHHM V
(HHV W
UserHHW [
)HH[ \
}HH\ ]
$strHH] _
"HH_ `
)HH` a
;HHa b
}II 
varKK 
hasPasswordKK 
=KK 
awaitKK #
_userManagerKK$ 0
.KK0 1
HasPasswordAsyncKK1 A
(KKA B
userKKB F
)KKF G
;KKG H
ifMM 
(MM 
hasPasswordMM 
)MM 
{NN 
returnOO 
RedirectToPageOO %
(OO% &
$strOO& 8
)OO8 9
;OO9 :
}PP 
returnRR 
PageRR 
(RR 
)RR 
;RR 
}SS 	
publicUU 
asyncUU 
TaskUU 
<UU 
IActionResultUU '
>UU' (
OnPostAsyncUU) 4
(UU4 5
)UU5 6
{VV 	
ifWW 
(WW 
!WW 

ModelStateWW 
.WW 
IsValidWW #
)WW# $
{XX 
returnYY 
PageYY 
(YY 
)YY 
;YY 
}ZZ 
var\\ 
user\\ 
=\\ 
await\\ 
_userManager\\ )
.\\) *
GetUserAsync\\* 6
(\\6 7
User\\7 ;
)\\; <
;\\< =
if]] 
(]] 
user]] 
==]] 
null]] 
)]] 
{^^ 
return__ 
NotFound__ 
(__  
$"__  "
$str__" ?
{__? @
_userManager__@ L
.__L M
	GetUserId__M V
(__V W
User__W [
)__[ \
}__\ ]
$str__] _
"___ `
)__` a
;__a b
}`` 
varbb 
addPasswordResultbb !
=bb" #
awaitbb$ )
_userManagerbb* 6
.bb6 7
AddPasswordAsyncbb7 G
(bbG H
userbbH L
,bbL M
InputbbN S
.bbS T
NewPasswordbbT _
)bb_ `
;bb` a
ifcc 
(cc 
!cc 
addPasswordResultcc "
.cc" #
	Succeededcc# ,
)cc, -
{dd 
foreachee 
(ee 
varee 
erroree "
inee# %
addPasswordResultee& 7
.ee7 8
Errorsee8 >
)ee> ?
{ff 

ModelStategg 
.gg 
AddModelErrorgg ,
(gg, -
stringgg- 3
.gg3 4
Emptygg4 9
,gg9 :
errorgg; @
.gg@ A
DescriptionggA L
)ggL M
;ggM N
}hh 
returnii 
Pageii 
(ii 
)ii 
;ii 
}jj 
awaitll 
_signInManagerll  
.ll  !
RefreshSignInAsyncll! 3
(ll3 4
userll4 8
)ll8 9
;ll9 :
StatusMessagemm 
=mm 
$strmm 9
;mm9 :
returnoo 
RedirectToPageoo !
(oo! "
)oo" #
;oo# $
}pp 	
}qq 
}rr Û
kC:\visual\Final_Assignment DotNet\WebAppMvc\Areas\Identity\Pages\Account\Manage\ShowRecoveryCodes.cshtml.cs
	namespace

 	
	WebAppMvc


 
.

 
Areas

 
.

 
Identity

 "
.

" #
Pages

# (
.

( )
Account

) 0
.

0 1
Manage

1 7
{ 
public 

class "
ShowRecoveryCodesModel '
:( )
	PageModel* 3
{ 
[ 	
TempData	 
] 
public 
string 
[ 
] 
RecoveryCodes %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public$$ 
IActionResult$$ 
OnGet$$ "
($$" #
)$$# $
{%% 	
if&& 
(&& 
RecoveryCodes&& 
==&&  
null&&! %
||&&& (
RecoveryCodes&&) 6
.&&6 7
Length&&7 =
==&&> @
$num&&A B
)&&B C
{'' 
return(( 
RedirectToPage(( %
(((% &
$str((& A
)((A B
;((B C
})) 
return++ 
Page++ 
(++ 
)++ 
;++ 
},, 	
}-- 
}.. ¿+
qC:\visual\Final_Assignment DotNet\WebAppMvc\Areas\Identity\Pages\Account\Manage\TwoFactorAuthentication.cshtml.cs
	namespace 	
	WebAppMvc
 
. 
Areas 
. 
Identity "
." #
Pages# (
.( )
Account) 0
.0 1
Manage1 7
{ 
public 

class (
TwoFactorAuthenticationModel -
:. /
	PageModel0 9
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !(
TwoFactorAuthenticationModel! =
>= >
_logger? F
;F G
public (
TwoFactorAuthenticationModel +
(+ ,
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager3 @
<@ A
IdentityUserA M
>M N
signInManagerO \
,\ ]
ILogger^ e
<e f)
TwoFactorAuthenticationModel	f Ç
>
Ç É
logger
Ñ ä
)
ä ã
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public   
bool   
HasAuthenticator   $
{  % &
get  ' *
;  * +
set  , /
;  / 0
}  1 2
public&& 
int&& 
RecoveryCodesLeft&& $
{&&% &
get&&' *
;&&* +
set&&, /
;&&/ 0
}&&1 2
[,, 	
BindProperty,,	 
],, 
public-- 
bool-- 
Is2faEnabled--  
{--! "
get--# &
;--& '
set--( +
;--+ ,
}--- .
public33 
bool33 
IsMachineRemembered33 '
{33( )
get33* -
;33- .
set33/ 2
;332 3
}334 5
[99 	
TempData99	 
]99 
public:: 
string:: 
StatusMessage:: #
{::$ %
get::& )
;::) *
set::+ .
;::. /
}::0 1
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (

OnGetAsync<<) 3
(<<3 4
)<<4 5
{== 	
var>> 
user>> 
=>> 
await>> 
_userManager>> )
.>>) *
GetUserAsync>>* 6
(>>6 7
User>>7 ;
)>>; <
;>>< =
if?? 
(?? 
user?? 
==?? 
null?? 
)?? 
{@@ 
returnAA 
NotFoundAA 
(AA  
$"AA  "
$strAA" ?
{AA? @
_userManagerAA@ L
.AAL M
	GetUserIdAAM V
(AAV W
UserAAW [
)AA[ \
}AA\ ]
$strAA] _
"AA_ `
)AA` a
;AAa b
}BB 
HasAuthenticatorDD 
=DD 
awaitDD $
_userManagerDD% 1
.DD1 2$
GetAuthenticatorKeyAsyncDD2 J
(DDJ K
userDDK O
)DDO P
!=DDQ S
nullDDT X
;DDX Y
Is2faEnabledEE 
=EE 
awaitEE  
_userManagerEE! -
.EE- .$
GetTwoFactorEnabledAsyncEE. F
(EEF G
userEEG K
)EEK L
;EEL M
IsMachineRememberedFF 
=FF  !
awaitFF" '
_signInManagerFF( 6
.FF6 7,
 IsTwoFactorClientRememberedAsyncFF7 W
(FFW X
userFFX \
)FF\ ]
;FF] ^
RecoveryCodesLeftGG 
=GG 
awaitGG  %
_userManagerGG& 2
.GG2 3#
CountRecoveryCodesAsyncGG3 J
(GGJ K
userGGK O
)GGO P
;GGP Q
returnII 
PageII 
(II 
)II 
;II 
}JJ 	
publicLL 
asyncLL 
TaskLL 
<LL 
IActionResultLL '
>LL' (
OnPostAsyncLL) 4
(LL4 5
)LL5 6
{MM 	
varNN 
userNN 
=NN 
awaitNN 
_userManagerNN )
.NN) *
GetUserAsyncNN* 6
(NN6 7
UserNN7 ;
)NN; <
;NN< =
ifOO 
(OO 
userOO 
==OO 
nullOO 
)OO 
{PP 
returnQQ 
NotFoundQQ 
(QQ  
$"QQ  "
$strQQ" ?
{QQ? @
_userManagerQQ@ L
.QQL M
	GetUserIdQQM V
(QQV W
UserQQW [
)QQ[ \
}QQ\ ]
$strQQ] _
"QQ_ `
)QQ` a
;QQa b
}RR 
awaitTT 
_signInManagerTT  
.TT  !&
ForgetTwoFactorClientAsyncTT! ;
(TT; <
)TT< =
;TT= >
StatusMessageUU 
=UU 
$str	UU î
;
UUî ï
returnVV 
RedirectToPageVV !
(VV! "
)VV" #
;VV# $
}WW 	
}XX 
}YY á
lC:\visual\Final_Assignment DotNet\WebAppMvc\Areas\Identity\Pages\Account\ResetPasswordConfirmation.cshtml.cs
	namespace 	
	WebAppMvc
 
. 
Areas 
. 
Identity "
." #
Pages# (
.( )
Account) 0
{		 
[ 
AllowAnonymous 
] 
public 

class *
ResetPasswordConfirmationModel /
:0 1
	PageModel2 ;
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} Ô
PC:\visual\Final_Assignment DotNet\WebAppMvc\Areas\Identity\Pages\Error.cshtml.cs
	namespace

 	
	WebAppMvc


 
.

 
Areas

 
.

 
Identity

 "
.

" #
Pages

# (
{ 
[ 
AllowAnonymous 
] 
[ 
ResponseCache 
( 
Duration 
= 
$num 
,  
Location! )
=* +!
ResponseCacheLocation, A
.A B
NoneB F
,F G
NoStoreH O
=P Q
trueR V
)V W
]W X
public 

class 

ErrorModel 
: 
	PageModel '
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
public$$ 
void$$ 
OnGet$$ 
($$ 
)$$ 
{%% 	
	RequestId&& 
=&& 
Activity&&  
.&&  !
Current&&! (
?&&( )
.&&) *
Id&&* ,
??&&- /
HttpContext&&0 ;
.&&; <
TraceIdentifier&&< K
;&&K L
}'' 	
}(( 
})) ©~
JC:\visual\Final_Assignment DotNet\WebAppMvc\Controllers\AdminController.cs
	namespace		 	
	WebAppMvc		
 
.		 
Controllers		 
{

 
public 

class 
AdminController  
:! "

Controller# -
{ 
private 
readonly 
AdminDbContext '
_adminDbContext( 7
;7 8
private 
readonly 
RoleManager $
<$ %
IdentityRole% 1
>1 2
_roleManager3 ?
;? @
private 
readonly 
UserManager $
<$ % 
RegisterCustomFields% 9
>9 :
_userManager; G
;G H
private 
List 
< 

AdminModel 
>  
list! %
=& '
new( +
List, 0
<0 1

AdminModel1 ;
>; <
(< =
)= >
;> ?
private 
List 
< 
ApprovalRejected %
>% &
aprrovalLIst' 3
=4 5
new6 9
List: >
<> ?
ApprovalRejected? O
>O P
(P Q
)Q R
;R S
public 
AdminController 
( 
AdminDbContext -
adminDbContext. <
,< =
RoleManager> I
<I J
IdentityRoleJ V
>V W
roleManagerX c
,c d
UserManagere p
<p q!
RegisterCustomFields	q Ö
>
Ö Ü
userManager
á í
)
í ì
{ 	
_adminDbContext 
= 
adminDbContext ,
;, -
_roleManager 
= 
roleManager &
;& '
_userManager 
= 
userManager &
;& '
} 	
[ 	
	Authorize	 
( 
Policy 
= 
$str #
)# $
]$ %
public 
IActionResult 
Index "
(" #
)# $
{ 	
if 
( 
_adminDbContext 
.  
admin  %
==& (
null) -
)- .
{ 
return 
	NoContent  
(  !
)! "
;" #
}   
list!! 
=!! 
_adminDbContext!! "
.!!" #
admin!!# (
.!!( )
ToList!!) /
(!!/ 0
)!!0 1
;!!1 2
return"" 
View"" 
("" 
list"" 
)"" 
;"" 
}## 	
[$$ 	
	Authorize$$	 
($$ 
Policy$$ 
=$$ 
$str$$ #
)$$# $
]$$$ %
public%% 
ActionResult%% 
ApprovalStatus%% *
(%%* +
)%%+ ,
{&& 	
if'' 
('' 
_adminDbContext'' 
.''  
approvalRejected''  0
==''1 3
null''4 8
)''8 9
{(( 
return)) 
	NoContent))  
())  !
)))! "
;))" #
}** 
aprrovalLIst++ 
=++ 
_adminDbContext++ *
.++* +
approvalRejected+++ ;
.++; <
ToList++< B
(++B C
)++C D
;++D E
var,, 
datalist,, 
=,, 
aprrovalLIst,, '
.,,' (
OrderBy,,( /
(,,/ 0
o,,0 1
=>,,2 4
o,,5 6
.,,6 7
Email,,7 <
),,< =
;,,= >
return-- 
View-- 
(-- 
datalist--  
)--  !
;--! "
}.. 	
[// 	
	Authorize//	 
(// 
Policy// 
=// 
$str// #
)//# $
]//$ %
public00 
ActionResult00 
Rejectedstatus00 *
(00* +
)00+ ,
{11 	
return22 
View22 
(22 
)22 
;22 
}33 	
[44 	
	Authorize44	 
(44 
Policy44 
=44 
$str44 #
)44# $
]44$ %
public55 
async55 
Task55 
<55 
IActionResult55 '
>55' ("
DeleteApprovalRejected55) ?
(55? @
string55@ F
email55G L
)55L M
{66 	
if77 
(77 
_adminDbContext77 
.77  
approvalRejected77  0
==771 3
null774 8
)778 9
{88 
return99 
	NoContent99  
(99  !
)99! "
;99" #
}:: 
var;; 
approvalRejected;;  
=;;! "
_adminDbContext;;# 2
.;;2 3
approvalRejected;;3 C
.;;C D
Find;;D H
(;;H I
email;;I N
);;N O
;;;O P
if<< 
(<< 
approvalRejected<<  
==<<! #
null<<$ (
)<<( )
{== 
return>> 
NotFound>> 
(>>  
)>>  !
;>>! "
}?? 
_adminDbContext@@ 
.@@ 
approvalRejected@@ ,
.@@, -
Remove@@- 3
(@@3 4
approvalRejected@@4 D
)@@D E
;@@E F
awaitAA 
_adminDbContextAA !
.AA! "
SaveChangesAsyncAA" 2
(AA2 3
)AA3 4
;AA4 5
returnBB 
RedirectToActionBB #
(BB# $
$strBB$ 4
)BB4 5
;BB5 6
}CC 	
publicDD 
IActionResultDD 
createDD #
(DD# $
)DD$ %
{EE 	
returnFF 
ViewFF 
(FF 
)FF 
;FF 
}GG 	
publicHH 
IActionResultHH 
RegisteringHH (
(HH( )

AdminModelHH) 3

inputModelHH4 >
)HH> ?
{II 	
ifJJ 
(JJ 
_adminDbContextJJ 
.JJ  
adminJJ  %
==JJ& (
nullJJ) -
)JJ- .
{KK 
returnLL 
	NoContentLL  
(LL  !
)LL! "
;LL" #
}MM 

inputModelNN 
.NN 
RoleNameNN 
=NN  !
$strNN" ,
;NN, -
_adminDbContextOO 
.OO 
adminOO !
.OO! "
AddOO" %
(OO% &

inputModelOO& 0
)OO0 1
;OO1 2
_adminDbContextPP 
.PP 
SaveChangesPP '
(PP' (
)PP( )
;PP) *
	EmailSendQQ 
emailsendingQQ #
=QQ# $
newQQ$ '
	EmailSendQQ( 1
(QQ1 2
)QQ2 3
;QQ3 4
emailsendingRR 
.RR 
SendMailMethodRR '
(RR' (

inputModelRR( 2
.RR2 3
EmailRR3 8
,RR8 9

inputModelRR: D
.RRD E
EmailRRE J
)RRJ K
;RRK L
returnTT 
ViewTT 
(TT 
)TT 
;TT 
}UU 	
[VV 	
HttpPostVV	 
]VV 
publicWW 
asyncWW 
TaskWW 
<WW 
IActionResultWW '
>WW' (
EmailCheckingWW) 6
(WW6 7
stringWW7 =
emailWW> C
)WWC D
{XX 	
varYY 
resultYY 
=YY 
awaitYY 
_userManagerYY +
.YY+ ,
FindByEmailAsyncYY, <
(YY< =
emailYY= B
)YYB C
;YYC D
ifZZ 
(ZZ 
resultZZ 
!=ZZ 
nullZZ 
)ZZ 
{[[ 
return\\ 
Json\\ 
(\\ 
$str\\ 4
)\\4 5
;\\5 6
}]] 
if^^ 
(^^ 
_adminDbContext^^ 
.^^  
admin^^  %
==^^& (
null^^) -
)^^- .
{__ 
return`` 
	NoContent``  
(``  !
)``! "
;``" #
}aa 
varbb 
result1bb 
=bb 
_adminDbContextbb )
.bb) *
adminbb* /
.bb/ 0
Wherebb0 5
(bb5 6
ebb6 7
=>bb8 :
ebb; <
.bb< =
Emailbb= B
==bbC E
emailbbF K
)bbK L
.bbL M
FirstOrDefaultbbM [
(bb[ \
)bb\ ]
;bb] ^
ifdd 
(dd 
result1dd 
!=dd 
nulldd 
)dd  
{ee 
returngg 
Jsongg 
(gg 
$strgg N
)ggN O
;ggO P
}hh 
ifii 
(ii 
_adminDbContextii 
.ii  
approvalRejectedii  0
==ii0 2
nullii3 7
)ii7 8
{jj 
returnkk 
	NoContentkk  
(kk  !
)kk! "
;kk" #
}ll 
varmm 
result2mm 
=mm 
_adminDbContextmm )
.mm) *
approvalRejectedmm* :
.mm: ;
Wheremm; @
(mm@ A
emmA B
=>mmC E
emmF G
.mmG H
EmailmmH M
==mmN P
emailmmQ V
)mmV W
.mmW X
FirstOrDefaultmmX f
(mmf g
)mmg h
;mmh i
ifnn 
(nn 
result2nn 
!=nn 
nullnn 
)nn  
{oo 
returnqq 
Jsonqq 
(qq 
$strqq K
)qqK L
;qqL M
}rr 
returnss 
Jsonss 
(ss 
$strss "
)ss" #
;ss# $
}tt 	
[vv 	
HttpPostvv	 
]vv 
publicww 
asyncww 
Taskww 
<ww 
IActionResultww '
>ww' (
PostdataApporvalww) 9
(ww9 :
intww: =
idww> @
)ww@ A
{xx 	
ifyy 
(yy 
_adminDbContextyy 
.yy  
adminyy  %
==yy& (
nullyy) -
)yy- .
{zz 
return{{ 
	NoContent{{  
({{  !
){{! "
;{{" #
}|| 
if}} 
(}} 
_adminDbContext}} 
.}}  
approvalRejected}}  0
==}}1 3
null}}4 8
)}}8 9
{~~ 
return 
	NoContent  
(  !
)! "
;" #
}
ÄÄ 
var
ÅÅ 
result
ÅÅ 
=
ÅÅ 
_adminDbContext
ÅÅ (
.
ÅÅ( )
admin
ÅÅ) .
.
ÅÅ. /
Find
ÅÅ/ 3
(
ÅÅ3 4
id
ÅÅ4 6
)
ÅÅ6 7
;
ÅÅ7 8
if
ÇÇ 
(
ÇÇ 
result
ÇÇ 
==
ÇÇ 
null
ÇÇ 
)
ÇÇ 
{
ÉÉ 
return
ÑÑ 
NotFound
ÑÑ 
(
ÑÑ  
)
ÑÑ  !
;
ÑÑ! "
}
ÖÖ 
var
ÜÜ 
user
ÜÜ 
=
ÜÜ 
new
ÜÜ "
RegisterCustomFields
ÜÜ /
(
ÜÜ/ 0
)
ÜÜ0 1
{
áá 
Email
àà 
=
àà 
result
àà 
.
àà 
Email
àà $
,
àà$ %

PAN_Number
ââ 
=
ââ 
result
ââ #
.
ââ# $

PAN_Number
ââ$ .
,
ââ. /
UserName
ää 
=
ää 
result
ää !
.
ää! "
Email
ää" '
,
ää' (
}
ãã 
;
ãã 
var
åå 
approval
åå 
=
åå 
new
åå 
ApprovalRejected
åå /
(
åå/ 0
)
åå0 1
{
çç 
Email
éé 
=
éé 
result
éé 
.
éé 
Email
éé $
,
éé$ %
Status
èè 
=
èè 
$str
èè "
}
êê 
;
êê 
var
ëë 
roles
ëë 
=
ëë 
_roleManager
ëë $
.
ëë$ %
FindByNameAsync
ëë% 4
(
ëë4 5
result
ëë5 ;
.
ëë; <
RoleName
ëë< D
)
ëëD E
.
ëëE F
Result
ëëF L
;
ëëL M
await
íí 
_userManager
íí 
.
íí 
CreateAsync
íí *
(
íí* +
user
íí+ /
,
íí/ 0
result
íí1 7
.
íí7 8
Password
íí8 @
)
íí@ A
;
ííA B
await
ìì 
_userManager
ìì 
.
ìì 
AddToRoleAsync
ìì -
(
ìì- .
user
ìì. 2
,
ìì2 3
roles
ìì4 9
.
ìì9 :
Name
ìì: >
)
ìì> ?
;
ìì? @
_adminDbContext
îî 
.
îî 
approvalRejected
îî ,
.
îî, -
Add
îî- 0
(
îî0 1
approval
îî1 9
)
îî9 :
;
îî: ;
_adminDbContext
ïï 
.
ïï 
SaveChanges
ïï '
(
ïï' (
)
ïï( )
;
ïï) *
var
ññ 
details
ññ 
=
ññ 
_adminDbContext
ññ )
.
ññ) *
admin
ññ* /
.
ññ/ 0
Where
ññ0 5
(
ññ5 6
e
ññ6 7
=>
ññ8 :
e
ññ; <
.
ññ< =
Email
ññ= B
==
ññC E
result
ññF L
.
ññL M
Email
ññM R
)
ññR S
.
ññS T
FirstOrDefault
ññT b
(
ññb c
)
ññc d
;
ññd e
if
óó 
(
óó 
details
óó 
==
óó 
null
óó 
)
óó  
{
òò 
return
ôô 
NotFound
ôô 
(
ôô  
)
ôô  !
;
ôô! "
}
öö 
_adminDbContext
õõ 
.
õõ 
admin
õõ !
.
õõ! "
Remove
õõ" (
(
õõ( )
details
õõ) 0
)
õõ0 1
;
õõ1 2
_adminDbContext
úú 
.
úú 
SaveChanges
úú '
(
úú' (
)
úú( )
;
úú) *
return
ùù 
Json
ùù 
(
ùù 
$str
ùù /
)
ùù/ 0
;
ùù0 1
}
ûû 	
[
üü 	
HttpPost
üü	 
]
üü 
public
†† 
IActionResult
†† 
rejected
†† %
(
††% &
int
††& )
id
††* ,
)
††, -
{
°° 	
var
¢¢ 
details
¢¢ 
=
¢¢ 
_adminDbContext
¢¢ )
.
¢¢) *
admin
¢¢* /
.
¢¢/ 0
Find
¢¢0 4
(
¢¢4 5
id
¢¢5 7
)
¢¢7 8
;
¢¢8 9
if
££ 
(
££ 
details
££ 
==
££ 
null
££ 
)
££  
{
§§ 
return
•• 
NotFound
•• 
(
••  
)
••  !
;
••! "
}
¶¶ 
_adminDbContext
ßß 
.
ßß 
admin
ßß !
.
ßß! "
Remove
ßß" (
(
ßß( )
details
ßß) 0
)
ßß0 1
;
ßß1 2
_adminDbContext
®® 
.
®® 
SaveChanges
®® '
(
®®' (
)
®®( )
;
®®) *
var
©© 
approval
©© 
=
©© 
new
©© 
ApprovalRejected
©© /
(
©©/ 0
)
©©0 1
{
™™ 
Email
´´ 
=
´´ 
details
´´ 
.
´´  
Email
´´  %
,
´´% &
Status
¨¨ 
=
¨¨ 
$str
¨¨ #
}
≠≠ 
;
≠≠ 
_adminDbContext
ÆÆ 
.
ÆÆ 
approvalRejected
ÆÆ ,
.
ÆÆ, -
Add
ÆÆ- 0
(
ÆÆ0 1
approval
ÆÆ1 9
)
ÆÆ9 :
;
ÆÆ: ;
_adminDbContext
ØØ 
.
ØØ 
SaveChanges
ØØ '
(
ØØ' (
)
ØØ( )
;
ØØ) *
return
∞∞ 
Json
∞∞ 
(
∞∞ 
$str
∞∞ "
)
∞∞" #
;
∞∞# $
}
≤≤ 	
}
µµ 
}∂∂ Ø
IC:\visual\Final_Assignment DotNet\WebAppMvc\Controllers\HomeController.cs
	namespace 	
	WebAppMvc
 
. 
Controllers 
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
public

 
IActionResult

 
Index

 "
(

" #
)

# $
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Privacy $
($ %
)% &
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
ResponseCache	 
( 
Duration 
=  !
$num" #
,# $
Location% -
=. /!
ResponseCacheLocation0 E
.E F
NoneF J
,J K
NoStoreL S
=T U
trueV Z
)Z [
][ \
public 
IActionResult 
Error "
(" #
)# $
{ 	
return 
View 
( 
new 
ErrorViewModel *
{+ ,
	RequestId- 6
=7 8
Activity9 A
.A B
CurrentB I
?I J
.J K
IdK M
??N P
HttpContextQ \
.\ ]
TraceIdentifier] l
}m n
)n o
;o p
} 	
} 
} Ùy
PC:\visual\Final_Assignment DotNet\WebAppMvc\Controllers\MallDetailsController.cs
	namespace 	
	WebAppMvc
 
. 
Controllers 
{ 
[ 
	Authorize 
( 
Policy 
= 
$str "
)" #
]# $
public		 

class		 !
MallDetailsController		 &
:		' (

Controller		) 3
{

 
private 
List 
< 
MallDetailsModel #
># $
?$ %
MallDetails& 1
=2 3
new4 7
List8 <
<< =
MallDetailsModel= M
>M N
(N O
)O P
;P Q
private 

readonly 
Uri 
baseuri 
=  !
new" %
Uri& )
() *
$str* S
)S T
;T U
public 
IActionResult 
IndexForMall )
() *
)* +
{ 	
using 
( 
var 
client 
= 
new  #

HttpClient$ .
(. /
)/ 0
)0 1
{ 
client 
. 
BaseAddress "
=# $
baseuri% ,
;, -
HttpResponseMessage #
response$ ,
=- .
client/ 5
.5 6
GetAsync6 >
(> ?
baseuri? F
)F G
.G H
ResultH N
;N O
if 
( 
response 
. 
IsSuccessStatusCode 0
)0 1
{ 
string 
data 
=  !
response" *
.* +
Content+ 2
.2 3
ReadAsStringAsync3 D
(D E
)E F
.F G
ResultG M
;M N
MallDetails 
=  !
JsonConvert" -
.- .
DeserializeObject. ?
<? @
List@ D
<D E
MallDetailsModelE U
>U V
>V W
(W X
dataX \
)\ ]
;] ^
if 
( 
MallDetails #
==$ &
null' +
)+ ,
{ 
return 
NotFound '
(' (
)( )
;) *
} 
var 
list 
= 
MallDetails *
.* +
OrderByDescending+ <
(< =
o= >
=>? A
oB C
.C D
Built_in_YearD Q
)Q R
.R S
ThenByS Y
(Y Z
oZ [
=>\ ^
o_ `
.` a
ShoppingMallNamea q
)q r
;r s
return 
View 
(  
list  $
)$ %
;% &
}   

ModelState!! 
.!! 
AddModelError!! (
(!!( )
string!!) /
.!!/ 0
Empty!!0 5
,!!5 6
$str!!7 d
)!!d e
;!!e f
return"" 
View"" 
("" 
)"" 
;"" 
}$$ 
}%% 	
public&& 
IActionResult&& 
Create&& #
(&&# $
)&&$ %
{'' 	
return(( 
View(( 
((( 
)(( 
;(( 
})) 	
[** 	
HttpPost**	 
]** 
public++ 
IActionResult++ 
AddMallDetails++ +
(+++ ,
MallDetailsModel++, <
mallDetailsModel++= M
)++M N
{,, 	
if-- 
(-- 

ModelState-- 
.-- 
IsValid-- "
)--" #
{.. 
using// 
(// 

HttpClient// !
client//" (
=//) *
new//+ .

HttpClient/// 9
(//9 :
)//: ;
)//; <
{00 
client11 
.11 
BaseAddress11 &
=11' (
baseuri11) 0
;110 1
var33 
postdetails33 #
=33$ %
client33& ,
.33, -
PostAsJsonAsync33- <
<33< =
MallDetailsModel33= M
>33M N
(33N O
baseuri33O V
,33V W
mallDetailsModel33X h
)33h i
;33i j
postdetails44 
.44  
Wait44  $
(44$ %
)44% &
;44& '
var55 
result55 
=55  
postdetails55! ,
.55, -
Result55- 3
;553 4
if66 
(66 
result66 
.66 
IsSuccessStatusCode66 2
)662 3
{77 
return88 
RedirectToAction88 /
(88/ 0
$str880 >
)88> ?
;88? @
}99 
}:: 
};; 

ModelState<< 
.<< 
AddModelError<< $
(<<$ %
string<<% +
.<<+ ,
Empty<<, 1
,<<1 2
$str<<3 `
)<<` a
;<<a b
return== 
View== 
(== 
mallDetailsModel== (
)==( )
;==) *
}>> 	
public?? 
IActionResult?? 
Edit?? !
(??! "
int??" %
id??& (
)??( )
{@@ 	
usingAA 
(AA 
varAA 
clientAA 
=AA 
newAA  #

HttpClientAA$ .
(AA. /
)AA/ 0
)AA0 1
{BB 
clientCC 
.CC 
BaseAddressCC "
=CC# $
baseuriCC% ,
;CC, -
HttpResponseMessageDD #
responseDD$ ,
=DD- .
clientDD/ 5
.DD5 6
GetAsyncDD6 >
(DD> ?
baseuriDD? F
+DDG H
$"DDI K
$strDDK L
{DDL M
idDDM O
}DDO P
"DDP Q
)DDQ R
.DDR S
ResultDDS Y
;DDY Z
ifFF 
(FF 
responseFF 
.FF 
IsSuccessStatusCodeFF 0
)FF0 1
{GG 
stringHH 
dataHH 
=HH  !
responseHH" *
.HH* +
ContentHH+ 2
.HH2 3
ReadAsStringAsyncHH3 D
(HHD E
)HHE F
.HHF G
ResultHHG M
;HHM N
varII 
detailsII 
=II  !
JsonConvertII" -
.II- .
DeserializeObjectII. ?
<II? @
MallDetailsModelII@ P
>IIP Q
(IIQ R
dataIIR V
)IIV W
;IIW X
ifJJ 
(JJ 
detailsJJ 
==JJ  "
nullJJ# '
)JJ' (
{KK 
returnLL 
	NoContentLL (
(LL( )
)LL) *
;LL* +
}MM 
TempDataNN 
[NN 
$strNN !
]NN! "
=NN# $
detailsNN% ,
.NN, -
IdNN- /
;NN/ 0
returnOO 
ViewOO 
(OO  
detailsOO  '
)OO' (
;OO( )
}PP 
returnQQ 
ViewQQ 
(QQ 
)QQ 
;QQ 
}RR 
}SS 	
[TT 	
HttpPostTT	 
]TT 
publicUU 
IActionResultUU 
EditMallDetailsUU ,
(UU, -
MallDetailsModelUU- =
mallDetailsModelUU> N
)UUN O
{VV 	
ifWW 
(WW 

ModelStateWW 
.WW 
IsValidWW "
)WW" #
{XX 
ifYY 
(YY 
mallDetailsModelYY $
==YY% '
nullYY( ,
)YY, -
{ZZ 
return[[ 
	NoContent[[ $
([[$ %
)[[% &
;[[& '
}\\ 
using]] 
(]] 
var]] 
client]] !
=]]" #
new]]$ '

HttpClient]]( 2
(]]2 3
)]]3 4
)]]4 5
{^^ 
client__ 
.__ 
BaseAddress__ &
=__' (
baseuri__) 0
;__0 1
var`` 
put`` 
=`` 
client`` $
.``$ %
PutAsJsonAsync``% 3
<``3 4
MallDetailsModel``4 D
>``D E
(``E F
baseuri``F M
+``N O
$"``P R
$str``R S
{``S T
TempData``T \
[``\ ]
$str``] a
]``a b
}``b c
"``c d
,``d e
mallDetailsModel``f v
)``v w
;``w x
putaa 
.aa 
Waitaa 
(aa 
)aa 
;aa 
varbb 
resultbb 
=bb  
putbb! $
.bb$ %
Resultbb% +
;bb+ ,
ifcc 
(cc 
resultcc 
.cc 
IsSuccessStatusCodecc 2
)cc2 3
{dd 
returnee 
RedirectToActionee /
(ee/ 0
$stree0 >
)ee> ?
;ee? @
}ff 
}gg 
}hh 

ModelStateii 
.ii 
AddModelErrorii $
(ii$ %
stringii% +
.ii+ ,
Emptyii, 1
,ii1 2
$strii3 `
)ii` a
;iia b
returnkk 
Viewkk 
(kk 
mallDetailsModelkk (
)kk( )
;kk) *
}mm 	
publicnn 
IActionResultnn 
Detailsnn $
(nn$ %
intnn% (
idnn) +
)nn+ ,
{oo 	
usingpp 
(pp 
varpp 
clientpp 
=pp 
newpp  #

HttpClientpp$ .
(pp. /
)pp/ 0
)pp0 1
{qq 
clientrr 
.rr 
BaseAddressrr "
=rr# $
baseurirr% ,
;rr, -
HttpResponseMessagess #
responsess$ ,
=ss- .
clientss/ 5
.ss5 6
GetAsyncss6 >
(ss> ?
baseuriss? F
+ssG H
$"ssI K
$strssK L
{ssL M
idssM O
}ssO P
"ssP Q
)ssQ R
.ssR S
ResultssS Y
;ssY Z
ifuu 
(uu 
responseuu 
.uu 
IsSuccessStatusCodeuu 0
)uu0 1
{vv 
stringww 
dataww 
=ww  !
responseww" *
.ww* +
Contentww+ 2
.ww2 3
ReadAsStringAsyncww3 D
(wwD E
)wwE F
.wwF G
ResultwwG M
;wwM N
varxx 
detailsxx 
=xx  !
JsonConvertxx" -
.xx- .
DeserializeObjectxx. ?
<xx? @
MallDetailsModelxx@ P
>xxP Q
(xxQ R
dataxxR V
)xxV W
;xxW X
returnzz 
Viewzz 
(zz  
detailszz  '
)zz' (
;zz( )
}{{ 
return|| 
View|| 
(|| 
)|| 
;|| 
}}} 
}~~ 	
public 
IActionResult 
Delete #
(# $
int$ '
id( *
)* +
{
ÄÄ 	
using
ÅÅ 
(
ÅÅ 
var
ÅÅ 
client
ÅÅ 
=
ÅÅ 
new
ÅÅ  #

HttpClient
ÅÅ$ .
(
ÅÅ. /
)
ÅÅ/ 0
)
ÅÅ0 1
{
ÇÇ 
client
ÉÉ 
.
ÉÉ 
BaseAddress
ÉÉ "
=
ÉÉ# $
baseuri
ÉÉ% ,
;
ÉÉ, -
var
ÑÑ 
delete
ÑÑ 
=
ÑÑ 
client
ÑÑ #
.
ÑÑ# $
DeleteAsync
ÑÑ$ /
(
ÑÑ/ 0
baseuri
ÑÑ0 7
+
ÑÑ8 9
$"
ÑÑ: <
$str
ÑÑ< =
{
ÑÑ= >
id
ÑÑ> @
}
ÑÑ@ A
"
ÑÑA B
)
ÑÑB C
;
ÑÑC D
delete
ÖÖ 
.
ÖÖ 
Wait
ÖÖ 
(
ÖÖ 
)
ÖÖ 
;
ÖÖ 
var
ÜÜ 
result
ÜÜ 
=
ÜÜ 
delete
ÜÜ #
.
ÜÜ# $
Result
ÜÜ$ *
;
ÜÜ* +
if
áá 
(
áá 
result
áá 
.
áá !
IsSuccessStatusCode
áá .
)
áá. /
{
àà 
return
ââ 
RedirectToAction
ââ +
(
ââ+ ,
$str
ââ, :
)
ââ: ;
;
ââ; <
}
ää 

ModelState
ãã 
.
ãã 
AddModelError
ãã (
(
ãã( )
string
ãã) /
.
ãã/ 0
Empty
ãã0 5
,
ãã5 6
$str
ãã7 E
)
ããE F
;
ããF G
return
åå 
View
åå 
(
åå 
)
åå 
;
åå 
}
çç 
}
éé 	
[
èè 	
HttpPost
èè	 
]
èè 
public
êê 
IActionResult
êê 
MallNamecheckAjax
êê .
(
êê. /
string
êê/ 5
name
êê6 :
)
êê: ;
{
ëë 	
using
íí 
(
íí 
var
íí 
client
íí 
=
íí 
new
íí  #

HttpClient
íí$ .
(
íí. /
)
íí/ 0
)
íí0 1
{
ìì 
client
îî 
.
îî 
BaseAddress
îî "
=
îî# $
baseuri
îî% ,
;
îî, -!
HttpResponseMessage
ïï #
response
ïï$ ,
=
ïï- .
client
ïï/ 5
.
ïï5 6
GetAsync
ïï6 >
(
ïï> ?
baseuri
ïï? F
)
ïïF G
.
ïïG H
Result
ïïH N
;
ïïN O
if
óó 
(
óó 
response
óó 
.
óó !
IsSuccessStatusCode
óó 0
)
óó0 1
{
òò 
string
ôô 
data
ôô 
=
ôô  !
response
ôô" *
.
ôô* +
Content
ôô+ 2
.
ôô2 3
ReadAsStringAsync
ôô3 D
(
ôôD E
)
ôôE F
.
ôôF G
Result
ôôG M
;
ôôM N
MallDetails
öö 
=
öö  !
JsonConvert
öö" -
.
öö- .
DeserializeObject
öö. ?
<
öö? @
List
öö@ D
<
ööD E
MallDetailsModel
ööE U
>
ööU V
>
ööV W
(
ööW X
data
ööX \
)
öö\ ]
;
öö] ^
if
õõ 
(
õõ 
MallDetails
õõ #
==
õõ$ &
null
õõ' +
)
õõ+ ,
{
úú 
return
ùù 
	NoContent
ùù (
(
ùù( )
)
ùù) *
;
ùù* +
}
ûû 
foreach
üü 
(
üü 
var
üü  
details
üü! (
in
üü) +
MallDetails
üü, 7
)
üü7 8
{
†† 
bool
†† 
result
†† !
=
††" #
StringComparer
††$ 2
.
††2 3&
CurrentCultureIgnoreCase
††3 K
.
††K L
Equals
††L R
(
††R S
details
††S Z
.
††Z [
ShoppingMallName
††[ k
,
††k l
name
††m q
)
††q r
;
††r s
if
°° 
(
°° 
result
°° "
==
°°" $
true
°°$ (
)
°°( )
{
¢¢ 
return
££ "
Json
££# '
(
££' (
$str
££( /
)
££/ 0
;
££0 1
}
§§ 
}
•• 
return
¶¶ 
Json
¶¶ 
(
¶¶  
$str
¶¶  *
)
¶¶* +
;
¶¶+ ,
}
ßß 
}
®® 
return
©© 
View
©© 
(
©© 
)
©© 
;
©© 
}
™™ 	
}
´´ 
}¨¨ ¨
IC:\visual\Final_Assignment DotNet\WebAppMvc\Controllers\RoleController.cs
	namespace 	
	WebAppMvc
 
. 
Controllers 
{ 
public 

class 
RoleController 
:  !

Controller" ,
{ 
private 
readonly 
RoleManager $
<$ %
IdentityRole% 1
>1 2
_roleManager3 ?
;? @
public

 
RoleController

 
(

 
RoleManager

 )
<

) *
IdentityRole

* 6
>

6 7
roleManager

8 C
)

C D
{ 	
_roleManager 
= 
roleManager &
;& '
} 	
public 
IActionResult 
Index "
(" #
)# $
{ 	
var 
roles 
= 
_roleManager $
.$ %
Roles% *
.* +
ToList+ 1
(1 2
)2 3
;3 4
return 
View 
( 
roles 
) 
; 
} 	
public 
IActionResult 

CreateRole '
(' (
)( )
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
ActionResult &
>& '
Create( .
(. /
IdentityRole/ ;
role< @
)@ A
{ 	
await 
_roleManager 
. 
CreateAsync *
(* +
role+ /
)/ 0
;0 1
return 
RedirectToAction #
(# $
$str$ +
)+ ,
;, -
} 	
} 
} Ø
BC:\visual\Final_Assignment DotNet\WebAppMvc\Data\AdminDbContext.cs
	namespace 	
	WebAppMvc
 
. 
Data 
{ 
public 

class 
AdminDbContext 
:  
	DbContext  )
{ 
public 
DbSet 
< 

AdminModel 
>  
?  !
admin" '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public		 
DbSet		 
<		 
ApprovalRejected		 %
>		% &
?		& '
approvalRejected		( 8
{		9 :
get		; >
;		> ?
set		@ C
;		C D
}		E F
public

 
AdminDbContext

 
(

 
)

 
{ 	
} 	
public 
AdminDbContext 
( 
DbContextOptions .
<. /
AdminDbContext/ =
>= >
options? F
)F G
: 
base 
( 
options 
) 
{ 	
} 	
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
UseSqlServer '
(' (
$str( p
)p q
;q r
} 	
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
modelBuilder 
. 
Entity 
<  

AdminModel  *
>* +
(+ ,
), -
. 
HasIndex 
( 
u 
=> 
u  
.  !
Email! &
)& '
. 
IsUnique 
( 
) 
; 
modelBuilder 
. 
Entity 
<  
ApprovalRejected  0
>0 1
(1 2
)2 3
. 
HasIndex 
( 
u 
=> 
u  
.  !
Email! &
)& '
.' (
IsUnique( 0
(0 1
)1 2
;2 3
} 	
} 
} ø
HC:\visual\Final_Assignment DotNet\WebAppMvc\Data\ApplicationDbContext.cs
	namespace 	
	WebAppMvc
 
. 
Data 
{ 
public 

class  
ApplicationDbContext %
:& '
IdentityDbContext( 9
<9 : 
RegisterCustomFields: N
>N O
{ 
public		  
ApplicationDbContext		 #
(		# $
DbContextOptions		$ 4
<		4 5 
ApplicationDbContext		5 I
>		I J
options		K R
)		R S
:

 
base

 
(

 
options

 
)

 
{ 	
} 	
} 
} ö
]C:\visual\Final_Assignment DotNet\WebAppMvc\Data\MigrationsApplication\20220824201652_hhhh.cs
	namespace 	
	WebAppMvc
 
. 
Data 
. !
MigrationsApplication .
{ 
public 

partial 
class 
hhhh 
: 
	Migration  )
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
} 	
} 
} £»
YC:\visual\Final_Assignment DotNet\WebAppMvc\Data\Migrations\20220823181604_MyMigration.cs
	namespace 	
	WebAppMvc
 
. 
Data 
. 

Migrations #
{ 
public 

partial 
class 
MyMigration $
:% &
	Migration' 0
{		 
	protected

 
override

 
void

 
Up

  "
(

" #
MigrationBuilder

# 3
migrationBuilder

4 D
)

D E
{ 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 C
,C D
nullableE M
:M N
falseO T
)T U
,U V
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 E
,E F
	maxLengthG P
:P Q
$numR U
,U V
nullableW _
:_ `
truea e
)e f
,f g
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ O
,O P
	maxLengthQ Z
:Z [
$num\ _
,_ `
nullablea i
:i j
truek o
)o p
,p q
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
type< @
:@ A
$strB Q
,Q R
nullableS [
:[ \
true] a
)a b
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
type. 2
:2 3
$str4 C
,C D
nullableE M
:M N
falseO T
)T U
,U V

PAN_Number 
=  
table! &
.& '
Column' -
<- .
string. 4
>4 5
(5 6
type6 :
:: ;
$str< K
,K L
nullableM U
:U V
falseW \
)\ ]
,] ^
UserName   
=   
table   $
.  $ %
Column  % +
<  + ,
string  , 2
>  2 3
(  3 4
type  4 8
:  8 9
$str  : I
,  I J
	maxLength  K T
:  T U
$num  V Y
,  Y Z
nullable  [ c
:  c d
true  e i
)  i j
,  j k
NormalizedUserName!! &
=!!' (
table!!) .
.!!. /
Column!!/ 5
<!!5 6
string!!6 <
>!!< =
(!!= >
type!!> B
:!!B C
$str!!D S
,!!S T
	maxLength!!U ^
:!!^ _
$num!!` c
,!!c d
nullable!!e m
:!!m n
true!!o s
)!!s t
,!!t u
Email"" 
="" 
table"" !
.""! "
Column""" (
<""( )
string"") /
>""/ 0
(""0 1
type""1 5
:""5 6
$str""7 F
,""F G
	maxLength""H Q
:""Q R
$num""S V
,""V W
nullable""X `
:""` a
true""b f
)""f g
,""g h
NormalizedEmail## #
=##$ %
table##& +
.##+ ,
Column##, 2
<##2 3
string##3 9
>##9 :
(##: ;
type##; ?
:##? @
$str##A P
,##P Q
	maxLength##R [
:##[ \
$num##] `
,##` a
nullable##b j
:##j k
true##l p
)##p q
,##q r
EmailConfirmed$$ "
=$$# $
table$$% *
.$$* +
Column$$+ 1
<$$1 2
bool$$2 6
>$$6 7
($$7 8
type$$8 <
:$$< =
$str$$> C
,$$C D
nullable$$E M
:$$M N
false$$O T
)$$T U
,$$U V
PasswordHash%%  
=%%! "
table%%# (
.%%( )
Column%%) /
<%%/ 0
string%%0 6
>%%6 7
(%%7 8
type%%8 <
:%%< =
$str%%> M
,%%M N
nullable%%O W
:%%W X
true%%Y ]
)%%] ^
,%%^ _
SecurityStamp&& !
=&&" #
table&&$ )
.&&) *
Column&&* 0
<&&0 1
string&&1 7
>&&7 8
(&&8 9
type&&9 =
:&&= >
$str&&? N
,&&N O
nullable&&P X
:&&X Y
true&&Z ^
)&&^ _
,&&_ `
ConcurrencyStamp'' $
=''% &
table''' ,
.'', -
Column''- 3
<''3 4
string''4 :
>'': ;
(''; <
type''< @
:''@ A
$str''B Q
,''Q R
nullable''S [
:''[ \
true''] a
)''a b
,''b c
PhoneNumber(( 
=((  !
table((" '
.((' (
Column((( .
<((. /
string((/ 5
>((5 6
(((6 7
type((7 ;
:((; <
$str((= L
,((L M
nullable((N V
:((V W
true((X \
)((\ ]
,((] ^ 
PhoneNumberConfirmed)) (
=))) *
table))+ 0
.))0 1
Column))1 7
<))7 8
bool))8 <
>))< =
())= >
type))> B
:))B C
$str))D I
,))I J
nullable))K S
:))S T
false))U Z
)))Z [
,))[ \
TwoFactorEnabled** $
=**% &
table**' ,
.**, -
Column**- 3
<**3 4
bool**4 8
>**8 9
(**9 :
type**: >
:**> ?
$str**@ E
,**E F
nullable**G O
:**O P
false**Q V
)**V W
,**W X

LockoutEnd++ 
=++  
table++! &
.++& '
Column++' -
<++- .
DateTimeOffset++. <
>++< =
(++= >
type++> B
:++B C
$str++D T
,++T U
nullable++V ^
:++^ _
true++` d
)++d e
,++e f
LockoutEnabled,, "
=,,# $
table,,% *
.,,* +
Column,,+ 1
<,,1 2
bool,,2 6
>,,6 7
(,,7 8
type,,8 <
:,,< =
$str,,> C
,,,C D
nullable,,E M
:,,M N
false,,O T
),,T U
,,,U V
AccessFailedCount-- %
=--& '
table--( -
.--- .
Column--. 4
<--4 5
int--5 8
>--8 9
(--9 :
type--: >
:--> ?
$str--@ E
,--E F
nullable--G O
:--O P
false--Q V
)--V W
}.. 
,.. 
constraints// 
:// 
table// "
=>//# %
{00 
table11 
.11 

PrimaryKey11 $
(11$ %
$str11% 5
,115 6
x117 8
=>119 ;
x11< =
.11= >
Id11> @
)11@ A
;11A B
}22 
)22 
;22 
migrationBuilder44 
.44 
CreateTable44 (
(44( )
name55 
:55 
$str55 (
,55( )
columns66 
:66 
table66 
=>66 !
new66" %
{77 
Id88 
=88 
table88 
.88 
Column88 %
<88% &
int88& )
>88) *
(88* +
type88+ /
:88/ 0
$str881 6
,886 7
nullable888 @
:88@ A
false88B G
)88G H
.99 

Annotation99 #
(99# $
$str99$ 8
,998 9
$str99: @
)99@ A
,99A B
RoleId:: 
=:: 
table:: "
.::" #
Column::# )
<::) *
string::* 0
>::0 1
(::1 2
type::2 6
:::6 7
$str::8 G
,::G H
nullable::I Q
:::Q R
false::S X
)::X Y
,::Y Z
	ClaimType;; 
=;; 
table;;  %
.;;% &
Column;;& ,
<;;, -
string;;- 3
>;;3 4
(;;4 5
type;;5 9
:;;9 :
$str;;; J
,;;J K
nullable;;L T
:;;T U
true;;V Z
);;Z [
,;;[ \

ClaimValue<< 
=<<  
table<<! &
.<<& '
Column<<' -
<<<- .
string<<. 4
><<4 5
(<<5 6
type<<6 :
:<<: ;
$str<<< K
,<<K L
nullable<<M U
:<<U V
true<<W [
)<<[ \
}== 
,== 
constraints>> 
:>> 
table>> "
=>>># %
{?? 
table@@ 
.@@ 

PrimaryKey@@ $
(@@$ %
$str@@% :
,@@: ;
x@@< =
=>@@> @
x@@A B
.@@B C
Id@@C E
)@@E F
;@@F G
tableAA 
.AA 

ForeignKeyAA $
(AA$ %
nameBB 
:BB 
$strBB F
,BBF G
columnCC 
:CC 
xCC  !
=>CC" $
xCC% &
.CC& '
RoleIdCC' -
,CC- .
principalTableDD &
:DD& '
$strDD( 5
,DD5 6
principalColumnEE '
:EE' (
$strEE) -
,EE- .
onDeleteFF  
:FF  !
ReferentialActionFF" 3
.FF3 4
CascadeFF4 ;
)FF; <
;FF< =
}GG 
)GG 
;GG 
migrationBuilderII 
.II 
CreateTableII (
(II( )
nameJJ 
:JJ 
$strJJ (
,JJ( )
columnsKK 
:KK 
tableKK 
=>KK !
newKK" %
{LL 
IdMM 
=MM 
tableMM 
.MM 
ColumnMM %
<MM% &
intMM& )
>MM) *
(MM* +
typeMM+ /
:MM/ 0
$strMM1 6
,MM6 7
nullableMM8 @
:MM@ A
falseMMB G
)MMG H
.NN 

AnnotationNN #
(NN# $
$strNN$ 8
,NN8 9
$strNN: @
)NN@ A
,NNA B
UserIdOO 
=OO 
tableOO "
.OO" #
ColumnOO# )
<OO) *
stringOO* 0
>OO0 1
(OO1 2
typeOO2 6
:OO6 7
$strOO8 G
,OOG H
nullableOOI Q
:OOQ R
falseOOS X
)OOX Y
,OOY Z
	ClaimTypePP 
=PP 
tablePP  %
.PP% &
ColumnPP& ,
<PP, -
stringPP- 3
>PP3 4
(PP4 5
typePP5 9
:PP9 :
$strPP; J
,PPJ K
nullablePPL T
:PPT U
truePPV Z
)PPZ [
,PP[ \

ClaimValueQQ 
=QQ  
tableQQ! &
.QQ& '
ColumnQQ' -
<QQ- .
stringQQ. 4
>QQ4 5
(QQ5 6
typeQQ6 :
:QQ: ;
$strQQ< K
,QQK L
nullableQQM U
:QQU V
trueQQW [
)QQ[ \
}RR 
,RR 
constraintsSS 
:SS 
tableSS "
=>SS# %
{TT 
tableUU 
.UU 

PrimaryKeyUU $
(UU$ %
$strUU% :
,UU: ;
xUU< =
=>UU> @
xUUA B
.UUB C
IdUUC E
)UUE F
;UUF G
tableVV 
.VV 

ForeignKeyVV $
(VV$ %
nameWW 
:WW 
$strWW F
,WWF G
columnXX 
:XX 
xXX  !
=>XX" $
xXX% &
.XX& '
UserIdXX' -
,XX- .
principalTableYY &
:YY& '
$strYY( 5
,YY5 6
principalColumnZZ '
:ZZ' (
$strZZ) -
,ZZ- .
onDelete[[  
:[[  !
ReferentialAction[[" 3
.[[3 4
Cascade[[4 ;
)[[; <
;[[< =
}\\ 
)\\ 
;\\ 
migrationBuilder^^ 
.^^ 
CreateTable^^ (
(^^( )
name__ 
:__ 
$str__ (
,__( )
columns`` 
:`` 
table`` 
=>`` !
new``" %
{aa 
LoginProviderbb !
=bb" #
tablebb$ )
.bb) *
Columnbb* 0
<bb0 1
stringbb1 7
>bb7 8
(bb8 9
typebb9 =
:bb= >
$strbb? N
,bbN O
nullablebbP X
:bbX Y
falsebbZ _
)bb_ `
,bb` a
ProviderKeycc 
=cc  !
tablecc" '
.cc' (
Columncc( .
<cc. /
stringcc/ 5
>cc5 6
(cc6 7
typecc7 ;
:cc; <
$strcc= L
,ccL M
nullableccN V
:ccV W
falseccX ]
)cc] ^
,cc^ _
ProviderDisplayNamedd '
=dd( )
tabledd* /
.dd/ 0
Columndd0 6
<dd6 7
stringdd7 =
>dd= >
(dd> ?
typedd? C
:ddC D
$strddE T
,ddT U
nullableddV ^
:dd^ _
truedd` d
)ddd e
,dde f
UserIdee 
=ee 
tableee "
.ee" #
Columnee# )
<ee) *
stringee* 0
>ee0 1
(ee1 2
typeee2 6
:ee6 7
$stree8 G
,eeG H
nullableeeI Q
:eeQ R
falseeeS X
)eeX Y
}ff 
,ff 
constraintsgg 
:gg 
tablegg "
=>gg# %
{hh 
tableii 
.ii 

PrimaryKeyii $
(ii$ %
$strii% :
,ii: ;
xii< =
=>ii> @
newiiA D
{iiE F
xiiG H
.iiH I
LoginProvideriiI V
,iiV W
xiiX Y
.iiY Z
ProviderKeyiiZ e
}iif g
)iig h
;iih i
tablejj 
.jj 

ForeignKeyjj $
(jj$ %
namekk 
:kk 
$strkk F
,kkF G
columnll 
:ll 
xll  !
=>ll" $
xll% &
.ll& '
UserIdll' -
,ll- .
principalTablemm &
:mm& '
$strmm( 5
,mm5 6
principalColumnnn '
:nn' (
$strnn) -
,nn- .
onDeleteoo  
:oo  !
ReferentialActionoo" 3
.oo3 4
Cascadeoo4 ;
)oo; <
;oo< =
}pp 
)pp 
;pp 
migrationBuilderrr 
.rr 
CreateTablerr (
(rr( )
namess 
:ss 
$strss '
,ss' (
columnstt 
:tt 
tablett 
=>tt !
newtt" %
{uu 
UserIdvv 
=vv 
tablevv "
.vv" #
Columnvv# )
<vv) *
stringvv* 0
>vv0 1
(vv1 2
typevv2 6
:vv6 7
$strvv8 G
,vvG H
nullablevvI Q
:vvQ R
falsevvS X
)vvX Y
,vvY Z
RoleIdww 
=ww 
tableww "
.ww" #
Columnww# )
<ww) *
stringww* 0
>ww0 1
(ww1 2
typeww2 6
:ww6 7
$strww8 G
,wwG H
nullablewwI Q
:wwQ R
falsewwS X
)wwX Y
}xx 
,xx 
constraintsyy 
:yy 
tableyy "
=>yy# %
{zz 
table{{ 
.{{ 

PrimaryKey{{ $
({{$ %
$str{{% 9
,{{9 :
x{{; <
=>{{= ?
new{{@ C
{{{D E
x{{F G
.{{G H
UserId{{H N
,{{N O
x{{P Q
.{{Q R
RoleId{{R X
}{{Y Z
){{Z [
;{{[ \
table|| 
.|| 

ForeignKey|| $
(||$ %
name}} 
:}} 
$str}} E
,}}E F
column~~ 
:~~ 
x~~  !
=>~~" $
x~~% &
.~~& '
RoleId~~' -
,~~- .
principalTable &
:& '
$str( 5
,5 6
principalColumn
ÄÄ '
:
ÄÄ' (
$str
ÄÄ) -
,
ÄÄ- .
onDelete
ÅÅ  
:
ÅÅ  !
ReferentialAction
ÅÅ" 3
.
ÅÅ3 4
Cascade
ÅÅ4 ;
)
ÅÅ; <
;
ÅÅ< =
table
ÇÇ 
.
ÇÇ 

ForeignKey
ÇÇ $
(
ÇÇ$ %
name
ÉÉ 
:
ÉÉ 
$str
ÉÉ E
,
ÉÉE F
column
ÑÑ 
:
ÑÑ 
x
ÑÑ  !
=>
ÑÑ" $
x
ÑÑ% &
.
ÑÑ& '
UserId
ÑÑ' -
,
ÑÑ- .
principalTable
ÖÖ &
:
ÖÖ& '
$str
ÖÖ( 5
,
ÖÖ5 6
principalColumn
ÜÜ '
:
ÜÜ' (
$str
ÜÜ) -
,
ÜÜ- .
onDelete
áá  
:
áá  !
ReferentialAction
áá" 3
.
áá3 4
Cascade
áá4 ;
)
áá; <
;
áá< =
}
àà 
)
àà 
;
àà 
migrationBuilder
ää 
.
ää 
CreateTable
ää (
(
ää( )
name
ãã 
:
ãã 
$str
ãã (
,
ãã( )
columns
åå 
:
åå 
table
åå 
=>
åå !
new
åå" %
{
çç 
UserId
éé 
=
éé 
table
éé "
.
éé" #
Column
éé# )
<
éé) *
string
éé* 0
>
éé0 1
(
éé1 2
type
éé2 6
:
éé6 7
$str
éé8 G
,
ééG H
nullable
ééI Q
:
ééQ R
false
ééS X
)
ééX Y
,
ééY Z
LoginProvider
èè !
=
èè" #
table
èè$ )
.
èè) *
Column
èè* 0
<
èè0 1
string
èè1 7
>
èè7 8
(
èè8 9
type
èè9 =
:
èè= >
$str
èè? N
,
èèN O
nullable
èèP X
:
èèX Y
false
èèZ _
)
èè_ `
,
èè` a
Name
êê 
=
êê 
table
êê  
.
êê  !
Column
êê! '
<
êê' (
string
êê( .
>
êê. /
(
êê/ 0
type
êê0 4
:
êê4 5
$str
êê6 E
,
êêE F
nullable
êêG O
:
êêO P
false
êêQ V
)
êêV W
,
êêW X
Value
ëë 
=
ëë 
table
ëë !
.
ëë! "
Column
ëë" (
<
ëë( )
string
ëë) /
>
ëë/ 0
(
ëë0 1
type
ëë1 5
:
ëë5 6
$str
ëë7 F
,
ëëF G
nullable
ëëH P
:
ëëP Q
true
ëëR V
)
ëëV W
}
íí 
,
íí 
constraints
ìì 
:
ìì 
table
ìì "
=>
ìì# %
{
îî 
table
ïï 
.
ïï 

PrimaryKey
ïï $
(
ïï$ %
$str
ïï% :
,
ïï: ;
x
ïï< =
=>
ïï> @
new
ïïA D
{
ïïE F
x
ïïG H
.
ïïH I
UserId
ïïI O
,
ïïO P
x
ïïQ R
.
ïïR S
LoginProvider
ïïS `
,
ïï` a
x
ïïb c
.
ïïc d
Name
ïïd h
}
ïïi j
)
ïïj k
;
ïïk l
table
ññ 
.
ññ 

ForeignKey
ññ $
(
ññ$ %
name
óó 
:
óó 
$str
óó F
,
óóF G
column
òò 
:
òò 
x
òò  !
=>
òò" $
x
òò% &
.
òò& '
UserId
òò' -
,
òò- .
principalTable
ôô &
:
ôô& '
$str
ôô( 5
,
ôô5 6
principalColumn
öö '
:
öö' (
$str
öö) -
,
öö- .
onDelete
õõ  
:
õõ  !
ReferentialAction
õõ" 3
.
õõ3 4
Cascade
õõ4 ;
)
õõ; <
;
õõ< =
}
úú 
)
úú 
;
úú 
migrationBuilder
ûû 
.
ûû 
CreateIndex
ûû (
(
ûû( )
name
üü 
:
üü 
$str
üü 2
,
üü2 3
table
†† 
:
†† 
$str
†† )
,
††) *
column
°° 
:
°° 
$str
°°  
)
°°  !
;
°°! "
migrationBuilder
££ 
.
££ 
CreateIndex
££ (
(
££( )
name
§§ 
:
§§ 
$str
§§ %
,
§§% &
table
•• 
:
•• 
$str
•• $
,
••$ %
column
¶¶ 
:
¶¶ 
$str
¶¶ (
,
¶¶( )
unique
ßß 
:
ßß 
true
ßß 
,
ßß 
filter
®® 
:
®® 
$str
®® 6
)
®®6 7
;
®®7 8
migrationBuilder
™™ 
.
™™ 
CreateIndex
™™ (
(
™™( )
name
´´ 
:
´´ 
$str
´´ 2
,
´´2 3
table
¨¨ 
:
¨¨ 
$str
¨¨ )
,
¨¨) *
column
≠≠ 
:
≠≠ 
$str
≠≠  
)
≠≠  !
;
≠≠! "
migrationBuilder
ØØ 
.
ØØ 
CreateIndex
ØØ (
(
ØØ( )
name
∞∞ 
:
∞∞ 
$str
∞∞ 2
,
∞∞2 3
table
±± 
:
±± 
$str
±± )
,
±±) *
column
≤≤ 
:
≤≤ 
$str
≤≤  
)
≤≤  !
;
≤≤! "
migrationBuilder
¥¥ 
.
¥¥ 
CreateIndex
¥¥ (
(
¥¥( )
name
µµ 
:
µµ 
$str
µµ 1
,
µµ1 2
table
∂∂ 
:
∂∂ 
$str
∂∂ (
,
∂∂( )
column
∑∑ 
:
∑∑ 
$str
∑∑  
)
∑∑  !
;
∑∑! "
migrationBuilder
ππ 
.
ππ 
CreateIndex
ππ (
(
ππ( )
name
∫∫ 
:
∫∫ 
$str
∫∫ "
,
∫∫" #
table
ªª 
:
ªª 
$str
ªª $
,
ªª$ %
column
ºº 
:
ºº 
$str
ºº )
)
ºº) *
;
ºº* +
migrationBuilder
ææ 
.
ææ 
CreateIndex
ææ (
(
ææ( )
name
øø 
:
øø 
$str
øø %
,
øø% &
table
¿¿ 
:
¿¿ 
$str
¿¿ $
,
¿¿$ %
column
¡¡ 
:
¡¡ 
$str
¡¡ ,
,
¡¡, -
unique
¬¬ 
:
¬¬ 
true
¬¬ 
,
¬¬ 
filter
√√ 
:
√√ 
$str
√√ :
)
√√: ;
;
√√; <
}
ƒƒ 	
	protected
∆∆ 
override
∆∆ 
void
∆∆ 
Down
∆∆  $
(
∆∆$ %
MigrationBuilder
∆∆% 5
migrationBuilder
∆∆6 F
)
∆∆F G
{
«« 	
migrationBuilder
»» 
.
»» 
	DropTable
»» &
(
»»& '
name
…… 
:
…… 
$str
…… (
)
……( )
;
……) *
migrationBuilder
ÀÀ 
.
ÀÀ 
	DropTable
ÀÀ &
(
ÀÀ& '
name
ÃÃ 
:
ÃÃ 
$str
ÃÃ (
)
ÃÃ( )
;
ÃÃ) *
migrationBuilder
ŒŒ 
.
ŒŒ 
	DropTable
ŒŒ &
(
ŒŒ& '
name
œœ 
:
œœ 
$str
œœ (
)
œœ( )
;
œœ) *
migrationBuilder
—— 
.
—— 
	DropTable
—— &
(
——& '
name
““ 
:
““ 
$str
““ '
)
““' (
;
““( )
migrationBuilder
‘‘ 
.
‘‘ 
	DropTable
‘‘ &
(
‘‘& '
name
’’ 
:
’’ 
$str
’’ (
)
’’( )
;
’’) *
migrationBuilder
◊◊ 
.
◊◊ 
	DropTable
◊◊ &
(
◊◊& '
name
ÿÿ 
:
ÿÿ 
$str
ÿÿ #
)
ÿÿ# $
;
ÿÿ$ %
migrationBuilder
⁄⁄ 
.
⁄⁄ 
	DropTable
⁄⁄ &
(
⁄⁄& '
name
€€ 
:
€€ 
$str
€€ #
)
€€# $
;
€€$ %
}
‹‹ 	
}
›› 
}ﬁﬁ ¶
SC:\visual\Final_Assignment DotNet\WebAppMvc\Data\Migrations\20220824062919_admin.cs
	namespace 	
	WebAppMvc
 
. 
Data 
. 

Migrations #
{ 
public 

partial 
class 
admin 
:  
	Migration! *
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Email 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 E
,E F
	maxLengthG P
:P Q
$numR T
,T U
nullableV ^
:^ _
false` e
)e f
,f g

PAN_Number 
=  
table! &
.& '
Column' -
<- .
string. 4
>4 5
(5 6
type6 :
:: ;
$str< J
,J K
	maxLengthL U
:U V
$numW Y
,Y Z
nullable[ c
:c d
falsee j
)j k
,k l
Password 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: H
,H I
	maxLengthJ S
:S T
$numU W
,W X
nullableY a
:a b
falsec h
)h i
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% /
,/ 0
x1 2
=>3 5
x6 7
.7 8
Id8 :
): ;
;; <
} 
) 
; 
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
	DropTable &
(& '
name 
: 
$str 
) 
; 
} 	
}   
}!! Ã
VC:\visual\Final_Assignment DotNet\WebAppMvc\Data\Migrations\20220824074008_adminone.cs
	namespace 	
	WebAppMvc
 
. 
Data 
. 

Migrations #
{ 
public 

partial 
class 
adminone !
:" #
	Migration$ -
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
AlterColumn (
<( )
string) /
>/ 0
(0 1
name 
: 
$str  
,  !
table 
: 
$str 
, 
type 
: 
$str %
,% &
	maxLength 
: 
$num 
, 
nullable 
: 
false 
,  

oldClrType 
: 
typeof "
(" #
string# )
)) *
,* +
oldType 
: 
$str '
,' (
oldMaxLength 
: 
$num  
)  !
;! "
migrationBuilder 
. 
	AddColumn &
<& '
string' -
>- .
(. /
name 
: 
$str '
,' (
table 
: 
$str 
, 
type 
: 
$str %
,% &
nullable 
: 
false 
,  
defaultValue 
: 
$str  
)  !
;! "
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 

DropColumn '
(' (
name   
:   
$str   '
,  ' (
table!! 
:!! 
$str!! 
)!! 
;!!  
migrationBuilder## 
.## 
AlterColumn## (
<##( )
string##) /
>##/ 0
(##0 1
name$$ 
:$$ 
$str$$  
,$$  !
table%% 
:%% 
$str%% 
,%% 
type&& 
:&& 
$str&& $
,&&$ %
	maxLength'' 
:'' 
$num'' 
,'' 
nullable(( 
:(( 
false(( 
,((  

oldClrType)) 
:)) 
typeof)) "
())" #
string))# )
)))) *
,))* +
oldType** 
:** 
$str** (
,**( )
oldMaxLength++ 
:++ 
$num++ !
)++! "
;++" #
},, 	
}-- 
}.. ‚
WC:\visual\Final_Assignment DotNet\WebAppMvc\Data\Migrations\20220824103018_adminone1.cs
	namespace 	
	WebAppMvc
 
. 
Data 
. 

Migrations #
{ 
public 

partial 
class 
	adminone1 "
:# $
	Migration% .
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
	AddColumn &
<& '
string' -
>- .
(. /
name 
: 
$str  
,  !
table 
: 
$str 
, 
type 
: 
$str %
,% &
nullable 
: 
false 
,  
defaultValue 
: 
$str  
)  !
;! "
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 

DropColumn '
(' (
name 
: 
$str  
,  !
table 
: 
$str 
) 
;  
} 	
} 
} ˆ
YC:\visual\Final_Assignment DotNet\WebAppMvc\Data\Migrations\20220824151932_newapproval.cs
	namespace 	
	WebAppMvc
 
. 
Data 
. 

Migrations #
{ 
public 

partial 
class 
newapproval $
:% &
	Migration' 0
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str (
,( )
columns 
: 
table 
=> !
new" %
{ 
Email 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
type1 5
:5 6
$str7 F
,F G
nullableH P
:P Q
falseR W
)W X
,X Y
Status 
= 
table "
." #
Column# )
<) *
string* 0
>0 1
(1 2
type2 6
:6 7
$str8 G
,G H
nullableI Q
:Q R
falseS X
)X Y
} 
, 
constraints 
: 
table "
=># %
{ 
} 
) 
; 
migrationBuilder 
. 
CreateIndex (
(( )
name 
: 
$str &
,& '
table 
: 
$str 
, 
column 
: 
$str 
,  
unique 
: 
true 
) 
; 
migrationBuilder 
. 
CreateIndex (
(( )
name 
: 
$str 1
,1 2
table 
: 
$str )
,) *
column 
: 
$str 
,  
unique   
:   
true   
)   
;   
}!! 	
	protected## 
override## 
void## 
Down##  $
(##$ %
MigrationBuilder##% 5
migrationBuilder##6 F
)##F G
{$$ 	
migrationBuilder%% 
.%% 
	DropTable%% &
(%%& '
name&& 
:&& 
$str&& (
)&&( )
;&&) *
migrationBuilder(( 
.(( 
	DropIndex(( &
(((& '
name)) 
:)) 
$str)) &
,))& '
table** 
:** 
$str** 
)** 
;**  
}++ 	
},, 
}-- Ø

ZC:\visual\Final_Assignment DotNet\WebAppMvc\Data\Migrations\20220824155017_newapproval2.cs
	namespace 	
	WebAppMvc
 
. 
Data 
. 

Migrations #
{ 
public 

partial 
class 
newapproval2 %
:& '
	Migration( 1
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
AddPrimaryKey *
(* +
name 
: 
$str +
,+ ,
table 
: 
$str )
,) *
column 
: 
$str 
)  
;  !
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 
DropPrimaryKey +
(+ ,
name 
: 
$str +
,+ ,
table 
: 
$str )
)) *
;* +
} 	
} 
} €
ZC:\visual\Final_Assignment DotNet\WebAppMvc\Data\Migrations\20220824194930_newapproval3.cs
	namespace 	
	WebAppMvc
 
. 
Data 
. 

Migrations #
{ 
public 

partial 
class 
newapproval3 %
:& '
	Migration( 1
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
AlterColumn (
<( )
string) /
>/ 0
(0 1
name 
: 
$str  
,  !
table 
: 
$str 
, 
type 
: 
$str $
,$ %
	maxLength 
: 
$num 
, 
nullable 
: 
false 
,  

oldClrType 
: 
typeof "
(" #
string# )
)) *
,* +
oldType 
: 
$str (
)( )
;) *
migrationBuilder 
. 
AlterColumn (
<( )
string) /
>/ 0
(0 1
name 
: 
$str  
,  !
table 
: 
$str 
, 
type 
: 
$str $
,$ %
	maxLength 
: 
$num 
, 
nullable 
: 
false 
,  

oldClrType 
: 
typeof "
(" #
string# )
)) *
,* +
oldType 
: 
$str (
,( )
oldMaxLength 
: 
$num !
)! "
;" #
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{   	
migrationBuilder!! 
.!! 
AlterColumn!! (
<!!( )
string!!) /
>!!/ 0
(!!0 1
name"" 
:"" 
$str""  
,""  !
table## 
:## 
$str## 
,## 
type$$ 
:$$ 
$str$$ %
,$$% &
nullable%% 
:%% 
false%% 
,%%  

oldClrType&& 
:&& 
typeof&& "
(&&" #
string&&# )
)&&) *
,&&* +
oldType'' 
:'' 
$str'' '
,''' (
oldMaxLength(( 
:(( 
$num((  
)((  !
;((! "
migrationBuilder** 
.** 
AlterColumn** (
<**( )
string**) /
>**/ 0
(**0 1
name++ 
:++ 
$str++  
,++  !
table,, 
:,, 
$str,, 
,,, 
type-- 
:-- 
$str-- %
,--% &
	maxLength.. 
:.. 
$num.. 
,.. 
nullable// 
:// 
false// 
,//  

oldClrType00 
:00 
typeof00 "
(00" #
string00# )
)00) *
,00* +
oldType11 
:11 
$str11 '
,11' (
oldMaxLength22 
:22 
$num22  
)22  !
;22! "
}33 	
}44 
}55 Ï
EC:\visual\Final_Assignment DotNet\WebAppMvc\EmailSending\EmailSend.cs
	namespace 	
	WebAppMvc
 
. 
EmailSending  
{ 
public 

class 
	EmailSend 
{ 
public		 
void		 
SendMailMethod		 "
(		" #
string		# )
CustomerName		* 6
,		6 7
string		8 >
recieverMail		? K
)		K L
{

 	
MimeMessage 
message 
=  !
new" %
MimeMessage& 1
(1 2
)2 3
;3 4
message 
. 
From 
. 
Add 
( 
new  
MailboxAddress! /
(/ 0
$str0 <
,< =
$str> W
)W X
)X Y
;Y Z
message 
. 
To 
. 
Add 
( 
MailboxAddress )
.) *
Parse* /
(/ 0
recieverMail0 <
)< =
)= >
;> ?
message 
. 
Subject 
= 
$str '
;' (
message 
. 
Body 
= 
new 
TextPart '
(' (
$str( /
)/ 0
{ 
Text 
= 
$" 
$str 
{ 
CustomerName +
}+ ,
$str	, ≈
"
≈ ∆
} 
; 
string 
data 
= 
$str +
;+ ,
string 
email 
= 
$str 4
;4 5
string 
password 
= 
data !
;" #

SmtpClient 

smtpClient !
=" #
new$ '

SmtpClient( 2
(2 3
)3 4
;4 5
try 
{ 

smtpClient 
. 
Connect "
(" #
$str# 3
,3 4
$num5 8
,8 9
true: >
)> ?
;? @

smtpClient 
. 
Authenticate '
(' (
email( -
,- .
password/ 7
)7 8
;8 9

smtpClient 
. 
Send 
(  
message  '
)' (
;( )
Console   
.   
	WriteLine   !
(  ! "
$"  " $
$str  $ 2
{  2 3
CustomerName  3 ?
}  ? @
$str  @ [
"  [ \
)  \ ]
;  ] ^
Console!! 
.!! 
	WriteLine!! !
(!!! "
$"!!" $
$str!!$ f
{!!f g
email!!g l
}!!l m
$str!!m n
"!!n o
)!!o p
;!!p q
}"" 
catch## 
(## 
	Exception## 
ex## 
)##  
{$$ 
Console%% 
.%% 
	WriteLine%% !
(%%! "
ex%%" $
.%%$ %
Message%%% ,
)%%, -
;%%- .
}&& 
finally'' 
{(( 

smtpClient)) 
.)) 

Disconnect)) %
())% &
true))& *
)))* +
;))+ ,

smtpClient** 
.** 
Dispose** "
(**" #
)**# $
;**$ %
}++ 
},, 	
}-- 
}.. «
@C:\visual\Final_Assignment DotNet\WebAppMvc\Models\AdminModel.cs
	namespace 	
	WebAppMvc
 
. 
Models 
{ 
public 

class 

AdminModel 
{ 
[ 	
Key	 
] 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[		 	
	MaxLength			 
(		 
$num		 
)		 
]		 
[

 	
Required

	 
]

 
[ 	
EmailAddress	 
( 
ErrorMessage "
=# $
$str% A
)A B
]B C
[ 	
Display	 
( 
Name 
= 
$str 
)  
]  !
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
=* +
null, 0
!0 1
;1 2
[ 	
Required	 
] 
[ 	
	MaxLength	 
( 
$num 
) 
] 
[ 	
Display	 
( 
Name 
= 
$str $
)$ %
]% &
public 
string 

PAN_Number  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
null1 5
!5 6
;6 7
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) g
,g h
MinimumLengthi v
=w x
$numy z
)z {
]{ |
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
[ 	
Display	 
( 
Name 
= 
$str "
)" #
]# $
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
[ 	
Display	 
( 
Name 
= 
$str *
)* +
]+ ,
[ 	
Compare	 
( 
$str 
, 
ErrorMessage )
=* +
$str, b
)b c
]c d
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
null6 :
!: ;
;; <
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
RoleName 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
} 
} Ù
FC:\visual\Final_Assignment DotNet\WebAppMvc\Models\ApprovalRejected.cs
	namespace 	
	WebAppMvc
 
. 
Models 
{ 
public 

class 
ApprovalRejected !
{ 
[ 	
Key	 
] 
public 
string 
Email 
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
public		 
string		 
Status		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
=		+ ,
null		- 1
!		1 2
;		2 3
}

 
} û
DC:\visual\Final_Assignment DotNet\WebAppMvc\Models\ErrorViewModel.cs
	namespace 	
	WebAppMvc
 
. 
Models 
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
? 
	RequestId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
} 
}		 ï
FC:\visual\Final_Assignment DotNet\WebAppMvc\Models\MallDetailsModel.cs
	namespace 	
	WebAppMvc
 
. 
Models 
{ 
public 

class 
MallDetailsModel !
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[		 	
Required			 
(		 
ErrorMessage		 
=		  
$str		! 4
)		4 5
,		5 6
	MaxLength		7 @
(		@ A
$num		A C
)		C D
]		D E
[

 	
Display

	 
(

 
Name

 
=

 
$str

 /
)

/ 0
]

0 1
public 
string 
ShoppingMallName &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
null7 ;
!; <
;< =
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 4
)4 5
,5 6
	MaxLength7 @
(@ A
$numA C
)C D
]D E
public 
string 
City 
{ 
get  
;  !
set" %
;% &
}' (
=) *
null+ /
!/ 0
;0 1
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 5
)5 6
,6 7
	MaxLength8 A
(A B
$numB D
)D E
]E F
public 
string 
State 
{ 
get !
;! "
set# &
;& '
}( )
=* +
null, 0
!0 1
;1 2
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 4
)4 5
]5 6
[ 	
Display	 
( 
Name 
= 
$str *
)* +
]+ ,
public 
int 
Built_in_Year  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} á
JC:\visual\Final_Assignment DotNet\WebAppMvc\Models\RegisterCustomFields.cs
	namespace 	
	WebAppMvc
 
. 
Models 
{ 
public 

class  
RegisterCustomFields %
:% &
IdentityUser' 3
{ 
[ 	
	MaxLength	 
( 
$num 
) 
] 
public		 
string		 

PAN_Number		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
=		/ 0
null		1 5
!		5 6
;		6 7
} 
} Â"
6C:\visual\Final_Assignment DotNet\WebAppMvc\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
var 
connectionString 
= 
builder 
. 
Configuration ,
., -
GetConnectionString- @
(@ A
$strA ]
)] ^
??_ a
throwb g
newh k&
InvalidOperationException	l Ö
(
Ö Ü
$str
Ü ¡
)
¡ ¬
;
¬ √
builder		 
.		 
Services		 
.		 
AddDbContext		 
<		  
ApplicationDbContext		 2
>		2 3
(		3 4
options		4 ;
=>		< >
options

 
.

 
UseSqlServer

 
(

 
connectionString

 )
)

) *
)

* +
;

+ ,
builder 
. 
Services 
. 
AddDbContext 
< 
AdminDbContext ,
>, -
(- .
options. 5
=>6 8
options 
. 
UseSqlServer 
( 
connectionString )
)) *
)* +
;+ ,
builder 
. 
Services 
. 
AddIdentity 
<  
RegisterCustomFields 1
,1 2
IdentityRole2 >
>> ?
(? @
options@ G
=>H J
optionsK R
.R S
SignInS Y
.Y Z#
RequireConfirmedAccountZ q
=r s
falset y
)y z
.z {
AddDefaultUI	{ á
(
á à
)
à â
. $
AddEntityFrameworkStores 
<  
ApplicationDbContext 2
>2 3
(3 4
)4 5
;5 6
builder 
. 
Services 
. 
AddAuthorization !
(! "
options" )
=>* ,
{- .
options 
. 
	AddPolicy 
( 
$str  
,  !
builder" )
=>* ,
builder- 4
.4 5
RequireRole5 @
(@ A
$strA K
)K L
)L M
;M N
options 
. 
	AddPolicy 
( 
$str 
, 
builder &
=>' )
builder* 1
.1 2
RequireRole2 =
(= >
$str> E
)E F
)F G
;G H
} 
) 
; 
builder 
. 
Services 
. #
AddControllersWithViews (
(( )
)) *
;* +
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if 
( 
! 
app 
. 	
Environment	 
. 
IsDevelopment "
(" #
)# $
)$ %
{ 
app 
. 
UseExceptionHandler 
( 
$str )
)) *
;* +
app   
.   
UseHsts   
(   
)   
;   
}!! 
app## 
.## 
UseHttpsRedirection## 
(## 
)## 
;## 
app$$ 
.$$ 
UseStaticFiles$$ 
($$ 
)$$ 
;$$ 
app&& 
.&& 

UseRouting&& 
(&& 
)&& 
;&& 
app'' 
.'' 
UseAuthentication'' 
('' 
)'' 
;'' 
app)) 
.)) 
UseAuthorization)) 
()) 
))) 
;)) 
app++ 
.++ 
MapControllerRoute++ 
(++ 
name,, 
:,, 	
$str,,
 
,,, 
pattern-- 
:-- 
$str-- 5
)--5 6
;--6 7
app.. 
... 
MapRazorPages.. 
(.. 
).. 
;.. 
app00 
.00 
Run00 
(00 
)00 	
;00	 
