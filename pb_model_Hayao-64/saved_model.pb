
т
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

н
DepthwiseConv2dNative

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%ЭЬL>"
Ttype0:
2

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

	MirrorPad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	"&
modestring:
REFLECT	SYMMETRIC
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

ResizeBilinear
images"T
size
resized_images"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
2
StopGradient

input"T
output"T"	
Ttype
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.15.02v1.15.0-rc3-22-g590d6eeЗЛ

generator_inputPlaceholder*-
shape$:"џџџџџџџџџџџџџџџџџџ*
dtype0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ

&generator/G_MODEL/A/MirrorPad/paddingsConst*
_output_shapes

:*9
value0B."                             *
dtype0
Ъ
generator/G_MODEL/A/MirrorPad	MirrorPadgenerator_input&generator/G_MODEL/A/MirrorPad/paddings*
	Tpaddings0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ*
T0*
mode	REFLECT
б
Cgenerator/G_MODEL/A/Conv/weights/Initializer/truncated_normal/shapeConst*%
valueB"             *3
_class)
'%loc:@generator/G_MODEL/A/Conv/weights*
dtype0*
_output_shapes
:
М
Bgenerator/G_MODEL/A/Conv/weights/Initializer/truncated_normal/meanConst*3
_class)
'%loc:@generator/G_MODEL/A/Conv/weights*
_output_shapes
: *
valueB
 *    *
dtype0
О
Dgenerator/G_MODEL/A/Conv/weights/Initializer/truncated_normal/stddevConst*3
_class)
'%loc:@generator/G_MODEL/A/Conv/weights*
dtype0*
valueB
 *A/>*
_output_shapes
: 
Б
Mgenerator/G_MODEL/A/Conv/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalCgenerator/G_MODEL/A/Conv/weights/Initializer/truncated_normal/shape*
seed2 *3
_class)
'%loc:@generator/G_MODEL/A/Conv/weights*&
_output_shapes
: *

seed *
T0*
dtype0
У
Agenerator/G_MODEL/A/Conv/weights/Initializer/truncated_normal/mulMulMgenerator/G_MODEL/A/Conv/weights/Initializer/truncated_normal/TruncatedNormalDgenerator/G_MODEL/A/Conv/weights/Initializer/truncated_normal/stddev*
T0*3
_class)
'%loc:@generator/G_MODEL/A/Conv/weights*&
_output_shapes
: 
Б
=generator/G_MODEL/A/Conv/weights/Initializer/truncated_normalAddAgenerator/G_MODEL/A/Conv/weights/Initializer/truncated_normal/mulBgenerator/G_MODEL/A/Conv/weights/Initializer/truncated_normal/mean*3
_class)
'%loc:@generator/G_MODEL/A/Conv/weights*&
_output_shapes
: *
T0
й
 generator/G_MODEL/A/Conv/weights
VariableV2*
dtype0*3
_class)
'%loc:@generator/G_MODEL/A/Conv/weights*
shared_name *
	container *
shape: *&
_output_shapes
: 
Ё
'generator/G_MODEL/A/Conv/weights/AssignAssign generator/G_MODEL/A/Conv/weights=generator/G_MODEL/A/Conv/weights/Initializer/truncated_normal*
use_locking(*3
_class)
'%loc:@generator/G_MODEL/A/Conv/weights*
validate_shape(*
T0*&
_output_shapes
: 
Й
%generator/G_MODEL/A/Conv/weights/readIdentity generator/G_MODEL/A/Conv/weights*3
_class)
'%loc:@generator/G_MODEL/A/Conv/weights*&
_output_shapes
: *
T0
w
&generator/G_MODEL/A/Conv/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
К
generator/G_MODEL/A/Conv/Conv2DConv2Dgenerator/G_MODEL/A/MirrorPad%generator/G_MODEL/A/Conv/weights/read*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ *
paddingVALID*
data_formatNHWC*
T0*
explicit_paddings
 *
	dilations
*
strides
*
use_cudnn_on_gpu(
И
4generator/G_MODEL/A/LayerNorm/beta/Initializer/zerosConst*5
_class+
)'loc:@generator/G_MODEL/A/LayerNorm/beta*
_output_shapes
: *
dtype0*
valueB *    
Х
"generator/G_MODEL/A/LayerNorm/beta
VariableV2*
dtype0*
shape: *
shared_name *
	container *
_output_shapes
: *5
_class+
)'loc:@generator/G_MODEL/A/LayerNorm/beta

)generator/G_MODEL/A/LayerNorm/beta/AssignAssign"generator/G_MODEL/A/LayerNorm/beta4generator/G_MODEL/A/LayerNorm/beta/Initializer/zeros*
T0*
_output_shapes
: *5
_class+
)'loc:@generator/G_MODEL/A/LayerNorm/beta*
use_locking(*
validate_shape(
Г
'generator/G_MODEL/A/LayerNorm/beta/readIdentity"generator/G_MODEL/A/LayerNorm/beta*5
_class+
)'loc:@generator/G_MODEL/A/LayerNorm/beta*
T0*
_output_shapes
: 
Й
4generator/G_MODEL/A/LayerNorm/gamma/Initializer/onesConst*
valueB *  ?*
_output_shapes
: *6
_class,
*(loc:@generator/G_MODEL/A/LayerNorm/gamma*
dtype0
Ч
#generator/G_MODEL/A/LayerNorm/gamma
VariableV2*
_output_shapes
: *
shared_name *
	container *
dtype0*
shape: *6
_class,
*(loc:@generator/G_MODEL/A/LayerNorm/gamma

*generator/G_MODEL/A/LayerNorm/gamma/AssignAssign#generator/G_MODEL/A/LayerNorm/gamma4generator/G_MODEL/A/LayerNorm/gamma/Initializer/ones*
T0*6
_class,
*(loc:@generator/G_MODEL/A/LayerNorm/gamma*
use_locking(*
_output_shapes
: *
validate_shape(
Ж
(generator/G_MODEL/A/LayerNorm/gamma/readIdentity#generator/G_MODEL/A/LayerNorm/gamma*
T0*6
_class,
*(loc:@generator/G_MODEL/A/LayerNorm/gamma*
_output_shapes
: 

<generator/G_MODEL/A/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*!
valueB"         *
dtype0
п
*generator/G_MODEL/A/LayerNorm/moments/meanMeangenerator/G_MODEL/A/Conv/Conv2D<generator/G_MODEL/A/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_output_shapes
:

2generator/G_MODEL/A/LayerNorm/moments/StopGradientStopGradient*generator/G_MODEL/A/LayerNorm/moments/mean*
T0*&
_output_shapes
:
ф
7generator/G_MODEL/A/LayerNorm/moments/SquaredDifferenceSquaredDifferencegenerator/G_MODEL/A/Conv/Conv2D2generator/G_MODEL/A/LayerNorm/moments/StopGradient*
T0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ 

@generator/G_MODEL/A/LayerNorm/moments/variance/reduction_indicesConst*!
valueB"         *
_output_shapes
:*
dtype0
џ
.generator/G_MODEL/A/LayerNorm/moments/varianceMean7generator/G_MODEL/A/LayerNorm/moments/SquaredDifference@generator/G_MODEL/A/LayerNorm/moments/variance/reduction_indices*

Tidx0*&
_output_shapes
:*
T0*
	keep_dims(
r
-generator/G_MODEL/A/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЬМ+
Ф
+generator/G_MODEL/A/LayerNorm/batchnorm/addAddV2.generator/G_MODEL/A/LayerNorm/moments/variance-generator/G_MODEL/A/LayerNorm/batchnorm/add/y*&
_output_shapes
:*
T0

-generator/G_MODEL/A/LayerNorm/batchnorm/RsqrtRsqrt+generator/G_MODEL/A/LayerNorm/batchnorm/add*
T0*&
_output_shapes
:
М
+generator/G_MODEL/A/LayerNorm/batchnorm/mulMul-generator/G_MODEL/A/LayerNorm/batchnorm/Rsqrt(generator/G_MODEL/A/LayerNorm/gamma/read*
T0*&
_output_shapes
: 
Х
-generator/G_MODEL/A/LayerNorm/batchnorm/mul_1Mulgenerator/G_MODEL/A/Conv/Conv2D+generator/G_MODEL/A/LayerNorm/batchnorm/mul*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ *
T0
О
-generator/G_MODEL/A/LayerNorm/batchnorm/mul_2Mul*generator/G_MODEL/A/LayerNorm/moments/mean+generator/G_MODEL/A/LayerNorm/batchnorm/mul*
T0*&
_output_shapes
: 
Л
+generator/G_MODEL/A/LayerNorm/batchnorm/subSub'generator/G_MODEL/A/LayerNorm/beta/read-generator/G_MODEL/A/LayerNorm/batchnorm/mul_2*
T0*&
_output_shapes
: 
е
-generator/G_MODEL/A/LayerNorm/batchnorm/add_1AddV2-generator/G_MODEL/A/LayerNorm/batchnorm/mul_1+generator/G_MODEL/A/LayerNorm/batchnorm/sub*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ *
T0
Ќ
generator/G_MODEL/A/LeakyRelu	LeakyRelu-generator/G_MODEL/A/LayerNorm/batchnorm/add_1*
alpha%ЭЬL>*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ *
T0

(generator/G_MODEL/A/MirrorPad_1/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               
м
generator/G_MODEL/A/MirrorPad_1	MirrorPadgenerator/G_MODEL/A/LeakyRelu(generator/G_MODEL/A/MirrorPad_1/paddings*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ *
T0*
mode	REFLECT*
	Tpaddings0
е
Egenerator/G_MODEL/A/Conv_1/weights/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*%
valueB"          @   *5
_class+
)'loc:@generator/G_MODEL/A/Conv_1/weights
Р
Dgenerator/G_MODEL/A/Conv_1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *5
_class+
)'loc:@generator/G_MODEL/A/Conv_1/weights*
_output_shapes
: *
dtype0
Т
Fgenerator/G_MODEL/A/Conv_1/weights/Initializer/truncated_normal/stddevConst*5
_class+
)'loc:@generator/G_MODEL/A/Conv_1/weights*
valueB
 *Т=*
dtype0*
_output_shapes
: 
З
Ogenerator/G_MODEL/A/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalEgenerator/G_MODEL/A/Conv_1/weights/Initializer/truncated_normal/shape*
dtype0*&
_output_shapes
: @*
T0*

seed *
seed2 *5
_class+
)'loc:@generator/G_MODEL/A/Conv_1/weights
Ы
Cgenerator/G_MODEL/A/Conv_1/weights/Initializer/truncated_normal/mulMulOgenerator/G_MODEL/A/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalFgenerator/G_MODEL/A/Conv_1/weights/Initializer/truncated_normal/stddev*5
_class+
)'loc:@generator/G_MODEL/A/Conv_1/weights*
T0*&
_output_shapes
: @
Й
?generator/G_MODEL/A/Conv_1/weights/Initializer/truncated_normalAddCgenerator/G_MODEL/A/Conv_1/weights/Initializer/truncated_normal/mulDgenerator/G_MODEL/A/Conv_1/weights/Initializer/truncated_normal/mean*
T0*5
_class+
)'loc:@generator/G_MODEL/A/Conv_1/weights*&
_output_shapes
: @
н
"generator/G_MODEL/A/Conv_1/weights
VariableV2*5
_class+
)'loc:@generator/G_MODEL/A/Conv_1/weights*&
_output_shapes
: @*
shape: @*
dtype0*
shared_name *
	container 
Љ
)generator/G_MODEL/A/Conv_1/weights/AssignAssign"generator/G_MODEL/A/Conv_1/weights?generator/G_MODEL/A/Conv_1/weights/Initializer/truncated_normal*
validate_shape(*
T0*&
_output_shapes
: @*5
_class+
)'loc:@generator/G_MODEL/A/Conv_1/weights*
use_locking(
П
'generator/G_MODEL/A/Conv_1/weights/readIdentity"generator/G_MODEL/A/Conv_1/weights*5
_class+
)'loc:@generator/G_MODEL/A/Conv_1/weights*&
_output_shapes
: @*
T0
y
(generator/G_MODEL/A/Conv_1/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
Р
!generator/G_MODEL/A/Conv_1/Conv2DConv2Dgenerator/G_MODEL/A/MirrorPad_1'generator/G_MODEL/A/Conv_1/weights/read*
strides
*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@*
use_cudnn_on_gpu(*
paddingVALID*
T0*
explicit_paddings
 *
data_formatNHWC*
	dilations

М
6generator/G_MODEL/A/LayerNorm_1/beta/Initializer/zerosConst*7
_class-
+)loc:@generator/G_MODEL/A/LayerNorm_1/beta*
dtype0*
valueB@*    *
_output_shapes
:@
Щ
$generator/G_MODEL/A/LayerNorm_1/beta
VariableV2*7
_class-
+)loc:@generator/G_MODEL/A/LayerNorm_1/beta*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
	container 

+generator/G_MODEL/A/LayerNorm_1/beta/AssignAssign$generator/G_MODEL/A/LayerNorm_1/beta6generator/G_MODEL/A/LayerNorm_1/beta/Initializer/zeros*
validate_shape(*7
_class-
+)loc:@generator/G_MODEL/A/LayerNorm_1/beta*
_output_shapes
:@*
T0*
use_locking(
Й
)generator/G_MODEL/A/LayerNorm_1/beta/readIdentity$generator/G_MODEL/A/LayerNorm_1/beta*
_output_shapes
:@*7
_class-
+)loc:@generator/G_MODEL/A/LayerNorm_1/beta*
T0
Н
6generator/G_MODEL/A/LayerNorm_1/gamma/Initializer/onesConst*
dtype0*8
_class.
,*loc:@generator/G_MODEL/A/LayerNorm_1/gamma*
_output_shapes
:@*
valueB@*  ?
Ы
%generator/G_MODEL/A/LayerNorm_1/gamma
VariableV2*
	container *
shared_name *
_output_shapes
:@*8
_class.
,*loc:@generator/G_MODEL/A/LayerNorm_1/gamma*
shape:@*
dtype0

,generator/G_MODEL/A/LayerNorm_1/gamma/AssignAssign%generator/G_MODEL/A/LayerNorm_1/gamma6generator/G_MODEL/A/LayerNorm_1/gamma/Initializer/ones*
use_locking(*
_output_shapes
:@*8
_class.
,*loc:@generator/G_MODEL/A/LayerNorm_1/gamma*
validate_shape(*
T0
М
*generator/G_MODEL/A/LayerNorm_1/gamma/readIdentity%generator/G_MODEL/A/LayerNorm_1/gamma*
_output_shapes
:@*
T0*8
_class.
,*loc:@generator/G_MODEL/A/LayerNorm_1/gamma

>generator/G_MODEL/A/LayerNorm_1/moments/mean/reduction_indicesConst*
dtype0*!
valueB"         *
_output_shapes
:
х
,generator/G_MODEL/A/LayerNorm_1/moments/meanMean!generator/G_MODEL/A/Conv_1/Conv2D>generator/G_MODEL/A/LayerNorm_1/moments/mean/reduction_indices*
T0*

Tidx0*&
_output_shapes
:*
	keep_dims(
Ѓ
4generator/G_MODEL/A/LayerNorm_1/moments/StopGradientStopGradient,generator/G_MODEL/A/LayerNorm_1/moments/mean*&
_output_shapes
:*
T0
ъ
9generator/G_MODEL/A/LayerNorm_1/moments/SquaredDifferenceSquaredDifference!generator/G_MODEL/A/Conv_1/Conv2D4generator/G_MODEL/A/LayerNorm_1/moments/StopGradient*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@*
T0

Bgenerator/G_MODEL/A/LayerNorm_1/moments/variance/reduction_indicesConst*
_output_shapes
:*!
valueB"         *
dtype0

0generator/G_MODEL/A/LayerNorm_1/moments/varianceMean9generator/G_MODEL/A/LayerNorm_1/moments/SquaredDifferenceBgenerator/G_MODEL/A/LayerNorm_1/moments/variance/reduction_indices*
	keep_dims(*&
_output_shapes
:*
T0*

Tidx0
t
/generator/G_MODEL/A/LayerNorm_1/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *ЬМ+
Ъ
-generator/G_MODEL/A/LayerNorm_1/batchnorm/addAddV20generator/G_MODEL/A/LayerNorm_1/moments/variance/generator/G_MODEL/A/LayerNorm_1/batchnorm/add/y*&
_output_shapes
:*
T0

/generator/G_MODEL/A/LayerNorm_1/batchnorm/RsqrtRsqrt-generator/G_MODEL/A/LayerNorm_1/batchnorm/add*&
_output_shapes
:*
T0
Т
-generator/G_MODEL/A/LayerNorm_1/batchnorm/mulMul/generator/G_MODEL/A/LayerNorm_1/batchnorm/Rsqrt*generator/G_MODEL/A/LayerNorm_1/gamma/read*
T0*&
_output_shapes
:@
Ы
/generator/G_MODEL/A/LayerNorm_1/batchnorm/mul_1Mul!generator/G_MODEL/A/Conv_1/Conv2D-generator/G_MODEL/A/LayerNorm_1/batchnorm/mul*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@*
T0
Ф
/generator/G_MODEL/A/LayerNorm_1/batchnorm/mul_2Mul,generator/G_MODEL/A/LayerNorm_1/moments/mean-generator/G_MODEL/A/LayerNorm_1/batchnorm/mul*
T0*&
_output_shapes
:@
С
-generator/G_MODEL/A/LayerNorm_1/batchnorm/subSub)generator/G_MODEL/A/LayerNorm_1/beta/read/generator/G_MODEL/A/LayerNorm_1/batchnorm/mul_2*
T0*&
_output_shapes
:@
л
/generator/G_MODEL/A/LayerNorm_1/batchnorm/add_1AddV2/generator/G_MODEL/A/LayerNorm_1/batchnorm/mul_1-generator/G_MODEL/A/LayerNorm_1/batchnorm/sub*
T0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@
А
generator/G_MODEL/A/LeakyRelu_1	LeakyRelu/generator/G_MODEL/A/LayerNorm_1/batchnorm/add_1*
alpha%ЭЬL>*
T0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@

(generator/G_MODEL/A/MirrorPad_2/paddingsConst*9
value0B."                             *
dtype0*
_output_shapes

:
о
generator/G_MODEL/A/MirrorPad_2	MirrorPadgenerator/G_MODEL/A/LeakyRelu_1(generator/G_MODEL/A/MirrorPad_2/paddings*
mode	REFLECT*
	Tpaddings0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@*
T0
е
Egenerator/G_MODEL/A/Conv_2/weights/Initializer/truncated_normal/shapeConst*
_output_shapes
:*%
valueB"      @   @   *5
_class+
)'loc:@generator/G_MODEL/A/Conv_2/weights*
dtype0
Р
Dgenerator/G_MODEL/A/Conv_2/weights/Initializer/truncated_normal/meanConst*
dtype0*
valueB
 *    *5
_class+
)'loc:@generator/G_MODEL/A/Conv_2/weights*
_output_shapes
: 
Т
Fgenerator/G_MODEL/A/Conv_2/weights/Initializer/truncated_normal/stddevConst*
dtype0*5
_class+
)'loc:@generator/G_MODEL/A/Conv_2/weights*
_output_shapes
: *
valueB
 *=
З
Ogenerator/G_MODEL/A/Conv_2/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalEgenerator/G_MODEL/A/Conv_2/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*5
_class+
)'loc:@generator/G_MODEL/A/Conv_2/weights*&
_output_shapes
:@@*
T0
Ы
Cgenerator/G_MODEL/A/Conv_2/weights/Initializer/truncated_normal/mulMulOgenerator/G_MODEL/A/Conv_2/weights/Initializer/truncated_normal/TruncatedNormalFgenerator/G_MODEL/A/Conv_2/weights/Initializer/truncated_normal/stddev*
T0*5
_class+
)'loc:@generator/G_MODEL/A/Conv_2/weights*&
_output_shapes
:@@
Й
?generator/G_MODEL/A/Conv_2/weights/Initializer/truncated_normalAddCgenerator/G_MODEL/A/Conv_2/weights/Initializer/truncated_normal/mulDgenerator/G_MODEL/A/Conv_2/weights/Initializer/truncated_normal/mean*&
_output_shapes
:@@*
T0*5
_class+
)'loc:@generator/G_MODEL/A/Conv_2/weights
н
"generator/G_MODEL/A/Conv_2/weights
VariableV2*&
_output_shapes
:@@*
	container *5
_class+
)'loc:@generator/G_MODEL/A/Conv_2/weights*
shape:@@*
dtype0*
shared_name 
Љ
)generator/G_MODEL/A/Conv_2/weights/AssignAssign"generator/G_MODEL/A/Conv_2/weights?generator/G_MODEL/A/Conv_2/weights/Initializer/truncated_normal*&
_output_shapes
:@@*
validate_shape(*
T0*5
_class+
)'loc:@generator/G_MODEL/A/Conv_2/weights*
use_locking(
П
'generator/G_MODEL/A/Conv_2/weights/readIdentity"generator/G_MODEL/A/Conv_2/weights*5
_class+
)'loc:@generator/G_MODEL/A/Conv_2/weights*&
_output_shapes
:@@*
T0
y
(generator/G_MODEL/A/Conv_2/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
Р
!generator/G_MODEL/A/Conv_2/Conv2DConv2Dgenerator/G_MODEL/A/MirrorPad_2'generator/G_MODEL/A/Conv_2/weights/read*
explicit_paddings
 *
data_formatNHWC*
T0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@*
use_cudnn_on_gpu(*
strides
*
paddingVALID*
	dilations

М
6generator/G_MODEL/A/LayerNorm_2/beta/Initializer/zerosConst*
_output_shapes
:@*7
_class-
+)loc:@generator/G_MODEL/A/LayerNorm_2/beta*
valueB@*    *
dtype0
Щ
$generator/G_MODEL/A/LayerNorm_2/beta
VariableV2*
dtype0*
shape:@*7
_class-
+)loc:@generator/G_MODEL/A/LayerNorm_2/beta*
	container *
shared_name *
_output_shapes
:@

+generator/G_MODEL/A/LayerNorm_2/beta/AssignAssign$generator/G_MODEL/A/LayerNorm_2/beta6generator/G_MODEL/A/LayerNorm_2/beta/Initializer/zeros*
use_locking(*7
_class-
+)loc:@generator/G_MODEL/A/LayerNorm_2/beta*
_output_shapes
:@*
T0*
validate_shape(
Й
)generator/G_MODEL/A/LayerNorm_2/beta/readIdentity$generator/G_MODEL/A/LayerNorm_2/beta*7
_class-
+)loc:@generator/G_MODEL/A/LayerNorm_2/beta*
T0*
_output_shapes
:@
Н
6generator/G_MODEL/A/LayerNorm_2/gamma/Initializer/onesConst*
_output_shapes
:@*8
_class.
,*loc:@generator/G_MODEL/A/LayerNorm_2/gamma*
dtype0*
valueB@*  ?
Ы
%generator/G_MODEL/A/LayerNorm_2/gamma
VariableV2*8
_class.
,*loc:@generator/G_MODEL/A/LayerNorm_2/gamma*
	container *
_output_shapes
:@*
dtype0*
shared_name *
shape:@

,generator/G_MODEL/A/LayerNorm_2/gamma/AssignAssign%generator/G_MODEL/A/LayerNorm_2/gamma6generator/G_MODEL/A/LayerNorm_2/gamma/Initializer/ones*
_output_shapes
:@*
use_locking(*8
_class.
,*loc:@generator/G_MODEL/A/LayerNorm_2/gamma*
T0*
validate_shape(
М
*generator/G_MODEL/A/LayerNorm_2/gamma/readIdentity%generator/G_MODEL/A/LayerNorm_2/gamma*
T0*
_output_shapes
:@*8
_class.
,*loc:@generator/G_MODEL/A/LayerNorm_2/gamma

>generator/G_MODEL/A/LayerNorm_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
х
,generator/G_MODEL/A/LayerNorm_2/moments/meanMean!generator/G_MODEL/A/Conv_2/Conv2D>generator/G_MODEL/A/LayerNorm_2/moments/mean/reduction_indices*
	keep_dims(*&
_output_shapes
:*
T0*

Tidx0
Ѓ
4generator/G_MODEL/A/LayerNorm_2/moments/StopGradientStopGradient,generator/G_MODEL/A/LayerNorm_2/moments/mean*&
_output_shapes
:*
T0
ъ
9generator/G_MODEL/A/LayerNorm_2/moments/SquaredDifferenceSquaredDifference!generator/G_MODEL/A/Conv_2/Conv2D4generator/G_MODEL/A/LayerNorm_2/moments/StopGradient*
T0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@

Bgenerator/G_MODEL/A/LayerNorm_2/moments/variance/reduction_indicesConst*
_output_shapes
:*!
valueB"         *
dtype0

0generator/G_MODEL/A/LayerNorm_2/moments/varianceMean9generator/G_MODEL/A/LayerNorm_2/moments/SquaredDifferenceBgenerator/G_MODEL/A/LayerNorm_2/moments/variance/reduction_indices*
T0*&
_output_shapes
:*

Tidx0*
	keep_dims(
t
/generator/G_MODEL/A/LayerNorm_2/batchnorm/add/yConst*
valueB
 *ЬМ+*
_output_shapes
: *
dtype0
Ъ
-generator/G_MODEL/A/LayerNorm_2/batchnorm/addAddV20generator/G_MODEL/A/LayerNorm_2/moments/variance/generator/G_MODEL/A/LayerNorm_2/batchnorm/add/y*&
_output_shapes
:*
T0

/generator/G_MODEL/A/LayerNorm_2/batchnorm/RsqrtRsqrt-generator/G_MODEL/A/LayerNorm_2/batchnorm/add*
T0*&
_output_shapes
:
Т
-generator/G_MODEL/A/LayerNorm_2/batchnorm/mulMul/generator/G_MODEL/A/LayerNorm_2/batchnorm/Rsqrt*generator/G_MODEL/A/LayerNorm_2/gamma/read*
T0*&
_output_shapes
:@
Ы
/generator/G_MODEL/A/LayerNorm_2/batchnorm/mul_1Mul!generator/G_MODEL/A/Conv_2/Conv2D-generator/G_MODEL/A/LayerNorm_2/batchnorm/mul*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@*
T0
Ф
/generator/G_MODEL/A/LayerNorm_2/batchnorm/mul_2Mul,generator/G_MODEL/A/LayerNorm_2/moments/mean-generator/G_MODEL/A/LayerNorm_2/batchnorm/mul*
T0*&
_output_shapes
:@
С
-generator/G_MODEL/A/LayerNorm_2/batchnorm/subSub)generator/G_MODEL/A/LayerNorm_2/beta/read/generator/G_MODEL/A/LayerNorm_2/batchnorm/mul_2*
T0*&
_output_shapes
:@
л
/generator/G_MODEL/A/LayerNorm_2/batchnorm/add_1AddV2/generator/G_MODEL/A/LayerNorm_2/batchnorm/mul_1-generator/G_MODEL/A/LayerNorm_2/batchnorm/sub*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@*
T0
А
generator/G_MODEL/A/LeakyRelu_2	LeakyRelu/generator/G_MODEL/A/LayerNorm_2/batchnorm/add_1*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@*
alpha%ЭЬL>*
T0

&generator/G_MODEL/B/MirrorPad/paddingsConst*9
value0B."                               *
_output_shapes

:*
dtype0
к
generator/G_MODEL/B/MirrorPad	MirrorPadgenerator/G_MODEL/A/LeakyRelu_2&generator/G_MODEL/B/MirrorPad/paddings*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@*
	Tpaddings0*
T0*
mode	REFLECT
б
Cgenerator/G_MODEL/B/Conv/weights/Initializer/truncated_normal/shapeConst*%
valueB"      @      *
_output_shapes
:*
dtype0*3
_class)
'%loc:@generator/G_MODEL/B/Conv/weights
М
Bgenerator/G_MODEL/B/Conv/weights/Initializer/truncated_normal/meanConst*3
_class)
'%loc:@generator/G_MODEL/B/Conv/weights*
dtype0*
valueB
 *    *
_output_shapes
: 
О
Dgenerator/G_MODEL/B/Conv/weights/Initializer/truncated_normal/stddevConst*
valueB
 *=*3
_class)
'%loc:@generator/G_MODEL/B/Conv/weights*
dtype0*
_output_shapes
: 
В
Mgenerator/G_MODEL/B/Conv/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalCgenerator/G_MODEL/B/Conv/weights/Initializer/truncated_normal/shape*3
_class)
'%loc:@generator/G_MODEL/B/Conv/weights*
dtype0*
T0*'
_output_shapes
:@*
seed2 *

seed 
Ф
Agenerator/G_MODEL/B/Conv/weights/Initializer/truncated_normal/mulMulMgenerator/G_MODEL/B/Conv/weights/Initializer/truncated_normal/TruncatedNormalDgenerator/G_MODEL/B/Conv/weights/Initializer/truncated_normal/stddev*'
_output_shapes
:@*
T0*3
_class)
'%loc:@generator/G_MODEL/B/Conv/weights
В
=generator/G_MODEL/B/Conv/weights/Initializer/truncated_normalAddAgenerator/G_MODEL/B/Conv/weights/Initializer/truncated_normal/mulBgenerator/G_MODEL/B/Conv/weights/Initializer/truncated_normal/mean*3
_class)
'%loc:@generator/G_MODEL/B/Conv/weights*
T0*'
_output_shapes
:@
л
 generator/G_MODEL/B/Conv/weights
VariableV2*
shape:@*'
_output_shapes
:@*
dtype0*
	container *3
_class)
'%loc:@generator/G_MODEL/B/Conv/weights*
shared_name 
Ђ
'generator/G_MODEL/B/Conv/weights/AssignAssign generator/G_MODEL/B/Conv/weights=generator/G_MODEL/B/Conv/weights/Initializer/truncated_normal*3
_class)
'%loc:@generator/G_MODEL/B/Conv/weights*
validate_shape(*'
_output_shapes
:@*
T0*
use_locking(
К
%generator/G_MODEL/B/Conv/weights/readIdentity generator/G_MODEL/B/Conv/weights*
T0*3
_class)
'%loc:@generator/G_MODEL/B/Conv/weights*'
_output_shapes
:@
w
&generator/G_MODEL/B/Conv/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
Л
generator/G_MODEL/B/Conv/Conv2DConv2Dgenerator/G_MODEL/B/MirrorPad%generator/G_MODEL/B/Conv/weights/read*
paddingVALID*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 *
strides
*
T0*
	dilations
*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
К
4generator/G_MODEL/B/LayerNorm/beta/Initializer/zerosConst*
valueB*    *
dtype0*
_output_shapes	
:*5
_class+
)'loc:@generator/G_MODEL/B/LayerNorm/beta
Ч
"generator/G_MODEL/B/LayerNorm/beta
VariableV2*
dtype0*
shared_name *5
_class+
)'loc:@generator/G_MODEL/B/LayerNorm/beta*
shape:*
	container *
_output_shapes	
:

)generator/G_MODEL/B/LayerNorm/beta/AssignAssign"generator/G_MODEL/B/LayerNorm/beta4generator/G_MODEL/B/LayerNorm/beta/Initializer/zeros*
use_locking(*
_output_shapes	
:*5
_class+
)'loc:@generator/G_MODEL/B/LayerNorm/beta*
T0*
validate_shape(
Д
'generator/G_MODEL/B/LayerNorm/beta/readIdentity"generator/G_MODEL/B/LayerNorm/beta*
_output_shapes	
:*5
_class+
)'loc:@generator/G_MODEL/B/LayerNorm/beta*
T0
Л
4generator/G_MODEL/B/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*
_output_shapes	
:*6
_class,
*(loc:@generator/G_MODEL/B/LayerNorm/gamma*
dtype0
Щ
#generator/G_MODEL/B/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *
	container *6
_class,
*(loc:@generator/G_MODEL/B/LayerNorm/gamma*
shape:

*generator/G_MODEL/B/LayerNorm/gamma/AssignAssign#generator/G_MODEL/B/LayerNorm/gamma4generator/G_MODEL/B/LayerNorm/gamma/Initializer/ones*
_output_shapes	
:*
validate_shape(*
use_locking(*
T0*6
_class,
*(loc:@generator/G_MODEL/B/LayerNorm/gamma
З
(generator/G_MODEL/B/LayerNorm/gamma/readIdentity#generator/G_MODEL/B/LayerNorm/gamma*6
_class,
*(loc:@generator/G_MODEL/B/LayerNorm/gamma*
_output_shapes	
:*
T0

<generator/G_MODEL/B/LayerNorm/moments/mean/reduction_indicesConst*!
valueB"         *
_output_shapes
:*
dtype0
п
*generator/G_MODEL/B/LayerNorm/moments/meanMeangenerator/G_MODEL/B/Conv/Conv2D<generator/G_MODEL/B/LayerNorm/moments/mean/reduction_indices*
T0*&
_output_shapes
:*
	keep_dims(*

Tidx0

2generator/G_MODEL/B/LayerNorm/moments/StopGradientStopGradient*generator/G_MODEL/B/LayerNorm/moments/mean*
T0*&
_output_shapes
:
х
7generator/G_MODEL/B/LayerNorm/moments/SquaredDifferenceSquaredDifferencegenerator/G_MODEL/B/Conv/Conv2D2generator/G_MODEL/B/LayerNorm/moments/StopGradient*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ

@generator/G_MODEL/B/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
џ
.generator/G_MODEL/B/LayerNorm/moments/varianceMean7generator/G_MODEL/B/LayerNorm/moments/SquaredDifference@generator/G_MODEL/B/LayerNorm/moments/variance/reduction_indices*

Tidx0*&
_output_shapes
:*
T0*
	keep_dims(
r
-generator/G_MODEL/B/LayerNorm/batchnorm/add/yConst*
dtype0*
valueB
 *ЬМ+*
_output_shapes
: 
Ф
+generator/G_MODEL/B/LayerNorm/batchnorm/addAddV2.generator/G_MODEL/B/LayerNorm/moments/variance-generator/G_MODEL/B/LayerNorm/batchnorm/add/y*&
_output_shapes
:*
T0

-generator/G_MODEL/B/LayerNorm/batchnorm/RsqrtRsqrt+generator/G_MODEL/B/LayerNorm/batchnorm/add*
T0*&
_output_shapes
:
Н
+generator/G_MODEL/B/LayerNorm/batchnorm/mulMul-generator/G_MODEL/B/LayerNorm/batchnorm/Rsqrt(generator/G_MODEL/B/LayerNorm/gamma/read*'
_output_shapes
:*
T0
Ц
-generator/G_MODEL/B/LayerNorm/batchnorm/mul_1Mulgenerator/G_MODEL/B/Conv/Conv2D+generator/G_MODEL/B/LayerNorm/batchnorm/mul*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
П
-generator/G_MODEL/B/LayerNorm/batchnorm/mul_2Mul*generator/G_MODEL/B/LayerNorm/moments/mean+generator/G_MODEL/B/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:
М
+generator/G_MODEL/B/LayerNorm/batchnorm/subSub'generator/G_MODEL/B/LayerNorm/beta/read-generator/G_MODEL/B/LayerNorm/batchnorm/mul_2*'
_output_shapes
:*
T0
ж
-generator/G_MODEL/B/LayerNorm/batchnorm/add_1AddV2-generator/G_MODEL/B/LayerNorm/batchnorm/mul_1+generator/G_MODEL/B/LayerNorm/batchnorm/sub*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
­
generator/G_MODEL/B/LeakyRelu	LeakyRelu-generator/G_MODEL/B/LayerNorm/batchnorm/add_1*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
alpha%ЭЬL>*
T0

(generator/G_MODEL/B/MirrorPad_1/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             
н
generator/G_MODEL/B/MirrorPad_1	MirrorPadgenerator/G_MODEL/B/LeakyRelu(generator/G_MODEL/B/MirrorPad_1/paddings*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0*
	Tpaddings0*
mode	REFLECT
е
Egenerator/G_MODEL/B/Conv_1/weights/Initializer/truncated_normal/shapeConst*
_output_shapes
:*%
valueB"            *
dtype0*5
_class+
)'loc:@generator/G_MODEL/B/Conv_1/weights
Р
Dgenerator/G_MODEL/B/Conv_1/weights/Initializer/truncated_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: *5
_class+
)'loc:@generator/G_MODEL/B/Conv_1/weights
Т
Fgenerator/G_MODEL/B/Conv_1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *B=*
_output_shapes
: *
dtype0*5
_class+
)'loc:@generator/G_MODEL/B/Conv_1/weights
Й
Ogenerator/G_MODEL/B/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalEgenerator/G_MODEL/B/Conv_1/weights/Initializer/truncated_normal/shape*(
_output_shapes
:*5
_class+
)'loc:@generator/G_MODEL/B/Conv_1/weights*
dtype0*

seed *
T0*
seed2 
Э
Cgenerator/G_MODEL/B/Conv_1/weights/Initializer/truncated_normal/mulMulOgenerator/G_MODEL/B/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalFgenerator/G_MODEL/B/Conv_1/weights/Initializer/truncated_normal/stddev*
T0*5
_class+
)'loc:@generator/G_MODEL/B/Conv_1/weights*(
_output_shapes
:
Л
?generator/G_MODEL/B/Conv_1/weights/Initializer/truncated_normalAddCgenerator/G_MODEL/B/Conv_1/weights/Initializer/truncated_normal/mulDgenerator/G_MODEL/B/Conv_1/weights/Initializer/truncated_normal/mean*
T0*5
_class+
)'loc:@generator/G_MODEL/B/Conv_1/weights*(
_output_shapes
:
с
"generator/G_MODEL/B/Conv_1/weights
VariableV2*
	container *
dtype0*(
_output_shapes
:*5
_class+
)'loc:@generator/G_MODEL/B/Conv_1/weights*
shared_name *
shape:
Ћ
)generator/G_MODEL/B/Conv_1/weights/AssignAssign"generator/G_MODEL/B/Conv_1/weights?generator/G_MODEL/B/Conv_1/weights/Initializer/truncated_normal*(
_output_shapes
:*
use_locking(*5
_class+
)'loc:@generator/G_MODEL/B/Conv_1/weights*
T0*
validate_shape(
С
'generator/G_MODEL/B/Conv_1/weights/readIdentity"generator/G_MODEL/B/Conv_1/weights*(
_output_shapes
:*
T0*5
_class+
)'loc:@generator/G_MODEL/B/Conv_1/weights
y
(generator/G_MODEL/B/Conv_1/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
С
!generator/G_MODEL/B/Conv_1/Conv2DConv2Dgenerator/G_MODEL/B/MirrorPad_1'generator/G_MODEL/B/Conv_1/weights/read*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID*
	dilations
*
data_formatNHWC*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
О
6generator/G_MODEL/B/LayerNorm_1/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *7
_class-
+)loc:@generator/G_MODEL/B/LayerNorm_1/beta
Ы
$generator/G_MODEL/B/LayerNorm_1/beta
VariableV2*
shape:*
shared_name *
	container *7
_class-
+)loc:@generator/G_MODEL/B/LayerNorm_1/beta*
dtype0*
_output_shapes	
:

+generator/G_MODEL/B/LayerNorm_1/beta/AssignAssign$generator/G_MODEL/B/LayerNorm_1/beta6generator/G_MODEL/B/LayerNorm_1/beta/Initializer/zeros*
_output_shapes	
:*
T0*7
_class-
+)loc:@generator/G_MODEL/B/LayerNorm_1/beta*
validate_shape(*
use_locking(
К
)generator/G_MODEL/B/LayerNorm_1/beta/readIdentity$generator/G_MODEL/B/LayerNorm_1/beta*
T0*
_output_shapes	
:*7
_class-
+)loc:@generator/G_MODEL/B/LayerNorm_1/beta
П
6generator/G_MODEL/B/LayerNorm_1/gamma/Initializer/onesConst*
valueB*  ?*
_output_shapes	
:*
dtype0*8
_class.
,*loc:@generator/G_MODEL/B/LayerNorm_1/gamma
Э
%generator/G_MODEL/B/LayerNorm_1/gamma
VariableV2*
shared_name *
shape:*
dtype0*8
_class.
,*loc:@generator/G_MODEL/B/LayerNorm_1/gamma*
	container *
_output_shapes	
:

,generator/G_MODEL/B/LayerNorm_1/gamma/AssignAssign%generator/G_MODEL/B/LayerNorm_1/gamma6generator/G_MODEL/B/LayerNorm_1/gamma/Initializer/ones*
_output_shapes	
:*8
_class.
,*loc:@generator/G_MODEL/B/LayerNorm_1/gamma*
validate_shape(*
use_locking(*
T0
Н
*generator/G_MODEL/B/LayerNorm_1/gamma/readIdentity%generator/G_MODEL/B/LayerNorm_1/gamma*
T0*
_output_shapes	
:*8
_class.
,*loc:@generator/G_MODEL/B/LayerNorm_1/gamma

>generator/G_MODEL/B/LayerNorm_1/moments/mean/reduction_indicesConst*
_output_shapes
:*!
valueB"         *
dtype0
х
,generator/G_MODEL/B/LayerNorm_1/moments/meanMean!generator/G_MODEL/B/Conv_1/Conv2D>generator/G_MODEL/B/LayerNorm_1/moments/mean/reduction_indices*

Tidx0*
T0*
	keep_dims(*&
_output_shapes
:
Ѓ
4generator/G_MODEL/B/LayerNorm_1/moments/StopGradientStopGradient,generator/G_MODEL/B/LayerNorm_1/moments/mean*&
_output_shapes
:*
T0
ы
9generator/G_MODEL/B/LayerNorm_1/moments/SquaredDifferenceSquaredDifference!generator/G_MODEL/B/Conv_1/Conv2D4generator/G_MODEL/B/LayerNorm_1/moments/StopGradient*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0

Bgenerator/G_MODEL/B/LayerNorm_1/moments/variance/reduction_indicesConst*!
valueB"         *
_output_shapes
:*
dtype0

0generator/G_MODEL/B/LayerNorm_1/moments/varianceMean9generator/G_MODEL/B/LayerNorm_1/moments/SquaredDifferenceBgenerator/G_MODEL/B/LayerNorm_1/moments/variance/reduction_indices*
T0*

Tidx0*&
_output_shapes
:*
	keep_dims(
t
/generator/G_MODEL/B/LayerNorm_1/batchnorm/add/yConst*
_output_shapes
: *
valueB
 *ЬМ+*
dtype0
Ъ
-generator/G_MODEL/B/LayerNorm_1/batchnorm/addAddV20generator/G_MODEL/B/LayerNorm_1/moments/variance/generator/G_MODEL/B/LayerNorm_1/batchnorm/add/y*&
_output_shapes
:*
T0

/generator/G_MODEL/B/LayerNorm_1/batchnorm/RsqrtRsqrt-generator/G_MODEL/B/LayerNorm_1/batchnorm/add*
T0*&
_output_shapes
:
У
-generator/G_MODEL/B/LayerNorm_1/batchnorm/mulMul/generator/G_MODEL/B/LayerNorm_1/batchnorm/Rsqrt*generator/G_MODEL/B/LayerNorm_1/gamma/read*
T0*'
_output_shapes
:
Ь
/generator/G_MODEL/B/LayerNorm_1/batchnorm/mul_1Mul!generator/G_MODEL/B/Conv_1/Conv2D-generator/G_MODEL/B/LayerNorm_1/batchnorm/mul*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
Х
/generator/G_MODEL/B/LayerNorm_1/batchnorm/mul_2Mul,generator/G_MODEL/B/LayerNorm_1/moments/mean-generator/G_MODEL/B/LayerNorm_1/batchnorm/mul*'
_output_shapes
:*
T0
Т
-generator/G_MODEL/B/LayerNorm_1/batchnorm/subSub)generator/G_MODEL/B/LayerNorm_1/beta/read/generator/G_MODEL/B/LayerNorm_1/batchnorm/mul_2*'
_output_shapes
:*
T0
м
/generator/G_MODEL/B/LayerNorm_1/batchnorm/add_1AddV2/generator/G_MODEL/B/LayerNorm_1/batchnorm/mul_1-generator/G_MODEL/B/LayerNorm_1/batchnorm/sub*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
Б
generator/G_MODEL/B/LeakyRelu_1	LeakyRelu/generator/G_MODEL/B/LayerNorm_1/batchnorm/add_1*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0*
alpha%ЭЬL>

&generator/G_MODEL/C/MirrorPad/paddingsConst*
dtype0*9
value0B."                             *
_output_shapes

:
л
generator/G_MODEL/C/MirrorPad	MirrorPadgenerator/G_MODEL/B/LeakyRelu_1&generator/G_MODEL/C/MirrorPad/paddings*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
	Tpaddings0*
mode	REFLECT
б
Cgenerator/G_MODEL/C/Conv/weights/Initializer/truncated_normal/shapeConst*
dtype0*%
valueB"            *
_output_shapes
:*3
_class)
'%loc:@generator/G_MODEL/C/Conv/weights
М
Bgenerator/G_MODEL/C/Conv/weights/Initializer/truncated_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    *3
_class)
'%loc:@generator/G_MODEL/C/Conv/weights
О
Dgenerator/G_MODEL/C/Conv/weights/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*3
_class)
'%loc:@generator/G_MODEL/C/Conv/weights*
valueB
 *B=
Г
Mgenerator/G_MODEL/C/Conv/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalCgenerator/G_MODEL/C/Conv/weights/Initializer/truncated_normal/shape*
dtype0*3
_class)
'%loc:@generator/G_MODEL/C/Conv/weights*
seed2 *
T0*(
_output_shapes
:*

seed 
Х
Agenerator/G_MODEL/C/Conv/weights/Initializer/truncated_normal/mulMulMgenerator/G_MODEL/C/Conv/weights/Initializer/truncated_normal/TruncatedNormalDgenerator/G_MODEL/C/Conv/weights/Initializer/truncated_normal/stddev*(
_output_shapes
:*
T0*3
_class)
'%loc:@generator/G_MODEL/C/Conv/weights
Г
=generator/G_MODEL/C/Conv/weights/Initializer/truncated_normalAddAgenerator/G_MODEL/C/Conv/weights/Initializer/truncated_normal/mulBgenerator/G_MODEL/C/Conv/weights/Initializer/truncated_normal/mean*(
_output_shapes
:*3
_class)
'%loc:@generator/G_MODEL/C/Conv/weights*
T0
н
 generator/G_MODEL/C/Conv/weights
VariableV2*(
_output_shapes
:*3
_class)
'%loc:@generator/G_MODEL/C/Conv/weights*
shape:*
dtype0*
	container *
shared_name 
Ѓ
'generator/G_MODEL/C/Conv/weights/AssignAssign generator/G_MODEL/C/Conv/weights=generator/G_MODEL/C/Conv/weights/Initializer/truncated_normal*
validate_shape(*(
_output_shapes
:*3
_class)
'%loc:@generator/G_MODEL/C/Conv/weights*
T0*
use_locking(
Л
%generator/G_MODEL/C/Conv/weights/readIdentity generator/G_MODEL/C/Conv/weights*(
_output_shapes
:*3
_class)
'%loc:@generator/G_MODEL/C/Conv/weights*
T0
w
&generator/G_MODEL/C/Conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Л
generator/G_MODEL/C/Conv/Conv2DConv2Dgenerator/G_MODEL/C/MirrorPad%generator/G_MODEL/C/Conv/weights/read*
T0*
strides
*
paddingVALID*
use_cudnn_on_gpu(*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
explicit_paddings
 *
data_formatNHWC*
	dilations

К
4generator/G_MODEL/C/LayerNorm/beta/Initializer/zerosConst*5
_class+
)'loc:@generator/G_MODEL/C/LayerNorm/beta*
dtype0*
valueB*    *
_output_shapes	
:
Ч
"generator/G_MODEL/C/LayerNorm/beta
VariableV2*
shape:*5
_class+
)'loc:@generator/G_MODEL/C/LayerNorm/beta*
	container *
_output_shapes	
:*
dtype0*
shared_name 

)generator/G_MODEL/C/LayerNorm/beta/AssignAssign"generator/G_MODEL/C/LayerNorm/beta4generator/G_MODEL/C/LayerNorm/beta/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@generator/G_MODEL/C/LayerNorm/beta*
validate_shape(*
_output_shapes	
:
Д
'generator/G_MODEL/C/LayerNorm/beta/readIdentity"generator/G_MODEL/C/LayerNorm/beta*
T0*5
_class+
)'loc:@generator/G_MODEL/C/LayerNorm/beta*
_output_shapes	
:
Л
4generator/G_MODEL/C/LayerNorm/gamma/Initializer/onesConst*
dtype0*6
_class,
*(loc:@generator/G_MODEL/C/LayerNorm/gamma*
_output_shapes	
:*
valueB*  ?
Щ
#generator/G_MODEL/C/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*6
_class,
*(loc:@generator/G_MODEL/C/LayerNorm/gamma*
shared_name *
shape:*
	container 

*generator/G_MODEL/C/LayerNorm/gamma/AssignAssign#generator/G_MODEL/C/LayerNorm/gamma4generator/G_MODEL/C/LayerNorm/gamma/Initializer/ones*
T0*
use_locking(*
_output_shapes	
:*
validate_shape(*6
_class,
*(loc:@generator/G_MODEL/C/LayerNorm/gamma
З
(generator/G_MODEL/C/LayerNorm/gamma/readIdentity#generator/G_MODEL/C/LayerNorm/gamma*6
_class,
*(loc:@generator/G_MODEL/C/LayerNorm/gamma*
_output_shapes	
:*
T0

<generator/G_MODEL/C/LayerNorm/moments/mean/reduction_indicesConst*!
valueB"         *
dtype0*
_output_shapes
:
п
*generator/G_MODEL/C/LayerNorm/moments/meanMeangenerator/G_MODEL/C/Conv/Conv2D<generator/G_MODEL/C/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*&
_output_shapes
:*
T0*

Tidx0

2generator/G_MODEL/C/LayerNorm/moments/StopGradientStopGradient*generator/G_MODEL/C/LayerNorm/moments/mean*
T0*&
_output_shapes
:
х
7generator/G_MODEL/C/LayerNorm/moments/SquaredDifferenceSquaredDifferencegenerator/G_MODEL/C/Conv/Conv2D2generator/G_MODEL/C/LayerNorm/moments/StopGradient*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0

@generator/G_MODEL/C/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
џ
.generator/G_MODEL/C/LayerNorm/moments/varianceMean7generator/G_MODEL/C/LayerNorm/moments/SquaredDifference@generator/G_MODEL/C/LayerNorm/moments/variance/reduction_indices*

Tidx0*&
_output_shapes
:*
	keep_dims(*
T0
r
-generator/G_MODEL/C/LayerNorm/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *ЬМ+
Ф
+generator/G_MODEL/C/LayerNorm/batchnorm/addAddV2.generator/G_MODEL/C/LayerNorm/moments/variance-generator/G_MODEL/C/LayerNorm/batchnorm/add/y*&
_output_shapes
:*
T0

-generator/G_MODEL/C/LayerNorm/batchnorm/RsqrtRsqrt+generator/G_MODEL/C/LayerNorm/batchnorm/add*
T0*&
_output_shapes
:
Н
+generator/G_MODEL/C/LayerNorm/batchnorm/mulMul-generator/G_MODEL/C/LayerNorm/batchnorm/Rsqrt(generator/G_MODEL/C/LayerNorm/gamma/read*'
_output_shapes
:*
T0
Ц
-generator/G_MODEL/C/LayerNorm/batchnorm/mul_1Mulgenerator/G_MODEL/C/Conv/Conv2D+generator/G_MODEL/C/LayerNorm/batchnorm/mul*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
П
-generator/G_MODEL/C/LayerNorm/batchnorm/mul_2Mul*generator/G_MODEL/C/LayerNorm/moments/mean+generator/G_MODEL/C/LayerNorm/batchnorm/mul*'
_output_shapes
:*
T0
М
+generator/G_MODEL/C/LayerNorm/batchnorm/subSub'generator/G_MODEL/C/LayerNorm/beta/read-generator/G_MODEL/C/LayerNorm/batchnorm/mul_2*'
_output_shapes
:*
T0
ж
-generator/G_MODEL/C/LayerNorm/batchnorm/add_1AddV2-generator/G_MODEL/C/LayerNorm/batchnorm/mul_1+generator/G_MODEL/C/LayerNorm/batchnorm/sub*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
­
generator/G_MODEL/C/LeakyRelu	LeakyRelu-generator/G_MODEL/C/LayerNorm/batchnorm/add_1*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0*
alpha%ЭЬL>
з
Fgenerator/G_MODEL/C/r1/Conv/weights/Initializer/truncated_normal/shapeConst*
_output_shapes
:*%
valueB"            *
dtype0*6
_class,
*(loc:@generator/G_MODEL/C/r1/Conv/weights
Т
Egenerator/G_MODEL/C/r1/Conv/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *6
_class,
*(loc:@generator/G_MODEL/C/r1/Conv/weights
Ф
Ggenerator/G_MODEL/C/r1/Conv/weights/Initializer/truncated_normal/stddevConst*6
_class,
*(loc:@generator/G_MODEL/C/r1/Conv/weights*
dtype0*
_output_shapes
: *
valueB
 *Eё>
М
Pgenerator/G_MODEL/C/r1/Conv/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalFgenerator/G_MODEL/C/r1/Conv/weights/Initializer/truncated_normal/shape*
T0*
seed2 *6
_class,
*(loc:@generator/G_MODEL/C/r1/Conv/weights*(
_output_shapes
:*

seed *
dtype0
б
Dgenerator/G_MODEL/C/r1/Conv/weights/Initializer/truncated_normal/mulMulPgenerator/G_MODEL/C/r1/Conv/weights/Initializer/truncated_normal/TruncatedNormalGgenerator/G_MODEL/C/r1/Conv/weights/Initializer/truncated_normal/stddev*6
_class,
*(loc:@generator/G_MODEL/C/r1/Conv/weights*
T0*(
_output_shapes
:
П
@generator/G_MODEL/C/r1/Conv/weights/Initializer/truncated_normalAddDgenerator/G_MODEL/C/r1/Conv/weights/Initializer/truncated_normal/mulEgenerator/G_MODEL/C/r1/Conv/weights/Initializer/truncated_normal/mean*(
_output_shapes
:*6
_class,
*(loc:@generator/G_MODEL/C/r1/Conv/weights*
T0
у
#generator/G_MODEL/C/r1/Conv/weights
VariableV2*
	container *6
_class,
*(loc:@generator/G_MODEL/C/r1/Conv/weights*
dtype0*
shared_name *
shape:*(
_output_shapes
:
Џ
*generator/G_MODEL/C/r1/Conv/weights/AssignAssign#generator/G_MODEL/C/r1/Conv/weights@generator/G_MODEL/C/r1/Conv/weights/Initializer/truncated_normal*6
_class,
*(loc:@generator/G_MODEL/C/r1/Conv/weights*(
_output_shapes
:*
T0*
validate_shape(*
use_locking(
Ф
(generator/G_MODEL/C/r1/Conv/weights/readIdentity#generator/G_MODEL/C/r1/Conv/weights*6
_class,
*(loc:@generator/G_MODEL/C/r1/Conv/weights*
T0*(
_output_shapes
:
z
)generator/G_MODEL/C/r1/Conv/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
С
"generator/G_MODEL/C/r1/Conv/Conv2DConv2Dgenerator/G_MODEL/C/LeakyRelu(generator/G_MODEL/C/r1/Conv/weights/read*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID*
data_formatNHWC*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
	dilations
*
strides

Р
7generator/G_MODEL/C/r1/LayerNorm/beta/Initializer/zerosConst*
valueB*    *
dtype0*
_output_shapes	
:*8
_class.
,*loc:@generator/G_MODEL/C/r1/LayerNorm/beta
Э
%generator/G_MODEL/C/r1/LayerNorm/beta
VariableV2*8
_class.
,*loc:@generator/G_MODEL/C/r1/LayerNorm/beta*
_output_shapes	
:*
shared_name *
	container *
dtype0*
shape:

,generator/G_MODEL/C/r1/LayerNorm/beta/AssignAssign%generator/G_MODEL/C/r1/LayerNorm/beta7generator/G_MODEL/C/r1/LayerNorm/beta/Initializer/zeros*
T0*
_output_shapes	
:*
validate_shape(*
use_locking(*8
_class.
,*loc:@generator/G_MODEL/C/r1/LayerNorm/beta
Н
*generator/G_MODEL/C/r1/LayerNorm/beta/readIdentity%generator/G_MODEL/C/r1/LayerNorm/beta*
_output_shapes	
:*8
_class.
,*loc:@generator/G_MODEL/C/r1/LayerNorm/beta*
T0
С
7generator/G_MODEL/C/r1/LayerNorm/gamma/Initializer/onesConst*9
_class/
-+loc:@generator/G_MODEL/C/r1/LayerNorm/gamma*
_output_shapes	
:*
valueB*  ?*
dtype0
Я
&generator/G_MODEL/C/r1/LayerNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*9
_class/
-+loc:@generator/G_MODEL/C/r1/LayerNorm/gamma*
	container *
shared_name *
shape:
Ђ
-generator/G_MODEL/C/r1/LayerNorm/gamma/AssignAssign&generator/G_MODEL/C/r1/LayerNorm/gamma7generator/G_MODEL/C/r1/LayerNorm/gamma/Initializer/ones*9
_class/
-+loc:@generator/G_MODEL/C/r1/LayerNorm/gamma*
validate_shape(*
use_locking(*
_output_shapes	
:*
T0
Р
+generator/G_MODEL/C/r1/LayerNorm/gamma/readIdentity&generator/G_MODEL/C/r1/LayerNorm/gamma*
T0*9
_class/
-+loc:@generator/G_MODEL/C/r1/LayerNorm/gamma*
_output_shapes	
:

?generator/G_MODEL/C/r1/LayerNorm/moments/mean/reduction_indicesConst*!
valueB"         *
dtype0*
_output_shapes
:
ш
-generator/G_MODEL/C/r1/LayerNorm/moments/meanMean"generator/G_MODEL/C/r1/Conv/Conv2D?generator/G_MODEL/C/r1/LayerNorm/moments/mean/reduction_indices*
T0*
	keep_dims(*

Tidx0*&
_output_shapes
:
Ѕ
5generator/G_MODEL/C/r1/LayerNorm/moments/StopGradientStopGradient-generator/G_MODEL/C/r1/LayerNorm/moments/mean*&
_output_shapes
:*
T0
ю
:generator/G_MODEL/C/r1/LayerNorm/moments/SquaredDifferenceSquaredDifference"generator/G_MODEL/C/r1/Conv/Conv2D5generator/G_MODEL/C/r1/LayerNorm/moments/StopGradient*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ

Cgenerator/G_MODEL/C/r1/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         

1generator/G_MODEL/C/r1/LayerNorm/moments/varianceMean:generator/G_MODEL/C/r1/LayerNorm/moments/SquaredDifferenceCgenerator/G_MODEL/C/r1/LayerNorm/moments/variance/reduction_indices*

Tidx0*
T0*&
_output_shapes
:*
	keep_dims(
u
0generator/G_MODEL/C/r1/LayerNorm/batchnorm/add/yConst*
valueB
 *ЬМ+*
_output_shapes
: *
dtype0
Э
.generator/G_MODEL/C/r1/LayerNorm/batchnorm/addAddV21generator/G_MODEL/C/r1/LayerNorm/moments/variance0generator/G_MODEL/C/r1/LayerNorm/batchnorm/add/y*
T0*&
_output_shapes
:

0generator/G_MODEL/C/r1/LayerNorm/batchnorm/RsqrtRsqrt.generator/G_MODEL/C/r1/LayerNorm/batchnorm/add*&
_output_shapes
:*
T0
Ц
.generator/G_MODEL/C/r1/LayerNorm/batchnorm/mulMul0generator/G_MODEL/C/r1/LayerNorm/batchnorm/Rsqrt+generator/G_MODEL/C/r1/LayerNorm/gamma/read*
T0*'
_output_shapes
:
Я
0generator/G_MODEL/C/r1/LayerNorm/batchnorm/mul_1Mul"generator/G_MODEL/C/r1/Conv/Conv2D.generator/G_MODEL/C/r1/LayerNorm/batchnorm/mul*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
Ш
0generator/G_MODEL/C/r1/LayerNorm/batchnorm/mul_2Mul-generator/G_MODEL/C/r1/LayerNorm/moments/mean.generator/G_MODEL/C/r1/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:
Х
.generator/G_MODEL/C/r1/LayerNorm/batchnorm/subSub*generator/G_MODEL/C/r1/LayerNorm/beta/read0generator/G_MODEL/C/r1/LayerNorm/batchnorm/mul_2*'
_output_shapes
:*
T0
п
0generator/G_MODEL/C/r1/LayerNorm/batchnorm/add_1AddV20generator/G_MODEL/C/r1/LayerNorm/batchnorm/mul_1.generator/G_MODEL/C/r1/LayerNorm/batchnorm/sub*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
Г
 generator/G_MODEL/C/r1/LeakyRelu	LeakyRelu0generator/G_MODEL/C/r1/LayerNorm/batchnorm/add_1*
alpha%ЭЬL>*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ

)generator/G_MODEL/C/r1/MirrorPad/paddingsConst*9
value0B."                             *
dtype0*
_output_shapes

:
т
 generator/G_MODEL/C/r1/MirrorPad	MirrorPad generator/G_MODEL/C/r1/LeakyRelu)generator/G_MODEL/C/r1/MirrorPad/paddings*
T0*
	Tpaddings0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
mode	REFLECT
Ч
>generator/G_MODEL/C/r1/r1/w/Initializer/truncated_normal/shapeConst*%
valueB"            *.
_class$
" loc:@generator/G_MODEL/C/r1/r1/w*
_output_shapes
:*
dtype0
В
=generator/G_MODEL/C/r1/r1/w/Initializer/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0*.
_class$
" loc:@generator/G_MODEL/C/r1/r1/w
Д
?generator/G_MODEL/C/r1/r1/w/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *	=*
dtype0*.
_class$
" loc:@generator/G_MODEL/C/r1/r1/w
Ѓ
Hgenerator/G_MODEL/C/r1/r1/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>generator/G_MODEL/C/r1/r1/w/Initializer/truncated_normal/shape*
seed2 *

seed *
dtype0*.
_class$
" loc:@generator/G_MODEL/C/r1/r1/w*'
_output_shapes
:*
T0
А
<generator/G_MODEL/C/r1/r1/w/Initializer/truncated_normal/mulMulHgenerator/G_MODEL/C/r1/r1/w/Initializer/truncated_normal/TruncatedNormal?generator/G_MODEL/C/r1/r1/w/Initializer/truncated_normal/stddev*'
_output_shapes
:*
T0*.
_class$
" loc:@generator/G_MODEL/C/r1/r1/w

8generator/G_MODEL/C/r1/r1/w/Initializer/truncated_normalAdd<generator/G_MODEL/C/r1/r1/w/Initializer/truncated_normal/mul=generator/G_MODEL/C/r1/r1/w/Initializer/truncated_normal/mean*'
_output_shapes
:*.
_class$
" loc:@generator/G_MODEL/C/r1/r1/w*
T0
б
generator/G_MODEL/C/r1/r1/w
VariableV2*
shape:*'
_output_shapes
:*
dtype0*
	container *
shared_name *.
_class$
" loc:@generator/G_MODEL/C/r1/r1/w

"generator/G_MODEL/C/r1/r1/w/AssignAssigngenerator/G_MODEL/C/r1/r1/w8generator/G_MODEL/C/r1/r1/w/Initializer/truncated_normal*.
_class$
" loc:@generator/G_MODEL/C/r1/r1/w*
use_locking(*
validate_shape(*'
_output_shapes
:*
T0
Ћ
 generator/G_MODEL/C/r1/r1/w/readIdentitygenerator/G_MODEL/C/r1/r1/w*
T0*.
_class$
" loc:@generator/G_MODEL/C/r1/r1/w*'
_output_shapes
:
{
"generator/G_MODEL/C/r1/r1/r1/ShapeConst*%
valueB"            *
dtype0*
_output_shapes
:
{
*generator/G_MODEL/C/r1/r1/r1/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0

generator/G_MODEL/C/r1/r1/r1DepthwiseConv2dNative generator/G_MODEL/C/r1/MirrorPad generator/G_MODEL/C/r1/r1/w/read*
	dilations
*
paddingVALID*
strides
*
T0*
data_formatNHWC*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
В
0generator/G_MODEL/C/r1/r1/bias/Initializer/ConstConst*
_output_shapes	
:*1
_class'
%#loc:@generator/G_MODEL/C/r1/r1/bias*
dtype0*
valueB*    
П
generator/G_MODEL/C/r1/r1/bias
VariableV2*
_output_shapes	
:*
dtype0*
shape:*
shared_name *
	container *1
_class'
%#loc:@generator/G_MODEL/C/r1/r1/bias

%generator/G_MODEL/C/r1/r1/bias/AssignAssigngenerator/G_MODEL/C/r1/r1/bias0generator/G_MODEL/C/r1/r1/bias/Initializer/Const*
use_locking(*
validate_shape(*1
_class'
%#loc:@generator/G_MODEL/C/r1/r1/bias*
_output_shapes	
:*
T0
Ј
#generator/G_MODEL/C/r1/r1/bias/readIdentitygenerator/G_MODEL/C/r1/r1/bias*
T0*
_output_shapes	
:*1
_class'
%#loc:@generator/G_MODEL/C/r1/r1/bias
Ъ
!generator/G_MODEL/C/r1/r1/BiasAddBiasAddgenerator/G_MODEL/C/r1/r1/r1#generator/G_MODEL/C/r1/r1/bias/read*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0*
data_formatNHWC
А
/generator/G_MODEL/C/r1/1/beta/Initializer/zerosConst*0
_class&
$"loc:@generator/G_MODEL/C/r1/1/beta*
_output_shapes	
:*
valueB*    *
dtype0
Н
generator/G_MODEL/C/r1/1/beta
VariableV2*0
_class&
$"loc:@generator/G_MODEL/C/r1/1/beta*
	container *
shared_name *
shape:*
_output_shapes	
:*
dtype0
џ
$generator/G_MODEL/C/r1/1/beta/AssignAssigngenerator/G_MODEL/C/r1/1/beta/generator/G_MODEL/C/r1/1/beta/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*0
_class&
$"loc:@generator/G_MODEL/C/r1/1/beta*
T0
Ѕ
"generator/G_MODEL/C/r1/1/beta/readIdentitygenerator/G_MODEL/C/r1/1/beta*
T0*0
_class&
$"loc:@generator/G_MODEL/C/r1/1/beta*
_output_shapes	
:
Б
/generator/G_MODEL/C/r1/1/gamma/Initializer/onesConst*
valueB*  ?*1
_class'
%#loc:@generator/G_MODEL/C/r1/1/gamma*
dtype0*
_output_shapes	
:
П
generator/G_MODEL/C/r1/1/gamma
VariableV2*
_output_shapes	
:*
	container *
dtype0*
shared_name *
shape:*1
_class'
%#loc:@generator/G_MODEL/C/r1/1/gamma

%generator/G_MODEL/C/r1/1/gamma/AssignAssigngenerator/G_MODEL/C/r1/1/gamma/generator/G_MODEL/C/r1/1/gamma/Initializer/ones*1
_class'
%#loc:@generator/G_MODEL/C/r1/1/gamma*
T0*
validate_shape(*
_output_shapes	
:*
use_locking(
Ј
#generator/G_MODEL/C/r1/1/gamma/readIdentitygenerator/G_MODEL/C/r1/1/gamma*1
_class'
%#loc:@generator/G_MODEL/C/r1/1/gamma*
_output_shapes	
:*
T0

7generator/G_MODEL/C/r1/1/moments/mean/reduction_indicesConst*!
valueB"         *
_output_shapes
:*
dtype0
з
%generator/G_MODEL/C/r1/1/moments/meanMean!generator/G_MODEL/C/r1/r1/BiasAdd7generator/G_MODEL/C/r1/1/moments/mean/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0

-generator/G_MODEL/C/r1/1/moments/StopGradientStopGradient%generator/G_MODEL/C/r1/1/moments/mean*
T0*&
_output_shapes
:
н
2generator/G_MODEL/C/r1/1/moments/SquaredDifferenceSquaredDifference!generator/G_MODEL/C/r1/r1/BiasAdd-generator/G_MODEL/C/r1/1/moments/StopGradient*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ

;generator/G_MODEL/C/r1/1/moments/variance/reduction_indicesConst*
dtype0*!
valueB"         *
_output_shapes
:
№
)generator/G_MODEL/C/r1/1/moments/varianceMean2generator/G_MODEL/C/r1/1/moments/SquaredDifference;generator/G_MODEL/C/r1/1/moments/variance/reduction_indices*&
_output_shapes
:*

Tidx0*
	keep_dims(*
T0
m
(generator/G_MODEL/C/r1/1/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *ЬМ+
Е
&generator/G_MODEL/C/r1/1/batchnorm/addAddV2)generator/G_MODEL/C/r1/1/moments/variance(generator/G_MODEL/C/r1/1/batchnorm/add/y*&
_output_shapes
:*
T0

(generator/G_MODEL/C/r1/1/batchnorm/RsqrtRsqrt&generator/G_MODEL/C/r1/1/batchnorm/add*
T0*&
_output_shapes
:
Ў
&generator/G_MODEL/C/r1/1/batchnorm/mulMul(generator/G_MODEL/C/r1/1/batchnorm/Rsqrt#generator/G_MODEL/C/r1/1/gamma/read*'
_output_shapes
:*
T0
О
(generator/G_MODEL/C/r1/1/batchnorm/mul_1Mul!generator/G_MODEL/C/r1/r1/BiasAdd&generator/G_MODEL/C/r1/1/batchnorm/mul*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
А
(generator/G_MODEL/C/r1/1/batchnorm/mul_2Mul%generator/G_MODEL/C/r1/1/moments/mean&generator/G_MODEL/C/r1/1/batchnorm/mul*'
_output_shapes
:*
T0
­
&generator/G_MODEL/C/r1/1/batchnorm/subSub"generator/G_MODEL/C/r1/1/beta/read(generator/G_MODEL/C/r1/1/batchnorm/mul_2*'
_output_shapes
:*
T0
Ч
(generator/G_MODEL/C/r1/1/batchnorm/add_1AddV2(generator/G_MODEL/C/r1/1/batchnorm/mul_1&generator/G_MODEL/C/r1/1/batchnorm/sub*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
­
"generator/G_MODEL/C/r1/LeakyRelu_1	LeakyRelu(generator/G_MODEL/C/r1/1/batchnorm/add_1*
alpha%ЭЬL>*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
л
Hgenerator/G_MODEL/C/r1/Conv_1/weights/Initializer/truncated_normal/shapeConst*8
_class.
,*loc:@generator/G_MODEL/C/r1/Conv_1/weights*
_output_shapes
:*
dtype0*%
valueB"            
Ц
Ggenerator/G_MODEL/C/r1/Conv_1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0*8
_class.
,*loc:@generator/G_MODEL/C/r1/Conv_1/weights
Ш
Igenerator/G_MODEL/C/r1/Conv_1/weights/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *аdЮ=*8
_class.
,*loc:@generator/G_MODEL/C/r1/Conv_1/weights*
dtype0
Т
Rgenerator/G_MODEL/C/r1/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHgenerator/G_MODEL/C/r1/Conv_1/weights/Initializer/truncated_normal/shape*
dtype0*

seed *8
_class.
,*loc:@generator/G_MODEL/C/r1/Conv_1/weights*
seed2 *
T0*(
_output_shapes
:
й
Fgenerator/G_MODEL/C/r1/Conv_1/weights/Initializer/truncated_normal/mulMulRgenerator/G_MODEL/C/r1/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalIgenerator/G_MODEL/C/r1/Conv_1/weights/Initializer/truncated_normal/stddev*8
_class.
,*loc:@generator/G_MODEL/C/r1/Conv_1/weights*(
_output_shapes
:*
T0
Ч
Bgenerator/G_MODEL/C/r1/Conv_1/weights/Initializer/truncated_normalAddFgenerator/G_MODEL/C/r1/Conv_1/weights/Initializer/truncated_normal/mulGgenerator/G_MODEL/C/r1/Conv_1/weights/Initializer/truncated_normal/mean*8
_class.
,*loc:@generator/G_MODEL/C/r1/Conv_1/weights*(
_output_shapes
:*
T0
ч
%generator/G_MODEL/C/r1/Conv_1/weights
VariableV2*
	container *(
_output_shapes
:*
shape:*
dtype0*
shared_name *8
_class.
,*loc:@generator/G_MODEL/C/r1/Conv_1/weights
З
,generator/G_MODEL/C/r1/Conv_1/weights/AssignAssign%generator/G_MODEL/C/r1/Conv_1/weightsBgenerator/G_MODEL/C/r1/Conv_1/weights/Initializer/truncated_normal*8
_class.
,*loc:@generator/G_MODEL/C/r1/Conv_1/weights*
T0*
validate_shape(*(
_output_shapes
:*
use_locking(
Ъ
*generator/G_MODEL/C/r1/Conv_1/weights/readIdentity%generator/G_MODEL/C/r1/Conv_1/weights*
T0*8
_class.
,*loc:@generator/G_MODEL/C/r1/Conv_1/weights*(
_output_shapes
:
|
+generator/G_MODEL/C/r1/Conv_1/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
Ъ
$generator/G_MODEL/C/r1/Conv_1/Conv2DConv2D"generator/G_MODEL/C/r1/LeakyRelu_1*generator/G_MODEL/C/r1/Conv_1/weights/read*
	dilations
*
use_cudnn_on_gpu(*
paddingVALID*
explicit_paddings
 *9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0*
data_formatNHWC*
strides

А
/generator/G_MODEL/C/r1/2/beta/Initializer/zerosConst*
dtype0*
valueB*    *0
_class&
$"loc:@generator/G_MODEL/C/r1/2/beta*
_output_shapes	
:
Н
generator/G_MODEL/C/r1/2/beta
VariableV2*
shape:*
	container *
shared_name *
_output_shapes	
:*
dtype0*0
_class&
$"loc:@generator/G_MODEL/C/r1/2/beta
џ
$generator/G_MODEL/C/r1/2/beta/AssignAssigngenerator/G_MODEL/C/r1/2/beta/generator/G_MODEL/C/r1/2/beta/Initializer/zeros*
_output_shapes	
:*0
_class&
$"loc:@generator/G_MODEL/C/r1/2/beta*
validate_shape(*
use_locking(*
T0
Ѕ
"generator/G_MODEL/C/r1/2/beta/readIdentitygenerator/G_MODEL/C/r1/2/beta*0
_class&
$"loc:@generator/G_MODEL/C/r1/2/beta*
T0*
_output_shapes	
:
Б
/generator/G_MODEL/C/r1/2/gamma/Initializer/onesConst*
valueB*  ?*
_output_shapes	
:*
dtype0*1
_class'
%#loc:@generator/G_MODEL/C/r1/2/gamma
П
generator/G_MODEL/C/r1/2/gamma
VariableV2*
shared_name *
dtype0*
shape:*1
_class'
%#loc:@generator/G_MODEL/C/r1/2/gamma*
	container *
_output_shapes	
:

%generator/G_MODEL/C/r1/2/gamma/AssignAssigngenerator/G_MODEL/C/r1/2/gamma/generator/G_MODEL/C/r1/2/gamma/Initializer/ones*
T0*
_output_shapes	
:*1
_class'
%#loc:@generator/G_MODEL/C/r1/2/gamma*
validate_shape(*
use_locking(
Ј
#generator/G_MODEL/C/r1/2/gamma/readIdentitygenerator/G_MODEL/C/r1/2/gamma*
T0*
_output_shapes	
:*1
_class'
%#loc:@generator/G_MODEL/C/r1/2/gamma

7generator/G_MODEL/C/r1/2/moments/mean/reduction_indicesConst*
_output_shapes
:*!
valueB"         *
dtype0
к
%generator/G_MODEL/C/r1/2/moments/meanMean$generator/G_MODEL/C/r1/Conv_1/Conv2D7generator/G_MODEL/C/r1/2/moments/mean/reduction_indices*
T0*&
_output_shapes
:*

Tidx0*
	keep_dims(

-generator/G_MODEL/C/r1/2/moments/StopGradientStopGradient%generator/G_MODEL/C/r1/2/moments/mean*&
_output_shapes
:*
T0
р
2generator/G_MODEL/C/r1/2/moments/SquaredDifferenceSquaredDifference$generator/G_MODEL/C/r1/Conv_1/Conv2D-generator/G_MODEL/C/r1/2/moments/StopGradient*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0

;generator/G_MODEL/C/r1/2/moments/variance/reduction_indicesConst*!
valueB"         *
_output_shapes
:*
dtype0
№
)generator/G_MODEL/C/r1/2/moments/varianceMean2generator/G_MODEL/C/r1/2/moments/SquaredDifference;generator/G_MODEL/C/r1/2/moments/variance/reduction_indices*
	keep_dims(*
T0*

Tidx0*&
_output_shapes
:
m
(generator/G_MODEL/C/r1/2/batchnorm/add/yConst*
_output_shapes
: *
valueB
 *ЬМ+*
dtype0
Е
&generator/G_MODEL/C/r1/2/batchnorm/addAddV2)generator/G_MODEL/C/r1/2/moments/variance(generator/G_MODEL/C/r1/2/batchnorm/add/y*&
_output_shapes
:*
T0

(generator/G_MODEL/C/r1/2/batchnorm/RsqrtRsqrt&generator/G_MODEL/C/r1/2/batchnorm/add*&
_output_shapes
:*
T0
Ў
&generator/G_MODEL/C/r1/2/batchnorm/mulMul(generator/G_MODEL/C/r1/2/batchnorm/Rsqrt#generator/G_MODEL/C/r1/2/gamma/read*
T0*'
_output_shapes
:
С
(generator/G_MODEL/C/r1/2/batchnorm/mul_1Mul$generator/G_MODEL/C/r1/Conv_1/Conv2D&generator/G_MODEL/C/r1/2/batchnorm/mul*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
А
(generator/G_MODEL/C/r1/2/batchnorm/mul_2Mul%generator/G_MODEL/C/r1/2/moments/mean&generator/G_MODEL/C/r1/2/batchnorm/mul*
T0*'
_output_shapes
:
­
&generator/G_MODEL/C/r1/2/batchnorm/subSub"generator/G_MODEL/C/r1/2/beta/read(generator/G_MODEL/C/r1/2/batchnorm/mul_2*
T0*'
_output_shapes
:
Ч
(generator/G_MODEL/C/r1/2/batchnorm/add_1AddV2(generator/G_MODEL/C/r1/2/batchnorm/mul_1&generator/G_MODEL/C/r1/2/batchnorm/sub*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
з
Fgenerator/G_MODEL/C/r2/Conv/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:*6
_class,
*(loc:@generator/G_MODEL/C/r2/Conv/weights
Т
Egenerator/G_MODEL/C/r2/Conv/weights/Initializer/truncated_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: *6
_class,
*(loc:@generator/G_MODEL/C/r2/Conv/weights
Ф
Ggenerator/G_MODEL/C/r2/Conv/weights/Initializer/truncated_normal/stddevConst*
valueB
 *аdЮ=*
_output_shapes
: *
dtype0*6
_class,
*(loc:@generator/G_MODEL/C/r2/Conv/weights
М
Pgenerator/G_MODEL/C/r2/Conv/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalFgenerator/G_MODEL/C/r2/Conv/weights/Initializer/truncated_normal/shape*(
_output_shapes
:*
dtype0*
T0*

seed *
seed2 *6
_class,
*(loc:@generator/G_MODEL/C/r2/Conv/weights
б
Dgenerator/G_MODEL/C/r2/Conv/weights/Initializer/truncated_normal/mulMulPgenerator/G_MODEL/C/r2/Conv/weights/Initializer/truncated_normal/TruncatedNormalGgenerator/G_MODEL/C/r2/Conv/weights/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:*6
_class,
*(loc:@generator/G_MODEL/C/r2/Conv/weights
П
@generator/G_MODEL/C/r2/Conv/weights/Initializer/truncated_normalAddDgenerator/G_MODEL/C/r2/Conv/weights/Initializer/truncated_normal/mulEgenerator/G_MODEL/C/r2/Conv/weights/Initializer/truncated_normal/mean*(
_output_shapes
:*
T0*6
_class,
*(loc:@generator/G_MODEL/C/r2/Conv/weights
у
#generator/G_MODEL/C/r2/Conv/weights
VariableV2*
shape:*
	container *6
_class,
*(loc:@generator/G_MODEL/C/r2/Conv/weights*(
_output_shapes
:*
shared_name *
dtype0
Џ
*generator/G_MODEL/C/r2/Conv/weights/AssignAssign#generator/G_MODEL/C/r2/Conv/weights@generator/G_MODEL/C/r2/Conv/weights/Initializer/truncated_normal*
T0*6
_class,
*(loc:@generator/G_MODEL/C/r2/Conv/weights*(
_output_shapes
:*
use_locking(*
validate_shape(
Ф
(generator/G_MODEL/C/r2/Conv/weights/readIdentity#generator/G_MODEL/C/r2/Conv/weights*
T0*(
_output_shapes
:*6
_class,
*(loc:@generator/G_MODEL/C/r2/Conv/weights
z
)generator/G_MODEL/C/r2/Conv/dilation_rateConst*
dtype0*
valueB"      *
_output_shapes
:
Ь
"generator/G_MODEL/C/r2/Conv/Conv2DConv2D(generator/G_MODEL/C/r1/2/batchnorm/add_1(generator/G_MODEL/C/r2/Conv/weights/read*
strides
*
T0*
paddingVALID*
	dilations
*
explicit_paddings
 *9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
data_formatNHWC*
use_cudnn_on_gpu(
Р
7generator/G_MODEL/C/r2/LayerNorm/beta/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *
dtype0*8
_class.
,*loc:@generator/G_MODEL/C/r2/LayerNorm/beta
Э
%generator/G_MODEL/C/r2/LayerNorm/beta
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shared_name *
shape:*8
_class.
,*loc:@generator/G_MODEL/C/r2/LayerNorm/beta

,generator/G_MODEL/C/r2/LayerNorm/beta/AssignAssign%generator/G_MODEL/C/r2/LayerNorm/beta7generator/G_MODEL/C/r2/LayerNorm/beta/Initializer/zeros*
use_locking(*8
_class.
,*loc:@generator/G_MODEL/C/r2/LayerNorm/beta*
_output_shapes	
:*
validate_shape(*
T0
Н
*generator/G_MODEL/C/r2/LayerNorm/beta/readIdentity%generator/G_MODEL/C/r2/LayerNorm/beta*
_output_shapes	
:*
T0*8
_class.
,*loc:@generator/G_MODEL/C/r2/LayerNorm/beta
С
7generator/G_MODEL/C/r2/LayerNorm/gamma/Initializer/onesConst*
dtype0*9
_class/
-+loc:@generator/G_MODEL/C/r2/LayerNorm/gamma*
valueB*  ?*
_output_shapes	
:
Я
&generator/G_MODEL/C/r2/LayerNorm/gamma
VariableV2*9
_class/
-+loc:@generator/G_MODEL/C/r2/LayerNorm/gamma*
shape:*
dtype0*
	container *
shared_name *
_output_shapes	
:
Ђ
-generator/G_MODEL/C/r2/LayerNorm/gamma/AssignAssign&generator/G_MODEL/C/r2/LayerNorm/gamma7generator/G_MODEL/C/r2/LayerNorm/gamma/Initializer/ones*
_output_shapes	
:*9
_class/
-+loc:@generator/G_MODEL/C/r2/LayerNorm/gamma*
T0*
validate_shape(*
use_locking(
Р
+generator/G_MODEL/C/r2/LayerNorm/gamma/readIdentity&generator/G_MODEL/C/r2/LayerNorm/gamma*9
_class/
-+loc:@generator/G_MODEL/C/r2/LayerNorm/gamma*
T0*
_output_shapes	
:

?generator/G_MODEL/C/r2/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*!
valueB"         *
dtype0
ш
-generator/G_MODEL/C/r2/LayerNorm/moments/meanMean"generator/G_MODEL/C/r2/Conv/Conv2D?generator/G_MODEL/C/r2/LayerNorm/moments/mean/reduction_indices*&
_output_shapes
:*
T0*
	keep_dims(*

Tidx0
Ѕ
5generator/G_MODEL/C/r2/LayerNorm/moments/StopGradientStopGradient-generator/G_MODEL/C/r2/LayerNorm/moments/mean*&
_output_shapes
:*
T0
ю
:generator/G_MODEL/C/r2/LayerNorm/moments/SquaredDifferenceSquaredDifference"generator/G_MODEL/C/r2/Conv/Conv2D5generator/G_MODEL/C/r2/LayerNorm/moments/StopGradient*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ

Cgenerator/G_MODEL/C/r2/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*!
valueB"         *
dtype0

1generator/G_MODEL/C/r2/LayerNorm/moments/varianceMean:generator/G_MODEL/C/r2/LayerNorm/moments/SquaredDifferenceCgenerator/G_MODEL/C/r2/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*

Tidx0*&
_output_shapes
:*
T0
u
0generator/G_MODEL/C/r2/LayerNorm/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *ЬМ+
Э
.generator/G_MODEL/C/r2/LayerNorm/batchnorm/addAddV21generator/G_MODEL/C/r2/LayerNorm/moments/variance0generator/G_MODEL/C/r2/LayerNorm/batchnorm/add/y*
T0*&
_output_shapes
:

0generator/G_MODEL/C/r2/LayerNorm/batchnorm/RsqrtRsqrt.generator/G_MODEL/C/r2/LayerNorm/batchnorm/add*
T0*&
_output_shapes
:
Ц
.generator/G_MODEL/C/r2/LayerNorm/batchnorm/mulMul0generator/G_MODEL/C/r2/LayerNorm/batchnorm/Rsqrt+generator/G_MODEL/C/r2/LayerNorm/gamma/read*'
_output_shapes
:*
T0
Я
0generator/G_MODEL/C/r2/LayerNorm/batchnorm/mul_1Mul"generator/G_MODEL/C/r2/Conv/Conv2D.generator/G_MODEL/C/r2/LayerNorm/batchnorm/mul*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
Ш
0generator/G_MODEL/C/r2/LayerNorm/batchnorm/mul_2Mul-generator/G_MODEL/C/r2/LayerNorm/moments/mean.generator/G_MODEL/C/r2/LayerNorm/batchnorm/mul*'
_output_shapes
:*
T0
Х
.generator/G_MODEL/C/r2/LayerNorm/batchnorm/subSub*generator/G_MODEL/C/r2/LayerNorm/beta/read0generator/G_MODEL/C/r2/LayerNorm/batchnorm/mul_2*
T0*'
_output_shapes
:
п
0generator/G_MODEL/C/r2/LayerNorm/batchnorm/add_1AddV20generator/G_MODEL/C/r2/LayerNorm/batchnorm/mul_1.generator/G_MODEL/C/r2/LayerNorm/batchnorm/sub*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
Г
 generator/G_MODEL/C/r2/LeakyRelu	LeakyRelu0generator/G_MODEL/C/r2/LayerNorm/batchnorm/add_1*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
alpha%ЭЬL>

)generator/G_MODEL/C/r2/MirrorPad/paddingsConst*9
value0B."                             *
_output_shapes

:*
dtype0
т
 generator/G_MODEL/C/r2/MirrorPad	MirrorPad generator/G_MODEL/C/r2/LeakyRelu)generator/G_MODEL/C/r2/MirrorPad/paddings*
T0*
mode	REFLECT*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
	Tpaddings0
Ч
>generator/G_MODEL/C/r2/r2/w/Initializer/truncated_normal/shapeConst*
_output_shapes
:*%
valueB"            *
dtype0*.
_class$
" loc:@generator/G_MODEL/C/r2/r2/w
В
=generator/G_MODEL/C/r2/r2/w/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *.
_class$
" loc:@generator/G_MODEL/C/r2/r2/w
Д
?generator/G_MODEL/C/r2/r2/w/Initializer/truncated_normal/stddevConst*
dtype0*.
_class$
" loc:@generator/G_MODEL/C/r2/r2/w*
_output_shapes
: *
valueB
 *Т<
Ѓ
Hgenerator/G_MODEL/C/r2/r2/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>generator/G_MODEL/C/r2/r2/w/Initializer/truncated_normal/shape*.
_class$
" loc:@generator/G_MODEL/C/r2/r2/w*'
_output_shapes
:*

seed *
seed2 *
dtype0*
T0
А
<generator/G_MODEL/C/r2/r2/w/Initializer/truncated_normal/mulMulHgenerator/G_MODEL/C/r2/r2/w/Initializer/truncated_normal/TruncatedNormal?generator/G_MODEL/C/r2/r2/w/Initializer/truncated_normal/stddev*.
_class$
" loc:@generator/G_MODEL/C/r2/r2/w*'
_output_shapes
:*
T0

8generator/G_MODEL/C/r2/r2/w/Initializer/truncated_normalAdd<generator/G_MODEL/C/r2/r2/w/Initializer/truncated_normal/mul=generator/G_MODEL/C/r2/r2/w/Initializer/truncated_normal/mean*'
_output_shapes
:*
T0*.
_class$
" loc:@generator/G_MODEL/C/r2/r2/w
б
generator/G_MODEL/C/r2/r2/w
VariableV2*
shared_name *
	container *
dtype0*
shape:*.
_class$
" loc:@generator/G_MODEL/C/r2/r2/w*'
_output_shapes
:

"generator/G_MODEL/C/r2/r2/w/AssignAssigngenerator/G_MODEL/C/r2/r2/w8generator/G_MODEL/C/r2/r2/w/Initializer/truncated_normal*
T0*.
_class$
" loc:@generator/G_MODEL/C/r2/r2/w*'
_output_shapes
:*
validate_shape(*
use_locking(
Ћ
 generator/G_MODEL/C/r2/r2/w/readIdentitygenerator/G_MODEL/C/r2/r2/w*.
_class$
" loc:@generator/G_MODEL/C/r2/r2/w*'
_output_shapes
:*
T0
{
"generator/G_MODEL/C/r2/r2/r2/ShapeConst*
dtype0*
_output_shapes
:*%
valueB"            
{
*generator/G_MODEL/C/r2/r2/r2/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      

generator/G_MODEL/C/r2/r2/r2DepthwiseConv2dNative generator/G_MODEL/C/r2/MirrorPad generator/G_MODEL/C/r2/r2/w/read*
T0*
paddingVALID*
	dilations
*
data_formatNHWC*
strides
*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
В
0generator/G_MODEL/C/r2/r2/bias/Initializer/ConstConst*
valueB*    *
_output_shapes	
:*1
_class'
%#loc:@generator/G_MODEL/C/r2/r2/bias*
dtype0
П
generator/G_MODEL/C/r2/r2/bias
VariableV2*
shape:*
	container *
_output_shapes	
:*
shared_name *
dtype0*1
_class'
%#loc:@generator/G_MODEL/C/r2/r2/bias

%generator/G_MODEL/C/r2/r2/bias/AssignAssigngenerator/G_MODEL/C/r2/r2/bias0generator/G_MODEL/C/r2/r2/bias/Initializer/Const*1
_class'
%#loc:@generator/G_MODEL/C/r2/r2/bias*
use_locking(*
_output_shapes	
:*
validate_shape(*
T0
Ј
#generator/G_MODEL/C/r2/r2/bias/readIdentitygenerator/G_MODEL/C/r2/r2/bias*1
_class'
%#loc:@generator/G_MODEL/C/r2/r2/bias*
_output_shapes	
:*
T0
Ъ
!generator/G_MODEL/C/r2/r2/BiasAddBiasAddgenerator/G_MODEL/C/r2/r2/r2#generator/G_MODEL/C/r2/r2/bias/read*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0*
data_formatNHWC
А
/generator/G_MODEL/C/r2/1/beta/Initializer/zerosConst*
dtype0*0
_class&
$"loc:@generator/G_MODEL/C/r2/1/beta*
_output_shapes	
:*
valueB*    
Н
generator/G_MODEL/C/r2/1/beta
VariableV2*
	container *
shared_name *
shape:*
dtype0*0
_class&
$"loc:@generator/G_MODEL/C/r2/1/beta*
_output_shapes	
:
џ
$generator/G_MODEL/C/r2/1/beta/AssignAssigngenerator/G_MODEL/C/r2/1/beta/generator/G_MODEL/C/r2/1/beta/Initializer/zeros*
use_locking(*
_output_shapes	
:*
T0*0
_class&
$"loc:@generator/G_MODEL/C/r2/1/beta*
validate_shape(
Ѕ
"generator/G_MODEL/C/r2/1/beta/readIdentitygenerator/G_MODEL/C/r2/1/beta*0
_class&
$"loc:@generator/G_MODEL/C/r2/1/beta*
_output_shapes	
:*
T0
Б
/generator/G_MODEL/C/r2/1/gamma/Initializer/onesConst*
dtype0*1
_class'
%#loc:@generator/G_MODEL/C/r2/1/gamma*
valueB*  ?*
_output_shapes	
:
П
generator/G_MODEL/C/r2/1/gamma
VariableV2*
shared_name *1
_class'
%#loc:@generator/G_MODEL/C/r2/1/gamma*
	container *
dtype0*
_output_shapes	
:*
shape:

%generator/G_MODEL/C/r2/1/gamma/AssignAssigngenerator/G_MODEL/C/r2/1/gamma/generator/G_MODEL/C/r2/1/gamma/Initializer/ones*
T0*1
_class'
%#loc:@generator/G_MODEL/C/r2/1/gamma*
use_locking(*
validate_shape(*
_output_shapes	
:
Ј
#generator/G_MODEL/C/r2/1/gamma/readIdentitygenerator/G_MODEL/C/r2/1/gamma*1
_class'
%#loc:@generator/G_MODEL/C/r2/1/gamma*
_output_shapes	
:*
T0

7generator/G_MODEL/C/r2/1/moments/mean/reduction_indicesConst*!
valueB"         *
_output_shapes
:*
dtype0
з
%generator/G_MODEL/C/r2/1/moments/meanMean!generator/G_MODEL/C/r2/r2/BiasAdd7generator/G_MODEL/C/r2/1/moments/mean/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0

-generator/G_MODEL/C/r2/1/moments/StopGradientStopGradient%generator/G_MODEL/C/r2/1/moments/mean*&
_output_shapes
:*
T0
н
2generator/G_MODEL/C/r2/1/moments/SquaredDifferenceSquaredDifference!generator/G_MODEL/C/r2/r2/BiasAdd-generator/G_MODEL/C/r2/1/moments/StopGradient*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ

;generator/G_MODEL/C/r2/1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
№
)generator/G_MODEL/C/r2/1/moments/varianceMean2generator/G_MODEL/C/r2/1/moments/SquaredDifference;generator/G_MODEL/C/r2/1/moments/variance/reduction_indices*
	keep_dims(*&
_output_shapes
:*

Tidx0*
T0
m
(generator/G_MODEL/C/r2/1/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *ЬМ+
Е
&generator/G_MODEL/C/r2/1/batchnorm/addAddV2)generator/G_MODEL/C/r2/1/moments/variance(generator/G_MODEL/C/r2/1/batchnorm/add/y*&
_output_shapes
:*
T0

(generator/G_MODEL/C/r2/1/batchnorm/RsqrtRsqrt&generator/G_MODEL/C/r2/1/batchnorm/add*&
_output_shapes
:*
T0
Ў
&generator/G_MODEL/C/r2/1/batchnorm/mulMul(generator/G_MODEL/C/r2/1/batchnorm/Rsqrt#generator/G_MODEL/C/r2/1/gamma/read*'
_output_shapes
:*
T0
О
(generator/G_MODEL/C/r2/1/batchnorm/mul_1Mul!generator/G_MODEL/C/r2/r2/BiasAdd&generator/G_MODEL/C/r2/1/batchnorm/mul*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
А
(generator/G_MODEL/C/r2/1/batchnorm/mul_2Mul%generator/G_MODEL/C/r2/1/moments/mean&generator/G_MODEL/C/r2/1/batchnorm/mul*
T0*'
_output_shapes
:
­
&generator/G_MODEL/C/r2/1/batchnorm/subSub"generator/G_MODEL/C/r2/1/beta/read(generator/G_MODEL/C/r2/1/batchnorm/mul_2*'
_output_shapes
:*
T0
Ч
(generator/G_MODEL/C/r2/1/batchnorm/add_1AddV2(generator/G_MODEL/C/r2/1/batchnorm/mul_1&generator/G_MODEL/C/r2/1/batchnorm/sub*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
­
"generator/G_MODEL/C/r2/LeakyRelu_1	LeakyRelu(generator/G_MODEL/C/r2/1/batchnorm/add_1*
alpha%ЭЬL>*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
л
Hgenerator/G_MODEL/C/r2/Conv_1/weights/Initializer/truncated_normal/shapeConst*
dtype0*8
_class.
,*loc:@generator/G_MODEL/C/r2/Conv_1/weights*%
valueB"            *
_output_shapes
:
Ц
Ggenerator/G_MODEL/C/r2/Conv_1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *8
_class.
,*loc:@generator/G_MODEL/C/r2/Conv_1/weights*
_output_shapes
: *
dtype0
Ш
Igenerator/G_MODEL/C/r2/Conv_1/weights/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@generator/G_MODEL/C/r2/Conv_1/weights*
valueB
 *Eё=
Т
Rgenerator/G_MODEL/C/r2/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHgenerator/G_MODEL/C/r2/Conv_1/weights/Initializer/truncated_normal/shape*
T0*
seed2 *

seed *
dtype0*(
_output_shapes
:*8
_class.
,*loc:@generator/G_MODEL/C/r2/Conv_1/weights
й
Fgenerator/G_MODEL/C/r2/Conv_1/weights/Initializer/truncated_normal/mulMulRgenerator/G_MODEL/C/r2/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalIgenerator/G_MODEL/C/r2/Conv_1/weights/Initializer/truncated_normal/stddev*8
_class.
,*loc:@generator/G_MODEL/C/r2/Conv_1/weights*
T0*(
_output_shapes
:
Ч
Bgenerator/G_MODEL/C/r2/Conv_1/weights/Initializer/truncated_normalAddFgenerator/G_MODEL/C/r2/Conv_1/weights/Initializer/truncated_normal/mulGgenerator/G_MODEL/C/r2/Conv_1/weights/Initializer/truncated_normal/mean*8
_class.
,*loc:@generator/G_MODEL/C/r2/Conv_1/weights*(
_output_shapes
:*
T0
ч
%generator/G_MODEL/C/r2/Conv_1/weights
VariableV2*
shape:*
shared_name *
	container *
dtype0*(
_output_shapes
:*8
_class.
,*loc:@generator/G_MODEL/C/r2/Conv_1/weights
З
,generator/G_MODEL/C/r2/Conv_1/weights/AssignAssign%generator/G_MODEL/C/r2/Conv_1/weightsBgenerator/G_MODEL/C/r2/Conv_1/weights/Initializer/truncated_normal*
use_locking(*
validate_shape(*8
_class.
,*loc:@generator/G_MODEL/C/r2/Conv_1/weights*(
_output_shapes
:*
T0
Ъ
*generator/G_MODEL/C/r2/Conv_1/weights/readIdentity%generator/G_MODEL/C/r2/Conv_1/weights*8
_class.
,*loc:@generator/G_MODEL/C/r2/Conv_1/weights*(
_output_shapes
:*
T0
|
+generator/G_MODEL/C/r2/Conv_1/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
Ъ
$generator/G_MODEL/C/r2/Conv_1/Conv2DConv2D"generator/G_MODEL/C/r2/LeakyRelu_1*generator/G_MODEL/C/r2/Conv_1/weights/read*
data_formatNHWC*
	dilations
*
use_cudnn_on_gpu(*
T0*
strides
*
paddingVALID*
explicit_paddings
 *9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
А
/generator/G_MODEL/C/r2/2/beta/Initializer/zerosConst*
valueB*    *
_output_shapes	
:*
dtype0*0
_class&
$"loc:@generator/G_MODEL/C/r2/2/beta
Н
generator/G_MODEL/C/r2/2/beta
VariableV2*
shape:*
_output_shapes	
:*0
_class&
$"loc:@generator/G_MODEL/C/r2/2/beta*
dtype0*
	container *
shared_name 
џ
$generator/G_MODEL/C/r2/2/beta/AssignAssigngenerator/G_MODEL/C/r2/2/beta/generator/G_MODEL/C/r2/2/beta/Initializer/zeros*
T0*0
_class&
$"loc:@generator/G_MODEL/C/r2/2/beta*
_output_shapes	
:*
validate_shape(*
use_locking(
Ѕ
"generator/G_MODEL/C/r2/2/beta/readIdentitygenerator/G_MODEL/C/r2/2/beta*
_output_shapes	
:*0
_class&
$"loc:@generator/G_MODEL/C/r2/2/beta*
T0
Б
/generator/G_MODEL/C/r2/2/gamma/Initializer/onesConst*
valueB*  ?*
_output_shapes	
:*
dtype0*1
_class'
%#loc:@generator/G_MODEL/C/r2/2/gamma
П
generator/G_MODEL/C/r2/2/gamma
VariableV2*
shape:*
_output_shapes	
:*
shared_name *1
_class'
%#loc:@generator/G_MODEL/C/r2/2/gamma*
	container *
dtype0

%generator/G_MODEL/C/r2/2/gamma/AssignAssigngenerator/G_MODEL/C/r2/2/gamma/generator/G_MODEL/C/r2/2/gamma/Initializer/ones*
use_locking(*1
_class'
%#loc:@generator/G_MODEL/C/r2/2/gamma*
T0*
_output_shapes	
:*
validate_shape(
Ј
#generator/G_MODEL/C/r2/2/gamma/readIdentitygenerator/G_MODEL/C/r2/2/gamma*1
_class'
%#loc:@generator/G_MODEL/C/r2/2/gamma*
_output_shapes	
:*
T0

7generator/G_MODEL/C/r2/2/moments/mean/reduction_indicesConst*!
valueB"         *
dtype0*
_output_shapes
:
к
%generator/G_MODEL/C/r2/2/moments/meanMean$generator/G_MODEL/C/r2/Conv_1/Conv2D7generator/G_MODEL/C/r2/2/moments/mean/reduction_indices*&
_output_shapes
:*
	keep_dims(*
T0*

Tidx0

-generator/G_MODEL/C/r2/2/moments/StopGradientStopGradient%generator/G_MODEL/C/r2/2/moments/mean*&
_output_shapes
:*
T0
р
2generator/G_MODEL/C/r2/2/moments/SquaredDifferenceSquaredDifference$generator/G_MODEL/C/r2/Conv_1/Conv2D-generator/G_MODEL/C/r2/2/moments/StopGradient*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ

;generator/G_MODEL/C/r2/2/moments/variance/reduction_indicesConst*!
valueB"         *
dtype0*
_output_shapes
:
№
)generator/G_MODEL/C/r2/2/moments/varianceMean2generator/G_MODEL/C/r2/2/moments/SquaredDifference;generator/G_MODEL/C/r2/2/moments/variance/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
m
(generator/G_MODEL/C/r2/2/batchnorm/add/yConst*
dtype0*
valueB
 *ЬМ+*
_output_shapes
: 
Е
&generator/G_MODEL/C/r2/2/batchnorm/addAddV2)generator/G_MODEL/C/r2/2/moments/variance(generator/G_MODEL/C/r2/2/batchnorm/add/y*
T0*&
_output_shapes
:

(generator/G_MODEL/C/r2/2/batchnorm/RsqrtRsqrt&generator/G_MODEL/C/r2/2/batchnorm/add*&
_output_shapes
:*
T0
Ў
&generator/G_MODEL/C/r2/2/batchnorm/mulMul(generator/G_MODEL/C/r2/2/batchnorm/Rsqrt#generator/G_MODEL/C/r2/2/gamma/read*'
_output_shapes
:*
T0
С
(generator/G_MODEL/C/r2/2/batchnorm/mul_1Mul$generator/G_MODEL/C/r2/Conv_1/Conv2D&generator/G_MODEL/C/r2/2/batchnorm/mul*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
А
(generator/G_MODEL/C/r2/2/batchnorm/mul_2Mul%generator/G_MODEL/C/r2/2/moments/mean&generator/G_MODEL/C/r2/2/batchnorm/mul*'
_output_shapes
:*
T0
­
&generator/G_MODEL/C/r2/2/batchnorm/subSub"generator/G_MODEL/C/r2/2/beta/read(generator/G_MODEL/C/r2/2/batchnorm/mul_2*
T0*'
_output_shapes
:
Ч
(generator/G_MODEL/C/r2/2/batchnorm/add_1AddV2(generator/G_MODEL/C/r2/2/batchnorm/mul_1&generator/G_MODEL/C/r2/2/batchnorm/sub*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
Л
generator/G_MODEL/C/r2/addAddV2(generator/G_MODEL/C/r1/2/batchnorm/add_1(generator/G_MODEL/C/r2/2/batchnorm/add_1*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
з
Fgenerator/G_MODEL/C/r3/Conv/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:*6
_class,
*(loc:@generator/G_MODEL/C/r3/Conv/weights
Т
Egenerator/G_MODEL/C/r3/Conv/weights/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *6
_class,
*(loc:@generator/G_MODEL/C/r3/Conv/weights*
valueB
 *    
Ф
Ggenerator/G_MODEL/C/r3/Conv/weights/Initializer/truncated_normal/stddevConst*
valueB
 *аdЮ=*6
_class,
*(loc:@generator/G_MODEL/C/r3/Conv/weights*
dtype0*
_output_shapes
: 
М
Pgenerator/G_MODEL/C/r3/Conv/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalFgenerator/G_MODEL/C/r3/Conv/weights/Initializer/truncated_normal/shape*6
_class,
*(loc:@generator/G_MODEL/C/r3/Conv/weights*
T0*

seed *
seed2 *(
_output_shapes
:*
dtype0
б
Dgenerator/G_MODEL/C/r3/Conv/weights/Initializer/truncated_normal/mulMulPgenerator/G_MODEL/C/r3/Conv/weights/Initializer/truncated_normal/TruncatedNormalGgenerator/G_MODEL/C/r3/Conv/weights/Initializer/truncated_normal/stddev*6
_class,
*(loc:@generator/G_MODEL/C/r3/Conv/weights*
T0*(
_output_shapes
:
П
@generator/G_MODEL/C/r3/Conv/weights/Initializer/truncated_normalAddDgenerator/G_MODEL/C/r3/Conv/weights/Initializer/truncated_normal/mulEgenerator/G_MODEL/C/r3/Conv/weights/Initializer/truncated_normal/mean*6
_class,
*(loc:@generator/G_MODEL/C/r3/Conv/weights*(
_output_shapes
:*
T0
у
#generator/G_MODEL/C/r3/Conv/weights
VariableV2*(
_output_shapes
:*
shared_name *
dtype0*
	container *6
_class,
*(loc:@generator/G_MODEL/C/r3/Conv/weights*
shape:
Џ
*generator/G_MODEL/C/r3/Conv/weights/AssignAssign#generator/G_MODEL/C/r3/Conv/weights@generator/G_MODEL/C/r3/Conv/weights/Initializer/truncated_normal*(
_output_shapes
:*
use_locking(*6
_class,
*(loc:@generator/G_MODEL/C/r3/Conv/weights*
T0*
validate_shape(
Ф
(generator/G_MODEL/C/r3/Conv/weights/readIdentity#generator/G_MODEL/C/r3/Conv/weights*(
_output_shapes
:*
T0*6
_class,
*(loc:@generator/G_MODEL/C/r3/Conv/weights
z
)generator/G_MODEL/C/r3/Conv/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
О
"generator/G_MODEL/C/r3/Conv/Conv2DConv2Dgenerator/G_MODEL/C/r2/add(generator/G_MODEL/C/r3/Conv/weights/read*
use_cudnn_on_gpu(*
	dilations
*
paddingVALID*
strides
*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
explicit_paddings
 *
data_formatNHWC
Р
7generator/G_MODEL/C/r3/LayerNorm/beta/Initializer/zerosConst*8
_class.
,*loc:@generator/G_MODEL/C/r3/LayerNorm/beta*
valueB*    *
_output_shapes	
:*
dtype0
Э
%generator/G_MODEL/C/r3/LayerNorm/beta
VariableV2*
_output_shapes	
:*
shared_name *
dtype0*
	container *8
_class.
,*loc:@generator/G_MODEL/C/r3/LayerNorm/beta*
shape:

,generator/G_MODEL/C/r3/LayerNorm/beta/AssignAssign%generator/G_MODEL/C/r3/LayerNorm/beta7generator/G_MODEL/C/r3/LayerNorm/beta/Initializer/zeros*
_output_shapes	
:*
use_locking(*8
_class.
,*loc:@generator/G_MODEL/C/r3/LayerNorm/beta*
validate_shape(*
T0
Н
*generator/G_MODEL/C/r3/LayerNorm/beta/readIdentity%generator/G_MODEL/C/r3/LayerNorm/beta*
T0*
_output_shapes	
:*8
_class.
,*loc:@generator/G_MODEL/C/r3/LayerNorm/beta
С
7generator/G_MODEL/C/r3/LayerNorm/gamma/Initializer/onesConst*
_output_shapes	
:*
dtype0*9
_class/
-+loc:@generator/G_MODEL/C/r3/LayerNorm/gamma*
valueB*  ?
Я
&generator/G_MODEL/C/r3/LayerNorm/gamma
VariableV2*
shape:*9
_class/
-+loc:@generator/G_MODEL/C/r3/LayerNorm/gamma*
shared_name *
dtype0*
_output_shapes	
:*
	container 
Ђ
-generator/G_MODEL/C/r3/LayerNorm/gamma/AssignAssign&generator/G_MODEL/C/r3/LayerNorm/gamma7generator/G_MODEL/C/r3/LayerNorm/gamma/Initializer/ones*9
_class/
-+loc:@generator/G_MODEL/C/r3/LayerNorm/gamma*
use_locking(*
validate_shape(*
T0*
_output_shapes	
:
Р
+generator/G_MODEL/C/r3/LayerNorm/gamma/readIdentity&generator/G_MODEL/C/r3/LayerNorm/gamma*9
_class/
-+loc:@generator/G_MODEL/C/r3/LayerNorm/gamma*
T0*
_output_shapes	
:

?generator/G_MODEL/C/r3/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*!
valueB"         *
dtype0
ш
-generator/G_MODEL/C/r3/LayerNorm/moments/meanMean"generator/G_MODEL/C/r3/Conv/Conv2D?generator/G_MODEL/C/r3/LayerNorm/moments/mean/reduction_indices*
T0*
	keep_dims(*

Tidx0*&
_output_shapes
:
Ѕ
5generator/G_MODEL/C/r3/LayerNorm/moments/StopGradientStopGradient-generator/G_MODEL/C/r3/LayerNorm/moments/mean*
T0*&
_output_shapes
:
ю
:generator/G_MODEL/C/r3/LayerNorm/moments/SquaredDifferenceSquaredDifference"generator/G_MODEL/C/r3/Conv/Conv2D5generator/G_MODEL/C/r3/LayerNorm/moments/StopGradient*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ

Cgenerator/G_MODEL/C/r3/LayerNorm/moments/variance/reduction_indicesConst*!
valueB"         *
_output_shapes
:*
dtype0

1generator/G_MODEL/C/r3/LayerNorm/moments/varianceMean:generator/G_MODEL/C/r3/LayerNorm/moments/SquaredDifferenceCgenerator/G_MODEL/C/r3/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*&
_output_shapes
:*

Tidx0*
T0
u
0generator/G_MODEL/C/r3/LayerNorm/batchnorm/add/yConst*
dtype0*
valueB
 *ЬМ+*
_output_shapes
: 
Э
.generator/G_MODEL/C/r3/LayerNorm/batchnorm/addAddV21generator/G_MODEL/C/r3/LayerNorm/moments/variance0generator/G_MODEL/C/r3/LayerNorm/batchnorm/add/y*&
_output_shapes
:*
T0

0generator/G_MODEL/C/r3/LayerNorm/batchnorm/RsqrtRsqrt.generator/G_MODEL/C/r3/LayerNorm/batchnorm/add*&
_output_shapes
:*
T0
Ц
.generator/G_MODEL/C/r3/LayerNorm/batchnorm/mulMul0generator/G_MODEL/C/r3/LayerNorm/batchnorm/Rsqrt+generator/G_MODEL/C/r3/LayerNorm/gamma/read*'
_output_shapes
:*
T0
Я
0generator/G_MODEL/C/r3/LayerNorm/batchnorm/mul_1Mul"generator/G_MODEL/C/r3/Conv/Conv2D.generator/G_MODEL/C/r3/LayerNorm/batchnorm/mul*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
Ш
0generator/G_MODEL/C/r3/LayerNorm/batchnorm/mul_2Mul-generator/G_MODEL/C/r3/LayerNorm/moments/mean.generator/G_MODEL/C/r3/LayerNorm/batchnorm/mul*'
_output_shapes
:*
T0
Х
.generator/G_MODEL/C/r3/LayerNorm/batchnorm/subSub*generator/G_MODEL/C/r3/LayerNorm/beta/read0generator/G_MODEL/C/r3/LayerNorm/batchnorm/mul_2*'
_output_shapes
:*
T0
п
0generator/G_MODEL/C/r3/LayerNorm/batchnorm/add_1AddV20generator/G_MODEL/C/r3/LayerNorm/batchnorm/mul_1.generator/G_MODEL/C/r3/LayerNorm/batchnorm/sub*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
Г
 generator/G_MODEL/C/r3/LeakyRelu	LeakyRelu0generator/G_MODEL/C/r3/LayerNorm/batchnorm/add_1*
alpha%ЭЬL>*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0

)generator/G_MODEL/C/r3/MirrorPad/paddingsConst*
dtype0*9
value0B."                             *
_output_shapes

:
т
 generator/G_MODEL/C/r3/MirrorPad	MirrorPad generator/G_MODEL/C/r3/LeakyRelu)generator/G_MODEL/C/r3/MirrorPad/paddings*
mode	REFLECT*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0*
	Tpaddings0
Ч
>generator/G_MODEL/C/r3/r3/w/Initializer/truncated_normal/shapeConst*
dtype0*%
valueB"            *
_output_shapes
:*.
_class$
" loc:@generator/G_MODEL/C/r3/r3/w
В
=generator/G_MODEL/C/r3/r3/w/Initializer/truncated_normal/meanConst*
_output_shapes
: *.
_class$
" loc:@generator/G_MODEL/C/r3/r3/w*
dtype0*
valueB
 *    
Д
?generator/G_MODEL/C/r3/r3/w/Initializer/truncated_normal/stddevConst*
_output_shapes
: *.
_class$
" loc:@generator/G_MODEL/C/r3/r3/w*
dtype0*
valueB
 *Т<
Ѓ
Hgenerator/G_MODEL/C/r3/r3/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>generator/G_MODEL/C/r3/r3/w/Initializer/truncated_normal/shape*

seed *
dtype0*
T0*.
_class$
" loc:@generator/G_MODEL/C/r3/r3/w*
seed2 *'
_output_shapes
:
А
<generator/G_MODEL/C/r3/r3/w/Initializer/truncated_normal/mulMulHgenerator/G_MODEL/C/r3/r3/w/Initializer/truncated_normal/TruncatedNormal?generator/G_MODEL/C/r3/r3/w/Initializer/truncated_normal/stddev*
T0*.
_class$
" loc:@generator/G_MODEL/C/r3/r3/w*'
_output_shapes
:

8generator/G_MODEL/C/r3/r3/w/Initializer/truncated_normalAdd<generator/G_MODEL/C/r3/r3/w/Initializer/truncated_normal/mul=generator/G_MODEL/C/r3/r3/w/Initializer/truncated_normal/mean*
T0*'
_output_shapes
:*.
_class$
" loc:@generator/G_MODEL/C/r3/r3/w
б
generator/G_MODEL/C/r3/r3/w
VariableV2*
shared_name *'
_output_shapes
:*
dtype0*
shape:*.
_class$
" loc:@generator/G_MODEL/C/r3/r3/w*
	container 

"generator/G_MODEL/C/r3/r3/w/AssignAssigngenerator/G_MODEL/C/r3/r3/w8generator/G_MODEL/C/r3/r3/w/Initializer/truncated_normal*
use_locking(*.
_class$
" loc:@generator/G_MODEL/C/r3/r3/w*
validate_shape(*'
_output_shapes
:*
T0
Ћ
 generator/G_MODEL/C/r3/r3/w/readIdentitygenerator/G_MODEL/C/r3/r3/w*'
_output_shapes
:*.
_class$
" loc:@generator/G_MODEL/C/r3/r3/w*
T0
{
"generator/G_MODEL/C/r3/r3/r3/ShapeConst*
_output_shapes
:*%
valueB"            *
dtype0
{
*generator/G_MODEL/C/r3/r3/r3/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      

generator/G_MODEL/C/r3/r3/r3DepthwiseConv2dNative generator/G_MODEL/C/r3/MirrorPad generator/G_MODEL/C/r3/r3/w/read*
T0*
paddingVALID*
strides
*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
	dilations
*
data_formatNHWC
В
0generator/G_MODEL/C/r3/r3/bias/Initializer/ConstConst*
valueB*    *1
_class'
%#loc:@generator/G_MODEL/C/r3/r3/bias*
dtype0*
_output_shapes	
:
П
generator/G_MODEL/C/r3/r3/bias
VariableV2*
shape:*
shared_name *
	container *1
_class'
%#loc:@generator/G_MODEL/C/r3/r3/bias*
_output_shapes	
:*
dtype0

%generator/G_MODEL/C/r3/r3/bias/AssignAssigngenerator/G_MODEL/C/r3/r3/bias0generator/G_MODEL/C/r3/r3/bias/Initializer/Const*1
_class'
%#loc:@generator/G_MODEL/C/r3/r3/bias*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(
Ј
#generator/G_MODEL/C/r3/r3/bias/readIdentitygenerator/G_MODEL/C/r3/r3/bias*1
_class'
%#loc:@generator/G_MODEL/C/r3/r3/bias*
T0*
_output_shapes	
:
Ъ
!generator/G_MODEL/C/r3/r3/BiasAddBiasAddgenerator/G_MODEL/C/r3/r3/r3#generator/G_MODEL/C/r3/r3/bias/read*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
data_formatNHWC*
T0
А
/generator/G_MODEL/C/r3/1/beta/Initializer/zerosConst*
_output_shapes	
:*
dtype0*0
_class&
$"loc:@generator/G_MODEL/C/r3/1/beta*
valueB*    
Н
generator/G_MODEL/C/r3/1/beta
VariableV2*
	container *
_output_shapes	
:*
shape:*0
_class&
$"loc:@generator/G_MODEL/C/r3/1/beta*
dtype0*
shared_name 
џ
$generator/G_MODEL/C/r3/1/beta/AssignAssigngenerator/G_MODEL/C/r3/1/beta/generator/G_MODEL/C/r3/1/beta/Initializer/zeros*
_output_shapes	
:*
T0*0
_class&
$"loc:@generator/G_MODEL/C/r3/1/beta*
use_locking(*
validate_shape(
Ѕ
"generator/G_MODEL/C/r3/1/beta/readIdentitygenerator/G_MODEL/C/r3/1/beta*
T0*
_output_shapes	
:*0
_class&
$"loc:@generator/G_MODEL/C/r3/1/beta
Б
/generator/G_MODEL/C/r3/1/gamma/Initializer/onesConst*
_output_shapes	
:*
dtype0*1
_class'
%#loc:@generator/G_MODEL/C/r3/1/gamma*
valueB*  ?
П
generator/G_MODEL/C/r3/1/gamma
VariableV2*1
_class'
%#loc:@generator/G_MODEL/C/r3/1/gamma*
_output_shapes	
:*
	container *
shape:*
dtype0*
shared_name 

%generator/G_MODEL/C/r3/1/gamma/AssignAssigngenerator/G_MODEL/C/r3/1/gamma/generator/G_MODEL/C/r3/1/gamma/Initializer/ones*1
_class'
%#loc:@generator/G_MODEL/C/r3/1/gamma*
use_locking(*
_output_shapes	
:*
validate_shape(*
T0
Ј
#generator/G_MODEL/C/r3/1/gamma/readIdentitygenerator/G_MODEL/C/r3/1/gamma*
_output_shapes	
:*
T0*1
_class'
%#loc:@generator/G_MODEL/C/r3/1/gamma

7generator/G_MODEL/C/r3/1/moments/mean/reduction_indicesConst*
_output_shapes
:*!
valueB"         *
dtype0
з
%generator/G_MODEL/C/r3/1/moments/meanMean!generator/G_MODEL/C/r3/r3/BiasAdd7generator/G_MODEL/C/r3/1/moments/mean/reduction_indices*
T0*

Tidx0*&
_output_shapes
:*
	keep_dims(

-generator/G_MODEL/C/r3/1/moments/StopGradientStopGradient%generator/G_MODEL/C/r3/1/moments/mean*
T0*&
_output_shapes
:
н
2generator/G_MODEL/C/r3/1/moments/SquaredDifferenceSquaredDifference!generator/G_MODEL/C/r3/r3/BiasAdd-generator/G_MODEL/C/r3/1/moments/StopGradient*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ

;generator/G_MODEL/C/r3/1/moments/variance/reduction_indicesConst*!
valueB"         *
_output_shapes
:*
dtype0
№
)generator/G_MODEL/C/r3/1/moments/varianceMean2generator/G_MODEL/C/r3/1/moments/SquaredDifference;generator/G_MODEL/C/r3/1/moments/variance/reduction_indices*
T0*
	keep_dims(*

Tidx0*&
_output_shapes
:
m
(generator/G_MODEL/C/r3/1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЬМ+
Е
&generator/G_MODEL/C/r3/1/batchnorm/addAddV2)generator/G_MODEL/C/r3/1/moments/variance(generator/G_MODEL/C/r3/1/batchnorm/add/y*&
_output_shapes
:*
T0

(generator/G_MODEL/C/r3/1/batchnorm/RsqrtRsqrt&generator/G_MODEL/C/r3/1/batchnorm/add*
T0*&
_output_shapes
:
Ў
&generator/G_MODEL/C/r3/1/batchnorm/mulMul(generator/G_MODEL/C/r3/1/batchnorm/Rsqrt#generator/G_MODEL/C/r3/1/gamma/read*'
_output_shapes
:*
T0
О
(generator/G_MODEL/C/r3/1/batchnorm/mul_1Mul!generator/G_MODEL/C/r3/r3/BiasAdd&generator/G_MODEL/C/r3/1/batchnorm/mul*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
А
(generator/G_MODEL/C/r3/1/batchnorm/mul_2Mul%generator/G_MODEL/C/r3/1/moments/mean&generator/G_MODEL/C/r3/1/batchnorm/mul*'
_output_shapes
:*
T0
­
&generator/G_MODEL/C/r3/1/batchnorm/subSub"generator/G_MODEL/C/r3/1/beta/read(generator/G_MODEL/C/r3/1/batchnorm/mul_2*'
_output_shapes
:*
T0
Ч
(generator/G_MODEL/C/r3/1/batchnorm/add_1AddV2(generator/G_MODEL/C/r3/1/batchnorm/mul_1&generator/G_MODEL/C/r3/1/batchnorm/sub*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
­
"generator/G_MODEL/C/r3/LeakyRelu_1	LeakyRelu(generator/G_MODEL/C/r3/1/batchnorm/add_1*
alpha%ЭЬL>*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
л
Hgenerator/G_MODEL/C/r3/Conv_1/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:*8
_class.
,*loc:@generator/G_MODEL/C/r3/Conv_1/weights
Ц
Ggenerator/G_MODEL/C/r3/Conv_1/weights/Initializer/truncated_normal/meanConst*8
_class.
,*loc:@generator/G_MODEL/C/r3/Conv_1/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
Ш
Igenerator/G_MODEL/C/r3/Conv_1/weights/Initializer/truncated_normal/stddevConst*8
_class.
,*loc:@generator/G_MODEL/C/r3/Conv_1/weights*
valueB
 *Eё=*
dtype0*
_output_shapes
: 
Т
Rgenerator/G_MODEL/C/r3/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHgenerator/G_MODEL/C/r3/Conv_1/weights/Initializer/truncated_normal/shape*
T0*(
_output_shapes
:*8
_class.
,*loc:@generator/G_MODEL/C/r3/Conv_1/weights*
dtype0*
seed2 *

seed 
й
Fgenerator/G_MODEL/C/r3/Conv_1/weights/Initializer/truncated_normal/mulMulRgenerator/G_MODEL/C/r3/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalIgenerator/G_MODEL/C/r3/Conv_1/weights/Initializer/truncated_normal/stddev*8
_class.
,*loc:@generator/G_MODEL/C/r3/Conv_1/weights*
T0*(
_output_shapes
:
Ч
Bgenerator/G_MODEL/C/r3/Conv_1/weights/Initializer/truncated_normalAddFgenerator/G_MODEL/C/r3/Conv_1/weights/Initializer/truncated_normal/mulGgenerator/G_MODEL/C/r3/Conv_1/weights/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:*8
_class.
,*loc:@generator/G_MODEL/C/r3/Conv_1/weights
ч
%generator/G_MODEL/C/r3/Conv_1/weights
VariableV2*8
_class.
,*loc:@generator/G_MODEL/C/r3/Conv_1/weights*
shared_name *
shape:*
	container *
dtype0*(
_output_shapes
:
З
,generator/G_MODEL/C/r3/Conv_1/weights/AssignAssign%generator/G_MODEL/C/r3/Conv_1/weightsBgenerator/G_MODEL/C/r3/Conv_1/weights/Initializer/truncated_normal*
T0*
validate_shape(*(
_output_shapes
:*8
_class.
,*loc:@generator/G_MODEL/C/r3/Conv_1/weights*
use_locking(
Ъ
*generator/G_MODEL/C/r3/Conv_1/weights/readIdentity%generator/G_MODEL/C/r3/Conv_1/weights*8
_class.
,*loc:@generator/G_MODEL/C/r3/Conv_1/weights*
T0*(
_output_shapes
:
|
+generator/G_MODEL/C/r3/Conv_1/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
Ъ
$generator/G_MODEL/C/r3/Conv_1/Conv2DConv2D"generator/G_MODEL/C/r3/LeakyRelu_1*generator/G_MODEL/C/r3/Conv_1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
data_formatNHWC*
explicit_paddings
 *
paddingVALID*
	dilations
*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
А
/generator/G_MODEL/C/r3/2/beta/Initializer/zerosConst*
dtype0*0
_class&
$"loc:@generator/G_MODEL/C/r3/2/beta*
valueB*    *
_output_shapes	
:
Н
generator/G_MODEL/C/r3/2/beta
VariableV2*
_output_shapes	
:*
dtype0*
shape:*0
_class&
$"loc:@generator/G_MODEL/C/r3/2/beta*
	container *
shared_name 
џ
$generator/G_MODEL/C/r3/2/beta/AssignAssigngenerator/G_MODEL/C/r3/2/beta/generator/G_MODEL/C/r3/2/beta/Initializer/zeros*
use_locking(*
_output_shapes	
:*0
_class&
$"loc:@generator/G_MODEL/C/r3/2/beta*
T0*
validate_shape(
Ѕ
"generator/G_MODEL/C/r3/2/beta/readIdentitygenerator/G_MODEL/C/r3/2/beta*
_output_shapes	
:*
T0*0
_class&
$"loc:@generator/G_MODEL/C/r3/2/beta
Б
/generator/G_MODEL/C/r3/2/gamma/Initializer/onesConst*
valueB*  ?*
_output_shapes	
:*
dtype0*1
_class'
%#loc:@generator/G_MODEL/C/r3/2/gamma
П
generator/G_MODEL/C/r3/2/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *
	container *
shape:*1
_class'
%#loc:@generator/G_MODEL/C/r3/2/gamma

%generator/G_MODEL/C/r3/2/gamma/AssignAssigngenerator/G_MODEL/C/r3/2/gamma/generator/G_MODEL/C/r3/2/gamma/Initializer/ones*
_output_shapes	
:*1
_class'
%#loc:@generator/G_MODEL/C/r3/2/gamma*
use_locking(*
T0*
validate_shape(
Ј
#generator/G_MODEL/C/r3/2/gamma/readIdentitygenerator/G_MODEL/C/r3/2/gamma*
T0*
_output_shapes	
:*1
_class'
%#loc:@generator/G_MODEL/C/r3/2/gamma

7generator/G_MODEL/C/r3/2/moments/mean/reduction_indicesConst*
_output_shapes
:*!
valueB"         *
dtype0
к
%generator/G_MODEL/C/r3/2/moments/meanMean$generator/G_MODEL/C/r3/Conv_1/Conv2D7generator/G_MODEL/C/r3/2/moments/mean/reduction_indices*
T0*
	keep_dims(*&
_output_shapes
:*

Tidx0

-generator/G_MODEL/C/r3/2/moments/StopGradientStopGradient%generator/G_MODEL/C/r3/2/moments/mean*&
_output_shapes
:*
T0
р
2generator/G_MODEL/C/r3/2/moments/SquaredDifferenceSquaredDifference$generator/G_MODEL/C/r3/Conv_1/Conv2D-generator/G_MODEL/C/r3/2/moments/StopGradient*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ

;generator/G_MODEL/C/r3/2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
№
)generator/G_MODEL/C/r3/2/moments/varianceMean2generator/G_MODEL/C/r3/2/moments/SquaredDifference;generator/G_MODEL/C/r3/2/moments/variance/reduction_indices*
	keep_dims(*&
_output_shapes
:*
T0*

Tidx0
m
(generator/G_MODEL/C/r3/2/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *ЬМ+
Е
&generator/G_MODEL/C/r3/2/batchnorm/addAddV2)generator/G_MODEL/C/r3/2/moments/variance(generator/G_MODEL/C/r3/2/batchnorm/add/y*&
_output_shapes
:*
T0

(generator/G_MODEL/C/r3/2/batchnorm/RsqrtRsqrt&generator/G_MODEL/C/r3/2/batchnorm/add*
T0*&
_output_shapes
:
Ў
&generator/G_MODEL/C/r3/2/batchnorm/mulMul(generator/G_MODEL/C/r3/2/batchnorm/Rsqrt#generator/G_MODEL/C/r3/2/gamma/read*'
_output_shapes
:*
T0
С
(generator/G_MODEL/C/r3/2/batchnorm/mul_1Mul$generator/G_MODEL/C/r3/Conv_1/Conv2D&generator/G_MODEL/C/r3/2/batchnorm/mul*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
А
(generator/G_MODEL/C/r3/2/batchnorm/mul_2Mul%generator/G_MODEL/C/r3/2/moments/mean&generator/G_MODEL/C/r3/2/batchnorm/mul*
T0*'
_output_shapes
:
­
&generator/G_MODEL/C/r3/2/batchnorm/subSub"generator/G_MODEL/C/r3/2/beta/read(generator/G_MODEL/C/r3/2/batchnorm/mul_2*
T0*'
_output_shapes
:
Ч
(generator/G_MODEL/C/r3/2/batchnorm/add_1AddV2(generator/G_MODEL/C/r3/2/batchnorm/mul_1&generator/G_MODEL/C/r3/2/batchnorm/sub*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
­
generator/G_MODEL/C/r3/addAddV2generator/G_MODEL/C/r2/add(generator/G_MODEL/C/r3/2/batchnorm/add_1*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
з
Fgenerator/G_MODEL/C/r4/Conv/weights/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            *6
_class,
*(loc:@generator/G_MODEL/C/r4/Conv/weights
Т
Egenerator/G_MODEL/C/r4/Conv/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *6
_class,
*(loc:@generator/G_MODEL/C/r4/Conv/weights*
dtype0
Ф
Ggenerator/G_MODEL/C/r4/Conv/weights/Initializer/truncated_normal/stddevConst*
valueB
 *аdЮ=*
dtype0*6
_class,
*(loc:@generator/G_MODEL/C/r4/Conv/weights*
_output_shapes
: 
М
Pgenerator/G_MODEL/C/r4/Conv/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalFgenerator/G_MODEL/C/r4/Conv/weights/Initializer/truncated_normal/shape*
T0*

seed *6
_class,
*(loc:@generator/G_MODEL/C/r4/Conv/weights*
seed2 *(
_output_shapes
:*
dtype0
б
Dgenerator/G_MODEL/C/r4/Conv/weights/Initializer/truncated_normal/mulMulPgenerator/G_MODEL/C/r4/Conv/weights/Initializer/truncated_normal/TruncatedNormalGgenerator/G_MODEL/C/r4/Conv/weights/Initializer/truncated_normal/stddev*6
_class,
*(loc:@generator/G_MODEL/C/r4/Conv/weights*
T0*(
_output_shapes
:
П
@generator/G_MODEL/C/r4/Conv/weights/Initializer/truncated_normalAddDgenerator/G_MODEL/C/r4/Conv/weights/Initializer/truncated_normal/mulEgenerator/G_MODEL/C/r4/Conv/weights/Initializer/truncated_normal/mean*6
_class,
*(loc:@generator/G_MODEL/C/r4/Conv/weights*
T0*(
_output_shapes
:
у
#generator/G_MODEL/C/r4/Conv/weights
VariableV2*(
_output_shapes
:*
shared_name *6
_class,
*(loc:@generator/G_MODEL/C/r4/Conv/weights*
shape:*
	container *
dtype0
Џ
*generator/G_MODEL/C/r4/Conv/weights/AssignAssign#generator/G_MODEL/C/r4/Conv/weights@generator/G_MODEL/C/r4/Conv/weights/Initializer/truncated_normal*(
_output_shapes
:*6
_class,
*(loc:@generator/G_MODEL/C/r4/Conv/weights*
use_locking(*
validate_shape(*
T0
Ф
(generator/G_MODEL/C/r4/Conv/weights/readIdentity#generator/G_MODEL/C/r4/Conv/weights*
T0*6
_class,
*(loc:@generator/G_MODEL/C/r4/Conv/weights*(
_output_shapes
:
z
)generator/G_MODEL/C/r4/Conv/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
О
"generator/G_MODEL/C/r4/Conv/Conv2DConv2Dgenerator/G_MODEL/C/r3/add(generator/G_MODEL/C/r4/Conv/weights/read*
explicit_paddings
 *
	dilations
*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
strides
*
paddingVALID*
use_cudnn_on_gpu(*
data_formatNHWC*
T0
Р
7generator/G_MODEL/C/r4/LayerNorm/beta/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *8
_class.
,*loc:@generator/G_MODEL/C/r4/LayerNorm/beta*
dtype0
Э
%generator/G_MODEL/C/r4/LayerNorm/beta
VariableV2*8
_class.
,*loc:@generator/G_MODEL/C/r4/LayerNorm/beta*
_output_shapes	
:*
shared_name *
	container *
dtype0*
shape:

,generator/G_MODEL/C/r4/LayerNorm/beta/AssignAssign%generator/G_MODEL/C/r4/LayerNorm/beta7generator/G_MODEL/C/r4/LayerNorm/beta/Initializer/zeros*
use_locking(*8
_class.
,*loc:@generator/G_MODEL/C/r4/LayerNorm/beta*
_output_shapes	
:*
validate_shape(*
T0
Н
*generator/G_MODEL/C/r4/LayerNorm/beta/readIdentity%generator/G_MODEL/C/r4/LayerNorm/beta*
_output_shapes	
:*8
_class.
,*loc:@generator/G_MODEL/C/r4/LayerNorm/beta*
T0
С
7generator/G_MODEL/C/r4/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*9
_class/
-+loc:@generator/G_MODEL/C/r4/LayerNorm/gamma*
dtype0*
_output_shapes	
:
Я
&generator/G_MODEL/C/r4/LayerNorm/gamma
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
	container *9
_class/
-+loc:@generator/G_MODEL/C/r4/LayerNorm/gamma*
shared_name 
Ђ
-generator/G_MODEL/C/r4/LayerNorm/gamma/AssignAssign&generator/G_MODEL/C/r4/LayerNorm/gamma7generator/G_MODEL/C/r4/LayerNorm/gamma/Initializer/ones*
_output_shapes	
:*
use_locking(*
T0*
validate_shape(*9
_class/
-+loc:@generator/G_MODEL/C/r4/LayerNorm/gamma
Р
+generator/G_MODEL/C/r4/LayerNorm/gamma/readIdentity&generator/G_MODEL/C/r4/LayerNorm/gamma*
T0*9
_class/
-+loc:@generator/G_MODEL/C/r4/LayerNorm/gamma*
_output_shapes	
:

?generator/G_MODEL/C/r4/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*!
valueB"         *
dtype0
ш
-generator/G_MODEL/C/r4/LayerNorm/moments/meanMean"generator/G_MODEL/C/r4/Conv/Conv2D?generator/G_MODEL/C/r4/LayerNorm/moments/mean/reduction_indices*

Tidx0*
T0*&
_output_shapes
:*
	keep_dims(
Ѕ
5generator/G_MODEL/C/r4/LayerNorm/moments/StopGradientStopGradient-generator/G_MODEL/C/r4/LayerNorm/moments/mean*&
_output_shapes
:*
T0
ю
:generator/G_MODEL/C/r4/LayerNorm/moments/SquaredDifferenceSquaredDifference"generator/G_MODEL/C/r4/Conv/Conv2D5generator/G_MODEL/C/r4/LayerNorm/moments/StopGradient*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0

Cgenerator/G_MODEL/C/r4/LayerNorm/moments/variance/reduction_indicesConst*
dtype0*!
valueB"         *
_output_shapes
:

1generator/G_MODEL/C/r4/LayerNorm/moments/varianceMean:generator/G_MODEL/C/r4/LayerNorm/moments/SquaredDifferenceCgenerator/G_MODEL/C/r4/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*
T0*

Tidx0*&
_output_shapes
:
u
0generator/G_MODEL/C/r4/LayerNorm/batchnorm/add/yConst*
dtype0*
valueB
 *ЬМ+*
_output_shapes
: 
Э
.generator/G_MODEL/C/r4/LayerNorm/batchnorm/addAddV21generator/G_MODEL/C/r4/LayerNorm/moments/variance0generator/G_MODEL/C/r4/LayerNorm/batchnorm/add/y*&
_output_shapes
:*
T0

0generator/G_MODEL/C/r4/LayerNorm/batchnorm/RsqrtRsqrt.generator/G_MODEL/C/r4/LayerNorm/batchnorm/add*
T0*&
_output_shapes
:
Ц
.generator/G_MODEL/C/r4/LayerNorm/batchnorm/mulMul0generator/G_MODEL/C/r4/LayerNorm/batchnorm/Rsqrt+generator/G_MODEL/C/r4/LayerNorm/gamma/read*'
_output_shapes
:*
T0
Я
0generator/G_MODEL/C/r4/LayerNorm/batchnorm/mul_1Mul"generator/G_MODEL/C/r4/Conv/Conv2D.generator/G_MODEL/C/r4/LayerNorm/batchnorm/mul*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
Ш
0generator/G_MODEL/C/r4/LayerNorm/batchnorm/mul_2Mul-generator/G_MODEL/C/r4/LayerNorm/moments/mean.generator/G_MODEL/C/r4/LayerNorm/batchnorm/mul*'
_output_shapes
:*
T0
Х
.generator/G_MODEL/C/r4/LayerNorm/batchnorm/subSub*generator/G_MODEL/C/r4/LayerNorm/beta/read0generator/G_MODEL/C/r4/LayerNorm/batchnorm/mul_2*'
_output_shapes
:*
T0
п
0generator/G_MODEL/C/r4/LayerNorm/batchnorm/add_1AddV20generator/G_MODEL/C/r4/LayerNorm/batchnorm/mul_1.generator/G_MODEL/C/r4/LayerNorm/batchnorm/sub*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
Г
 generator/G_MODEL/C/r4/LeakyRelu	LeakyRelu0generator/G_MODEL/C/r4/LayerNorm/batchnorm/add_1*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
alpha%ЭЬL>

)generator/G_MODEL/C/r4/MirrorPad/paddingsConst*9
value0B."                             *
dtype0*
_output_shapes

:
т
 generator/G_MODEL/C/r4/MirrorPad	MirrorPad generator/G_MODEL/C/r4/LeakyRelu)generator/G_MODEL/C/r4/MirrorPad/paddings*
	Tpaddings0*
mode	REFLECT*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
Ч
>generator/G_MODEL/C/r4/r4/w/Initializer/truncated_normal/shapeConst*%
valueB"            *
_output_shapes
:*
dtype0*.
_class$
" loc:@generator/G_MODEL/C/r4/r4/w
В
=generator/G_MODEL/C/r4/r4/w/Initializer/truncated_normal/meanConst*
dtype0*.
_class$
" loc:@generator/G_MODEL/C/r4/r4/w*
_output_shapes
: *
valueB
 *    
Д
?generator/G_MODEL/C/r4/r4/w/Initializer/truncated_normal/stddevConst*
dtype0*
valueB
 *Т<*
_output_shapes
: *.
_class$
" loc:@generator/G_MODEL/C/r4/r4/w
Ѓ
Hgenerator/G_MODEL/C/r4/r4/w/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>generator/G_MODEL/C/r4/r4/w/Initializer/truncated_normal/shape*'
_output_shapes
:*
T0*
dtype0*.
_class$
" loc:@generator/G_MODEL/C/r4/r4/w*

seed *
seed2 
А
<generator/G_MODEL/C/r4/r4/w/Initializer/truncated_normal/mulMulHgenerator/G_MODEL/C/r4/r4/w/Initializer/truncated_normal/TruncatedNormal?generator/G_MODEL/C/r4/r4/w/Initializer/truncated_normal/stddev*
T0*'
_output_shapes
:*.
_class$
" loc:@generator/G_MODEL/C/r4/r4/w

8generator/G_MODEL/C/r4/r4/w/Initializer/truncated_normalAdd<generator/G_MODEL/C/r4/r4/w/Initializer/truncated_normal/mul=generator/G_MODEL/C/r4/r4/w/Initializer/truncated_normal/mean*
T0*'
_output_shapes
:*.
_class$
" loc:@generator/G_MODEL/C/r4/r4/w
б
generator/G_MODEL/C/r4/r4/w
VariableV2*
	container *'
_output_shapes
:*
dtype0*
shared_name *
shape:*.
_class$
" loc:@generator/G_MODEL/C/r4/r4/w

"generator/G_MODEL/C/r4/r4/w/AssignAssigngenerator/G_MODEL/C/r4/r4/w8generator/G_MODEL/C/r4/r4/w/Initializer/truncated_normal*'
_output_shapes
:*.
_class$
" loc:@generator/G_MODEL/C/r4/r4/w*
use_locking(*
T0*
validate_shape(
Ћ
 generator/G_MODEL/C/r4/r4/w/readIdentitygenerator/G_MODEL/C/r4/r4/w*
T0*.
_class$
" loc:@generator/G_MODEL/C/r4/r4/w*'
_output_shapes
:
{
"generator/G_MODEL/C/r4/r4/r4/ShapeConst*
dtype0*
_output_shapes
:*%
valueB"            
{
*generator/G_MODEL/C/r4/r4/r4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

generator/G_MODEL/C/r4/r4/r4DepthwiseConv2dNative generator/G_MODEL/C/r4/MirrorPad generator/G_MODEL/C/r4/r4/w/read*
strides
*
	dilations
*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
paddingVALID*
T0*
data_formatNHWC
В
0generator/G_MODEL/C/r4/r4/bias/Initializer/ConstConst*
_output_shapes	
:*
valueB*    *
dtype0*1
_class'
%#loc:@generator/G_MODEL/C/r4/r4/bias
П
generator/G_MODEL/C/r4/r4/bias
VariableV2*
	container *
dtype0*1
_class'
%#loc:@generator/G_MODEL/C/r4/r4/bias*
_output_shapes	
:*
shared_name *
shape:

%generator/G_MODEL/C/r4/r4/bias/AssignAssigngenerator/G_MODEL/C/r4/r4/bias0generator/G_MODEL/C/r4/r4/bias/Initializer/Const*1
_class'
%#loc:@generator/G_MODEL/C/r4/r4/bias*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(
Ј
#generator/G_MODEL/C/r4/r4/bias/readIdentitygenerator/G_MODEL/C/r4/r4/bias*
T0*1
_class'
%#loc:@generator/G_MODEL/C/r4/r4/bias*
_output_shapes	
:
Ъ
!generator/G_MODEL/C/r4/r4/BiasAddBiasAddgenerator/G_MODEL/C/r4/r4/r4#generator/G_MODEL/C/r4/r4/bias/read*
data_formatNHWC*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
А
/generator/G_MODEL/C/r4/1/beta/Initializer/zerosConst*
_output_shapes	
:*0
_class&
$"loc:@generator/G_MODEL/C/r4/1/beta*
valueB*    *
dtype0
Н
generator/G_MODEL/C/r4/1/beta
VariableV2*
shared_name *
	container *
dtype0*
_output_shapes	
:*0
_class&
$"loc:@generator/G_MODEL/C/r4/1/beta*
shape:
џ
$generator/G_MODEL/C/r4/1/beta/AssignAssigngenerator/G_MODEL/C/r4/1/beta/generator/G_MODEL/C/r4/1/beta/Initializer/zeros*0
_class&
$"loc:@generator/G_MODEL/C/r4/1/beta*
use_locking(*
validate_shape(*
_output_shapes	
:*
T0
Ѕ
"generator/G_MODEL/C/r4/1/beta/readIdentitygenerator/G_MODEL/C/r4/1/beta*0
_class&
$"loc:@generator/G_MODEL/C/r4/1/beta*
T0*
_output_shapes	
:
Б
/generator/G_MODEL/C/r4/1/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*1
_class'
%#loc:@generator/G_MODEL/C/r4/1/gamma
П
generator/G_MODEL/C/r4/1/gamma
VariableV2*
	container *1
_class'
%#loc:@generator/G_MODEL/C/r4/1/gamma*
shape:*
dtype0*
_output_shapes	
:*
shared_name 

%generator/G_MODEL/C/r4/1/gamma/AssignAssigngenerator/G_MODEL/C/r4/1/gamma/generator/G_MODEL/C/r4/1/gamma/Initializer/ones*
validate_shape(*
_output_shapes	
:*1
_class'
%#loc:@generator/G_MODEL/C/r4/1/gamma*
use_locking(*
T0
Ј
#generator/G_MODEL/C/r4/1/gamma/readIdentitygenerator/G_MODEL/C/r4/1/gamma*
_output_shapes	
:*1
_class'
%#loc:@generator/G_MODEL/C/r4/1/gamma*
T0

7generator/G_MODEL/C/r4/1/moments/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*!
valueB"         
з
%generator/G_MODEL/C/r4/1/moments/meanMean!generator/G_MODEL/C/r4/r4/BiasAdd7generator/G_MODEL/C/r4/1/moments/mean/reduction_indices*
	keep_dims(*
T0*

Tidx0*&
_output_shapes
:

-generator/G_MODEL/C/r4/1/moments/StopGradientStopGradient%generator/G_MODEL/C/r4/1/moments/mean*&
_output_shapes
:*
T0
н
2generator/G_MODEL/C/r4/1/moments/SquaredDifferenceSquaredDifference!generator/G_MODEL/C/r4/r4/BiasAdd-generator/G_MODEL/C/r4/1/moments/StopGradient*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0

;generator/G_MODEL/C/r4/1/moments/variance/reduction_indicesConst*!
valueB"         *
_output_shapes
:*
dtype0
№
)generator/G_MODEL/C/r4/1/moments/varianceMean2generator/G_MODEL/C/r4/1/moments/SquaredDifference;generator/G_MODEL/C/r4/1/moments/variance/reduction_indices*
	keep_dims(*
T0*

Tidx0*&
_output_shapes
:
m
(generator/G_MODEL/C/r4/1/batchnorm/add/yConst*
_output_shapes
: *
valueB
 *ЬМ+*
dtype0
Е
&generator/G_MODEL/C/r4/1/batchnorm/addAddV2)generator/G_MODEL/C/r4/1/moments/variance(generator/G_MODEL/C/r4/1/batchnorm/add/y*&
_output_shapes
:*
T0

(generator/G_MODEL/C/r4/1/batchnorm/RsqrtRsqrt&generator/G_MODEL/C/r4/1/batchnorm/add*
T0*&
_output_shapes
:
Ў
&generator/G_MODEL/C/r4/1/batchnorm/mulMul(generator/G_MODEL/C/r4/1/batchnorm/Rsqrt#generator/G_MODEL/C/r4/1/gamma/read*
T0*'
_output_shapes
:
О
(generator/G_MODEL/C/r4/1/batchnorm/mul_1Mul!generator/G_MODEL/C/r4/r4/BiasAdd&generator/G_MODEL/C/r4/1/batchnorm/mul*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
А
(generator/G_MODEL/C/r4/1/batchnorm/mul_2Mul%generator/G_MODEL/C/r4/1/moments/mean&generator/G_MODEL/C/r4/1/batchnorm/mul*'
_output_shapes
:*
T0
­
&generator/G_MODEL/C/r4/1/batchnorm/subSub"generator/G_MODEL/C/r4/1/beta/read(generator/G_MODEL/C/r4/1/batchnorm/mul_2*'
_output_shapes
:*
T0
Ч
(generator/G_MODEL/C/r4/1/batchnorm/add_1AddV2(generator/G_MODEL/C/r4/1/batchnorm/mul_1&generator/G_MODEL/C/r4/1/batchnorm/sub*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
­
"generator/G_MODEL/C/r4/LeakyRelu_1	LeakyRelu(generator/G_MODEL/C/r4/1/batchnorm/add_1*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
alpha%ЭЬL>
л
Hgenerator/G_MODEL/C/r4/Conv_1/weights/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*8
_class.
,*loc:@generator/G_MODEL/C/r4/Conv_1/weights*%
valueB"            
Ц
Ggenerator/G_MODEL/C/r4/Conv_1/weights/Initializer/truncated_normal/meanConst*
dtype0*
valueB
 *    *8
_class.
,*loc:@generator/G_MODEL/C/r4/Conv_1/weights*
_output_shapes
: 
Ш
Igenerator/G_MODEL/C/r4/Conv_1/weights/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *8
_class.
,*loc:@generator/G_MODEL/C/r4/Conv_1/weights*
valueB
 *Eё=
Т
Rgenerator/G_MODEL/C/r4/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalHgenerator/G_MODEL/C/r4/Conv_1/weights/Initializer/truncated_normal/shape*(
_output_shapes
:*
seed2 *8
_class.
,*loc:@generator/G_MODEL/C/r4/Conv_1/weights*
T0*
dtype0*

seed 
й
Fgenerator/G_MODEL/C/r4/Conv_1/weights/Initializer/truncated_normal/mulMulRgenerator/G_MODEL/C/r4/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalIgenerator/G_MODEL/C/r4/Conv_1/weights/Initializer/truncated_normal/stddev*8
_class.
,*loc:@generator/G_MODEL/C/r4/Conv_1/weights*(
_output_shapes
:*
T0
Ч
Bgenerator/G_MODEL/C/r4/Conv_1/weights/Initializer/truncated_normalAddFgenerator/G_MODEL/C/r4/Conv_1/weights/Initializer/truncated_normal/mulGgenerator/G_MODEL/C/r4/Conv_1/weights/Initializer/truncated_normal/mean*(
_output_shapes
:*
T0*8
_class.
,*loc:@generator/G_MODEL/C/r4/Conv_1/weights
ч
%generator/G_MODEL/C/r4/Conv_1/weights
VariableV2*
shape:*
dtype0*(
_output_shapes
:*
	container *
shared_name *8
_class.
,*loc:@generator/G_MODEL/C/r4/Conv_1/weights
З
,generator/G_MODEL/C/r4/Conv_1/weights/AssignAssign%generator/G_MODEL/C/r4/Conv_1/weightsBgenerator/G_MODEL/C/r4/Conv_1/weights/Initializer/truncated_normal*(
_output_shapes
:*8
_class.
,*loc:@generator/G_MODEL/C/r4/Conv_1/weights*
T0*
use_locking(*
validate_shape(
Ъ
*generator/G_MODEL/C/r4/Conv_1/weights/readIdentity%generator/G_MODEL/C/r4/Conv_1/weights*8
_class.
,*loc:@generator/G_MODEL/C/r4/Conv_1/weights*
T0*(
_output_shapes
:
|
+generator/G_MODEL/C/r4/Conv_1/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
Ъ
$generator/G_MODEL/C/r4/Conv_1/Conv2DConv2D"generator/G_MODEL/C/r4/LeakyRelu_1*generator/G_MODEL/C/r4/Conv_1/weights/read*
data_formatNHWC*
	dilations
*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
strides
*
paddingVALID*
use_cudnn_on_gpu(*
explicit_paddings
 
А
/generator/G_MODEL/C/r4/2/beta/Initializer/zerosConst*0
_class&
$"loc:@generator/G_MODEL/C/r4/2/beta*
dtype0*
valueB*    *
_output_shapes	
:
Н
generator/G_MODEL/C/r4/2/beta
VariableV2*
dtype0*
_output_shapes	
:*
shape:*
	container *
shared_name *0
_class&
$"loc:@generator/G_MODEL/C/r4/2/beta
џ
$generator/G_MODEL/C/r4/2/beta/AssignAssigngenerator/G_MODEL/C/r4/2/beta/generator/G_MODEL/C/r4/2/beta/Initializer/zeros*
_output_shapes	
:*
validate_shape(*
T0*
use_locking(*0
_class&
$"loc:@generator/G_MODEL/C/r4/2/beta
Ѕ
"generator/G_MODEL/C/r4/2/beta/readIdentitygenerator/G_MODEL/C/r4/2/beta*
T0*0
_class&
$"loc:@generator/G_MODEL/C/r4/2/beta*
_output_shapes	
:
Б
/generator/G_MODEL/C/r4/2/gamma/Initializer/onesConst*
valueB*  ?*1
_class'
%#loc:@generator/G_MODEL/C/r4/2/gamma*
dtype0*
_output_shapes	
:
П
generator/G_MODEL/C/r4/2/gamma
VariableV2*
shape:*
_output_shapes	
:*1
_class'
%#loc:@generator/G_MODEL/C/r4/2/gamma*
shared_name *
	container *
dtype0

%generator/G_MODEL/C/r4/2/gamma/AssignAssigngenerator/G_MODEL/C/r4/2/gamma/generator/G_MODEL/C/r4/2/gamma/Initializer/ones*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:*1
_class'
%#loc:@generator/G_MODEL/C/r4/2/gamma
Ј
#generator/G_MODEL/C/r4/2/gamma/readIdentitygenerator/G_MODEL/C/r4/2/gamma*
T0*1
_class'
%#loc:@generator/G_MODEL/C/r4/2/gamma*
_output_shapes	
:

7generator/G_MODEL/C/r4/2/moments/mean/reduction_indicesConst*
_output_shapes
:*!
valueB"         *
dtype0
к
%generator/G_MODEL/C/r4/2/moments/meanMean$generator/G_MODEL/C/r4/Conv_1/Conv2D7generator/G_MODEL/C/r4/2/moments/mean/reduction_indices*

Tidx0*&
_output_shapes
:*
T0*
	keep_dims(

-generator/G_MODEL/C/r4/2/moments/StopGradientStopGradient%generator/G_MODEL/C/r4/2/moments/mean*
T0*&
_output_shapes
:
р
2generator/G_MODEL/C/r4/2/moments/SquaredDifferenceSquaredDifference$generator/G_MODEL/C/r4/Conv_1/Conv2D-generator/G_MODEL/C/r4/2/moments/StopGradient*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0

;generator/G_MODEL/C/r4/2/moments/variance/reduction_indicesConst*
dtype0*!
valueB"         *
_output_shapes
:
№
)generator/G_MODEL/C/r4/2/moments/varianceMean2generator/G_MODEL/C/r4/2/moments/SquaredDifference;generator/G_MODEL/C/r4/2/moments/variance/reduction_indices*
T0*
	keep_dims(*&
_output_shapes
:*

Tidx0
m
(generator/G_MODEL/C/r4/2/batchnorm/add/yConst*
_output_shapes
: *
valueB
 *ЬМ+*
dtype0
Е
&generator/G_MODEL/C/r4/2/batchnorm/addAddV2)generator/G_MODEL/C/r4/2/moments/variance(generator/G_MODEL/C/r4/2/batchnorm/add/y*&
_output_shapes
:*
T0

(generator/G_MODEL/C/r4/2/batchnorm/RsqrtRsqrt&generator/G_MODEL/C/r4/2/batchnorm/add*&
_output_shapes
:*
T0
Ў
&generator/G_MODEL/C/r4/2/batchnorm/mulMul(generator/G_MODEL/C/r4/2/batchnorm/Rsqrt#generator/G_MODEL/C/r4/2/gamma/read*
T0*'
_output_shapes
:
С
(generator/G_MODEL/C/r4/2/batchnorm/mul_1Mul$generator/G_MODEL/C/r4/Conv_1/Conv2D&generator/G_MODEL/C/r4/2/batchnorm/mul*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
А
(generator/G_MODEL/C/r4/2/batchnorm/mul_2Mul%generator/G_MODEL/C/r4/2/moments/mean&generator/G_MODEL/C/r4/2/batchnorm/mul*
T0*'
_output_shapes
:
­
&generator/G_MODEL/C/r4/2/batchnorm/subSub"generator/G_MODEL/C/r4/2/beta/read(generator/G_MODEL/C/r4/2/batchnorm/mul_2*'
_output_shapes
:*
T0
Ч
(generator/G_MODEL/C/r4/2/batchnorm/add_1AddV2(generator/G_MODEL/C/r4/2/batchnorm/mul_1&generator/G_MODEL/C/r4/2/batchnorm/sub*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
­
generator/G_MODEL/C/r4/addAddV2generator/G_MODEL/C/r3/add(generator/G_MODEL/C/r4/2/batchnorm/add_1*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0

(generator/G_MODEL/C/MirrorPad_1/paddingsConst*9
value0B."                             *
_output_shapes

:*
dtype0
к
generator/G_MODEL/C/MirrorPad_1	MirrorPadgenerator/G_MODEL/C/r4/add(generator/G_MODEL/C/MirrorPad_1/paddings*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
mode	REFLECT*
	Tpaddings0*
T0
е
Egenerator/G_MODEL/C/Conv_1/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*5
_class+
)'loc:@generator/G_MODEL/C/Conv_1/weights*
_output_shapes
:
Р
Dgenerator/G_MODEL/C/Conv_1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *5
_class+
)'loc:@generator/G_MODEL/C/Conv_1/weights*
dtype0
Т
Fgenerator/G_MODEL/C/Conv_1/weights/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*5
_class+
)'loc:@generator/G_MODEL/C/Conv_1/weights*
valueB
 *	=
Й
Ogenerator/G_MODEL/C/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalEgenerator/G_MODEL/C/Conv_1/weights/Initializer/truncated_normal/shape*
dtype0*(
_output_shapes
:*
T0*
seed2 *5
_class+
)'loc:@generator/G_MODEL/C/Conv_1/weights*

seed 
Э
Cgenerator/G_MODEL/C/Conv_1/weights/Initializer/truncated_normal/mulMulOgenerator/G_MODEL/C/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalFgenerator/G_MODEL/C/Conv_1/weights/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:*5
_class+
)'loc:@generator/G_MODEL/C/Conv_1/weights
Л
?generator/G_MODEL/C/Conv_1/weights/Initializer/truncated_normalAddCgenerator/G_MODEL/C/Conv_1/weights/Initializer/truncated_normal/mulDgenerator/G_MODEL/C/Conv_1/weights/Initializer/truncated_normal/mean*5
_class+
)'loc:@generator/G_MODEL/C/Conv_1/weights*(
_output_shapes
:*
T0
с
"generator/G_MODEL/C/Conv_1/weights
VariableV2*(
_output_shapes
:*
shared_name *
shape:*
dtype0*5
_class+
)'loc:@generator/G_MODEL/C/Conv_1/weights*
	container 
Ћ
)generator/G_MODEL/C/Conv_1/weights/AssignAssign"generator/G_MODEL/C/Conv_1/weights?generator/G_MODEL/C/Conv_1/weights/Initializer/truncated_normal*5
_class+
)'loc:@generator/G_MODEL/C/Conv_1/weights*(
_output_shapes
:*
T0*
validate_shape(*
use_locking(
С
'generator/G_MODEL/C/Conv_1/weights/readIdentity"generator/G_MODEL/C/Conv_1/weights*
T0*5
_class+
)'loc:@generator/G_MODEL/C/Conv_1/weights*(
_output_shapes
:
y
(generator/G_MODEL/C/Conv_1/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
С
!generator/G_MODEL/C/Conv_1/Conv2DConv2Dgenerator/G_MODEL/C/MirrorPad_1'generator/G_MODEL/C/Conv_1/weights/read*
	dilations
*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0*
use_cudnn_on_gpu(*
strides
*
paddingVALID*
explicit_paddings
 *
data_formatNHWC
О
6generator/G_MODEL/C/LayerNorm_1/beta/Initializer/zerosConst*7
_class-
+)loc:@generator/G_MODEL/C/LayerNorm_1/beta*
_output_shapes	
:*
dtype0*
valueB*    
Ы
$generator/G_MODEL/C/LayerNorm_1/beta
VariableV2*
shape:*
shared_name *
dtype0*
	container *
_output_shapes	
:*7
_class-
+)loc:@generator/G_MODEL/C/LayerNorm_1/beta

+generator/G_MODEL/C/LayerNorm_1/beta/AssignAssign$generator/G_MODEL/C/LayerNorm_1/beta6generator/G_MODEL/C/LayerNorm_1/beta/Initializer/zeros*
use_locking(*7
_class-
+)loc:@generator/G_MODEL/C/LayerNorm_1/beta*
validate_shape(*
T0*
_output_shapes	
:
К
)generator/G_MODEL/C/LayerNorm_1/beta/readIdentity$generator/G_MODEL/C/LayerNorm_1/beta*
_output_shapes	
:*
T0*7
_class-
+)loc:@generator/G_MODEL/C/LayerNorm_1/beta
П
6generator/G_MODEL/C/LayerNorm_1/gamma/Initializer/onesConst*
valueB*  ?*8
_class.
,*loc:@generator/G_MODEL/C/LayerNorm_1/gamma*
_output_shapes	
:*
dtype0
Э
%generator/G_MODEL/C/LayerNorm_1/gamma
VariableV2*
_output_shapes	
:*8
_class.
,*loc:@generator/G_MODEL/C/LayerNorm_1/gamma*
dtype0*
	container *
shape:*
shared_name 

,generator/G_MODEL/C/LayerNorm_1/gamma/AssignAssign%generator/G_MODEL/C/LayerNorm_1/gamma6generator/G_MODEL/C/LayerNorm_1/gamma/Initializer/ones*
use_locking(*
_output_shapes	
:*8
_class.
,*loc:@generator/G_MODEL/C/LayerNorm_1/gamma*
T0*
validate_shape(
Н
*generator/G_MODEL/C/LayerNorm_1/gamma/readIdentity%generator/G_MODEL/C/LayerNorm_1/gamma*
T0*
_output_shapes	
:*8
_class.
,*loc:@generator/G_MODEL/C/LayerNorm_1/gamma

>generator/G_MODEL/C/LayerNorm_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
х
,generator/G_MODEL/C/LayerNorm_1/moments/meanMean!generator/G_MODEL/C/Conv_1/Conv2D>generator/G_MODEL/C/LayerNorm_1/moments/mean/reduction_indices*
T0*
	keep_dims(*

Tidx0*&
_output_shapes
:
Ѓ
4generator/G_MODEL/C/LayerNorm_1/moments/StopGradientStopGradient,generator/G_MODEL/C/LayerNorm_1/moments/mean*
T0*&
_output_shapes
:
ы
9generator/G_MODEL/C/LayerNorm_1/moments/SquaredDifferenceSquaredDifference!generator/G_MODEL/C/Conv_1/Conv2D4generator/G_MODEL/C/LayerNorm_1/moments/StopGradient*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ

Bgenerator/G_MODEL/C/LayerNorm_1/moments/variance/reduction_indicesConst*
dtype0*
_output_shapes
:*!
valueB"         

0generator/G_MODEL/C/LayerNorm_1/moments/varianceMean9generator/G_MODEL/C/LayerNorm_1/moments/SquaredDifferenceBgenerator/G_MODEL/C/LayerNorm_1/moments/variance/reduction_indices*
	keep_dims(*
T0*&
_output_shapes
:*

Tidx0
t
/generator/G_MODEL/C/LayerNorm_1/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *ЬМ+
Ъ
-generator/G_MODEL/C/LayerNorm_1/batchnorm/addAddV20generator/G_MODEL/C/LayerNorm_1/moments/variance/generator/G_MODEL/C/LayerNorm_1/batchnorm/add/y*
T0*&
_output_shapes
:

/generator/G_MODEL/C/LayerNorm_1/batchnorm/RsqrtRsqrt-generator/G_MODEL/C/LayerNorm_1/batchnorm/add*
T0*&
_output_shapes
:
У
-generator/G_MODEL/C/LayerNorm_1/batchnorm/mulMul/generator/G_MODEL/C/LayerNorm_1/batchnorm/Rsqrt*generator/G_MODEL/C/LayerNorm_1/gamma/read*
T0*'
_output_shapes
:
Ь
/generator/G_MODEL/C/LayerNorm_1/batchnorm/mul_1Mul!generator/G_MODEL/C/Conv_1/Conv2D-generator/G_MODEL/C/LayerNorm_1/batchnorm/mul*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
Х
/generator/G_MODEL/C/LayerNorm_1/batchnorm/mul_2Mul,generator/G_MODEL/C/LayerNorm_1/moments/mean-generator/G_MODEL/C/LayerNorm_1/batchnorm/mul*'
_output_shapes
:*
T0
Т
-generator/G_MODEL/C/LayerNorm_1/batchnorm/subSub)generator/G_MODEL/C/LayerNorm_1/beta/read/generator/G_MODEL/C/LayerNorm_1/batchnorm/mul_2*
T0*'
_output_shapes
:
м
/generator/G_MODEL/C/LayerNorm_1/batchnorm/add_1AddV2/generator/G_MODEL/C/LayerNorm_1/batchnorm/mul_1-generator/G_MODEL/C/LayerNorm_1/batchnorm/sub*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
Б
generator/G_MODEL/C/LeakyRelu_1	LeakyRelu/generator/G_MODEL/C/LayerNorm_1/batchnorm/add_1*
alpha%ЭЬL>*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
x
generator/G_MODEL/D/ShapeShapegenerator/G_MODEL/C/LeakyRelu_1*
_output_shapes
:*
T0*
out_type0
q
'generator/G_MODEL/D/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
s
)generator/G_MODEL/D/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
s
)generator/G_MODEL/D/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
н
!generator/G_MODEL/D/strided_sliceStridedSlicegenerator/G_MODEL/D/Shape'generator/G_MODEL/D/strided_slice/stack)generator/G_MODEL/D/strided_slice/stack_1)generator/G_MODEL/D/strided_slice/stack_2*
end_mask *
T0*
Index0*
ellipsis_mask *
_output_shapes
: *
shrink_axis_mask*

begin_mask *
new_axis_mask 
[
generator/G_MODEL/D/mul/xConst*
_output_shapes
: *
value	B :*
dtype0
}
generator/G_MODEL/D/mulMulgenerator/G_MODEL/D/mul/x!generator/G_MODEL/D/strided_slice*
T0*
_output_shapes
: 
z
generator/G_MODEL/D/Shape_1Shapegenerator/G_MODEL/C/LeakyRelu_1*
T0*
out_type0*
_output_shapes
:
s
)generator/G_MODEL/D/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
u
+generator/G_MODEL/D/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
u
+generator/G_MODEL/D/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ч
#generator/G_MODEL/D/strided_slice_1StridedSlicegenerator/G_MODEL/D/Shape_1)generator/G_MODEL/D/strided_slice_1/stack+generator/G_MODEL/D/strided_slice_1/stack_1+generator/G_MODEL/D/strided_slice_1/stack_2*
ellipsis_mask *
shrink_axis_mask*
T0*
Index0*
end_mask *
new_axis_mask *

begin_mask *
_output_shapes
: 
]
generator/G_MODEL/D/mul_1/xConst*
value	B :*
_output_shapes
: *
dtype0

generator/G_MODEL/D/mul_1Mulgenerator/G_MODEL/D/mul_1/x#generator/G_MODEL/D/strided_slice_1*
_output_shapes
: *
T0

generator/G_MODEL/D/resize/sizePackgenerator/G_MODEL/D/mulgenerator/G_MODEL/D/mul_1*

axis *
_output_shapes
:*
T0*
N
№
)generator/G_MODEL/D/resize/ResizeBilinearResizeBilineargenerator/G_MODEL/C/LeakyRelu_1generator/G_MODEL/D/resize/size*
T0*
half_pixel_centers( *
align_corners( *9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ

&generator/G_MODEL/D/MirrorPad/paddingsConst*9
value0B."                             *
_output_shapes

:*
dtype0
х
generator/G_MODEL/D/MirrorPad	MirrorPad)generator/G_MODEL/D/resize/ResizeBilinear&generator/G_MODEL/D/MirrorPad/paddings*
	Tpaddings0*
mode	REFLECT*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
б
Cgenerator/G_MODEL/D/Conv/weights/Initializer/truncated_normal/shapeConst*
dtype0*%
valueB"            *
_output_shapes
:*3
_class)
'%loc:@generator/G_MODEL/D/Conv/weights
М
Bgenerator/G_MODEL/D/Conv/weights/Initializer/truncated_normal/meanConst*3
_class)
'%loc:@generator/G_MODEL/D/Conv/weights*
_output_shapes
: *
valueB
 *    *
dtype0
О
Dgenerator/G_MODEL/D/Conv/weights/Initializer/truncated_normal/stddevConst*
dtype0*3
_class)
'%loc:@generator/G_MODEL/D/Conv/weights*
valueB
 *B=*
_output_shapes
: 
Г
Mgenerator/G_MODEL/D/Conv/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalCgenerator/G_MODEL/D/Conv/weights/Initializer/truncated_normal/shape*
T0*
seed2 *

seed *3
_class)
'%loc:@generator/G_MODEL/D/Conv/weights*
dtype0*(
_output_shapes
:
Х
Agenerator/G_MODEL/D/Conv/weights/Initializer/truncated_normal/mulMulMgenerator/G_MODEL/D/Conv/weights/Initializer/truncated_normal/TruncatedNormalDgenerator/G_MODEL/D/Conv/weights/Initializer/truncated_normal/stddev*3
_class)
'%loc:@generator/G_MODEL/D/Conv/weights*(
_output_shapes
:*
T0
Г
=generator/G_MODEL/D/Conv/weights/Initializer/truncated_normalAddAgenerator/G_MODEL/D/Conv/weights/Initializer/truncated_normal/mulBgenerator/G_MODEL/D/Conv/weights/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:*3
_class)
'%loc:@generator/G_MODEL/D/Conv/weights
н
 generator/G_MODEL/D/Conv/weights
VariableV2*(
_output_shapes
:*3
_class)
'%loc:@generator/G_MODEL/D/Conv/weights*
dtype0*
	container *
shared_name *
shape:
Ѓ
'generator/G_MODEL/D/Conv/weights/AssignAssign generator/G_MODEL/D/Conv/weights=generator/G_MODEL/D/Conv/weights/Initializer/truncated_normal*3
_class)
'%loc:@generator/G_MODEL/D/Conv/weights*(
_output_shapes
:*
T0*
use_locking(*
validate_shape(
Л
%generator/G_MODEL/D/Conv/weights/readIdentity generator/G_MODEL/D/Conv/weights*(
_output_shapes
:*
T0*3
_class)
'%loc:@generator/G_MODEL/D/Conv/weights
w
&generator/G_MODEL/D/Conv/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
Л
generator/G_MODEL/D/Conv/Conv2DConv2Dgenerator/G_MODEL/D/MirrorPad%generator/G_MODEL/D/Conv/weights/read*
explicit_paddings
 *
	dilations
*
paddingVALID*
use_cudnn_on_gpu(*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0*
strides
*
data_formatNHWC
К
4generator/G_MODEL/D/LayerNorm/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:*5
_class+
)'loc:@generator/G_MODEL/D/LayerNorm/beta*
valueB*    
Ч
"generator/G_MODEL/D/LayerNorm/beta
VariableV2*
_output_shapes	
:*
	container *5
_class+
)'loc:@generator/G_MODEL/D/LayerNorm/beta*
shape:*
dtype0*
shared_name 

)generator/G_MODEL/D/LayerNorm/beta/AssignAssign"generator/G_MODEL/D/LayerNorm/beta4generator/G_MODEL/D/LayerNorm/beta/Initializer/zeros*
T0*
use_locking(*
_output_shapes	
:*5
_class+
)'loc:@generator/G_MODEL/D/LayerNorm/beta*
validate_shape(
Д
'generator/G_MODEL/D/LayerNorm/beta/readIdentity"generator/G_MODEL/D/LayerNorm/beta*5
_class+
)'loc:@generator/G_MODEL/D/LayerNorm/beta*
T0*
_output_shapes	
:
Л
4generator/G_MODEL/D/LayerNorm/gamma/Initializer/onesConst*
valueB*  ?*
dtype0*6
_class,
*(loc:@generator/G_MODEL/D/LayerNorm/gamma*
_output_shapes	
:
Щ
#generator/G_MODEL/D/LayerNorm/gamma
VariableV2*
shared_name *
_output_shapes	
:*
dtype0*
	container *6
_class,
*(loc:@generator/G_MODEL/D/LayerNorm/gamma*
shape:

*generator/G_MODEL/D/LayerNorm/gamma/AssignAssign#generator/G_MODEL/D/LayerNorm/gamma4generator/G_MODEL/D/LayerNorm/gamma/Initializer/ones*
validate_shape(*
T0*6
_class,
*(loc:@generator/G_MODEL/D/LayerNorm/gamma*
use_locking(*
_output_shapes	
:
З
(generator/G_MODEL/D/LayerNorm/gamma/readIdentity#generator/G_MODEL/D/LayerNorm/gamma*
_output_shapes	
:*6
_class,
*(loc:@generator/G_MODEL/D/LayerNorm/gamma*
T0

<generator/G_MODEL/D/LayerNorm/moments/mean/reduction_indicesConst*!
valueB"         *
_output_shapes
:*
dtype0
п
*generator/G_MODEL/D/LayerNorm/moments/meanMeangenerator/G_MODEL/D/Conv/Conv2D<generator/G_MODEL/D/LayerNorm/moments/mean/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0

2generator/G_MODEL/D/LayerNorm/moments/StopGradientStopGradient*generator/G_MODEL/D/LayerNorm/moments/mean*
T0*&
_output_shapes
:
х
7generator/G_MODEL/D/LayerNorm/moments/SquaredDifferenceSquaredDifferencegenerator/G_MODEL/D/Conv/Conv2D2generator/G_MODEL/D/LayerNorm/moments/StopGradient*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ

@generator/G_MODEL/D/LayerNorm/moments/variance/reduction_indicesConst*!
valueB"         *
_output_shapes
:*
dtype0
џ
.generator/G_MODEL/D/LayerNorm/moments/varianceMean7generator/G_MODEL/D/LayerNorm/moments/SquaredDifference@generator/G_MODEL/D/LayerNorm/moments/variance/reduction_indices*

Tidx0*
	keep_dims(*&
_output_shapes
:*
T0
r
-generator/G_MODEL/D/LayerNorm/batchnorm/add/yConst*
valueB
 *ЬМ+*
_output_shapes
: *
dtype0
Ф
+generator/G_MODEL/D/LayerNorm/batchnorm/addAddV2.generator/G_MODEL/D/LayerNorm/moments/variance-generator/G_MODEL/D/LayerNorm/batchnorm/add/y*
T0*&
_output_shapes
:

-generator/G_MODEL/D/LayerNorm/batchnorm/RsqrtRsqrt+generator/G_MODEL/D/LayerNorm/batchnorm/add*
T0*&
_output_shapes
:
Н
+generator/G_MODEL/D/LayerNorm/batchnorm/mulMul-generator/G_MODEL/D/LayerNorm/batchnorm/Rsqrt(generator/G_MODEL/D/LayerNorm/gamma/read*'
_output_shapes
:*
T0
Ц
-generator/G_MODEL/D/LayerNorm/batchnorm/mul_1Mulgenerator/G_MODEL/D/Conv/Conv2D+generator/G_MODEL/D/LayerNorm/batchnorm/mul*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
П
-generator/G_MODEL/D/LayerNorm/batchnorm/mul_2Mul*generator/G_MODEL/D/LayerNorm/moments/mean+generator/G_MODEL/D/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:
М
+generator/G_MODEL/D/LayerNorm/batchnorm/subSub'generator/G_MODEL/D/LayerNorm/beta/read-generator/G_MODEL/D/LayerNorm/batchnorm/mul_2*
T0*'
_output_shapes
:
ж
-generator/G_MODEL/D/LayerNorm/batchnorm/add_1AddV2-generator/G_MODEL/D/LayerNorm/batchnorm/mul_1+generator/G_MODEL/D/LayerNorm/batchnorm/sub*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
­
generator/G_MODEL/D/LeakyRelu	LeakyRelu-generator/G_MODEL/D/LayerNorm/batchnorm/add_1*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
alpha%ЭЬL>*
T0

(generator/G_MODEL/D/MirrorPad_1/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             
н
generator/G_MODEL/D/MirrorPad_1	MirrorPadgenerator/G_MODEL/D/LeakyRelu(generator/G_MODEL/D/MirrorPad_1/paddings*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0*
	Tpaddings0*
mode	REFLECT
е
Egenerator/G_MODEL/D/Conv_1/weights/Initializer/truncated_normal/shapeConst*5
_class+
)'loc:@generator/G_MODEL/D/Conv_1/weights*%
valueB"            *
_output_shapes
:*
dtype0
Р
Dgenerator/G_MODEL/D/Conv_1/weights/Initializer/truncated_normal/meanConst*5
_class+
)'loc:@generator/G_MODEL/D/Conv_1/weights*
_output_shapes
: *
valueB
 *    *
dtype0
Т
Fgenerator/G_MODEL/D/Conv_1/weights/Initializer/truncated_normal/stddevConst*
_output_shapes
: *5
_class+
)'loc:@generator/G_MODEL/D/Conv_1/weights*
valueB
 *B=*
dtype0
Й
Ogenerator/G_MODEL/D/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalEgenerator/G_MODEL/D/Conv_1/weights/Initializer/truncated_normal/shape*
T0*
dtype0*5
_class+
)'loc:@generator/G_MODEL/D/Conv_1/weights*(
_output_shapes
:*
seed2 *

seed 
Э
Cgenerator/G_MODEL/D/Conv_1/weights/Initializer/truncated_normal/mulMulOgenerator/G_MODEL/D/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalFgenerator/G_MODEL/D/Conv_1/weights/Initializer/truncated_normal/stddev*(
_output_shapes
:*
T0*5
_class+
)'loc:@generator/G_MODEL/D/Conv_1/weights
Л
?generator/G_MODEL/D/Conv_1/weights/Initializer/truncated_normalAddCgenerator/G_MODEL/D/Conv_1/weights/Initializer/truncated_normal/mulDgenerator/G_MODEL/D/Conv_1/weights/Initializer/truncated_normal/mean*(
_output_shapes
:*
T0*5
_class+
)'loc:@generator/G_MODEL/D/Conv_1/weights
с
"generator/G_MODEL/D/Conv_1/weights
VariableV2*
	container *
dtype0*5
_class+
)'loc:@generator/G_MODEL/D/Conv_1/weights*
shape:*(
_output_shapes
:*
shared_name 
Ћ
)generator/G_MODEL/D/Conv_1/weights/AssignAssign"generator/G_MODEL/D/Conv_1/weights?generator/G_MODEL/D/Conv_1/weights/Initializer/truncated_normal*
T0*5
_class+
)'loc:@generator/G_MODEL/D/Conv_1/weights*
use_locking(*(
_output_shapes
:*
validate_shape(
С
'generator/G_MODEL/D/Conv_1/weights/readIdentity"generator/G_MODEL/D/Conv_1/weights*
T0*(
_output_shapes
:*5
_class+
)'loc:@generator/G_MODEL/D/Conv_1/weights
y
(generator/G_MODEL/D/Conv_1/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
С
!generator/G_MODEL/D/Conv_1/Conv2DConv2Dgenerator/G_MODEL/D/MirrorPad_1'generator/G_MODEL/D/Conv_1/weights/read*
explicit_paddings
 *9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0*
	dilations
*
use_cudnn_on_gpu(*
paddingVALID*
data_formatNHWC*
strides

О
6generator/G_MODEL/D/LayerNorm_1/beta/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *7
_class-
+)loc:@generator/G_MODEL/D/LayerNorm_1/beta*
dtype0
Ы
$generator/G_MODEL/D/LayerNorm_1/beta
VariableV2*
shared_name *7
_class-
+)loc:@generator/G_MODEL/D/LayerNorm_1/beta*
	container *
dtype0*
shape:*
_output_shapes	
:

+generator/G_MODEL/D/LayerNorm_1/beta/AssignAssign$generator/G_MODEL/D/LayerNorm_1/beta6generator/G_MODEL/D/LayerNorm_1/beta/Initializer/zeros*
T0*7
_class-
+)loc:@generator/G_MODEL/D/LayerNorm_1/beta*
validate_shape(*
use_locking(*
_output_shapes	
:
К
)generator/G_MODEL/D/LayerNorm_1/beta/readIdentity$generator/G_MODEL/D/LayerNorm_1/beta*
_output_shapes	
:*7
_class-
+)loc:@generator/G_MODEL/D/LayerNorm_1/beta*
T0
П
6generator/G_MODEL/D/LayerNorm_1/gamma/Initializer/onesConst*
dtype0*8
_class.
,*loc:@generator/G_MODEL/D/LayerNorm_1/gamma*
valueB*  ?*
_output_shapes	
:
Э
%generator/G_MODEL/D/LayerNorm_1/gamma
VariableV2*
	container *8
_class.
,*loc:@generator/G_MODEL/D/LayerNorm_1/gamma*
shared_name *
dtype0*
_output_shapes	
:*
shape:

,generator/G_MODEL/D/LayerNorm_1/gamma/AssignAssign%generator/G_MODEL/D/LayerNorm_1/gamma6generator/G_MODEL/D/LayerNorm_1/gamma/Initializer/ones*
use_locking(*
_output_shapes	
:*
T0*8
_class.
,*loc:@generator/G_MODEL/D/LayerNorm_1/gamma*
validate_shape(
Н
*generator/G_MODEL/D/LayerNorm_1/gamma/readIdentity%generator/G_MODEL/D/LayerNorm_1/gamma*
_output_shapes	
:*8
_class.
,*loc:@generator/G_MODEL/D/LayerNorm_1/gamma*
T0

>generator/G_MODEL/D/LayerNorm_1/moments/mean/reduction_indicesConst*!
valueB"         *
dtype0*
_output_shapes
:
х
,generator/G_MODEL/D/LayerNorm_1/moments/meanMean!generator/G_MODEL/D/Conv_1/Conv2D>generator/G_MODEL/D/LayerNorm_1/moments/mean/reduction_indices*
	keep_dims(*
T0*

Tidx0*&
_output_shapes
:
Ѓ
4generator/G_MODEL/D/LayerNorm_1/moments/StopGradientStopGradient,generator/G_MODEL/D/LayerNorm_1/moments/mean*&
_output_shapes
:*
T0
ы
9generator/G_MODEL/D/LayerNorm_1/moments/SquaredDifferenceSquaredDifference!generator/G_MODEL/D/Conv_1/Conv2D4generator/G_MODEL/D/LayerNorm_1/moments/StopGradient*
T0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ

Bgenerator/G_MODEL/D/LayerNorm_1/moments/variance/reduction_indicesConst*!
valueB"         *
_output_shapes
:*
dtype0

0generator/G_MODEL/D/LayerNorm_1/moments/varianceMean9generator/G_MODEL/D/LayerNorm_1/moments/SquaredDifferenceBgenerator/G_MODEL/D/LayerNorm_1/moments/variance/reduction_indices*&
_output_shapes
:*
	keep_dims(*

Tidx0*
T0
t
/generator/G_MODEL/D/LayerNorm_1/batchnorm/add/yConst*
valueB
 *ЬМ+*
dtype0*
_output_shapes
: 
Ъ
-generator/G_MODEL/D/LayerNorm_1/batchnorm/addAddV20generator/G_MODEL/D/LayerNorm_1/moments/variance/generator/G_MODEL/D/LayerNorm_1/batchnorm/add/y*
T0*&
_output_shapes
:

/generator/G_MODEL/D/LayerNorm_1/batchnorm/RsqrtRsqrt-generator/G_MODEL/D/LayerNorm_1/batchnorm/add*&
_output_shapes
:*
T0
У
-generator/G_MODEL/D/LayerNorm_1/batchnorm/mulMul/generator/G_MODEL/D/LayerNorm_1/batchnorm/Rsqrt*generator/G_MODEL/D/LayerNorm_1/gamma/read*
T0*'
_output_shapes
:
Ь
/generator/G_MODEL/D/LayerNorm_1/batchnorm/mul_1Mul!generator/G_MODEL/D/Conv_1/Conv2D-generator/G_MODEL/D/LayerNorm_1/batchnorm/mul*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
Х
/generator/G_MODEL/D/LayerNorm_1/batchnorm/mul_2Mul,generator/G_MODEL/D/LayerNorm_1/moments/mean-generator/G_MODEL/D/LayerNorm_1/batchnorm/mul*
T0*'
_output_shapes
:
Т
-generator/G_MODEL/D/LayerNorm_1/batchnorm/subSub)generator/G_MODEL/D/LayerNorm_1/beta/read/generator/G_MODEL/D/LayerNorm_1/batchnorm/mul_2*'
_output_shapes
:*
T0
м
/generator/G_MODEL/D/LayerNorm_1/batchnorm/add_1AddV2/generator/G_MODEL/D/LayerNorm_1/batchnorm/mul_1-generator/G_MODEL/D/LayerNorm_1/batchnorm/sub*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0
Б
generator/G_MODEL/D/LeakyRelu_1	LeakyRelu/generator/G_MODEL/D/LayerNorm_1/batchnorm/add_1*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
alpha%ЭЬL>*
T0
x
generator/G_MODEL/E/ShapeShapegenerator/G_MODEL/D/LeakyRelu_1*
_output_shapes
:*
out_type0*
T0
q
'generator/G_MODEL/E/strided_slice/stackConst*
valueB:*
_output_shapes
:*
dtype0
s
)generator/G_MODEL/E/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
s
)generator/G_MODEL/E/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
н
!generator/G_MODEL/E/strided_sliceStridedSlicegenerator/G_MODEL/E/Shape'generator/G_MODEL/E/strided_slice/stack)generator/G_MODEL/E/strided_slice/stack_1)generator/G_MODEL/E/strided_slice/stack_2*
_output_shapes
: *
new_axis_mask *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *
end_mask *

begin_mask 
[
generator/G_MODEL/E/mul/xConst*
dtype0*
_output_shapes
: *
value	B :
}
generator/G_MODEL/E/mulMulgenerator/G_MODEL/E/mul/x!generator/G_MODEL/E/strided_slice*
_output_shapes
: *
T0
z
generator/G_MODEL/E/Shape_1Shapegenerator/G_MODEL/D/LeakyRelu_1*
_output_shapes
:*
T0*
out_type0
s
)generator/G_MODEL/E/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
u
+generator/G_MODEL/E/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
u
+generator/G_MODEL/E/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ч
#generator/G_MODEL/E/strided_slice_1StridedSlicegenerator/G_MODEL/E/Shape_1)generator/G_MODEL/E/strided_slice_1/stack+generator/G_MODEL/E/strided_slice_1/stack_1+generator/G_MODEL/E/strided_slice_1/stack_2*
new_axis_mask *
_output_shapes
: *
T0*
ellipsis_mask *

begin_mask *
end_mask *
Index0*
shrink_axis_mask
]
generator/G_MODEL/E/mul_1/xConst*
_output_shapes
: *
value	B :*
dtype0

generator/G_MODEL/E/mul_1Mulgenerator/G_MODEL/E/mul_1/x#generator/G_MODEL/E/strided_slice_1*
T0*
_output_shapes
: 

generator/G_MODEL/E/resize/sizePackgenerator/G_MODEL/E/mulgenerator/G_MODEL/E/mul_1*
_output_shapes
:*
T0*

axis *
N
№
)generator/G_MODEL/E/resize/ResizeBilinearResizeBilineargenerator/G_MODEL/D/LeakyRelu_1generator/G_MODEL/E/resize/size*
half_pixel_centers( *9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ*
T0*
align_corners( 

&generator/G_MODEL/E/MirrorPad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             
х
generator/G_MODEL/E/MirrorPad	MirrorPad)generator/G_MODEL/E/resize/ResizeBilinear&generator/G_MODEL/E/MirrorPad/paddings*
T0*
mode	REFLECT*
	Tpaddings0*9
_output_shapes'
%:#џџџџџџџџџџџџџџџџџџ
б
Cgenerator/G_MODEL/E/Conv/weights/Initializer/truncated_normal/shapeConst*
dtype0*%
valueB"         @   *
_output_shapes
:*3
_class)
'%loc:@generator/G_MODEL/E/Conv/weights
М
Bgenerator/G_MODEL/E/Conv/weights/Initializer/truncated_normal/meanConst*
_output_shapes
: *3
_class)
'%loc:@generator/G_MODEL/E/Conv/weights*
dtype0*
valueB
 *    
О
Dgenerator/G_MODEL/E/Conv/weights/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*3
_class)
'%loc:@generator/G_MODEL/E/Conv/weights*
valueB
 *B=
В
Mgenerator/G_MODEL/E/Conv/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalCgenerator/G_MODEL/E/Conv/weights/Initializer/truncated_normal/shape*
seed2 *

seed *3
_class)
'%loc:@generator/G_MODEL/E/Conv/weights*
dtype0*
T0*'
_output_shapes
:@
Ф
Agenerator/G_MODEL/E/Conv/weights/Initializer/truncated_normal/mulMulMgenerator/G_MODEL/E/Conv/weights/Initializer/truncated_normal/TruncatedNormalDgenerator/G_MODEL/E/Conv/weights/Initializer/truncated_normal/stddev*3
_class)
'%loc:@generator/G_MODEL/E/Conv/weights*'
_output_shapes
:@*
T0
В
=generator/G_MODEL/E/Conv/weights/Initializer/truncated_normalAddAgenerator/G_MODEL/E/Conv/weights/Initializer/truncated_normal/mulBgenerator/G_MODEL/E/Conv/weights/Initializer/truncated_normal/mean*
T0*3
_class)
'%loc:@generator/G_MODEL/E/Conv/weights*'
_output_shapes
:@
л
 generator/G_MODEL/E/Conv/weights
VariableV2*'
_output_shapes
:@*
dtype0*
shared_name *
shape:@*3
_class)
'%loc:@generator/G_MODEL/E/Conv/weights*
	container 
Ђ
'generator/G_MODEL/E/Conv/weights/AssignAssign generator/G_MODEL/E/Conv/weights=generator/G_MODEL/E/Conv/weights/Initializer/truncated_normal*3
_class)
'%loc:@generator/G_MODEL/E/Conv/weights*
T0*
validate_shape(*
use_locking(*'
_output_shapes
:@
К
%generator/G_MODEL/E/Conv/weights/readIdentity generator/G_MODEL/E/Conv/weights*
T0*3
_class)
'%loc:@generator/G_MODEL/E/Conv/weights*'
_output_shapes
:@
w
&generator/G_MODEL/E/Conv/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
К
generator/G_MODEL/E/Conv/Conv2DConv2Dgenerator/G_MODEL/E/MirrorPad%generator/G_MODEL/E/Conv/weights/read*
explicit_paddings
 *8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@*
data_formatNHWC*
T0*
paddingVALID*
strides
*
	dilations
*
use_cudnn_on_gpu(
И
4generator/G_MODEL/E/LayerNorm/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*5
_class+
)'loc:@generator/G_MODEL/E/LayerNorm/beta*
valueB@*    
Х
"generator/G_MODEL/E/LayerNorm/beta
VariableV2*
shared_name *
	container *
_output_shapes
:@*5
_class+
)'loc:@generator/G_MODEL/E/LayerNorm/beta*
shape:@*
dtype0

)generator/G_MODEL/E/LayerNorm/beta/AssignAssign"generator/G_MODEL/E/LayerNorm/beta4generator/G_MODEL/E/LayerNorm/beta/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
T0*
use_locking(*5
_class+
)'loc:@generator/G_MODEL/E/LayerNorm/beta
Г
'generator/G_MODEL/E/LayerNorm/beta/readIdentity"generator/G_MODEL/E/LayerNorm/beta*
T0*
_output_shapes
:@*5
_class+
)'loc:@generator/G_MODEL/E/LayerNorm/beta
Й
4generator/G_MODEL/E/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:@*6
_class,
*(loc:@generator/G_MODEL/E/LayerNorm/gamma*
valueB@*  ?
Ч
#generator/G_MODEL/E/LayerNorm/gamma
VariableV2*
	container *
dtype0*
shared_name *
shape:@*
_output_shapes
:@*6
_class,
*(loc:@generator/G_MODEL/E/LayerNorm/gamma

*generator/G_MODEL/E/LayerNorm/gamma/AssignAssign#generator/G_MODEL/E/LayerNorm/gamma4generator/G_MODEL/E/LayerNorm/gamma/Initializer/ones*
T0*
_output_shapes
:@*6
_class,
*(loc:@generator/G_MODEL/E/LayerNorm/gamma*
validate_shape(*
use_locking(
Ж
(generator/G_MODEL/E/LayerNorm/gamma/readIdentity#generator/G_MODEL/E/LayerNorm/gamma*6
_class,
*(loc:@generator/G_MODEL/E/LayerNorm/gamma*
T0*
_output_shapes
:@

<generator/G_MODEL/E/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
п
*generator/G_MODEL/E/LayerNorm/moments/meanMeangenerator/G_MODEL/E/Conv/Conv2D<generator/G_MODEL/E/LayerNorm/moments/mean/reduction_indices*
T0*
	keep_dims(*&
_output_shapes
:*

Tidx0

2generator/G_MODEL/E/LayerNorm/moments/StopGradientStopGradient*generator/G_MODEL/E/LayerNorm/moments/mean*&
_output_shapes
:*
T0
ф
7generator/G_MODEL/E/LayerNorm/moments/SquaredDifferenceSquaredDifferencegenerator/G_MODEL/E/Conv/Conv2D2generator/G_MODEL/E/LayerNorm/moments/StopGradient*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@*
T0

@generator/G_MODEL/E/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         
џ
.generator/G_MODEL/E/LayerNorm/moments/varianceMean7generator/G_MODEL/E/LayerNorm/moments/SquaredDifference@generator/G_MODEL/E/LayerNorm/moments/variance/reduction_indices*

Tidx0*
T0*
	keep_dims(*&
_output_shapes
:
r
-generator/G_MODEL/E/LayerNorm/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *ЬМ+
Ф
+generator/G_MODEL/E/LayerNorm/batchnorm/addAddV2.generator/G_MODEL/E/LayerNorm/moments/variance-generator/G_MODEL/E/LayerNorm/batchnorm/add/y*
T0*&
_output_shapes
:

-generator/G_MODEL/E/LayerNorm/batchnorm/RsqrtRsqrt+generator/G_MODEL/E/LayerNorm/batchnorm/add*
T0*&
_output_shapes
:
М
+generator/G_MODEL/E/LayerNorm/batchnorm/mulMul-generator/G_MODEL/E/LayerNorm/batchnorm/Rsqrt(generator/G_MODEL/E/LayerNorm/gamma/read*
T0*&
_output_shapes
:@
Х
-generator/G_MODEL/E/LayerNorm/batchnorm/mul_1Mulgenerator/G_MODEL/E/Conv/Conv2D+generator/G_MODEL/E/LayerNorm/batchnorm/mul*
T0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@
О
-generator/G_MODEL/E/LayerNorm/batchnorm/mul_2Mul*generator/G_MODEL/E/LayerNorm/moments/mean+generator/G_MODEL/E/LayerNorm/batchnorm/mul*&
_output_shapes
:@*
T0
Л
+generator/G_MODEL/E/LayerNorm/batchnorm/subSub'generator/G_MODEL/E/LayerNorm/beta/read-generator/G_MODEL/E/LayerNorm/batchnorm/mul_2*
T0*&
_output_shapes
:@
е
-generator/G_MODEL/E/LayerNorm/batchnorm/add_1AddV2-generator/G_MODEL/E/LayerNorm/batchnorm/mul_1+generator/G_MODEL/E/LayerNorm/batchnorm/sub*
T0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@
Ќ
generator/G_MODEL/E/LeakyRelu	LeakyRelu-generator/G_MODEL/E/LayerNorm/batchnorm/add_1*
alpha%ЭЬL>*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@*
T0

(generator/G_MODEL/E/MirrorPad_1/paddingsConst*9
value0B."                             *
_output_shapes

:*
dtype0
м
generator/G_MODEL/E/MirrorPad_1	MirrorPadgenerator/G_MODEL/E/LeakyRelu(generator/G_MODEL/E/MirrorPad_1/paddings*
	Tpaddings0*
T0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@*
mode	REFLECT
е
Egenerator/G_MODEL/E/Conv_1/weights/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*5
_class+
)'loc:@generator/G_MODEL/E/Conv_1/weights*%
valueB"      @   @   
Р
Dgenerator/G_MODEL/E/Conv_1/weights/Initializer/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *5
_class+
)'loc:@generator/G_MODEL/E/Conv_1/weights*
dtype0
Т
Fgenerator/G_MODEL/E/Conv_1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *=*
dtype0*5
_class+
)'loc:@generator/G_MODEL/E/Conv_1/weights*
_output_shapes
: 
З
Ogenerator/G_MODEL/E/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalEgenerator/G_MODEL/E/Conv_1/weights/Initializer/truncated_normal/shape*
T0*

seed *5
_class+
)'loc:@generator/G_MODEL/E/Conv_1/weights*
dtype0*
seed2 *&
_output_shapes
:@@
Ы
Cgenerator/G_MODEL/E/Conv_1/weights/Initializer/truncated_normal/mulMulOgenerator/G_MODEL/E/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalFgenerator/G_MODEL/E/Conv_1/weights/Initializer/truncated_normal/stddev*&
_output_shapes
:@@*
T0*5
_class+
)'loc:@generator/G_MODEL/E/Conv_1/weights
Й
?generator/G_MODEL/E/Conv_1/weights/Initializer/truncated_normalAddCgenerator/G_MODEL/E/Conv_1/weights/Initializer/truncated_normal/mulDgenerator/G_MODEL/E/Conv_1/weights/Initializer/truncated_normal/mean*5
_class+
)'loc:@generator/G_MODEL/E/Conv_1/weights*&
_output_shapes
:@@*
T0
н
"generator/G_MODEL/E/Conv_1/weights
VariableV2*
shape:@@*
	container *
shared_name *
dtype0*5
_class+
)'loc:@generator/G_MODEL/E/Conv_1/weights*&
_output_shapes
:@@
Љ
)generator/G_MODEL/E/Conv_1/weights/AssignAssign"generator/G_MODEL/E/Conv_1/weights?generator/G_MODEL/E/Conv_1/weights/Initializer/truncated_normal*5
_class+
)'loc:@generator/G_MODEL/E/Conv_1/weights*
use_locking(*
validate_shape(*&
_output_shapes
:@@*
T0
П
'generator/G_MODEL/E/Conv_1/weights/readIdentity"generator/G_MODEL/E/Conv_1/weights*&
_output_shapes
:@@*5
_class+
)'loc:@generator/G_MODEL/E/Conv_1/weights*
T0
y
(generator/G_MODEL/E/Conv_1/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
Р
!generator/G_MODEL/E/Conv_1/Conv2DConv2Dgenerator/G_MODEL/E/MirrorPad_1'generator/G_MODEL/E/Conv_1/weights/read*
paddingVALID*
explicit_paddings
 *
data_formatNHWC*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@*
use_cudnn_on_gpu(*
	dilations
*
strides
*
T0
М
6generator/G_MODEL/E/LayerNorm_1/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *7
_class-
+)loc:@generator/G_MODEL/E/LayerNorm_1/beta
Щ
$generator/G_MODEL/E/LayerNorm_1/beta
VariableV2*7
_class-
+)loc:@generator/G_MODEL/E/LayerNorm_1/beta*
shared_name *
shape:@*
dtype0*
_output_shapes
:@*
	container 

+generator/G_MODEL/E/LayerNorm_1/beta/AssignAssign$generator/G_MODEL/E/LayerNorm_1/beta6generator/G_MODEL/E/LayerNorm_1/beta/Initializer/zeros*
use_locking(*7
_class-
+)loc:@generator/G_MODEL/E/LayerNorm_1/beta*
_output_shapes
:@*
validate_shape(*
T0
Й
)generator/G_MODEL/E/LayerNorm_1/beta/readIdentity$generator/G_MODEL/E/LayerNorm_1/beta*
T0*7
_class-
+)loc:@generator/G_MODEL/E/LayerNorm_1/beta*
_output_shapes
:@
Н
6generator/G_MODEL/E/LayerNorm_1/gamma/Initializer/onesConst*
dtype0*8
_class.
,*loc:@generator/G_MODEL/E/LayerNorm_1/gamma*
valueB@*  ?*
_output_shapes
:@
Ы
%generator/G_MODEL/E/LayerNorm_1/gamma
VariableV2*
dtype0*
_output_shapes
:@*
shape:@*8
_class.
,*loc:@generator/G_MODEL/E/LayerNorm_1/gamma*
shared_name *
	container 

,generator/G_MODEL/E/LayerNorm_1/gamma/AssignAssign%generator/G_MODEL/E/LayerNorm_1/gamma6generator/G_MODEL/E/LayerNorm_1/gamma/Initializer/ones*
T0*8
_class.
,*loc:@generator/G_MODEL/E/LayerNorm_1/gamma*
use_locking(*
validate_shape(*
_output_shapes
:@
М
*generator/G_MODEL/E/LayerNorm_1/gamma/readIdentity%generator/G_MODEL/E/LayerNorm_1/gamma*
T0*
_output_shapes
:@*8
_class.
,*loc:@generator/G_MODEL/E/LayerNorm_1/gamma

>generator/G_MODEL/E/LayerNorm_1/moments/mean/reduction_indicesConst*
dtype0*!
valueB"         *
_output_shapes
:
х
,generator/G_MODEL/E/LayerNorm_1/moments/meanMean!generator/G_MODEL/E/Conv_1/Conv2D>generator/G_MODEL/E/LayerNorm_1/moments/mean/reduction_indices*
T0*

Tidx0*&
_output_shapes
:*
	keep_dims(
Ѓ
4generator/G_MODEL/E/LayerNorm_1/moments/StopGradientStopGradient,generator/G_MODEL/E/LayerNorm_1/moments/mean*
T0*&
_output_shapes
:
ъ
9generator/G_MODEL/E/LayerNorm_1/moments/SquaredDifferenceSquaredDifference!generator/G_MODEL/E/Conv_1/Conv2D4generator/G_MODEL/E/LayerNorm_1/moments/StopGradient*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@*
T0

Bgenerator/G_MODEL/E/LayerNorm_1/moments/variance/reduction_indicesConst*!
valueB"         *
_output_shapes
:*
dtype0

0generator/G_MODEL/E/LayerNorm_1/moments/varianceMean9generator/G_MODEL/E/LayerNorm_1/moments/SquaredDifferenceBgenerator/G_MODEL/E/LayerNorm_1/moments/variance/reduction_indices*

Tidx0*
	keep_dims(*&
_output_shapes
:*
T0
t
/generator/G_MODEL/E/LayerNorm_1/batchnorm/add/yConst*
valueB
 *ЬМ+*
dtype0*
_output_shapes
: 
Ъ
-generator/G_MODEL/E/LayerNorm_1/batchnorm/addAddV20generator/G_MODEL/E/LayerNorm_1/moments/variance/generator/G_MODEL/E/LayerNorm_1/batchnorm/add/y*
T0*&
_output_shapes
:

/generator/G_MODEL/E/LayerNorm_1/batchnorm/RsqrtRsqrt-generator/G_MODEL/E/LayerNorm_1/batchnorm/add*&
_output_shapes
:*
T0
Т
-generator/G_MODEL/E/LayerNorm_1/batchnorm/mulMul/generator/G_MODEL/E/LayerNorm_1/batchnorm/Rsqrt*generator/G_MODEL/E/LayerNorm_1/gamma/read*
T0*&
_output_shapes
:@
Ы
/generator/G_MODEL/E/LayerNorm_1/batchnorm/mul_1Mul!generator/G_MODEL/E/Conv_1/Conv2D-generator/G_MODEL/E/LayerNorm_1/batchnorm/mul*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@*
T0
Ф
/generator/G_MODEL/E/LayerNorm_1/batchnorm/mul_2Mul,generator/G_MODEL/E/LayerNorm_1/moments/mean-generator/G_MODEL/E/LayerNorm_1/batchnorm/mul*
T0*&
_output_shapes
:@
С
-generator/G_MODEL/E/LayerNorm_1/batchnorm/subSub)generator/G_MODEL/E/LayerNorm_1/beta/read/generator/G_MODEL/E/LayerNorm_1/batchnorm/mul_2*
T0*&
_output_shapes
:@
л
/generator/G_MODEL/E/LayerNorm_1/batchnorm/add_1AddV2/generator/G_MODEL/E/LayerNorm_1/batchnorm/mul_1-generator/G_MODEL/E/LayerNorm_1/batchnorm/sub*
T0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@
А
generator/G_MODEL/E/LeakyRelu_1	LeakyRelu/generator/G_MODEL/E/LayerNorm_1/batchnorm/add_1*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@*
T0*
alpha%ЭЬL>

(generator/G_MODEL/E/MirrorPad_2/paddingsConst*
dtype0*9
value0B."                             *
_output_shapes

:
о
generator/G_MODEL/E/MirrorPad_2	MirrorPadgenerator/G_MODEL/E/LeakyRelu_1(generator/G_MODEL/E/MirrorPad_2/paddings*
mode	REFLECT*
T0*
	Tpaddings0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ@
е
Egenerator/G_MODEL/E/Conv_2/weights/Initializer/truncated_normal/shapeConst*5
_class+
)'loc:@generator/G_MODEL/E/Conv_2/weights*
_output_shapes
:*
dtype0*%
valueB"      @       
Р
Dgenerator/G_MODEL/E/Conv_2/weights/Initializer/truncated_normal/meanConst*5
_class+
)'loc:@generator/G_MODEL/E/Conv_2/weights*
_output_shapes
: *
valueB
 *    *
dtype0
Т
Fgenerator/G_MODEL/E/Conv_2/weights/Initializer/truncated_normal/stddevConst*
valueB
 *юры<*
_output_shapes
: *
dtype0*5
_class+
)'loc:@generator/G_MODEL/E/Conv_2/weights
З
Ogenerator/G_MODEL/E/Conv_2/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalEgenerator/G_MODEL/E/Conv_2/weights/Initializer/truncated_normal/shape*

seed *&
_output_shapes
:@ *
T0*
seed2 *
dtype0*5
_class+
)'loc:@generator/G_MODEL/E/Conv_2/weights
Ы
Cgenerator/G_MODEL/E/Conv_2/weights/Initializer/truncated_normal/mulMulOgenerator/G_MODEL/E/Conv_2/weights/Initializer/truncated_normal/TruncatedNormalFgenerator/G_MODEL/E/Conv_2/weights/Initializer/truncated_normal/stddev*
T0*5
_class+
)'loc:@generator/G_MODEL/E/Conv_2/weights*&
_output_shapes
:@ 
Й
?generator/G_MODEL/E/Conv_2/weights/Initializer/truncated_normalAddCgenerator/G_MODEL/E/Conv_2/weights/Initializer/truncated_normal/mulDgenerator/G_MODEL/E/Conv_2/weights/Initializer/truncated_normal/mean*5
_class+
)'loc:@generator/G_MODEL/E/Conv_2/weights*&
_output_shapes
:@ *
T0
н
"generator/G_MODEL/E/Conv_2/weights
VariableV2*
shared_name *5
_class+
)'loc:@generator/G_MODEL/E/Conv_2/weights*&
_output_shapes
:@ *
dtype0*
	container *
shape:@ 
Љ
)generator/G_MODEL/E/Conv_2/weights/AssignAssign"generator/G_MODEL/E/Conv_2/weights?generator/G_MODEL/E/Conv_2/weights/Initializer/truncated_normal*
use_locking(*
T0*
validate_shape(*&
_output_shapes
:@ *5
_class+
)'loc:@generator/G_MODEL/E/Conv_2/weights
П
'generator/G_MODEL/E/Conv_2/weights/readIdentity"generator/G_MODEL/E/Conv_2/weights*5
_class+
)'loc:@generator/G_MODEL/E/Conv_2/weights*&
_output_shapes
:@ *
T0
y
(generator/G_MODEL/E/Conv_2/dilation_rateConst*
valueB"      *
_output_shapes
:*
dtype0
Р
!generator/G_MODEL/E/Conv_2/Conv2DConv2Dgenerator/G_MODEL/E/MirrorPad_2'generator/G_MODEL/E/Conv_2/weights/read*
explicit_paddings
 *
strides
*
	dilations
*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ *
data_formatNHWC*
T0*
use_cudnn_on_gpu(*
paddingVALID
М
6generator/G_MODEL/E/LayerNorm_2/beta/Initializer/zerosConst*
_output_shapes
: *
valueB *    *7
_class-
+)loc:@generator/G_MODEL/E/LayerNorm_2/beta*
dtype0
Щ
$generator/G_MODEL/E/LayerNorm_2/beta
VariableV2*
shared_name *
shape: *7
_class-
+)loc:@generator/G_MODEL/E/LayerNorm_2/beta*
	container *
dtype0*
_output_shapes
: 

+generator/G_MODEL/E/LayerNorm_2/beta/AssignAssign$generator/G_MODEL/E/LayerNorm_2/beta6generator/G_MODEL/E/LayerNorm_2/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@generator/G_MODEL/E/LayerNorm_2/beta*
_output_shapes
: 
Й
)generator/G_MODEL/E/LayerNorm_2/beta/readIdentity$generator/G_MODEL/E/LayerNorm_2/beta*
_output_shapes
: *7
_class-
+)loc:@generator/G_MODEL/E/LayerNorm_2/beta*
T0
Н
6generator/G_MODEL/E/LayerNorm_2/gamma/Initializer/onesConst*
dtype0*
valueB *  ?*8
_class.
,*loc:@generator/G_MODEL/E/LayerNorm_2/gamma*
_output_shapes
: 
Ы
%generator/G_MODEL/E/LayerNorm_2/gamma
VariableV2*
	container *
shape: *
_output_shapes
: *
dtype0*
shared_name *8
_class.
,*loc:@generator/G_MODEL/E/LayerNorm_2/gamma

,generator/G_MODEL/E/LayerNorm_2/gamma/AssignAssign%generator/G_MODEL/E/LayerNorm_2/gamma6generator/G_MODEL/E/LayerNorm_2/gamma/Initializer/ones*
T0*
validate_shape(*
use_locking(*8
_class.
,*loc:@generator/G_MODEL/E/LayerNorm_2/gamma*
_output_shapes
: 
М
*generator/G_MODEL/E/LayerNorm_2/gamma/readIdentity%generator/G_MODEL/E/LayerNorm_2/gamma*8
_class.
,*loc:@generator/G_MODEL/E/LayerNorm_2/gamma*
T0*
_output_shapes
: 

>generator/G_MODEL/E/LayerNorm_2/moments/mean/reduction_indicesConst*!
valueB"         *
dtype0*
_output_shapes
:
х
,generator/G_MODEL/E/LayerNorm_2/moments/meanMean!generator/G_MODEL/E/Conv_2/Conv2D>generator/G_MODEL/E/LayerNorm_2/moments/mean/reduction_indices*

Tidx0*&
_output_shapes
:*
	keep_dims(*
T0
Ѓ
4generator/G_MODEL/E/LayerNorm_2/moments/StopGradientStopGradient,generator/G_MODEL/E/LayerNorm_2/moments/mean*
T0*&
_output_shapes
:
ъ
9generator/G_MODEL/E/LayerNorm_2/moments/SquaredDifferenceSquaredDifference!generator/G_MODEL/E/Conv_2/Conv2D4generator/G_MODEL/E/LayerNorm_2/moments/StopGradient*
T0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ 

Bgenerator/G_MODEL/E/LayerNorm_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         

0generator/G_MODEL/E/LayerNorm_2/moments/varianceMean9generator/G_MODEL/E/LayerNorm_2/moments/SquaredDifferenceBgenerator/G_MODEL/E/LayerNorm_2/moments/variance/reduction_indices*

Tidx0*&
_output_shapes
:*
T0*
	keep_dims(
t
/generator/G_MODEL/E/LayerNorm_2/batchnorm/add/yConst*
valueB
 *ЬМ+*
_output_shapes
: *
dtype0
Ъ
-generator/G_MODEL/E/LayerNorm_2/batchnorm/addAddV20generator/G_MODEL/E/LayerNorm_2/moments/variance/generator/G_MODEL/E/LayerNorm_2/batchnorm/add/y*&
_output_shapes
:*
T0

/generator/G_MODEL/E/LayerNorm_2/batchnorm/RsqrtRsqrt-generator/G_MODEL/E/LayerNorm_2/batchnorm/add*&
_output_shapes
:*
T0
Т
-generator/G_MODEL/E/LayerNorm_2/batchnorm/mulMul/generator/G_MODEL/E/LayerNorm_2/batchnorm/Rsqrt*generator/G_MODEL/E/LayerNorm_2/gamma/read*
T0*&
_output_shapes
: 
Ы
/generator/G_MODEL/E/LayerNorm_2/batchnorm/mul_1Mul!generator/G_MODEL/E/Conv_2/Conv2D-generator/G_MODEL/E/LayerNorm_2/batchnorm/mul*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ *
T0
Ф
/generator/G_MODEL/E/LayerNorm_2/batchnorm/mul_2Mul,generator/G_MODEL/E/LayerNorm_2/moments/mean-generator/G_MODEL/E/LayerNorm_2/batchnorm/mul*&
_output_shapes
: *
T0
С
-generator/G_MODEL/E/LayerNorm_2/batchnorm/subSub)generator/G_MODEL/E/LayerNorm_2/beta/read/generator/G_MODEL/E/LayerNorm_2/batchnorm/mul_2*
T0*&
_output_shapes
: 
л
/generator/G_MODEL/E/LayerNorm_2/batchnorm/add_1AddV2/generator/G_MODEL/E/LayerNorm_2/batchnorm/mul_1-generator/G_MODEL/E/LayerNorm_2/batchnorm/sub*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ *
T0
А
generator/G_MODEL/E/LeakyRelu_2	LeakyRelu/generator/G_MODEL/E/LayerNorm_2/batchnorm/add_1*
T0*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ *
alpha%ЭЬL>
с
Kgenerator/G_MODEL/out_layer/Conv/weights/Initializer/truncated_normal/shapeConst*;
_class1
/-loc:@generator/G_MODEL/out_layer/Conv/weights*
dtype0*
_output_shapes
:*%
valueB"             
Ь
Jgenerator/G_MODEL/out_layer/Conv/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *;
_class1
/-loc:@generator/G_MODEL/out_layer/Conv/weights*
dtype0*
_output_shapes
: 
Ю
Lgenerator/G_MODEL/out_layer/Conv/weights/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *Eё>*;
_class1
/-loc:@generator/G_MODEL/out_layer/Conv/weights*
dtype0
Щ
Ugenerator/G_MODEL/out_layer/Conv/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalKgenerator/G_MODEL/out_layer/Conv/weights/Initializer/truncated_normal/shape*;
_class1
/-loc:@generator/G_MODEL/out_layer/Conv/weights*

seed *
dtype0*
seed2 *&
_output_shapes
: *
T0
у
Igenerator/G_MODEL/out_layer/Conv/weights/Initializer/truncated_normal/mulMulUgenerator/G_MODEL/out_layer/Conv/weights/Initializer/truncated_normal/TruncatedNormalLgenerator/G_MODEL/out_layer/Conv/weights/Initializer/truncated_normal/stddev*;
_class1
/-loc:@generator/G_MODEL/out_layer/Conv/weights*
T0*&
_output_shapes
: 
б
Egenerator/G_MODEL/out_layer/Conv/weights/Initializer/truncated_normalAddIgenerator/G_MODEL/out_layer/Conv/weights/Initializer/truncated_normal/mulJgenerator/G_MODEL/out_layer/Conv/weights/Initializer/truncated_normal/mean*
T0*;
_class1
/-loc:@generator/G_MODEL/out_layer/Conv/weights*&
_output_shapes
: 
щ
(generator/G_MODEL/out_layer/Conv/weights
VariableV2*
shape: *
shared_name *
	container *
dtype0*&
_output_shapes
: *;
_class1
/-loc:@generator/G_MODEL/out_layer/Conv/weights
С
/generator/G_MODEL/out_layer/Conv/weights/AssignAssign(generator/G_MODEL/out_layer/Conv/weightsEgenerator/G_MODEL/out_layer/Conv/weights/Initializer/truncated_normal*;
_class1
/-loc:@generator/G_MODEL/out_layer/Conv/weights*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: 
б
-generator/G_MODEL/out_layer/Conv/weights/readIdentity(generator/G_MODEL/out_layer/Conv/weights*;
_class1
/-loc:@generator/G_MODEL/out_layer/Conv/weights*
T0*&
_output_shapes
: 

.generator/G_MODEL/out_layer/Conv/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
Ь
'generator/G_MODEL/out_layer/Conv/Conv2DConv2Dgenerator/G_MODEL/E/LeakyRelu_2-generator/G_MODEL/out_layer/Conv/weights/read*
strides
*
data_formatNHWC*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ*
explicit_paddings
 *
T0*
	dilations
*
paddingVALID*
use_cudnn_on_gpu(

 generator/G_MODEL/out_layer/TanhTanh'generator/G_MODEL/out_layer/Conv/Conv2D*8
_output_shapes&
$:"џџџџџџџџџџџџџџџџџџ*
T0
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
_output_shapes
: *
dtype0

save/SaveV2/tensor_namesConst*
dtype0*Х
valueЛBИMB generator/G_MODEL/A/Conv/weightsB"generator/G_MODEL/A/Conv_1/weightsB"generator/G_MODEL/A/Conv_2/weightsB"generator/G_MODEL/A/LayerNorm/betaB#generator/G_MODEL/A/LayerNorm/gammaB$generator/G_MODEL/A/LayerNorm_1/betaB%generator/G_MODEL/A/LayerNorm_1/gammaB$generator/G_MODEL/A/LayerNorm_2/betaB%generator/G_MODEL/A/LayerNorm_2/gammaB generator/G_MODEL/B/Conv/weightsB"generator/G_MODEL/B/Conv_1/weightsB"generator/G_MODEL/B/LayerNorm/betaB#generator/G_MODEL/B/LayerNorm/gammaB$generator/G_MODEL/B/LayerNorm_1/betaB%generator/G_MODEL/B/LayerNorm_1/gammaB generator/G_MODEL/C/Conv/weightsB"generator/G_MODEL/C/Conv_1/weightsB"generator/G_MODEL/C/LayerNorm/betaB#generator/G_MODEL/C/LayerNorm/gammaB$generator/G_MODEL/C/LayerNorm_1/betaB%generator/G_MODEL/C/LayerNorm_1/gammaBgenerator/G_MODEL/C/r1/1/betaBgenerator/G_MODEL/C/r1/1/gammaBgenerator/G_MODEL/C/r1/2/betaBgenerator/G_MODEL/C/r1/2/gammaB#generator/G_MODEL/C/r1/Conv/weightsB%generator/G_MODEL/C/r1/Conv_1/weightsB%generator/G_MODEL/C/r1/LayerNorm/betaB&generator/G_MODEL/C/r1/LayerNorm/gammaBgenerator/G_MODEL/C/r1/r1/biasBgenerator/G_MODEL/C/r1/r1/wBgenerator/G_MODEL/C/r2/1/betaBgenerator/G_MODEL/C/r2/1/gammaBgenerator/G_MODEL/C/r2/2/betaBgenerator/G_MODEL/C/r2/2/gammaB#generator/G_MODEL/C/r2/Conv/weightsB%generator/G_MODEL/C/r2/Conv_1/weightsB%generator/G_MODEL/C/r2/LayerNorm/betaB&generator/G_MODEL/C/r2/LayerNorm/gammaBgenerator/G_MODEL/C/r2/r2/biasBgenerator/G_MODEL/C/r2/r2/wBgenerator/G_MODEL/C/r3/1/betaBgenerator/G_MODEL/C/r3/1/gammaBgenerator/G_MODEL/C/r3/2/betaBgenerator/G_MODEL/C/r3/2/gammaB#generator/G_MODEL/C/r3/Conv/weightsB%generator/G_MODEL/C/r3/Conv_1/weightsB%generator/G_MODEL/C/r3/LayerNorm/betaB&generator/G_MODEL/C/r3/LayerNorm/gammaBgenerator/G_MODEL/C/r3/r3/biasBgenerator/G_MODEL/C/r3/r3/wBgenerator/G_MODEL/C/r4/1/betaBgenerator/G_MODEL/C/r4/1/gammaBgenerator/G_MODEL/C/r4/2/betaBgenerator/G_MODEL/C/r4/2/gammaB#generator/G_MODEL/C/r4/Conv/weightsB%generator/G_MODEL/C/r4/Conv_1/weightsB%generator/G_MODEL/C/r4/LayerNorm/betaB&generator/G_MODEL/C/r4/LayerNorm/gammaBgenerator/G_MODEL/C/r4/r4/biasBgenerator/G_MODEL/C/r4/r4/wB generator/G_MODEL/D/Conv/weightsB"generator/G_MODEL/D/Conv_1/weightsB"generator/G_MODEL/D/LayerNorm/betaB#generator/G_MODEL/D/LayerNorm/gammaB$generator/G_MODEL/D/LayerNorm_1/betaB%generator/G_MODEL/D/LayerNorm_1/gammaB generator/G_MODEL/E/Conv/weightsB"generator/G_MODEL/E/Conv_1/weightsB"generator/G_MODEL/E/Conv_2/weightsB"generator/G_MODEL/E/LayerNorm/betaB#generator/G_MODEL/E/LayerNorm/gammaB$generator/G_MODEL/E/LayerNorm_1/betaB%generator/G_MODEL/E/LayerNorm_1/gammaB$generator/G_MODEL/E/LayerNorm_2/betaB%generator/G_MODEL/E/LayerNorm_2/gammaB(generator/G_MODEL/out_layer/Conv/weights*
_output_shapes
:M

save/SaveV2/shape_and_slicesConst*
_output_shapes
:M*
dtype0*Џ
valueЅBЂMB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
ц
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices generator/G_MODEL/A/Conv/weights"generator/G_MODEL/A/Conv_1/weights"generator/G_MODEL/A/Conv_2/weights"generator/G_MODEL/A/LayerNorm/beta#generator/G_MODEL/A/LayerNorm/gamma$generator/G_MODEL/A/LayerNorm_1/beta%generator/G_MODEL/A/LayerNorm_1/gamma$generator/G_MODEL/A/LayerNorm_2/beta%generator/G_MODEL/A/LayerNorm_2/gamma generator/G_MODEL/B/Conv/weights"generator/G_MODEL/B/Conv_1/weights"generator/G_MODEL/B/LayerNorm/beta#generator/G_MODEL/B/LayerNorm/gamma$generator/G_MODEL/B/LayerNorm_1/beta%generator/G_MODEL/B/LayerNorm_1/gamma generator/G_MODEL/C/Conv/weights"generator/G_MODEL/C/Conv_1/weights"generator/G_MODEL/C/LayerNorm/beta#generator/G_MODEL/C/LayerNorm/gamma$generator/G_MODEL/C/LayerNorm_1/beta%generator/G_MODEL/C/LayerNorm_1/gammagenerator/G_MODEL/C/r1/1/betagenerator/G_MODEL/C/r1/1/gammagenerator/G_MODEL/C/r1/2/betagenerator/G_MODEL/C/r1/2/gamma#generator/G_MODEL/C/r1/Conv/weights%generator/G_MODEL/C/r1/Conv_1/weights%generator/G_MODEL/C/r1/LayerNorm/beta&generator/G_MODEL/C/r1/LayerNorm/gammagenerator/G_MODEL/C/r1/r1/biasgenerator/G_MODEL/C/r1/r1/wgenerator/G_MODEL/C/r2/1/betagenerator/G_MODEL/C/r2/1/gammagenerator/G_MODEL/C/r2/2/betagenerator/G_MODEL/C/r2/2/gamma#generator/G_MODEL/C/r2/Conv/weights%generator/G_MODEL/C/r2/Conv_1/weights%generator/G_MODEL/C/r2/LayerNorm/beta&generator/G_MODEL/C/r2/LayerNorm/gammagenerator/G_MODEL/C/r2/r2/biasgenerator/G_MODEL/C/r2/r2/wgenerator/G_MODEL/C/r3/1/betagenerator/G_MODEL/C/r3/1/gammagenerator/G_MODEL/C/r3/2/betagenerator/G_MODEL/C/r3/2/gamma#generator/G_MODEL/C/r3/Conv/weights%generator/G_MODEL/C/r3/Conv_1/weights%generator/G_MODEL/C/r3/LayerNorm/beta&generator/G_MODEL/C/r3/LayerNorm/gammagenerator/G_MODEL/C/r3/r3/biasgenerator/G_MODEL/C/r3/r3/wgenerator/G_MODEL/C/r4/1/betagenerator/G_MODEL/C/r4/1/gammagenerator/G_MODEL/C/r4/2/betagenerator/G_MODEL/C/r4/2/gamma#generator/G_MODEL/C/r4/Conv/weights%generator/G_MODEL/C/r4/Conv_1/weights%generator/G_MODEL/C/r4/LayerNorm/beta&generator/G_MODEL/C/r4/LayerNorm/gammagenerator/G_MODEL/C/r4/r4/biasgenerator/G_MODEL/C/r4/r4/w generator/G_MODEL/D/Conv/weights"generator/G_MODEL/D/Conv_1/weights"generator/G_MODEL/D/LayerNorm/beta#generator/G_MODEL/D/LayerNorm/gamma$generator/G_MODEL/D/LayerNorm_1/beta%generator/G_MODEL/D/LayerNorm_1/gamma generator/G_MODEL/E/Conv/weights"generator/G_MODEL/E/Conv_1/weights"generator/G_MODEL/E/Conv_2/weights"generator/G_MODEL/E/LayerNorm/beta#generator/G_MODEL/E/LayerNorm/gamma$generator/G_MODEL/E/LayerNorm_1/beta%generator/G_MODEL/E/LayerNorm_1/gamma$generator/G_MODEL/E/LayerNorm_2/beta%generator/G_MODEL/E/LayerNorm_2/gamma(generator/G_MODEL/out_layer/Conv/weights*[
dtypesQ
O2M
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
Є
save/RestoreV2/tensor_namesConst"/device:CPU:0*Х
valueЛBИMB generator/G_MODEL/A/Conv/weightsB"generator/G_MODEL/A/Conv_1/weightsB"generator/G_MODEL/A/Conv_2/weightsB"generator/G_MODEL/A/LayerNorm/betaB#generator/G_MODEL/A/LayerNorm/gammaB$generator/G_MODEL/A/LayerNorm_1/betaB%generator/G_MODEL/A/LayerNorm_1/gammaB$generator/G_MODEL/A/LayerNorm_2/betaB%generator/G_MODEL/A/LayerNorm_2/gammaB generator/G_MODEL/B/Conv/weightsB"generator/G_MODEL/B/Conv_1/weightsB"generator/G_MODEL/B/LayerNorm/betaB#generator/G_MODEL/B/LayerNorm/gammaB$generator/G_MODEL/B/LayerNorm_1/betaB%generator/G_MODEL/B/LayerNorm_1/gammaB generator/G_MODEL/C/Conv/weightsB"generator/G_MODEL/C/Conv_1/weightsB"generator/G_MODEL/C/LayerNorm/betaB#generator/G_MODEL/C/LayerNorm/gammaB$generator/G_MODEL/C/LayerNorm_1/betaB%generator/G_MODEL/C/LayerNorm_1/gammaBgenerator/G_MODEL/C/r1/1/betaBgenerator/G_MODEL/C/r1/1/gammaBgenerator/G_MODEL/C/r1/2/betaBgenerator/G_MODEL/C/r1/2/gammaB#generator/G_MODEL/C/r1/Conv/weightsB%generator/G_MODEL/C/r1/Conv_1/weightsB%generator/G_MODEL/C/r1/LayerNorm/betaB&generator/G_MODEL/C/r1/LayerNorm/gammaBgenerator/G_MODEL/C/r1/r1/biasBgenerator/G_MODEL/C/r1/r1/wBgenerator/G_MODEL/C/r2/1/betaBgenerator/G_MODEL/C/r2/1/gammaBgenerator/G_MODEL/C/r2/2/betaBgenerator/G_MODEL/C/r2/2/gammaB#generator/G_MODEL/C/r2/Conv/weightsB%generator/G_MODEL/C/r2/Conv_1/weightsB%generator/G_MODEL/C/r2/LayerNorm/betaB&generator/G_MODEL/C/r2/LayerNorm/gammaBgenerator/G_MODEL/C/r2/r2/biasBgenerator/G_MODEL/C/r2/r2/wBgenerator/G_MODEL/C/r3/1/betaBgenerator/G_MODEL/C/r3/1/gammaBgenerator/G_MODEL/C/r3/2/betaBgenerator/G_MODEL/C/r3/2/gammaB#generator/G_MODEL/C/r3/Conv/weightsB%generator/G_MODEL/C/r3/Conv_1/weightsB%generator/G_MODEL/C/r3/LayerNorm/betaB&generator/G_MODEL/C/r3/LayerNorm/gammaBgenerator/G_MODEL/C/r3/r3/biasBgenerator/G_MODEL/C/r3/r3/wBgenerator/G_MODEL/C/r4/1/betaBgenerator/G_MODEL/C/r4/1/gammaBgenerator/G_MODEL/C/r4/2/betaBgenerator/G_MODEL/C/r4/2/gammaB#generator/G_MODEL/C/r4/Conv/weightsB%generator/G_MODEL/C/r4/Conv_1/weightsB%generator/G_MODEL/C/r4/LayerNorm/betaB&generator/G_MODEL/C/r4/LayerNorm/gammaBgenerator/G_MODEL/C/r4/r4/biasBgenerator/G_MODEL/C/r4/r4/wB generator/G_MODEL/D/Conv/weightsB"generator/G_MODEL/D/Conv_1/weightsB"generator/G_MODEL/D/LayerNorm/betaB#generator/G_MODEL/D/LayerNorm/gammaB$generator/G_MODEL/D/LayerNorm_1/betaB%generator/G_MODEL/D/LayerNorm_1/gammaB generator/G_MODEL/E/Conv/weightsB"generator/G_MODEL/E/Conv_1/weightsB"generator/G_MODEL/E/Conv_2/weightsB"generator/G_MODEL/E/LayerNorm/betaB#generator/G_MODEL/E/LayerNorm/gammaB$generator/G_MODEL/E/LayerNorm_1/betaB%generator/G_MODEL/E/LayerNorm_1/gammaB$generator/G_MODEL/E/LayerNorm_2/betaB%generator/G_MODEL/E/LayerNorm_2/gammaB(generator/G_MODEL/out_layer/Conv/weights*
_output_shapes
:M*
dtype0

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*Џ
valueЅBЂMB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:M

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*Ъ
_output_shapesЗ
Д:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*[
dtypesQ
O2M
ж
save/AssignAssign generator/G_MODEL/A/Conv/weightssave/RestoreV2*3
_class)
'%loc:@generator/G_MODEL/A/Conv/weights*&
_output_shapes
: *
validate_shape(*
T0*
use_locking(
о
save/Assign_1Assign"generator/G_MODEL/A/Conv_1/weightssave/RestoreV2:1*
T0*&
_output_shapes
: @*
validate_shape(*
use_locking(*5
_class+
)'loc:@generator/G_MODEL/A/Conv_1/weights
о
save/Assign_2Assign"generator/G_MODEL/A/Conv_2/weightssave/RestoreV2:2*&
_output_shapes
:@@*
use_locking(*
T0*
validate_shape(*5
_class+
)'loc:@generator/G_MODEL/A/Conv_2/weights
в
save/Assign_3Assign"generator/G_MODEL/A/LayerNorm/betasave/RestoreV2:3*
_output_shapes
: *
validate_shape(*
use_locking(*5
_class+
)'loc:@generator/G_MODEL/A/LayerNorm/beta*
T0
д
save/Assign_4Assign#generator/G_MODEL/A/LayerNorm/gammasave/RestoreV2:4*
T0*
use_locking(*
_output_shapes
: *6
_class,
*(loc:@generator/G_MODEL/A/LayerNorm/gamma*
validate_shape(
ж
save/Assign_5Assign$generator/G_MODEL/A/LayerNorm_1/betasave/RestoreV2:5*
T0*
use_locking(*
validate_shape(*
_output_shapes
:@*7
_class-
+)loc:@generator/G_MODEL/A/LayerNorm_1/beta
и
save/Assign_6Assign%generator/G_MODEL/A/LayerNorm_1/gammasave/RestoreV2:6*8
_class.
,*loc:@generator/G_MODEL/A/LayerNorm_1/gamma*
T0*
validate_shape(*
_output_shapes
:@*
use_locking(
ж
save/Assign_7Assign$generator/G_MODEL/A/LayerNorm_2/betasave/RestoreV2:7*
use_locking(*
validate_shape(*7
_class-
+)loc:@generator/G_MODEL/A/LayerNorm_2/beta*
_output_shapes
:@*
T0
и
save/Assign_8Assign%generator/G_MODEL/A/LayerNorm_2/gammasave/RestoreV2:8*
validate_shape(*
T0*
use_locking(*
_output_shapes
:@*8
_class.
,*loc:@generator/G_MODEL/A/LayerNorm_2/gamma
л
save/Assign_9Assign generator/G_MODEL/B/Conv/weightssave/RestoreV2:9*
validate_shape(*
T0*'
_output_shapes
:@*3
_class)
'%loc:@generator/G_MODEL/B/Conv/weights*
use_locking(
т
save/Assign_10Assign"generator/G_MODEL/B/Conv_1/weightssave/RestoreV2:10*
T0*(
_output_shapes
:*
validate_shape(*
use_locking(*5
_class+
)'loc:@generator/G_MODEL/B/Conv_1/weights
е
save/Assign_11Assign"generator/G_MODEL/B/LayerNorm/betasave/RestoreV2:11*
T0*5
_class+
)'loc:@generator/G_MODEL/B/LayerNorm/beta*
_output_shapes	
:*
validate_shape(*
use_locking(
з
save/Assign_12Assign#generator/G_MODEL/B/LayerNorm/gammasave/RestoreV2:12*
use_locking(*
validate_shape(*
T0*6
_class,
*(loc:@generator/G_MODEL/B/LayerNorm/gamma*
_output_shapes	
:
й
save/Assign_13Assign$generator/G_MODEL/B/LayerNorm_1/betasave/RestoreV2:13*
T0*7
_class-
+)loc:@generator/G_MODEL/B/LayerNorm_1/beta*
validate_shape(*
use_locking(*
_output_shapes	
:
л
save/Assign_14Assign%generator/G_MODEL/B/LayerNorm_1/gammasave/RestoreV2:14*
_output_shapes	
:*
use_locking(*
validate_shape(*
T0*8
_class.
,*loc:@generator/G_MODEL/B/LayerNorm_1/gamma
о
save/Assign_15Assign generator/G_MODEL/C/Conv/weightssave/RestoreV2:15*
validate_shape(*
T0*(
_output_shapes
:*
use_locking(*3
_class)
'%loc:@generator/G_MODEL/C/Conv/weights
т
save/Assign_16Assign"generator/G_MODEL/C/Conv_1/weightssave/RestoreV2:16*(
_output_shapes
:*
use_locking(*5
_class+
)'loc:@generator/G_MODEL/C/Conv_1/weights*
validate_shape(*
T0
е
save/Assign_17Assign"generator/G_MODEL/C/LayerNorm/betasave/RestoreV2:17*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:*5
_class+
)'loc:@generator/G_MODEL/C/LayerNorm/beta
з
save/Assign_18Assign#generator/G_MODEL/C/LayerNorm/gammasave/RestoreV2:18*
_output_shapes	
:*
T0*
validate_shape(*6
_class,
*(loc:@generator/G_MODEL/C/LayerNorm/gamma*
use_locking(
й
save/Assign_19Assign$generator/G_MODEL/C/LayerNorm_1/betasave/RestoreV2:19*
use_locking(*
validate_shape(*
_output_shapes	
:*
T0*7
_class-
+)loc:@generator/G_MODEL/C/LayerNorm_1/beta
л
save/Assign_20Assign%generator/G_MODEL/C/LayerNorm_1/gammasave/RestoreV2:20*8
_class.
,*loc:@generator/G_MODEL/C/LayerNorm_1/gamma*
_output_shapes	
:*
use_locking(*
validate_shape(*
T0
Ы
save/Assign_21Assigngenerator/G_MODEL/C/r1/1/betasave/RestoreV2:21*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@generator/G_MODEL/C/r1/1/beta
Э
save/Assign_22Assigngenerator/G_MODEL/C/r1/1/gammasave/RestoreV2:22*
use_locking(*1
_class'
%#loc:@generator/G_MODEL/C/r1/1/gamma*
validate_shape(*
_output_shapes	
:*
T0
Ы
save/Assign_23Assigngenerator/G_MODEL/C/r1/2/betasave/RestoreV2:23*
T0*
_output_shapes	
:*
use_locking(*0
_class&
$"loc:@generator/G_MODEL/C/r1/2/beta*
validate_shape(
Э
save/Assign_24Assigngenerator/G_MODEL/C/r1/2/gammasave/RestoreV2:24*
T0*
validate_shape(*1
_class'
%#loc:@generator/G_MODEL/C/r1/2/gamma*
use_locking(*
_output_shapes	
:
ф
save/Assign_25Assign#generator/G_MODEL/C/r1/Conv/weightssave/RestoreV2:25*6
_class,
*(loc:@generator/G_MODEL/C/r1/Conv/weights*
validate_shape(*
T0*(
_output_shapes
:*
use_locking(
ш
save/Assign_26Assign%generator/G_MODEL/C/r1/Conv_1/weightssave/RestoreV2:26*
use_locking(*
validate_shape(*(
_output_shapes
:*8
_class.
,*loc:@generator/G_MODEL/C/r1/Conv_1/weights*
T0
л
save/Assign_27Assign%generator/G_MODEL/C/r1/LayerNorm/betasave/RestoreV2:27*
T0*
use_locking(*
_output_shapes	
:*8
_class.
,*loc:@generator/G_MODEL/C/r1/LayerNorm/beta*
validate_shape(
н
save/Assign_28Assign&generator/G_MODEL/C/r1/LayerNorm/gammasave/RestoreV2:28*9
_class/
-+loc:@generator/G_MODEL/C/r1/LayerNorm/gamma*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(
Э
save/Assign_29Assigngenerator/G_MODEL/C/r1/r1/biassave/RestoreV2:29*
T0*
_output_shapes	
:*1
_class'
%#loc:@generator/G_MODEL/C/r1/r1/bias*
validate_shape(*
use_locking(
г
save/Assign_30Assigngenerator/G_MODEL/C/r1/r1/wsave/RestoreV2:30*
use_locking(*
validate_shape(*
T0*.
_class$
" loc:@generator/G_MODEL/C/r1/r1/w*'
_output_shapes
:
Ы
save/Assign_31Assigngenerator/G_MODEL/C/r2/1/betasave/RestoreV2:31*0
_class&
$"loc:@generator/G_MODEL/C/r2/1/beta*
use_locking(*
T0*
validate_shape(*
_output_shapes	
:
Э
save/Assign_32Assigngenerator/G_MODEL/C/r2/1/gammasave/RestoreV2:32*
use_locking(*
_output_shapes	
:*1
_class'
%#loc:@generator/G_MODEL/C/r2/1/gamma*
T0*
validate_shape(
Ы
save/Assign_33Assigngenerator/G_MODEL/C/r2/2/betasave/RestoreV2:33*0
_class&
$"loc:@generator/G_MODEL/C/r2/2/beta*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:
Э
save/Assign_34Assigngenerator/G_MODEL/C/r2/2/gammasave/RestoreV2:34*1
_class'
%#loc:@generator/G_MODEL/C/r2/2/gamma*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(
ф
save/Assign_35Assign#generator/G_MODEL/C/r2/Conv/weightssave/RestoreV2:35*
T0*6
_class,
*(loc:@generator/G_MODEL/C/r2/Conv/weights*(
_output_shapes
:*
validate_shape(*
use_locking(
ш
save/Assign_36Assign%generator/G_MODEL/C/r2/Conv_1/weightssave/RestoreV2:36*
T0*
validate_shape(*(
_output_shapes
:*8
_class.
,*loc:@generator/G_MODEL/C/r2/Conv_1/weights*
use_locking(
л
save/Assign_37Assign%generator/G_MODEL/C/r2/LayerNorm/betasave/RestoreV2:37*
_output_shapes	
:*8
_class.
,*loc:@generator/G_MODEL/C/r2/LayerNorm/beta*
validate_shape(*
T0*
use_locking(
н
save/Assign_38Assign&generator/G_MODEL/C/r2/LayerNorm/gammasave/RestoreV2:38*
T0*
_output_shapes	
:*
validate_shape(*9
_class/
-+loc:@generator/G_MODEL/C/r2/LayerNorm/gamma*
use_locking(
Э
save/Assign_39Assigngenerator/G_MODEL/C/r2/r2/biassave/RestoreV2:39*
use_locking(*1
_class'
%#loc:@generator/G_MODEL/C/r2/r2/bias*
validate_shape(*
_output_shapes	
:*
T0
г
save/Assign_40Assigngenerator/G_MODEL/C/r2/r2/wsave/RestoreV2:40*'
_output_shapes
:*.
_class$
" loc:@generator/G_MODEL/C/r2/r2/w*
validate_shape(*
T0*
use_locking(
Ы
save/Assign_41Assigngenerator/G_MODEL/C/r3/1/betasave/RestoreV2:41*
validate_shape(*
use_locking(*
_output_shapes	
:*0
_class&
$"loc:@generator/G_MODEL/C/r3/1/beta*
T0
Э
save/Assign_42Assigngenerator/G_MODEL/C/r3/1/gammasave/RestoreV2:42*
_output_shapes	
:*
T0*1
_class'
%#loc:@generator/G_MODEL/C/r3/1/gamma*
validate_shape(*
use_locking(
Ы
save/Assign_43Assigngenerator/G_MODEL/C/r3/2/betasave/RestoreV2:43*
T0*
_output_shapes	
:*
validate_shape(*
use_locking(*0
_class&
$"loc:@generator/G_MODEL/C/r3/2/beta
Э
save/Assign_44Assigngenerator/G_MODEL/C/r3/2/gammasave/RestoreV2:44*
_output_shapes	
:*
validate_shape(*
T0*
use_locking(*1
_class'
%#loc:@generator/G_MODEL/C/r3/2/gamma
ф
save/Assign_45Assign#generator/G_MODEL/C/r3/Conv/weightssave/RestoreV2:45*
T0*6
_class,
*(loc:@generator/G_MODEL/C/r3/Conv/weights*
use_locking(*
validate_shape(*(
_output_shapes
:
ш
save/Assign_46Assign%generator/G_MODEL/C/r3/Conv_1/weightssave/RestoreV2:46*
T0*(
_output_shapes
:*
validate_shape(*8
_class.
,*loc:@generator/G_MODEL/C/r3/Conv_1/weights*
use_locking(
л
save/Assign_47Assign%generator/G_MODEL/C/r3/LayerNorm/betasave/RestoreV2:47*8
_class.
,*loc:@generator/G_MODEL/C/r3/LayerNorm/beta*
use_locking(*
_output_shapes	
:*
T0*
validate_shape(
н
save/Assign_48Assign&generator/G_MODEL/C/r3/LayerNorm/gammasave/RestoreV2:48*
T0*
validate_shape(*
use_locking(*
_output_shapes	
:*9
_class/
-+loc:@generator/G_MODEL/C/r3/LayerNorm/gamma
Э
save/Assign_49Assigngenerator/G_MODEL/C/r3/r3/biassave/RestoreV2:49*
validate_shape(*1
_class'
%#loc:@generator/G_MODEL/C/r3/r3/bias*
_output_shapes	
:*
use_locking(*
T0
г
save/Assign_50Assigngenerator/G_MODEL/C/r3/r3/wsave/RestoreV2:50*.
_class$
" loc:@generator/G_MODEL/C/r3/r3/w*'
_output_shapes
:*
T0*
validate_shape(*
use_locking(
Ы
save/Assign_51Assigngenerator/G_MODEL/C/r4/1/betasave/RestoreV2:51*
T0*
_output_shapes	
:*0
_class&
$"loc:@generator/G_MODEL/C/r4/1/beta*
use_locking(*
validate_shape(
Э
save/Assign_52Assigngenerator/G_MODEL/C/r4/1/gammasave/RestoreV2:52*
validate_shape(*1
_class'
%#loc:@generator/G_MODEL/C/r4/1/gamma*
use_locking(*
_output_shapes	
:*
T0
Ы
save/Assign_53Assigngenerator/G_MODEL/C/r4/2/betasave/RestoreV2:53*
validate_shape(*
T0*0
_class&
$"loc:@generator/G_MODEL/C/r4/2/beta*
use_locking(*
_output_shapes	
:
Э
save/Assign_54Assigngenerator/G_MODEL/C/r4/2/gammasave/RestoreV2:54*
T0*
_output_shapes	
:*
use_locking(*
validate_shape(*1
_class'
%#loc:@generator/G_MODEL/C/r4/2/gamma
ф
save/Assign_55Assign#generator/G_MODEL/C/r4/Conv/weightssave/RestoreV2:55*
validate_shape(*(
_output_shapes
:*
T0*6
_class,
*(loc:@generator/G_MODEL/C/r4/Conv/weights*
use_locking(
ш
save/Assign_56Assign%generator/G_MODEL/C/r4/Conv_1/weightssave/RestoreV2:56*
validate_shape(*(
_output_shapes
:*8
_class.
,*loc:@generator/G_MODEL/C/r4/Conv_1/weights*
T0*
use_locking(
л
save/Assign_57Assign%generator/G_MODEL/C/r4/LayerNorm/betasave/RestoreV2:57*
use_locking(*
_output_shapes	
:*
validate_shape(*8
_class.
,*loc:@generator/G_MODEL/C/r4/LayerNorm/beta*
T0
н
save/Assign_58Assign&generator/G_MODEL/C/r4/LayerNorm/gammasave/RestoreV2:58*
use_locking(*
validate_shape(*
T0*9
_class/
-+loc:@generator/G_MODEL/C/r4/LayerNorm/gamma*
_output_shapes	
:
Э
save/Assign_59Assigngenerator/G_MODEL/C/r4/r4/biassave/RestoreV2:59*
_output_shapes	
:*
use_locking(*1
_class'
%#loc:@generator/G_MODEL/C/r4/r4/bias*
validate_shape(*
T0
г
save/Assign_60Assigngenerator/G_MODEL/C/r4/r4/wsave/RestoreV2:60*'
_output_shapes
:*
T0*
use_locking(*.
_class$
" loc:@generator/G_MODEL/C/r4/r4/w*
validate_shape(
о
save/Assign_61Assign generator/G_MODEL/D/Conv/weightssave/RestoreV2:61*(
_output_shapes
:*
T0*
use_locking(*3
_class)
'%loc:@generator/G_MODEL/D/Conv/weights*
validate_shape(
т
save/Assign_62Assign"generator/G_MODEL/D/Conv_1/weightssave/RestoreV2:62*
validate_shape(*(
_output_shapes
:*5
_class+
)'loc:@generator/G_MODEL/D/Conv_1/weights*
use_locking(*
T0
е
save/Assign_63Assign"generator/G_MODEL/D/LayerNorm/betasave/RestoreV2:63*
T0*
_output_shapes	
:*
validate_shape(*5
_class+
)'loc:@generator/G_MODEL/D/LayerNorm/beta*
use_locking(
з
save/Assign_64Assign#generator/G_MODEL/D/LayerNorm/gammasave/RestoreV2:64*
_output_shapes	
:*
use_locking(*
T0*6
_class,
*(loc:@generator/G_MODEL/D/LayerNorm/gamma*
validate_shape(
й
save/Assign_65Assign$generator/G_MODEL/D/LayerNorm_1/betasave/RestoreV2:65*
T0*7
_class-
+)loc:@generator/G_MODEL/D/LayerNorm_1/beta*
validate_shape(*
_output_shapes	
:*
use_locking(
л
save/Assign_66Assign%generator/G_MODEL/D/LayerNorm_1/gammasave/RestoreV2:66*
use_locking(*
_output_shapes	
:*
validate_shape(*
T0*8
_class.
,*loc:@generator/G_MODEL/D/LayerNorm_1/gamma
н
save/Assign_67Assign generator/G_MODEL/E/Conv/weightssave/RestoreV2:67*
validate_shape(*3
_class)
'%loc:@generator/G_MODEL/E/Conv/weights*
use_locking(*
T0*'
_output_shapes
:@
р
save/Assign_68Assign"generator/G_MODEL/E/Conv_1/weightssave/RestoreV2:68*
use_locking(*
T0*&
_output_shapes
:@@*
validate_shape(*5
_class+
)'loc:@generator/G_MODEL/E/Conv_1/weights
р
save/Assign_69Assign"generator/G_MODEL/E/Conv_2/weightssave/RestoreV2:69*
T0*
validate_shape(*&
_output_shapes
:@ *5
_class+
)'loc:@generator/G_MODEL/E/Conv_2/weights*
use_locking(
д
save/Assign_70Assign"generator/G_MODEL/E/LayerNorm/betasave/RestoreV2:70*
_output_shapes
:@*5
_class+
)'loc:@generator/G_MODEL/E/LayerNorm/beta*
validate_shape(*
use_locking(*
T0
ж
save/Assign_71Assign#generator/G_MODEL/E/LayerNorm/gammasave/RestoreV2:71*
T0*
_output_shapes
:@*
validate_shape(*6
_class,
*(loc:@generator/G_MODEL/E/LayerNorm/gamma*
use_locking(
и
save/Assign_72Assign$generator/G_MODEL/E/LayerNorm_1/betasave/RestoreV2:72*
validate_shape(*
_output_shapes
:@*
use_locking(*7
_class-
+)loc:@generator/G_MODEL/E/LayerNorm_1/beta*
T0
к
save/Assign_73Assign%generator/G_MODEL/E/LayerNorm_1/gammasave/RestoreV2:73*
_output_shapes
:@*8
_class.
,*loc:@generator/G_MODEL/E/LayerNorm_1/gamma*
T0*
use_locking(*
validate_shape(
и
save/Assign_74Assign$generator/G_MODEL/E/LayerNorm_2/betasave/RestoreV2:74*7
_class-
+)loc:@generator/G_MODEL/E/LayerNorm_2/beta*
_output_shapes
: *
use_locking(*
T0*
validate_shape(
к
save/Assign_75Assign%generator/G_MODEL/E/LayerNorm_2/gammasave/RestoreV2:75*
T0*
validate_shape(*8
_class.
,*loc:@generator/G_MODEL/E/LayerNorm_2/gamma*
use_locking(*
_output_shapes
: 
ь
save/Assign_76Assign(generator/G_MODEL/out_layer/Conv/weightssave/RestoreV2:76*
T0*
use_locking(*;
_class1
/-loc:@generator/G_MODEL/out_layer/Conv/weights*&
_output_shapes
: *
validate_shape(
Љ

save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_8^save/Assign_9
Є
initNoOp(^generator/G_MODEL/A/Conv/weights/Assign*^generator/G_MODEL/A/Conv_1/weights/Assign*^generator/G_MODEL/A/Conv_2/weights/Assign*^generator/G_MODEL/A/LayerNorm/beta/Assign+^generator/G_MODEL/A/LayerNorm/gamma/Assign,^generator/G_MODEL/A/LayerNorm_1/beta/Assign-^generator/G_MODEL/A/LayerNorm_1/gamma/Assign,^generator/G_MODEL/A/LayerNorm_2/beta/Assign-^generator/G_MODEL/A/LayerNorm_2/gamma/Assign(^generator/G_MODEL/B/Conv/weights/Assign*^generator/G_MODEL/B/Conv_1/weights/Assign*^generator/G_MODEL/B/LayerNorm/beta/Assign+^generator/G_MODEL/B/LayerNorm/gamma/Assign,^generator/G_MODEL/B/LayerNorm_1/beta/Assign-^generator/G_MODEL/B/LayerNorm_1/gamma/Assign(^generator/G_MODEL/C/Conv/weights/Assign*^generator/G_MODEL/C/Conv_1/weights/Assign*^generator/G_MODEL/C/LayerNorm/beta/Assign+^generator/G_MODEL/C/LayerNorm/gamma/Assign,^generator/G_MODEL/C/LayerNorm_1/beta/Assign-^generator/G_MODEL/C/LayerNorm_1/gamma/Assign%^generator/G_MODEL/C/r1/1/beta/Assign&^generator/G_MODEL/C/r1/1/gamma/Assign%^generator/G_MODEL/C/r1/2/beta/Assign&^generator/G_MODEL/C/r1/2/gamma/Assign+^generator/G_MODEL/C/r1/Conv/weights/Assign-^generator/G_MODEL/C/r1/Conv_1/weights/Assign-^generator/G_MODEL/C/r1/LayerNorm/beta/Assign.^generator/G_MODEL/C/r1/LayerNorm/gamma/Assign&^generator/G_MODEL/C/r1/r1/bias/Assign#^generator/G_MODEL/C/r1/r1/w/Assign%^generator/G_MODEL/C/r2/1/beta/Assign&^generator/G_MODEL/C/r2/1/gamma/Assign%^generator/G_MODEL/C/r2/2/beta/Assign&^generator/G_MODEL/C/r2/2/gamma/Assign+^generator/G_MODEL/C/r2/Conv/weights/Assign-^generator/G_MODEL/C/r2/Conv_1/weights/Assign-^generator/G_MODEL/C/r2/LayerNorm/beta/Assign.^generator/G_MODEL/C/r2/LayerNorm/gamma/Assign&^generator/G_MODEL/C/r2/r2/bias/Assign#^generator/G_MODEL/C/r2/r2/w/Assign%^generator/G_MODEL/C/r3/1/beta/Assign&^generator/G_MODEL/C/r3/1/gamma/Assign%^generator/G_MODEL/C/r3/2/beta/Assign&^generator/G_MODEL/C/r3/2/gamma/Assign+^generator/G_MODEL/C/r3/Conv/weights/Assign-^generator/G_MODEL/C/r3/Conv_1/weights/Assign-^generator/G_MODEL/C/r3/LayerNorm/beta/Assign.^generator/G_MODEL/C/r3/LayerNorm/gamma/Assign&^generator/G_MODEL/C/r3/r3/bias/Assign#^generator/G_MODEL/C/r3/r3/w/Assign%^generator/G_MODEL/C/r4/1/beta/Assign&^generator/G_MODEL/C/r4/1/gamma/Assign%^generator/G_MODEL/C/r4/2/beta/Assign&^generator/G_MODEL/C/r4/2/gamma/Assign+^generator/G_MODEL/C/r4/Conv/weights/Assign-^generator/G_MODEL/C/r4/Conv_1/weights/Assign-^generator/G_MODEL/C/r4/LayerNorm/beta/Assign.^generator/G_MODEL/C/r4/LayerNorm/gamma/Assign&^generator/G_MODEL/C/r4/r4/bias/Assign#^generator/G_MODEL/C/r4/r4/w/Assign(^generator/G_MODEL/D/Conv/weights/Assign*^generator/G_MODEL/D/Conv_1/weights/Assign*^generator/G_MODEL/D/LayerNorm/beta/Assign+^generator/G_MODEL/D/LayerNorm/gamma/Assign,^generator/G_MODEL/D/LayerNorm_1/beta/Assign-^generator/G_MODEL/D/LayerNorm_1/gamma/Assign(^generator/G_MODEL/E/Conv/weights/Assign*^generator/G_MODEL/E/Conv_1/weights/Assign*^generator/G_MODEL/E/Conv_2/weights/Assign*^generator/G_MODEL/E/LayerNorm/beta/Assign+^generator/G_MODEL/E/LayerNorm/gamma/Assign,^generator/G_MODEL/E/LayerNorm_1/beta/Assign-^generator/G_MODEL/E/LayerNorm_1/gamma/Assign,^generator/G_MODEL/E/LayerNorm_2/beta/Assign-^generator/G_MODEL/E/LayerNorm_2/gamma/Assign0^generator/G_MODEL/out_layer/Conv/weights/Assign
[
save/filename_1/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
r
save/filename_1PlaceholderWithDefaultsave/filename_1/input*
_output_shapes
: *
shape: *
dtype0
i
save/Const_1PlaceholderWithDefaultsave/filename_1*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_c90b4e1bb6f644f3a9010925ac7efe64/part*
_output_shapes
: 
w
save/StringJoin
StringJoinsave/Const_1save/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Ѓ
save/SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:M*Х
valueЛBИMB generator/G_MODEL/A/Conv/weightsB"generator/G_MODEL/A/Conv_1/weightsB"generator/G_MODEL/A/Conv_2/weightsB"generator/G_MODEL/A/LayerNorm/betaB#generator/G_MODEL/A/LayerNorm/gammaB$generator/G_MODEL/A/LayerNorm_1/betaB%generator/G_MODEL/A/LayerNorm_1/gammaB$generator/G_MODEL/A/LayerNorm_2/betaB%generator/G_MODEL/A/LayerNorm_2/gammaB generator/G_MODEL/B/Conv/weightsB"generator/G_MODEL/B/Conv_1/weightsB"generator/G_MODEL/B/LayerNorm/betaB#generator/G_MODEL/B/LayerNorm/gammaB$generator/G_MODEL/B/LayerNorm_1/betaB%generator/G_MODEL/B/LayerNorm_1/gammaB generator/G_MODEL/C/Conv/weightsB"generator/G_MODEL/C/Conv_1/weightsB"generator/G_MODEL/C/LayerNorm/betaB#generator/G_MODEL/C/LayerNorm/gammaB$generator/G_MODEL/C/LayerNorm_1/betaB%generator/G_MODEL/C/LayerNorm_1/gammaBgenerator/G_MODEL/C/r1/1/betaBgenerator/G_MODEL/C/r1/1/gammaBgenerator/G_MODEL/C/r1/2/betaBgenerator/G_MODEL/C/r1/2/gammaB#generator/G_MODEL/C/r1/Conv/weightsB%generator/G_MODEL/C/r1/Conv_1/weightsB%generator/G_MODEL/C/r1/LayerNorm/betaB&generator/G_MODEL/C/r1/LayerNorm/gammaBgenerator/G_MODEL/C/r1/r1/biasBgenerator/G_MODEL/C/r1/r1/wBgenerator/G_MODEL/C/r2/1/betaBgenerator/G_MODEL/C/r2/1/gammaBgenerator/G_MODEL/C/r2/2/betaBgenerator/G_MODEL/C/r2/2/gammaB#generator/G_MODEL/C/r2/Conv/weightsB%generator/G_MODEL/C/r2/Conv_1/weightsB%generator/G_MODEL/C/r2/LayerNorm/betaB&generator/G_MODEL/C/r2/LayerNorm/gammaBgenerator/G_MODEL/C/r2/r2/biasBgenerator/G_MODEL/C/r2/r2/wBgenerator/G_MODEL/C/r3/1/betaBgenerator/G_MODEL/C/r3/1/gammaBgenerator/G_MODEL/C/r3/2/betaBgenerator/G_MODEL/C/r3/2/gammaB#generator/G_MODEL/C/r3/Conv/weightsB%generator/G_MODEL/C/r3/Conv_1/weightsB%generator/G_MODEL/C/r3/LayerNorm/betaB&generator/G_MODEL/C/r3/LayerNorm/gammaBgenerator/G_MODEL/C/r3/r3/biasBgenerator/G_MODEL/C/r3/r3/wBgenerator/G_MODEL/C/r4/1/betaBgenerator/G_MODEL/C/r4/1/gammaBgenerator/G_MODEL/C/r4/2/betaBgenerator/G_MODEL/C/r4/2/gammaB#generator/G_MODEL/C/r4/Conv/weightsB%generator/G_MODEL/C/r4/Conv_1/weightsB%generator/G_MODEL/C/r4/LayerNorm/betaB&generator/G_MODEL/C/r4/LayerNorm/gammaBgenerator/G_MODEL/C/r4/r4/biasBgenerator/G_MODEL/C/r4/r4/wB generator/G_MODEL/D/Conv/weightsB"generator/G_MODEL/D/Conv_1/weightsB"generator/G_MODEL/D/LayerNorm/betaB#generator/G_MODEL/D/LayerNorm/gammaB$generator/G_MODEL/D/LayerNorm_1/betaB%generator/G_MODEL/D/LayerNorm_1/gammaB generator/G_MODEL/E/Conv/weightsB"generator/G_MODEL/E/Conv_1/weightsB"generator/G_MODEL/E/Conv_2/weightsB"generator/G_MODEL/E/LayerNorm/betaB#generator/G_MODEL/E/LayerNorm/gammaB$generator/G_MODEL/E/LayerNorm_1/betaB%generator/G_MODEL/E/LayerNorm_1/gammaB$generator/G_MODEL/E/LayerNorm_2/betaB%generator/G_MODEL/E/LayerNorm_2/gammaB(generator/G_MODEL/out_layer/Conv/weights

save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*Џ
valueЅBЂMB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:M

save/SaveV2_1SaveV2save/ShardedFilenamesave/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slices generator/G_MODEL/A/Conv/weights"generator/G_MODEL/A/Conv_1/weights"generator/G_MODEL/A/Conv_2/weights"generator/G_MODEL/A/LayerNorm/beta#generator/G_MODEL/A/LayerNorm/gamma$generator/G_MODEL/A/LayerNorm_1/beta%generator/G_MODEL/A/LayerNorm_1/gamma$generator/G_MODEL/A/LayerNorm_2/beta%generator/G_MODEL/A/LayerNorm_2/gamma generator/G_MODEL/B/Conv/weights"generator/G_MODEL/B/Conv_1/weights"generator/G_MODEL/B/LayerNorm/beta#generator/G_MODEL/B/LayerNorm/gamma$generator/G_MODEL/B/LayerNorm_1/beta%generator/G_MODEL/B/LayerNorm_1/gamma generator/G_MODEL/C/Conv/weights"generator/G_MODEL/C/Conv_1/weights"generator/G_MODEL/C/LayerNorm/beta#generator/G_MODEL/C/LayerNorm/gamma$generator/G_MODEL/C/LayerNorm_1/beta%generator/G_MODEL/C/LayerNorm_1/gammagenerator/G_MODEL/C/r1/1/betagenerator/G_MODEL/C/r1/1/gammagenerator/G_MODEL/C/r1/2/betagenerator/G_MODEL/C/r1/2/gamma#generator/G_MODEL/C/r1/Conv/weights%generator/G_MODEL/C/r1/Conv_1/weights%generator/G_MODEL/C/r1/LayerNorm/beta&generator/G_MODEL/C/r1/LayerNorm/gammagenerator/G_MODEL/C/r1/r1/biasgenerator/G_MODEL/C/r1/r1/wgenerator/G_MODEL/C/r2/1/betagenerator/G_MODEL/C/r2/1/gammagenerator/G_MODEL/C/r2/2/betagenerator/G_MODEL/C/r2/2/gamma#generator/G_MODEL/C/r2/Conv/weights%generator/G_MODEL/C/r2/Conv_1/weights%generator/G_MODEL/C/r2/LayerNorm/beta&generator/G_MODEL/C/r2/LayerNorm/gammagenerator/G_MODEL/C/r2/r2/biasgenerator/G_MODEL/C/r2/r2/wgenerator/G_MODEL/C/r3/1/betagenerator/G_MODEL/C/r3/1/gammagenerator/G_MODEL/C/r3/2/betagenerator/G_MODEL/C/r3/2/gamma#generator/G_MODEL/C/r3/Conv/weights%generator/G_MODEL/C/r3/Conv_1/weights%generator/G_MODEL/C/r3/LayerNorm/beta&generator/G_MODEL/C/r3/LayerNorm/gammagenerator/G_MODEL/C/r3/r3/biasgenerator/G_MODEL/C/r3/r3/wgenerator/G_MODEL/C/r4/1/betagenerator/G_MODEL/C/r4/1/gammagenerator/G_MODEL/C/r4/2/betagenerator/G_MODEL/C/r4/2/gamma#generator/G_MODEL/C/r4/Conv/weights%generator/G_MODEL/C/r4/Conv_1/weights%generator/G_MODEL/C/r4/LayerNorm/beta&generator/G_MODEL/C/r4/LayerNorm/gammagenerator/G_MODEL/C/r4/r4/biasgenerator/G_MODEL/C/r4/r4/w generator/G_MODEL/D/Conv/weights"generator/G_MODEL/D/Conv_1/weights"generator/G_MODEL/D/LayerNorm/beta#generator/G_MODEL/D/LayerNorm/gamma$generator/G_MODEL/D/LayerNorm_1/beta%generator/G_MODEL/D/LayerNorm_1/gamma generator/G_MODEL/E/Conv/weights"generator/G_MODEL/E/Conv_1/weights"generator/G_MODEL/E/Conv_2/weights"generator/G_MODEL/E/LayerNorm/beta#generator/G_MODEL/E/LayerNorm/gamma$generator/G_MODEL/E/LayerNorm_1/beta%generator/G_MODEL/E/LayerNorm_1/gamma$generator/G_MODEL/E/LayerNorm_2/beta%generator/G_MODEL/E/LayerNorm_2/gamma(generator/G_MODEL/out_layer/Conv/weights"/device:CPU:0*[
dtypesQ
O2M
Є
save/control_dependency_1Identitysave/ShardedFilename^save/SaveV2_1"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Ў
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency_1"/device:CPU:0*
N*

axis *
_output_shapes
:*
T0

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixessave/Const_1"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentitysave/Const_1^save/MergeV2Checkpoints^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
І
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:M*Х
valueЛBИMB generator/G_MODEL/A/Conv/weightsB"generator/G_MODEL/A/Conv_1/weightsB"generator/G_MODEL/A/Conv_2/weightsB"generator/G_MODEL/A/LayerNorm/betaB#generator/G_MODEL/A/LayerNorm/gammaB$generator/G_MODEL/A/LayerNorm_1/betaB%generator/G_MODEL/A/LayerNorm_1/gammaB$generator/G_MODEL/A/LayerNorm_2/betaB%generator/G_MODEL/A/LayerNorm_2/gammaB generator/G_MODEL/B/Conv/weightsB"generator/G_MODEL/B/Conv_1/weightsB"generator/G_MODEL/B/LayerNorm/betaB#generator/G_MODEL/B/LayerNorm/gammaB$generator/G_MODEL/B/LayerNorm_1/betaB%generator/G_MODEL/B/LayerNorm_1/gammaB generator/G_MODEL/C/Conv/weightsB"generator/G_MODEL/C/Conv_1/weightsB"generator/G_MODEL/C/LayerNorm/betaB#generator/G_MODEL/C/LayerNorm/gammaB$generator/G_MODEL/C/LayerNorm_1/betaB%generator/G_MODEL/C/LayerNorm_1/gammaBgenerator/G_MODEL/C/r1/1/betaBgenerator/G_MODEL/C/r1/1/gammaBgenerator/G_MODEL/C/r1/2/betaBgenerator/G_MODEL/C/r1/2/gammaB#generator/G_MODEL/C/r1/Conv/weightsB%generator/G_MODEL/C/r1/Conv_1/weightsB%generator/G_MODEL/C/r1/LayerNorm/betaB&generator/G_MODEL/C/r1/LayerNorm/gammaBgenerator/G_MODEL/C/r1/r1/biasBgenerator/G_MODEL/C/r1/r1/wBgenerator/G_MODEL/C/r2/1/betaBgenerator/G_MODEL/C/r2/1/gammaBgenerator/G_MODEL/C/r2/2/betaBgenerator/G_MODEL/C/r2/2/gammaB#generator/G_MODEL/C/r2/Conv/weightsB%generator/G_MODEL/C/r2/Conv_1/weightsB%generator/G_MODEL/C/r2/LayerNorm/betaB&generator/G_MODEL/C/r2/LayerNorm/gammaBgenerator/G_MODEL/C/r2/r2/biasBgenerator/G_MODEL/C/r2/r2/wBgenerator/G_MODEL/C/r3/1/betaBgenerator/G_MODEL/C/r3/1/gammaBgenerator/G_MODEL/C/r3/2/betaBgenerator/G_MODEL/C/r3/2/gammaB#generator/G_MODEL/C/r3/Conv/weightsB%generator/G_MODEL/C/r3/Conv_1/weightsB%generator/G_MODEL/C/r3/LayerNorm/betaB&generator/G_MODEL/C/r3/LayerNorm/gammaBgenerator/G_MODEL/C/r3/r3/biasBgenerator/G_MODEL/C/r3/r3/wBgenerator/G_MODEL/C/r4/1/betaBgenerator/G_MODEL/C/r4/1/gammaBgenerator/G_MODEL/C/r4/2/betaBgenerator/G_MODEL/C/r4/2/gammaB#generator/G_MODEL/C/r4/Conv/weightsB%generator/G_MODEL/C/r4/Conv_1/weightsB%generator/G_MODEL/C/r4/LayerNorm/betaB&generator/G_MODEL/C/r4/LayerNorm/gammaBgenerator/G_MODEL/C/r4/r4/biasBgenerator/G_MODEL/C/r4/r4/wB generator/G_MODEL/D/Conv/weightsB"generator/G_MODEL/D/Conv_1/weightsB"generator/G_MODEL/D/LayerNorm/betaB#generator/G_MODEL/D/LayerNorm/gammaB$generator/G_MODEL/D/LayerNorm_1/betaB%generator/G_MODEL/D/LayerNorm_1/gammaB generator/G_MODEL/E/Conv/weightsB"generator/G_MODEL/E/Conv_1/weightsB"generator/G_MODEL/E/Conv_2/weightsB"generator/G_MODEL/E/LayerNorm/betaB#generator/G_MODEL/E/LayerNorm/gammaB$generator/G_MODEL/E/LayerNorm_1/betaB%generator/G_MODEL/E/LayerNorm_1/gammaB$generator/G_MODEL/E/LayerNorm_2/betaB%generator/G_MODEL/E/LayerNorm_2/gammaB(generator/G_MODEL/out_layer/Conv/weights*
dtype0

!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*Џ
valueЅBЂMB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:M*
dtype0
І
save/RestoreV2_1	RestoreV2save/Const_1save/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*[
dtypesQ
O2M*Ъ
_output_shapesЗ
Д:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
л
save/Assign_77Assign generator/G_MODEL/A/Conv/weightssave/RestoreV2_1*&
_output_shapes
: *
validate_shape(*
T0*3
_class)
'%loc:@generator/G_MODEL/A/Conv/weights*
use_locking(
с
save/Assign_78Assign"generator/G_MODEL/A/Conv_1/weightssave/RestoreV2_1:1*
T0*
validate_shape(*
use_locking(*&
_output_shapes
: @*5
_class+
)'loc:@generator/G_MODEL/A/Conv_1/weights
с
save/Assign_79Assign"generator/G_MODEL/A/Conv_2/weightssave/RestoreV2_1:2*
validate_shape(*
use_locking(*
T0*&
_output_shapes
:@@*5
_class+
)'loc:@generator/G_MODEL/A/Conv_2/weights
е
save/Assign_80Assign"generator/G_MODEL/A/LayerNorm/betasave/RestoreV2_1:3*
T0*
use_locking(*
validate_shape(*
_output_shapes
: *5
_class+
)'loc:@generator/G_MODEL/A/LayerNorm/beta
з
save/Assign_81Assign#generator/G_MODEL/A/LayerNorm/gammasave/RestoreV2_1:4*
_output_shapes
: *6
_class,
*(loc:@generator/G_MODEL/A/LayerNorm/gamma*
validate_shape(*
T0*
use_locking(
й
save/Assign_82Assign$generator/G_MODEL/A/LayerNorm_1/betasave/RestoreV2_1:5*
validate_shape(*7
_class-
+)loc:@generator/G_MODEL/A/LayerNorm_1/beta*
use_locking(*
_output_shapes
:@*
T0
л
save/Assign_83Assign%generator/G_MODEL/A/LayerNorm_1/gammasave/RestoreV2_1:6*
validate_shape(*
T0*8
_class.
,*loc:@generator/G_MODEL/A/LayerNorm_1/gamma*
use_locking(*
_output_shapes
:@
й
save/Assign_84Assign$generator/G_MODEL/A/LayerNorm_2/betasave/RestoreV2_1:7*7
_class-
+)loc:@generator/G_MODEL/A/LayerNorm_2/beta*
T0*
_output_shapes
:@*
validate_shape(*
use_locking(
л
save/Assign_85Assign%generator/G_MODEL/A/LayerNorm_2/gammasave/RestoreV2_1:8*
T0*
use_locking(*
validate_shape(*
_output_shapes
:@*8
_class.
,*loc:@generator/G_MODEL/A/LayerNorm_2/gamma
о
save/Assign_86Assign generator/G_MODEL/B/Conv/weightssave/RestoreV2_1:9*
T0*
use_locking(*
validate_shape(*'
_output_shapes
:@*3
_class)
'%loc:@generator/G_MODEL/B/Conv/weights
ф
save/Assign_87Assign"generator/G_MODEL/B/Conv_1/weightssave/RestoreV2_1:10*(
_output_shapes
:*
T0*5
_class+
)'loc:@generator/G_MODEL/B/Conv_1/weights*
validate_shape(*
use_locking(
з
save/Assign_88Assign"generator/G_MODEL/B/LayerNorm/betasave/RestoreV2_1:11*
use_locking(*5
_class+
)'loc:@generator/G_MODEL/B/LayerNorm/beta*
T0*
_output_shapes	
:*
validate_shape(
й
save/Assign_89Assign#generator/G_MODEL/B/LayerNorm/gammasave/RestoreV2_1:12*
validate_shape(*6
_class,
*(loc:@generator/G_MODEL/B/LayerNorm/gamma*
T0*
use_locking(*
_output_shapes	
:
л
save/Assign_90Assign$generator/G_MODEL/B/LayerNorm_1/betasave/RestoreV2_1:13*
use_locking(*7
_class-
+)loc:@generator/G_MODEL/B/LayerNorm_1/beta*
_output_shapes	
:*
validate_shape(*
T0
н
save/Assign_91Assign%generator/G_MODEL/B/LayerNorm_1/gammasave/RestoreV2_1:14*
validate_shape(*
use_locking(*8
_class.
,*loc:@generator/G_MODEL/B/LayerNorm_1/gamma*
T0*
_output_shapes	
:
р
save/Assign_92Assign generator/G_MODEL/C/Conv/weightssave/RestoreV2_1:15*3
_class)
'%loc:@generator/G_MODEL/C/Conv/weights*(
_output_shapes
:*
T0*
validate_shape(*
use_locking(
ф
save/Assign_93Assign"generator/G_MODEL/C/Conv_1/weightssave/RestoreV2_1:16*5
_class+
)'loc:@generator/G_MODEL/C/Conv_1/weights*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0
з
save/Assign_94Assign"generator/G_MODEL/C/LayerNorm/betasave/RestoreV2_1:17*
T0*
validate_shape(*
_output_shapes	
:*
use_locking(*5
_class+
)'loc:@generator/G_MODEL/C/LayerNorm/beta
й
save/Assign_95Assign#generator/G_MODEL/C/LayerNorm/gammasave/RestoreV2_1:18*
validate_shape(*
use_locking(*
_output_shapes	
:*6
_class,
*(loc:@generator/G_MODEL/C/LayerNorm/gamma*
T0
л
save/Assign_96Assign$generator/G_MODEL/C/LayerNorm_1/betasave/RestoreV2_1:19*
_output_shapes	
:*
use_locking(*7
_class-
+)loc:@generator/G_MODEL/C/LayerNorm_1/beta*
T0*
validate_shape(
н
save/Assign_97Assign%generator/G_MODEL/C/LayerNorm_1/gammasave/RestoreV2_1:20*
validate_shape(*
use_locking(*8
_class.
,*loc:@generator/G_MODEL/C/LayerNorm_1/gamma*
T0*
_output_shapes	
:
Э
save/Assign_98Assigngenerator/G_MODEL/C/r1/1/betasave/RestoreV2_1:21*
validate_shape(*
_output_shapes	
:*
T0*
use_locking(*0
_class&
$"loc:@generator/G_MODEL/C/r1/1/beta
Я
save/Assign_99Assigngenerator/G_MODEL/C/r1/1/gammasave/RestoreV2_1:22*1
_class'
%#loc:@generator/G_MODEL/C/r1/1/gamma*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(
Ю
save/Assign_100Assigngenerator/G_MODEL/C/r1/2/betasave/RestoreV2_1:23*0
_class&
$"loc:@generator/G_MODEL/C/r1/2/beta*
validate_shape(*
use_locking(*
T0*
_output_shapes	
:
а
save/Assign_101Assigngenerator/G_MODEL/C/r1/2/gammasave/RestoreV2_1:24*
_output_shapes	
:*1
_class'
%#loc:@generator/G_MODEL/C/r1/2/gamma*
use_locking(*
T0*
validate_shape(
ч
save/Assign_102Assign#generator/G_MODEL/C/r1/Conv/weightssave/RestoreV2_1:25*
use_locking(*
T0*
validate_shape(*(
_output_shapes
:*6
_class,
*(loc:@generator/G_MODEL/C/r1/Conv/weights
ы
save/Assign_103Assign%generator/G_MODEL/C/r1/Conv_1/weightssave/RestoreV2_1:26*8
_class.
,*loc:@generator/G_MODEL/C/r1/Conv_1/weights*
use_locking(*
T0*
validate_shape(*(
_output_shapes
:
о
save/Assign_104Assign%generator/G_MODEL/C/r1/LayerNorm/betasave/RestoreV2_1:27*
validate_shape(*
T0*8
_class.
,*loc:@generator/G_MODEL/C/r1/LayerNorm/beta*
_output_shapes	
:*
use_locking(
р
save/Assign_105Assign&generator/G_MODEL/C/r1/LayerNorm/gammasave/RestoreV2_1:28*
_output_shapes	
:*
T0*
use_locking(*9
_class/
-+loc:@generator/G_MODEL/C/r1/LayerNorm/gamma*
validate_shape(
а
save/Assign_106Assigngenerator/G_MODEL/C/r1/r1/biassave/RestoreV2_1:29*
T0*
_output_shapes	
:*1
_class'
%#loc:@generator/G_MODEL/C/r1/r1/bias*
validate_shape(*
use_locking(
ж
save/Assign_107Assigngenerator/G_MODEL/C/r1/r1/wsave/RestoreV2_1:30*
use_locking(*
T0*'
_output_shapes
:*
validate_shape(*.
_class$
" loc:@generator/G_MODEL/C/r1/r1/w
Ю
save/Assign_108Assigngenerator/G_MODEL/C/r2/1/betasave/RestoreV2_1:31*
validate_shape(*
use_locking(*
_output_shapes	
:*
T0*0
_class&
$"loc:@generator/G_MODEL/C/r2/1/beta
а
save/Assign_109Assigngenerator/G_MODEL/C/r2/1/gammasave/RestoreV2_1:32*
use_locking(*
T0*
_output_shapes	
:*
validate_shape(*1
_class'
%#loc:@generator/G_MODEL/C/r2/1/gamma
Ю
save/Assign_110Assigngenerator/G_MODEL/C/r2/2/betasave/RestoreV2_1:33*
T0*
use_locking(*
_output_shapes	
:*0
_class&
$"loc:@generator/G_MODEL/C/r2/2/beta*
validate_shape(
а
save/Assign_111Assigngenerator/G_MODEL/C/r2/2/gammasave/RestoreV2_1:34*
T0*1
_class'
%#loc:@generator/G_MODEL/C/r2/2/gamma*
use_locking(*
_output_shapes	
:*
validate_shape(
ч
save/Assign_112Assign#generator/G_MODEL/C/r2/Conv/weightssave/RestoreV2_1:35*6
_class,
*(loc:@generator/G_MODEL/C/r2/Conv/weights*
use_locking(*
validate_shape(*(
_output_shapes
:*
T0
ы
save/Assign_113Assign%generator/G_MODEL/C/r2/Conv_1/weightssave/RestoreV2_1:36*
validate_shape(*8
_class.
,*loc:@generator/G_MODEL/C/r2/Conv_1/weights*(
_output_shapes
:*
T0*
use_locking(
о
save/Assign_114Assign%generator/G_MODEL/C/r2/LayerNorm/betasave/RestoreV2_1:37*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(*8
_class.
,*loc:@generator/G_MODEL/C/r2/LayerNorm/beta
р
save/Assign_115Assign&generator/G_MODEL/C/r2/LayerNorm/gammasave/RestoreV2_1:38*
validate_shape(*
use_locking(*
_output_shapes	
:*
T0*9
_class/
-+loc:@generator/G_MODEL/C/r2/LayerNorm/gamma
а
save/Assign_116Assigngenerator/G_MODEL/C/r2/r2/biassave/RestoreV2_1:39*
T0*1
_class'
%#loc:@generator/G_MODEL/C/r2/r2/bias*
validate_shape(*
use_locking(*
_output_shapes	
:
ж
save/Assign_117Assigngenerator/G_MODEL/C/r2/r2/wsave/RestoreV2_1:40*'
_output_shapes
:*
use_locking(*
T0*.
_class$
" loc:@generator/G_MODEL/C/r2/r2/w*
validate_shape(
Ю
save/Assign_118Assigngenerator/G_MODEL/C/r3/1/betasave/RestoreV2_1:41*
use_locking(*
validate_shape(*
_output_shapes	
:*
T0*0
_class&
$"loc:@generator/G_MODEL/C/r3/1/beta
а
save/Assign_119Assigngenerator/G_MODEL/C/r3/1/gammasave/RestoreV2_1:42*1
_class'
%#loc:@generator/G_MODEL/C/r3/1/gamma*
_output_shapes	
:*
use_locking(*
T0*
validate_shape(
Ю
save/Assign_120Assigngenerator/G_MODEL/C/r3/2/betasave/RestoreV2_1:43*0
_class&
$"loc:@generator/G_MODEL/C/r3/2/beta*
_output_shapes	
:*
T0*
use_locking(*
validate_shape(
а
save/Assign_121Assigngenerator/G_MODEL/C/r3/2/gammasave/RestoreV2_1:44*
T0*1
_class'
%#loc:@generator/G_MODEL/C/r3/2/gamma*
_output_shapes	
:*
use_locking(*
validate_shape(
ч
save/Assign_122Assign#generator/G_MODEL/C/r3/Conv/weightssave/RestoreV2_1:45*(
_output_shapes
:*
use_locking(*6
_class,
*(loc:@generator/G_MODEL/C/r3/Conv/weights*
validate_shape(*
T0
ы
save/Assign_123Assign%generator/G_MODEL/C/r3/Conv_1/weightssave/RestoreV2_1:46*
T0*(
_output_shapes
:*8
_class.
,*loc:@generator/G_MODEL/C/r3/Conv_1/weights*
use_locking(*
validate_shape(
о
save/Assign_124Assign%generator/G_MODEL/C/r3/LayerNorm/betasave/RestoreV2_1:47*
use_locking(*
validate_shape(*8
_class.
,*loc:@generator/G_MODEL/C/r3/LayerNorm/beta*
_output_shapes	
:*
T0
р
save/Assign_125Assign&generator/G_MODEL/C/r3/LayerNorm/gammasave/RestoreV2_1:48*
validate_shape(*
T0*9
_class/
-+loc:@generator/G_MODEL/C/r3/LayerNorm/gamma*
_output_shapes	
:*
use_locking(
а
save/Assign_126Assigngenerator/G_MODEL/C/r3/r3/biassave/RestoreV2_1:49*
validate_shape(*
use_locking(*
T0*1
_class'
%#loc:@generator/G_MODEL/C/r3/r3/bias*
_output_shapes	
:
ж
save/Assign_127Assigngenerator/G_MODEL/C/r3/r3/wsave/RestoreV2_1:50*'
_output_shapes
:*.
_class$
" loc:@generator/G_MODEL/C/r3/r3/w*
T0*
use_locking(*
validate_shape(
Ю
save/Assign_128Assigngenerator/G_MODEL/C/r4/1/betasave/RestoreV2_1:51*
_output_shapes	
:*0
_class&
$"loc:@generator/G_MODEL/C/r4/1/beta*
validate_shape(*
use_locking(*
T0
а
save/Assign_129Assigngenerator/G_MODEL/C/r4/1/gammasave/RestoreV2_1:52*1
_class'
%#loc:@generator/G_MODEL/C/r4/1/gamma*
_output_shapes	
:*
T0*
validate_shape(*
use_locking(
Ю
save/Assign_130Assigngenerator/G_MODEL/C/r4/2/betasave/RestoreV2_1:53*
_output_shapes	
:*
T0*0
_class&
$"loc:@generator/G_MODEL/C/r4/2/beta*
use_locking(*
validate_shape(
а
save/Assign_131Assigngenerator/G_MODEL/C/r4/2/gammasave/RestoreV2_1:54*
use_locking(*
validate_shape(*
T0*1
_class'
%#loc:@generator/G_MODEL/C/r4/2/gamma*
_output_shapes	
:
ч
save/Assign_132Assign#generator/G_MODEL/C/r4/Conv/weightssave/RestoreV2_1:55*
validate_shape(*
T0*
use_locking(*6
_class,
*(loc:@generator/G_MODEL/C/r4/Conv/weights*(
_output_shapes
:
ы
save/Assign_133Assign%generator/G_MODEL/C/r4/Conv_1/weightssave/RestoreV2_1:56*
T0*8
_class.
,*loc:@generator/G_MODEL/C/r4/Conv_1/weights*
validate_shape(*
use_locking(*(
_output_shapes
:
о
save/Assign_134Assign%generator/G_MODEL/C/r4/LayerNorm/betasave/RestoreV2_1:57*
_output_shapes	
:*8
_class.
,*loc:@generator/G_MODEL/C/r4/LayerNorm/beta*
T0*
validate_shape(*
use_locking(
р
save/Assign_135Assign&generator/G_MODEL/C/r4/LayerNorm/gammasave/RestoreV2_1:58*
validate_shape(*
_output_shapes	
:*9
_class/
-+loc:@generator/G_MODEL/C/r4/LayerNorm/gamma*
T0*
use_locking(
а
save/Assign_136Assigngenerator/G_MODEL/C/r4/r4/biassave/RestoreV2_1:59*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*1
_class'
%#loc:@generator/G_MODEL/C/r4/r4/bias
ж
save/Assign_137Assigngenerator/G_MODEL/C/r4/r4/wsave/RestoreV2_1:60*'
_output_shapes
:*
validate_shape(*
T0*
use_locking(*.
_class$
" loc:@generator/G_MODEL/C/r4/r4/w
с
save/Assign_138Assign generator/G_MODEL/D/Conv/weightssave/RestoreV2_1:61*(
_output_shapes
:*3
_class)
'%loc:@generator/G_MODEL/D/Conv/weights*
use_locking(*
T0*
validate_shape(
х
save/Assign_139Assign"generator/G_MODEL/D/Conv_1/weightssave/RestoreV2_1:62*(
_output_shapes
:*
T0*5
_class+
)'loc:@generator/G_MODEL/D/Conv_1/weights*
use_locking(*
validate_shape(
и
save/Assign_140Assign"generator/G_MODEL/D/LayerNorm/betasave/RestoreV2_1:63*
T0*
_output_shapes	
:*5
_class+
)'loc:@generator/G_MODEL/D/LayerNorm/beta*
validate_shape(*
use_locking(
к
save/Assign_141Assign#generator/G_MODEL/D/LayerNorm/gammasave/RestoreV2_1:64*6
_class,
*(loc:@generator/G_MODEL/D/LayerNorm/gamma*
use_locking(*
T0*
_output_shapes	
:*
validate_shape(
м
save/Assign_142Assign$generator/G_MODEL/D/LayerNorm_1/betasave/RestoreV2_1:65*
validate_shape(*
T0*
_output_shapes	
:*7
_class-
+)loc:@generator/G_MODEL/D/LayerNorm_1/beta*
use_locking(
о
save/Assign_143Assign%generator/G_MODEL/D/LayerNorm_1/gammasave/RestoreV2_1:66*
use_locking(*8
_class.
,*loc:@generator/G_MODEL/D/LayerNorm_1/gamma*
T0*
_output_shapes	
:*
validate_shape(
р
save/Assign_144Assign generator/G_MODEL/E/Conv/weightssave/RestoreV2_1:67*
T0*3
_class)
'%loc:@generator/G_MODEL/E/Conv/weights*'
_output_shapes
:@*
validate_shape(*
use_locking(
у
save/Assign_145Assign"generator/G_MODEL/E/Conv_1/weightssave/RestoreV2_1:68*
T0*&
_output_shapes
:@@*
use_locking(*
validate_shape(*5
_class+
)'loc:@generator/G_MODEL/E/Conv_1/weights
у
save/Assign_146Assign"generator/G_MODEL/E/Conv_2/weightssave/RestoreV2_1:69*5
_class+
)'loc:@generator/G_MODEL/E/Conv_2/weights*
use_locking(*
validate_shape(*&
_output_shapes
:@ *
T0
з
save/Assign_147Assign"generator/G_MODEL/E/LayerNorm/betasave/RestoreV2_1:70*
validate_shape(*
T0*5
_class+
)'loc:@generator/G_MODEL/E/LayerNorm/beta*
_output_shapes
:@*
use_locking(
й
save/Assign_148Assign#generator/G_MODEL/E/LayerNorm/gammasave/RestoreV2_1:71*
use_locking(*
_output_shapes
:@*
T0*6
_class,
*(loc:@generator/G_MODEL/E/LayerNorm/gamma*
validate_shape(
л
save/Assign_149Assign$generator/G_MODEL/E/LayerNorm_1/betasave/RestoreV2_1:72*7
_class-
+)loc:@generator/G_MODEL/E/LayerNorm_1/beta*
validate_shape(*
T0*
_output_shapes
:@*
use_locking(
н
save/Assign_150Assign%generator/G_MODEL/E/LayerNorm_1/gammasave/RestoreV2_1:73*
_output_shapes
:@*
T0*8
_class.
,*loc:@generator/G_MODEL/E/LayerNorm_1/gamma*
use_locking(*
validate_shape(
л
save/Assign_151Assign$generator/G_MODEL/E/LayerNorm_2/betasave/RestoreV2_1:74*
_output_shapes
: *
validate_shape(*
T0*7
_class-
+)loc:@generator/G_MODEL/E/LayerNorm_2/beta*
use_locking(
н
save/Assign_152Assign%generator/G_MODEL/E/LayerNorm_2/gammasave/RestoreV2_1:75*8
_class.
,*loc:@generator/G_MODEL/E/LayerNorm_2/gamma*
_output_shapes
: *
validate_shape(*
T0*
use_locking(
я
save/Assign_153Assign(generator/G_MODEL/out_layer/Conv/weightssave/RestoreV2_1:76*&
_output_shapes
: *;
_class1
/-loc:@generator/G_MODEL/out_layer/Conv/weights*
T0*
use_locking(*
validate_shape(
э

save/restore_shardNoOp^save/Assign_100^save/Assign_101^save/Assign_102^save/Assign_103^save/Assign_104^save/Assign_105^save/Assign_106^save/Assign_107^save/Assign_108^save/Assign_109^save/Assign_110^save/Assign_111^save/Assign_112^save/Assign_113^save/Assign_114^save/Assign_115^save/Assign_116^save/Assign_117^save/Assign_118^save/Assign_119^save/Assign_120^save/Assign_121^save/Assign_122^save/Assign_123^save/Assign_124^save/Assign_125^save/Assign_126^save/Assign_127^save/Assign_128^save/Assign_129^save/Assign_130^save/Assign_131^save/Assign_132^save/Assign_133^save/Assign_134^save/Assign_135^save/Assign_136^save/Assign_137^save/Assign_138^save/Assign_139^save/Assign_140^save/Assign_141^save/Assign_142^save/Assign_143^save/Assign_144^save/Assign_145^save/Assign_146^save/Assign_147^save/Assign_148^save/Assign_149^save/Assign_150^save/Assign_151^save/Assign_152^save/Assign_153^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93^save/Assign_94^save/Assign_95^save/Assign_96^save/Assign_97^save/Assign_98^save/Assign_99
/
save/restore_all_1NoOp^save/restore_shard"@
save/Const_1:0save/Identity:0save/restore_all_1 (5 @F8"Ёp
	variablespp
Й
"generator/G_MODEL/A/Conv/weights:0'generator/G_MODEL/A/Conv/weights/Assign'generator/G_MODEL/A/Conv/weights/read:02?generator/G_MODEL/A/Conv/weights/Initializer/truncated_normal:08
Ж
$generator/G_MODEL/A/LayerNorm/beta:0)generator/G_MODEL/A/LayerNorm/beta/Assign)generator/G_MODEL/A/LayerNorm/beta/read:026generator/G_MODEL/A/LayerNorm/beta/Initializer/zeros:08
Й
%generator/G_MODEL/A/LayerNorm/gamma:0*generator/G_MODEL/A/LayerNorm/gamma/Assign*generator/G_MODEL/A/LayerNorm/gamma/read:026generator/G_MODEL/A/LayerNorm/gamma/Initializer/ones:08
С
$generator/G_MODEL/A/Conv_1/weights:0)generator/G_MODEL/A/Conv_1/weights/Assign)generator/G_MODEL/A/Conv_1/weights/read:02Agenerator/G_MODEL/A/Conv_1/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/A/LayerNorm_1/beta:0+generator/G_MODEL/A/LayerNorm_1/beta/Assign+generator/G_MODEL/A/LayerNorm_1/beta/read:028generator/G_MODEL/A/LayerNorm_1/beta/Initializer/zeros:08
С
'generator/G_MODEL/A/LayerNorm_1/gamma:0,generator/G_MODEL/A/LayerNorm_1/gamma/Assign,generator/G_MODEL/A/LayerNorm_1/gamma/read:028generator/G_MODEL/A/LayerNorm_1/gamma/Initializer/ones:08
С
$generator/G_MODEL/A/Conv_2/weights:0)generator/G_MODEL/A/Conv_2/weights/Assign)generator/G_MODEL/A/Conv_2/weights/read:02Agenerator/G_MODEL/A/Conv_2/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/A/LayerNorm_2/beta:0+generator/G_MODEL/A/LayerNorm_2/beta/Assign+generator/G_MODEL/A/LayerNorm_2/beta/read:028generator/G_MODEL/A/LayerNorm_2/beta/Initializer/zeros:08
С
'generator/G_MODEL/A/LayerNorm_2/gamma:0,generator/G_MODEL/A/LayerNorm_2/gamma/Assign,generator/G_MODEL/A/LayerNorm_2/gamma/read:028generator/G_MODEL/A/LayerNorm_2/gamma/Initializer/ones:08
Й
"generator/G_MODEL/B/Conv/weights:0'generator/G_MODEL/B/Conv/weights/Assign'generator/G_MODEL/B/Conv/weights/read:02?generator/G_MODEL/B/Conv/weights/Initializer/truncated_normal:08
Ж
$generator/G_MODEL/B/LayerNorm/beta:0)generator/G_MODEL/B/LayerNorm/beta/Assign)generator/G_MODEL/B/LayerNorm/beta/read:026generator/G_MODEL/B/LayerNorm/beta/Initializer/zeros:08
Й
%generator/G_MODEL/B/LayerNorm/gamma:0*generator/G_MODEL/B/LayerNorm/gamma/Assign*generator/G_MODEL/B/LayerNorm/gamma/read:026generator/G_MODEL/B/LayerNorm/gamma/Initializer/ones:08
С
$generator/G_MODEL/B/Conv_1/weights:0)generator/G_MODEL/B/Conv_1/weights/Assign)generator/G_MODEL/B/Conv_1/weights/read:02Agenerator/G_MODEL/B/Conv_1/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/B/LayerNorm_1/beta:0+generator/G_MODEL/B/LayerNorm_1/beta/Assign+generator/G_MODEL/B/LayerNorm_1/beta/read:028generator/G_MODEL/B/LayerNorm_1/beta/Initializer/zeros:08
С
'generator/G_MODEL/B/LayerNorm_1/gamma:0,generator/G_MODEL/B/LayerNorm_1/gamma/Assign,generator/G_MODEL/B/LayerNorm_1/gamma/read:028generator/G_MODEL/B/LayerNorm_1/gamma/Initializer/ones:08
Й
"generator/G_MODEL/C/Conv/weights:0'generator/G_MODEL/C/Conv/weights/Assign'generator/G_MODEL/C/Conv/weights/read:02?generator/G_MODEL/C/Conv/weights/Initializer/truncated_normal:08
Ж
$generator/G_MODEL/C/LayerNorm/beta:0)generator/G_MODEL/C/LayerNorm/beta/Assign)generator/G_MODEL/C/LayerNorm/beta/read:026generator/G_MODEL/C/LayerNorm/beta/Initializer/zeros:08
Й
%generator/G_MODEL/C/LayerNorm/gamma:0*generator/G_MODEL/C/LayerNorm/gamma/Assign*generator/G_MODEL/C/LayerNorm/gamma/read:026generator/G_MODEL/C/LayerNorm/gamma/Initializer/ones:08
Х
%generator/G_MODEL/C/r1/Conv/weights:0*generator/G_MODEL/C/r1/Conv/weights/Assign*generator/G_MODEL/C/r1/Conv/weights/read:02Bgenerator/G_MODEL/C/r1/Conv/weights/Initializer/truncated_normal:08
Т
'generator/G_MODEL/C/r1/LayerNorm/beta:0,generator/G_MODEL/C/r1/LayerNorm/beta/Assign,generator/G_MODEL/C/r1/LayerNorm/beta/read:029generator/G_MODEL/C/r1/LayerNorm/beta/Initializer/zeros:08
Х
(generator/G_MODEL/C/r1/LayerNorm/gamma:0-generator/G_MODEL/C/r1/LayerNorm/gamma/Assign-generator/G_MODEL/C/r1/LayerNorm/gamma/read:029generator/G_MODEL/C/r1/LayerNorm/gamma/Initializer/ones:08
Ѕ
generator/G_MODEL/C/r1/r1/w:0"generator/G_MODEL/C/r1/r1/w/Assign"generator/G_MODEL/C/r1/r1/w/read:02:generator/G_MODEL/C/r1/r1/w/Initializer/truncated_normal:08
І
 generator/G_MODEL/C/r1/r1/bias:0%generator/G_MODEL/C/r1/r1/bias/Assign%generator/G_MODEL/C/r1/r1/bias/read:022generator/G_MODEL/C/r1/r1/bias/Initializer/Const:08
Ђ
generator/G_MODEL/C/r1/1/beta:0$generator/G_MODEL/C/r1/1/beta/Assign$generator/G_MODEL/C/r1/1/beta/read:021generator/G_MODEL/C/r1/1/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r1/1/gamma:0%generator/G_MODEL/C/r1/1/gamma/Assign%generator/G_MODEL/C/r1/1/gamma/read:021generator/G_MODEL/C/r1/1/gamma/Initializer/ones:08
Э
'generator/G_MODEL/C/r1/Conv_1/weights:0,generator/G_MODEL/C/r1/Conv_1/weights/Assign,generator/G_MODEL/C/r1/Conv_1/weights/read:02Dgenerator/G_MODEL/C/r1/Conv_1/weights/Initializer/truncated_normal:08
Ђ
generator/G_MODEL/C/r1/2/beta:0$generator/G_MODEL/C/r1/2/beta/Assign$generator/G_MODEL/C/r1/2/beta/read:021generator/G_MODEL/C/r1/2/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r1/2/gamma:0%generator/G_MODEL/C/r1/2/gamma/Assign%generator/G_MODEL/C/r1/2/gamma/read:021generator/G_MODEL/C/r1/2/gamma/Initializer/ones:08
Х
%generator/G_MODEL/C/r2/Conv/weights:0*generator/G_MODEL/C/r2/Conv/weights/Assign*generator/G_MODEL/C/r2/Conv/weights/read:02Bgenerator/G_MODEL/C/r2/Conv/weights/Initializer/truncated_normal:08
Т
'generator/G_MODEL/C/r2/LayerNorm/beta:0,generator/G_MODEL/C/r2/LayerNorm/beta/Assign,generator/G_MODEL/C/r2/LayerNorm/beta/read:029generator/G_MODEL/C/r2/LayerNorm/beta/Initializer/zeros:08
Х
(generator/G_MODEL/C/r2/LayerNorm/gamma:0-generator/G_MODEL/C/r2/LayerNorm/gamma/Assign-generator/G_MODEL/C/r2/LayerNorm/gamma/read:029generator/G_MODEL/C/r2/LayerNorm/gamma/Initializer/ones:08
Ѕ
generator/G_MODEL/C/r2/r2/w:0"generator/G_MODEL/C/r2/r2/w/Assign"generator/G_MODEL/C/r2/r2/w/read:02:generator/G_MODEL/C/r2/r2/w/Initializer/truncated_normal:08
І
 generator/G_MODEL/C/r2/r2/bias:0%generator/G_MODEL/C/r2/r2/bias/Assign%generator/G_MODEL/C/r2/r2/bias/read:022generator/G_MODEL/C/r2/r2/bias/Initializer/Const:08
Ђ
generator/G_MODEL/C/r2/1/beta:0$generator/G_MODEL/C/r2/1/beta/Assign$generator/G_MODEL/C/r2/1/beta/read:021generator/G_MODEL/C/r2/1/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r2/1/gamma:0%generator/G_MODEL/C/r2/1/gamma/Assign%generator/G_MODEL/C/r2/1/gamma/read:021generator/G_MODEL/C/r2/1/gamma/Initializer/ones:08
Э
'generator/G_MODEL/C/r2/Conv_1/weights:0,generator/G_MODEL/C/r2/Conv_1/weights/Assign,generator/G_MODEL/C/r2/Conv_1/weights/read:02Dgenerator/G_MODEL/C/r2/Conv_1/weights/Initializer/truncated_normal:08
Ђ
generator/G_MODEL/C/r2/2/beta:0$generator/G_MODEL/C/r2/2/beta/Assign$generator/G_MODEL/C/r2/2/beta/read:021generator/G_MODEL/C/r2/2/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r2/2/gamma:0%generator/G_MODEL/C/r2/2/gamma/Assign%generator/G_MODEL/C/r2/2/gamma/read:021generator/G_MODEL/C/r2/2/gamma/Initializer/ones:08
Х
%generator/G_MODEL/C/r3/Conv/weights:0*generator/G_MODEL/C/r3/Conv/weights/Assign*generator/G_MODEL/C/r3/Conv/weights/read:02Bgenerator/G_MODEL/C/r3/Conv/weights/Initializer/truncated_normal:08
Т
'generator/G_MODEL/C/r3/LayerNorm/beta:0,generator/G_MODEL/C/r3/LayerNorm/beta/Assign,generator/G_MODEL/C/r3/LayerNorm/beta/read:029generator/G_MODEL/C/r3/LayerNorm/beta/Initializer/zeros:08
Х
(generator/G_MODEL/C/r3/LayerNorm/gamma:0-generator/G_MODEL/C/r3/LayerNorm/gamma/Assign-generator/G_MODEL/C/r3/LayerNorm/gamma/read:029generator/G_MODEL/C/r3/LayerNorm/gamma/Initializer/ones:08
Ѕ
generator/G_MODEL/C/r3/r3/w:0"generator/G_MODEL/C/r3/r3/w/Assign"generator/G_MODEL/C/r3/r3/w/read:02:generator/G_MODEL/C/r3/r3/w/Initializer/truncated_normal:08
І
 generator/G_MODEL/C/r3/r3/bias:0%generator/G_MODEL/C/r3/r3/bias/Assign%generator/G_MODEL/C/r3/r3/bias/read:022generator/G_MODEL/C/r3/r3/bias/Initializer/Const:08
Ђ
generator/G_MODEL/C/r3/1/beta:0$generator/G_MODEL/C/r3/1/beta/Assign$generator/G_MODEL/C/r3/1/beta/read:021generator/G_MODEL/C/r3/1/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r3/1/gamma:0%generator/G_MODEL/C/r3/1/gamma/Assign%generator/G_MODEL/C/r3/1/gamma/read:021generator/G_MODEL/C/r3/1/gamma/Initializer/ones:08
Э
'generator/G_MODEL/C/r3/Conv_1/weights:0,generator/G_MODEL/C/r3/Conv_1/weights/Assign,generator/G_MODEL/C/r3/Conv_1/weights/read:02Dgenerator/G_MODEL/C/r3/Conv_1/weights/Initializer/truncated_normal:08
Ђ
generator/G_MODEL/C/r3/2/beta:0$generator/G_MODEL/C/r3/2/beta/Assign$generator/G_MODEL/C/r3/2/beta/read:021generator/G_MODEL/C/r3/2/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r3/2/gamma:0%generator/G_MODEL/C/r3/2/gamma/Assign%generator/G_MODEL/C/r3/2/gamma/read:021generator/G_MODEL/C/r3/2/gamma/Initializer/ones:08
Х
%generator/G_MODEL/C/r4/Conv/weights:0*generator/G_MODEL/C/r4/Conv/weights/Assign*generator/G_MODEL/C/r4/Conv/weights/read:02Bgenerator/G_MODEL/C/r4/Conv/weights/Initializer/truncated_normal:08
Т
'generator/G_MODEL/C/r4/LayerNorm/beta:0,generator/G_MODEL/C/r4/LayerNorm/beta/Assign,generator/G_MODEL/C/r4/LayerNorm/beta/read:029generator/G_MODEL/C/r4/LayerNorm/beta/Initializer/zeros:08
Х
(generator/G_MODEL/C/r4/LayerNorm/gamma:0-generator/G_MODEL/C/r4/LayerNorm/gamma/Assign-generator/G_MODEL/C/r4/LayerNorm/gamma/read:029generator/G_MODEL/C/r4/LayerNorm/gamma/Initializer/ones:08
Ѕ
generator/G_MODEL/C/r4/r4/w:0"generator/G_MODEL/C/r4/r4/w/Assign"generator/G_MODEL/C/r4/r4/w/read:02:generator/G_MODEL/C/r4/r4/w/Initializer/truncated_normal:08
І
 generator/G_MODEL/C/r4/r4/bias:0%generator/G_MODEL/C/r4/r4/bias/Assign%generator/G_MODEL/C/r4/r4/bias/read:022generator/G_MODEL/C/r4/r4/bias/Initializer/Const:08
Ђ
generator/G_MODEL/C/r4/1/beta:0$generator/G_MODEL/C/r4/1/beta/Assign$generator/G_MODEL/C/r4/1/beta/read:021generator/G_MODEL/C/r4/1/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r4/1/gamma:0%generator/G_MODEL/C/r4/1/gamma/Assign%generator/G_MODEL/C/r4/1/gamma/read:021generator/G_MODEL/C/r4/1/gamma/Initializer/ones:08
Э
'generator/G_MODEL/C/r4/Conv_1/weights:0,generator/G_MODEL/C/r4/Conv_1/weights/Assign,generator/G_MODEL/C/r4/Conv_1/weights/read:02Dgenerator/G_MODEL/C/r4/Conv_1/weights/Initializer/truncated_normal:08
Ђ
generator/G_MODEL/C/r4/2/beta:0$generator/G_MODEL/C/r4/2/beta/Assign$generator/G_MODEL/C/r4/2/beta/read:021generator/G_MODEL/C/r4/2/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r4/2/gamma:0%generator/G_MODEL/C/r4/2/gamma/Assign%generator/G_MODEL/C/r4/2/gamma/read:021generator/G_MODEL/C/r4/2/gamma/Initializer/ones:08
С
$generator/G_MODEL/C/Conv_1/weights:0)generator/G_MODEL/C/Conv_1/weights/Assign)generator/G_MODEL/C/Conv_1/weights/read:02Agenerator/G_MODEL/C/Conv_1/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/C/LayerNorm_1/beta:0+generator/G_MODEL/C/LayerNorm_1/beta/Assign+generator/G_MODEL/C/LayerNorm_1/beta/read:028generator/G_MODEL/C/LayerNorm_1/beta/Initializer/zeros:08
С
'generator/G_MODEL/C/LayerNorm_1/gamma:0,generator/G_MODEL/C/LayerNorm_1/gamma/Assign,generator/G_MODEL/C/LayerNorm_1/gamma/read:028generator/G_MODEL/C/LayerNorm_1/gamma/Initializer/ones:08
Й
"generator/G_MODEL/D/Conv/weights:0'generator/G_MODEL/D/Conv/weights/Assign'generator/G_MODEL/D/Conv/weights/read:02?generator/G_MODEL/D/Conv/weights/Initializer/truncated_normal:08
Ж
$generator/G_MODEL/D/LayerNorm/beta:0)generator/G_MODEL/D/LayerNorm/beta/Assign)generator/G_MODEL/D/LayerNorm/beta/read:026generator/G_MODEL/D/LayerNorm/beta/Initializer/zeros:08
Й
%generator/G_MODEL/D/LayerNorm/gamma:0*generator/G_MODEL/D/LayerNorm/gamma/Assign*generator/G_MODEL/D/LayerNorm/gamma/read:026generator/G_MODEL/D/LayerNorm/gamma/Initializer/ones:08
С
$generator/G_MODEL/D/Conv_1/weights:0)generator/G_MODEL/D/Conv_1/weights/Assign)generator/G_MODEL/D/Conv_1/weights/read:02Agenerator/G_MODEL/D/Conv_1/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/D/LayerNorm_1/beta:0+generator/G_MODEL/D/LayerNorm_1/beta/Assign+generator/G_MODEL/D/LayerNorm_1/beta/read:028generator/G_MODEL/D/LayerNorm_1/beta/Initializer/zeros:08
С
'generator/G_MODEL/D/LayerNorm_1/gamma:0,generator/G_MODEL/D/LayerNorm_1/gamma/Assign,generator/G_MODEL/D/LayerNorm_1/gamma/read:028generator/G_MODEL/D/LayerNorm_1/gamma/Initializer/ones:08
Й
"generator/G_MODEL/E/Conv/weights:0'generator/G_MODEL/E/Conv/weights/Assign'generator/G_MODEL/E/Conv/weights/read:02?generator/G_MODEL/E/Conv/weights/Initializer/truncated_normal:08
Ж
$generator/G_MODEL/E/LayerNorm/beta:0)generator/G_MODEL/E/LayerNorm/beta/Assign)generator/G_MODEL/E/LayerNorm/beta/read:026generator/G_MODEL/E/LayerNorm/beta/Initializer/zeros:08
Й
%generator/G_MODEL/E/LayerNorm/gamma:0*generator/G_MODEL/E/LayerNorm/gamma/Assign*generator/G_MODEL/E/LayerNorm/gamma/read:026generator/G_MODEL/E/LayerNorm/gamma/Initializer/ones:08
С
$generator/G_MODEL/E/Conv_1/weights:0)generator/G_MODEL/E/Conv_1/weights/Assign)generator/G_MODEL/E/Conv_1/weights/read:02Agenerator/G_MODEL/E/Conv_1/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/E/LayerNorm_1/beta:0+generator/G_MODEL/E/LayerNorm_1/beta/Assign+generator/G_MODEL/E/LayerNorm_1/beta/read:028generator/G_MODEL/E/LayerNorm_1/beta/Initializer/zeros:08
С
'generator/G_MODEL/E/LayerNorm_1/gamma:0,generator/G_MODEL/E/LayerNorm_1/gamma/Assign,generator/G_MODEL/E/LayerNorm_1/gamma/read:028generator/G_MODEL/E/LayerNorm_1/gamma/Initializer/ones:08
С
$generator/G_MODEL/E/Conv_2/weights:0)generator/G_MODEL/E/Conv_2/weights/Assign)generator/G_MODEL/E/Conv_2/weights/read:02Agenerator/G_MODEL/E/Conv_2/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/E/LayerNorm_2/beta:0+generator/G_MODEL/E/LayerNorm_2/beta/Assign+generator/G_MODEL/E/LayerNorm_2/beta/read:028generator/G_MODEL/E/LayerNorm_2/beta/Initializer/zeros:08
С
'generator/G_MODEL/E/LayerNorm_2/gamma:0,generator/G_MODEL/E/LayerNorm_2/gamma/Assign,generator/G_MODEL/E/LayerNorm_2/gamma/read:028generator/G_MODEL/E/LayerNorm_2/gamma/Initializer/ones:08
й
*generator/G_MODEL/out_layer/Conv/weights:0/generator/G_MODEL/out_layer/Conv/weights/Assign/generator/G_MODEL/out_layer/Conv/weights/read:02Ggenerator/G_MODEL/out_layer/Conv/weights/Initializer/truncated_normal:08"уe
model_variablesЯeЬe
Й
"generator/G_MODEL/A/Conv/weights:0'generator/G_MODEL/A/Conv/weights/Assign'generator/G_MODEL/A/Conv/weights/read:02?generator/G_MODEL/A/Conv/weights/Initializer/truncated_normal:08
Ж
$generator/G_MODEL/A/LayerNorm/beta:0)generator/G_MODEL/A/LayerNorm/beta/Assign)generator/G_MODEL/A/LayerNorm/beta/read:026generator/G_MODEL/A/LayerNorm/beta/Initializer/zeros:08
Й
%generator/G_MODEL/A/LayerNorm/gamma:0*generator/G_MODEL/A/LayerNorm/gamma/Assign*generator/G_MODEL/A/LayerNorm/gamma/read:026generator/G_MODEL/A/LayerNorm/gamma/Initializer/ones:08
С
$generator/G_MODEL/A/Conv_1/weights:0)generator/G_MODEL/A/Conv_1/weights/Assign)generator/G_MODEL/A/Conv_1/weights/read:02Agenerator/G_MODEL/A/Conv_1/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/A/LayerNorm_1/beta:0+generator/G_MODEL/A/LayerNorm_1/beta/Assign+generator/G_MODEL/A/LayerNorm_1/beta/read:028generator/G_MODEL/A/LayerNorm_1/beta/Initializer/zeros:08
С
'generator/G_MODEL/A/LayerNorm_1/gamma:0,generator/G_MODEL/A/LayerNorm_1/gamma/Assign,generator/G_MODEL/A/LayerNorm_1/gamma/read:028generator/G_MODEL/A/LayerNorm_1/gamma/Initializer/ones:08
С
$generator/G_MODEL/A/Conv_2/weights:0)generator/G_MODEL/A/Conv_2/weights/Assign)generator/G_MODEL/A/Conv_2/weights/read:02Agenerator/G_MODEL/A/Conv_2/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/A/LayerNorm_2/beta:0+generator/G_MODEL/A/LayerNorm_2/beta/Assign+generator/G_MODEL/A/LayerNorm_2/beta/read:028generator/G_MODEL/A/LayerNorm_2/beta/Initializer/zeros:08
С
'generator/G_MODEL/A/LayerNorm_2/gamma:0,generator/G_MODEL/A/LayerNorm_2/gamma/Assign,generator/G_MODEL/A/LayerNorm_2/gamma/read:028generator/G_MODEL/A/LayerNorm_2/gamma/Initializer/ones:08
Й
"generator/G_MODEL/B/Conv/weights:0'generator/G_MODEL/B/Conv/weights/Assign'generator/G_MODEL/B/Conv/weights/read:02?generator/G_MODEL/B/Conv/weights/Initializer/truncated_normal:08
Ж
$generator/G_MODEL/B/LayerNorm/beta:0)generator/G_MODEL/B/LayerNorm/beta/Assign)generator/G_MODEL/B/LayerNorm/beta/read:026generator/G_MODEL/B/LayerNorm/beta/Initializer/zeros:08
Й
%generator/G_MODEL/B/LayerNorm/gamma:0*generator/G_MODEL/B/LayerNorm/gamma/Assign*generator/G_MODEL/B/LayerNorm/gamma/read:026generator/G_MODEL/B/LayerNorm/gamma/Initializer/ones:08
С
$generator/G_MODEL/B/Conv_1/weights:0)generator/G_MODEL/B/Conv_1/weights/Assign)generator/G_MODEL/B/Conv_1/weights/read:02Agenerator/G_MODEL/B/Conv_1/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/B/LayerNorm_1/beta:0+generator/G_MODEL/B/LayerNorm_1/beta/Assign+generator/G_MODEL/B/LayerNorm_1/beta/read:028generator/G_MODEL/B/LayerNorm_1/beta/Initializer/zeros:08
С
'generator/G_MODEL/B/LayerNorm_1/gamma:0,generator/G_MODEL/B/LayerNorm_1/gamma/Assign,generator/G_MODEL/B/LayerNorm_1/gamma/read:028generator/G_MODEL/B/LayerNorm_1/gamma/Initializer/ones:08
Й
"generator/G_MODEL/C/Conv/weights:0'generator/G_MODEL/C/Conv/weights/Assign'generator/G_MODEL/C/Conv/weights/read:02?generator/G_MODEL/C/Conv/weights/Initializer/truncated_normal:08
Ж
$generator/G_MODEL/C/LayerNorm/beta:0)generator/G_MODEL/C/LayerNorm/beta/Assign)generator/G_MODEL/C/LayerNorm/beta/read:026generator/G_MODEL/C/LayerNorm/beta/Initializer/zeros:08
Й
%generator/G_MODEL/C/LayerNorm/gamma:0*generator/G_MODEL/C/LayerNorm/gamma/Assign*generator/G_MODEL/C/LayerNorm/gamma/read:026generator/G_MODEL/C/LayerNorm/gamma/Initializer/ones:08
Х
%generator/G_MODEL/C/r1/Conv/weights:0*generator/G_MODEL/C/r1/Conv/weights/Assign*generator/G_MODEL/C/r1/Conv/weights/read:02Bgenerator/G_MODEL/C/r1/Conv/weights/Initializer/truncated_normal:08
Т
'generator/G_MODEL/C/r1/LayerNorm/beta:0,generator/G_MODEL/C/r1/LayerNorm/beta/Assign,generator/G_MODEL/C/r1/LayerNorm/beta/read:029generator/G_MODEL/C/r1/LayerNorm/beta/Initializer/zeros:08
Х
(generator/G_MODEL/C/r1/LayerNorm/gamma:0-generator/G_MODEL/C/r1/LayerNorm/gamma/Assign-generator/G_MODEL/C/r1/LayerNorm/gamma/read:029generator/G_MODEL/C/r1/LayerNorm/gamma/Initializer/ones:08
Ђ
generator/G_MODEL/C/r1/1/beta:0$generator/G_MODEL/C/r1/1/beta/Assign$generator/G_MODEL/C/r1/1/beta/read:021generator/G_MODEL/C/r1/1/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r1/1/gamma:0%generator/G_MODEL/C/r1/1/gamma/Assign%generator/G_MODEL/C/r1/1/gamma/read:021generator/G_MODEL/C/r1/1/gamma/Initializer/ones:08
Э
'generator/G_MODEL/C/r1/Conv_1/weights:0,generator/G_MODEL/C/r1/Conv_1/weights/Assign,generator/G_MODEL/C/r1/Conv_1/weights/read:02Dgenerator/G_MODEL/C/r1/Conv_1/weights/Initializer/truncated_normal:08
Ђ
generator/G_MODEL/C/r1/2/beta:0$generator/G_MODEL/C/r1/2/beta/Assign$generator/G_MODEL/C/r1/2/beta/read:021generator/G_MODEL/C/r1/2/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r1/2/gamma:0%generator/G_MODEL/C/r1/2/gamma/Assign%generator/G_MODEL/C/r1/2/gamma/read:021generator/G_MODEL/C/r1/2/gamma/Initializer/ones:08
Х
%generator/G_MODEL/C/r2/Conv/weights:0*generator/G_MODEL/C/r2/Conv/weights/Assign*generator/G_MODEL/C/r2/Conv/weights/read:02Bgenerator/G_MODEL/C/r2/Conv/weights/Initializer/truncated_normal:08
Т
'generator/G_MODEL/C/r2/LayerNorm/beta:0,generator/G_MODEL/C/r2/LayerNorm/beta/Assign,generator/G_MODEL/C/r2/LayerNorm/beta/read:029generator/G_MODEL/C/r2/LayerNorm/beta/Initializer/zeros:08
Х
(generator/G_MODEL/C/r2/LayerNorm/gamma:0-generator/G_MODEL/C/r2/LayerNorm/gamma/Assign-generator/G_MODEL/C/r2/LayerNorm/gamma/read:029generator/G_MODEL/C/r2/LayerNorm/gamma/Initializer/ones:08
Ђ
generator/G_MODEL/C/r2/1/beta:0$generator/G_MODEL/C/r2/1/beta/Assign$generator/G_MODEL/C/r2/1/beta/read:021generator/G_MODEL/C/r2/1/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r2/1/gamma:0%generator/G_MODEL/C/r2/1/gamma/Assign%generator/G_MODEL/C/r2/1/gamma/read:021generator/G_MODEL/C/r2/1/gamma/Initializer/ones:08
Э
'generator/G_MODEL/C/r2/Conv_1/weights:0,generator/G_MODEL/C/r2/Conv_1/weights/Assign,generator/G_MODEL/C/r2/Conv_1/weights/read:02Dgenerator/G_MODEL/C/r2/Conv_1/weights/Initializer/truncated_normal:08
Ђ
generator/G_MODEL/C/r2/2/beta:0$generator/G_MODEL/C/r2/2/beta/Assign$generator/G_MODEL/C/r2/2/beta/read:021generator/G_MODEL/C/r2/2/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r2/2/gamma:0%generator/G_MODEL/C/r2/2/gamma/Assign%generator/G_MODEL/C/r2/2/gamma/read:021generator/G_MODEL/C/r2/2/gamma/Initializer/ones:08
Х
%generator/G_MODEL/C/r3/Conv/weights:0*generator/G_MODEL/C/r3/Conv/weights/Assign*generator/G_MODEL/C/r3/Conv/weights/read:02Bgenerator/G_MODEL/C/r3/Conv/weights/Initializer/truncated_normal:08
Т
'generator/G_MODEL/C/r3/LayerNorm/beta:0,generator/G_MODEL/C/r3/LayerNorm/beta/Assign,generator/G_MODEL/C/r3/LayerNorm/beta/read:029generator/G_MODEL/C/r3/LayerNorm/beta/Initializer/zeros:08
Х
(generator/G_MODEL/C/r3/LayerNorm/gamma:0-generator/G_MODEL/C/r3/LayerNorm/gamma/Assign-generator/G_MODEL/C/r3/LayerNorm/gamma/read:029generator/G_MODEL/C/r3/LayerNorm/gamma/Initializer/ones:08
Ђ
generator/G_MODEL/C/r3/1/beta:0$generator/G_MODEL/C/r3/1/beta/Assign$generator/G_MODEL/C/r3/1/beta/read:021generator/G_MODEL/C/r3/1/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r3/1/gamma:0%generator/G_MODEL/C/r3/1/gamma/Assign%generator/G_MODEL/C/r3/1/gamma/read:021generator/G_MODEL/C/r3/1/gamma/Initializer/ones:08
Э
'generator/G_MODEL/C/r3/Conv_1/weights:0,generator/G_MODEL/C/r3/Conv_1/weights/Assign,generator/G_MODEL/C/r3/Conv_1/weights/read:02Dgenerator/G_MODEL/C/r3/Conv_1/weights/Initializer/truncated_normal:08
Ђ
generator/G_MODEL/C/r3/2/beta:0$generator/G_MODEL/C/r3/2/beta/Assign$generator/G_MODEL/C/r3/2/beta/read:021generator/G_MODEL/C/r3/2/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r3/2/gamma:0%generator/G_MODEL/C/r3/2/gamma/Assign%generator/G_MODEL/C/r3/2/gamma/read:021generator/G_MODEL/C/r3/2/gamma/Initializer/ones:08
Х
%generator/G_MODEL/C/r4/Conv/weights:0*generator/G_MODEL/C/r4/Conv/weights/Assign*generator/G_MODEL/C/r4/Conv/weights/read:02Bgenerator/G_MODEL/C/r4/Conv/weights/Initializer/truncated_normal:08
Т
'generator/G_MODEL/C/r4/LayerNorm/beta:0,generator/G_MODEL/C/r4/LayerNorm/beta/Assign,generator/G_MODEL/C/r4/LayerNorm/beta/read:029generator/G_MODEL/C/r4/LayerNorm/beta/Initializer/zeros:08
Х
(generator/G_MODEL/C/r4/LayerNorm/gamma:0-generator/G_MODEL/C/r4/LayerNorm/gamma/Assign-generator/G_MODEL/C/r4/LayerNorm/gamma/read:029generator/G_MODEL/C/r4/LayerNorm/gamma/Initializer/ones:08
Ђ
generator/G_MODEL/C/r4/1/beta:0$generator/G_MODEL/C/r4/1/beta/Assign$generator/G_MODEL/C/r4/1/beta/read:021generator/G_MODEL/C/r4/1/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r4/1/gamma:0%generator/G_MODEL/C/r4/1/gamma/Assign%generator/G_MODEL/C/r4/1/gamma/read:021generator/G_MODEL/C/r4/1/gamma/Initializer/ones:08
Э
'generator/G_MODEL/C/r4/Conv_1/weights:0,generator/G_MODEL/C/r4/Conv_1/weights/Assign,generator/G_MODEL/C/r4/Conv_1/weights/read:02Dgenerator/G_MODEL/C/r4/Conv_1/weights/Initializer/truncated_normal:08
Ђ
generator/G_MODEL/C/r4/2/beta:0$generator/G_MODEL/C/r4/2/beta/Assign$generator/G_MODEL/C/r4/2/beta/read:021generator/G_MODEL/C/r4/2/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r4/2/gamma:0%generator/G_MODEL/C/r4/2/gamma/Assign%generator/G_MODEL/C/r4/2/gamma/read:021generator/G_MODEL/C/r4/2/gamma/Initializer/ones:08
С
$generator/G_MODEL/C/Conv_1/weights:0)generator/G_MODEL/C/Conv_1/weights/Assign)generator/G_MODEL/C/Conv_1/weights/read:02Agenerator/G_MODEL/C/Conv_1/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/C/LayerNorm_1/beta:0+generator/G_MODEL/C/LayerNorm_1/beta/Assign+generator/G_MODEL/C/LayerNorm_1/beta/read:028generator/G_MODEL/C/LayerNorm_1/beta/Initializer/zeros:08
С
'generator/G_MODEL/C/LayerNorm_1/gamma:0,generator/G_MODEL/C/LayerNorm_1/gamma/Assign,generator/G_MODEL/C/LayerNorm_1/gamma/read:028generator/G_MODEL/C/LayerNorm_1/gamma/Initializer/ones:08
Й
"generator/G_MODEL/D/Conv/weights:0'generator/G_MODEL/D/Conv/weights/Assign'generator/G_MODEL/D/Conv/weights/read:02?generator/G_MODEL/D/Conv/weights/Initializer/truncated_normal:08
Ж
$generator/G_MODEL/D/LayerNorm/beta:0)generator/G_MODEL/D/LayerNorm/beta/Assign)generator/G_MODEL/D/LayerNorm/beta/read:026generator/G_MODEL/D/LayerNorm/beta/Initializer/zeros:08
Й
%generator/G_MODEL/D/LayerNorm/gamma:0*generator/G_MODEL/D/LayerNorm/gamma/Assign*generator/G_MODEL/D/LayerNorm/gamma/read:026generator/G_MODEL/D/LayerNorm/gamma/Initializer/ones:08
С
$generator/G_MODEL/D/Conv_1/weights:0)generator/G_MODEL/D/Conv_1/weights/Assign)generator/G_MODEL/D/Conv_1/weights/read:02Agenerator/G_MODEL/D/Conv_1/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/D/LayerNorm_1/beta:0+generator/G_MODEL/D/LayerNorm_1/beta/Assign+generator/G_MODEL/D/LayerNorm_1/beta/read:028generator/G_MODEL/D/LayerNorm_1/beta/Initializer/zeros:08
С
'generator/G_MODEL/D/LayerNorm_1/gamma:0,generator/G_MODEL/D/LayerNorm_1/gamma/Assign,generator/G_MODEL/D/LayerNorm_1/gamma/read:028generator/G_MODEL/D/LayerNorm_1/gamma/Initializer/ones:08
Й
"generator/G_MODEL/E/Conv/weights:0'generator/G_MODEL/E/Conv/weights/Assign'generator/G_MODEL/E/Conv/weights/read:02?generator/G_MODEL/E/Conv/weights/Initializer/truncated_normal:08
Ж
$generator/G_MODEL/E/LayerNorm/beta:0)generator/G_MODEL/E/LayerNorm/beta/Assign)generator/G_MODEL/E/LayerNorm/beta/read:026generator/G_MODEL/E/LayerNorm/beta/Initializer/zeros:08
Й
%generator/G_MODEL/E/LayerNorm/gamma:0*generator/G_MODEL/E/LayerNorm/gamma/Assign*generator/G_MODEL/E/LayerNorm/gamma/read:026generator/G_MODEL/E/LayerNorm/gamma/Initializer/ones:08
С
$generator/G_MODEL/E/Conv_1/weights:0)generator/G_MODEL/E/Conv_1/weights/Assign)generator/G_MODEL/E/Conv_1/weights/read:02Agenerator/G_MODEL/E/Conv_1/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/E/LayerNorm_1/beta:0+generator/G_MODEL/E/LayerNorm_1/beta/Assign+generator/G_MODEL/E/LayerNorm_1/beta/read:028generator/G_MODEL/E/LayerNorm_1/beta/Initializer/zeros:08
С
'generator/G_MODEL/E/LayerNorm_1/gamma:0,generator/G_MODEL/E/LayerNorm_1/gamma/Assign,generator/G_MODEL/E/LayerNorm_1/gamma/read:028generator/G_MODEL/E/LayerNorm_1/gamma/Initializer/ones:08
С
$generator/G_MODEL/E/Conv_2/weights:0)generator/G_MODEL/E/Conv_2/weights/Assign)generator/G_MODEL/E/Conv_2/weights/read:02Agenerator/G_MODEL/E/Conv_2/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/E/LayerNorm_2/beta:0+generator/G_MODEL/E/LayerNorm_2/beta/Assign+generator/G_MODEL/E/LayerNorm_2/beta/read:028generator/G_MODEL/E/LayerNorm_2/beta/Initializer/zeros:08
С
'generator/G_MODEL/E/LayerNorm_2/gamma:0,generator/G_MODEL/E/LayerNorm_2/gamma/Assign,generator/G_MODEL/E/LayerNorm_2/gamma/read:028generator/G_MODEL/E/LayerNorm_2/gamma/Initializer/ones:08
й
*generator/G_MODEL/out_layer/Conv/weights:0/generator/G_MODEL/out_layer/Conv/weights/Assign/generator/G_MODEL/out_layer/Conv/weights/read:02Ggenerator/G_MODEL/out_layer/Conv/weights/Initializer/truncated_normal:08"Ћp
trainable_variablespp
Й
"generator/G_MODEL/A/Conv/weights:0'generator/G_MODEL/A/Conv/weights/Assign'generator/G_MODEL/A/Conv/weights/read:02?generator/G_MODEL/A/Conv/weights/Initializer/truncated_normal:08
Ж
$generator/G_MODEL/A/LayerNorm/beta:0)generator/G_MODEL/A/LayerNorm/beta/Assign)generator/G_MODEL/A/LayerNorm/beta/read:026generator/G_MODEL/A/LayerNorm/beta/Initializer/zeros:08
Й
%generator/G_MODEL/A/LayerNorm/gamma:0*generator/G_MODEL/A/LayerNorm/gamma/Assign*generator/G_MODEL/A/LayerNorm/gamma/read:026generator/G_MODEL/A/LayerNorm/gamma/Initializer/ones:08
С
$generator/G_MODEL/A/Conv_1/weights:0)generator/G_MODEL/A/Conv_1/weights/Assign)generator/G_MODEL/A/Conv_1/weights/read:02Agenerator/G_MODEL/A/Conv_1/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/A/LayerNorm_1/beta:0+generator/G_MODEL/A/LayerNorm_1/beta/Assign+generator/G_MODEL/A/LayerNorm_1/beta/read:028generator/G_MODEL/A/LayerNorm_1/beta/Initializer/zeros:08
С
'generator/G_MODEL/A/LayerNorm_1/gamma:0,generator/G_MODEL/A/LayerNorm_1/gamma/Assign,generator/G_MODEL/A/LayerNorm_1/gamma/read:028generator/G_MODEL/A/LayerNorm_1/gamma/Initializer/ones:08
С
$generator/G_MODEL/A/Conv_2/weights:0)generator/G_MODEL/A/Conv_2/weights/Assign)generator/G_MODEL/A/Conv_2/weights/read:02Agenerator/G_MODEL/A/Conv_2/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/A/LayerNorm_2/beta:0+generator/G_MODEL/A/LayerNorm_2/beta/Assign+generator/G_MODEL/A/LayerNorm_2/beta/read:028generator/G_MODEL/A/LayerNorm_2/beta/Initializer/zeros:08
С
'generator/G_MODEL/A/LayerNorm_2/gamma:0,generator/G_MODEL/A/LayerNorm_2/gamma/Assign,generator/G_MODEL/A/LayerNorm_2/gamma/read:028generator/G_MODEL/A/LayerNorm_2/gamma/Initializer/ones:08
Й
"generator/G_MODEL/B/Conv/weights:0'generator/G_MODEL/B/Conv/weights/Assign'generator/G_MODEL/B/Conv/weights/read:02?generator/G_MODEL/B/Conv/weights/Initializer/truncated_normal:08
Ж
$generator/G_MODEL/B/LayerNorm/beta:0)generator/G_MODEL/B/LayerNorm/beta/Assign)generator/G_MODEL/B/LayerNorm/beta/read:026generator/G_MODEL/B/LayerNorm/beta/Initializer/zeros:08
Й
%generator/G_MODEL/B/LayerNorm/gamma:0*generator/G_MODEL/B/LayerNorm/gamma/Assign*generator/G_MODEL/B/LayerNorm/gamma/read:026generator/G_MODEL/B/LayerNorm/gamma/Initializer/ones:08
С
$generator/G_MODEL/B/Conv_1/weights:0)generator/G_MODEL/B/Conv_1/weights/Assign)generator/G_MODEL/B/Conv_1/weights/read:02Agenerator/G_MODEL/B/Conv_1/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/B/LayerNorm_1/beta:0+generator/G_MODEL/B/LayerNorm_1/beta/Assign+generator/G_MODEL/B/LayerNorm_1/beta/read:028generator/G_MODEL/B/LayerNorm_1/beta/Initializer/zeros:08
С
'generator/G_MODEL/B/LayerNorm_1/gamma:0,generator/G_MODEL/B/LayerNorm_1/gamma/Assign,generator/G_MODEL/B/LayerNorm_1/gamma/read:028generator/G_MODEL/B/LayerNorm_1/gamma/Initializer/ones:08
Й
"generator/G_MODEL/C/Conv/weights:0'generator/G_MODEL/C/Conv/weights/Assign'generator/G_MODEL/C/Conv/weights/read:02?generator/G_MODEL/C/Conv/weights/Initializer/truncated_normal:08
Ж
$generator/G_MODEL/C/LayerNorm/beta:0)generator/G_MODEL/C/LayerNorm/beta/Assign)generator/G_MODEL/C/LayerNorm/beta/read:026generator/G_MODEL/C/LayerNorm/beta/Initializer/zeros:08
Й
%generator/G_MODEL/C/LayerNorm/gamma:0*generator/G_MODEL/C/LayerNorm/gamma/Assign*generator/G_MODEL/C/LayerNorm/gamma/read:026generator/G_MODEL/C/LayerNorm/gamma/Initializer/ones:08
Х
%generator/G_MODEL/C/r1/Conv/weights:0*generator/G_MODEL/C/r1/Conv/weights/Assign*generator/G_MODEL/C/r1/Conv/weights/read:02Bgenerator/G_MODEL/C/r1/Conv/weights/Initializer/truncated_normal:08
Т
'generator/G_MODEL/C/r1/LayerNorm/beta:0,generator/G_MODEL/C/r1/LayerNorm/beta/Assign,generator/G_MODEL/C/r1/LayerNorm/beta/read:029generator/G_MODEL/C/r1/LayerNorm/beta/Initializer/zeros:08
Х
(generator/G_MODEL/C/r1/LayerNorm/gamma:0-generator/G_MODEL/C/r1/LayerNorm/gamma/Assign-generator/G_MODEL/C/r1/LayerNorm/gamma/read:029generator/G_MODEL/C/r1/LayerNorm/gamma/Initializer/ones:08
Ѕ
generator/G_MODEL/C/r1/r1/w:0"generator/G_MODEL/C/r1/r1/w/Assign"generator/G_MODEL/C/r1/r1/w/read:02:generator/G_MODEL/C/r1/r1/w/Initializer/truncated_normal:08
І
 generator/G_MODEL/C/r1/r1/bias:0%generator/G_MODEL/C/r1/r1/bias/Assign%generator/G_MODEL/C/r1/r1/bias/read:022generator/G_MODEL/C/r1/r1/bias/Initializer/Const:08
Ђ
generator/G_MODEL/C/r1/1/beta:0$generator/G_MODEL/C/r1/1/beta/Assign$generator/G_MODEL/C/r1/1/beta/read:021generator/G_MODEL/C/r1/1/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r1/1/gamma:0%generator/G_MODEL/C/r1/1/gamma/Assign%generator/G_MODEL/C/r1/1/gamma/read:021generator/G_MODEL/C/r1/1/gamma/Initializer/ones:08
Э
'generator/G_MODEL/C/r1/Conv_1/weights:0,generator/G_MODEL/C/r1/Conv_1/weights/Assign,generator/G_MODEL/C/r1/Conv_1/weights/read:02Dgenerator/G_MODEL/C/r1/Conv_1/weights/Initializer/truncated_normal:08
Ђ
generator/G_MODEL/C/r1/2/beta:0$generator/G_MODEL/C/r1/2/beta/Assign$generator/G_MODEL/C/r1/2/beta/read:021generator/G_MODEL/C/r1/2/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r1/2/gamma:0%generator/G_MODEL/C/r1/2/gamma/Assign%generator/G_MODEL/C/r1/2/gamma/read:021generator/G_MODEL/C/r1/2/gamma/Initializer/ones:08
Х
%generator/G_MODEL/C/r2/Conv/weights:0*generator/G_MODEL/C/r2/Conv/weights/Assign*generator/G_MODEL/C/r2/Conv/weights/read:02Bgenerator/G_MODEL/C/r2/Conv/weights/Initializer/truncated_normal:08
Т
'generator/G_MODEL/C/r2/LayerNorm/beta:0,generator/G_MODEL/C/r2/LayerNorm/beta/Assign,generator/G_MODEL/C/r2/LayerNorm/beta/read:029generator/G_MODEL/C/r2/LayerNorm/beta/Initializer/zeros:08
Х
(generator/G_MODEL/C/r2/LayerNorm/gamma:0-generator/G_MODEL/C/r2/LayerNorm/gamma/Assign-generator/G_MODEL/C/r2/LayerNorm/gamma/read:029generator/G_MODEL/C/r2/LayerNorm/gamma/Initializer/ones:08
Ѕ
generator/G_MODEL/C/r2/r2/w:0"generator/G_MODEL/C/r2/r2/w/Assign"generator/G_MODEL/C/r2/r2/w/read:02:generator/G_MODEL/C/r2/r2/w/Initializer/truncated_normal:08
І
 generator/G_MODEL/C/r2/r2/bias:0%generator/G_MODEL/C/r2/r2/bias/Assign%generator/G_MODEL/C/r2/r2/bias/read:022generator/G_MODEL/C/r2/r2/bias/Initializer/Const:08
Ђ
generator/G_MODEL/C/r2/1/beta:0$generator/G_MODEL/C/r2/1/beta/Assign$generator/G_MODEL/C/r2/1/beta/read:021generator/G_MODEL/C/r2/1/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r2/1/gamma:0%generator/G_MODEL/C/r2/1/gamma/Assign%generator/G_MODEL/C/r2/1/gamma/read:021generator/G_MODEL/C/r2/1/gamma/Initializer/ones:08
Э
'generator/G_MODEL/C/r2/Conv_1/weights:0,generator/G_MODEL/C/r2/Conv_1/weights/Assign,generator/G_MODEL/C/r2/Conv_1/weights/read:02Dgenerator/G_MODEL/C/r2/Conv_1/weights/Initializer/truncated_normal:08
Ђ
generator/G_MODEL/C/r2/2/beta:0$generator/G_MODEL/C/r2/2/beta/Assign$generator/G_MODEL/C/r2/2/beta/read:021generator/G_MODEL/C/r2/2/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r2/2/gamma:0%generator/G_MODEL/C/r2/2/gamma/Assign%generator/G_MODEL/C/r2/2/gamma/read:021generator/G_MODEL/C/r2/2/gamma/Initializer/ones:08
Х
%generator/G_MODEL/C/r3/Conv/weights:0*generator/G_MODEL/C/r3/Conv/weights/Assign*generator/G_MODEL/C/r3/Conv/weights/read:02Bgenerator/G_MODEL/C/r3/Conv/weights/Initializer/truncated_normal:08
Т
'generator/G_MODEL/C/r3/LayerNorm/beta:0,generator/G_MODEL/C/r3/LayerNorm/beta/Assign,generator/G_MODEL/C/r3/LayerNorm/beta/read:029generator/G_MODEL/C/r3/LayerNorm/beta/Initializer/zeros:08
Х
(generator/G_MODEL/C/r3/LayerNorm/gamma:0-generator/G_MODEL/C/r3/LayerNorm/gamma/Assign-generator/G_MODEL/C/r3/LayerNorm/gamma/read:029generator/G_MODEL/C/r3/LayerNorm/gamma/Initializer/ones:08
Ѕ
generator/G_MODEL/C/r3/r3/w:0"generator/G_MODEL/C/r3/r3/w/Assign"generator/G_MODEL/C/r3/r3/w/read:02:generator/G_MODEL/C/r3/r3/w/Initializer/truncated_normal:08
І
 generator/G_MODEL/C/r3/r3/bias:0%generator/G_MODEL/C/r3/r3/bias/Assign%generator/G_MODEL/C/r3/r3/bias/read:022generator/G_MODEL/C/r3/r3/bias/Initializer/Const:08
Ђ
generator/G_MODEL/C/r3/1/beta:0$generator/G_MODEL/C/r3/1/beta/Assign$generator/G_MODEL/C/r3/1/beta/read:021generator/G_MODEL/C/r3/1/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r3/1/gamma:0%generator/G_MODEL/C/r3/1/gamma/Assign%generator/G_MODEL/C/r3/1/gamma/read:021generator/G_MODEL/C/r3/1/gamma/Initializer/ones:08
Э
'generator/G_MODEL/C/r3/Conv_1/weights:0,generator/G_MODEL/C/r3/Conv_1/weights/Assign,generator/G_MODEL/C/r3/Conv_1/weights/read:02Dgenerator/G_MODEL/C/r3/Conv_1/weights/Initializer/truncated_normal:08
Ђ
generator/G_MODEL/C/r3/2/beta:0$generator/G_MODEL/C/r3/2/beta/Assign$generator/G_MODEL/C/r3/2/beta/read:021generator/G_MODEL/C/r3/2/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r3/2/gamma:0%generator/G_MODEL/C/r3/2/gamma/Assign%generator/G_MODEL/C/r3/2/gamma/read:021generator/G_MODEL/C/r3/2/gamma/Initializer/ones:08
Х
%generator/G_MODEL/C/r4/Conv/weights:0*generator/G_MODEL/C/r4/Conv/weights/Assign*generator/G_MODEL/C/r4/Conv/weights/read:02Bgenerator/G_MODEL/C/r4/Conv/weights/Initializer/truncated_normal:08
Т
'generator/G_MODEL/C/r4/LayerNorm/beta:0,generator/G_MODEL/C/r4/LayerNorm/beta/Assign,generator/G_MODEL/C/r4/LayerNorm/beta/read:029generator/G_MODEL/C/r4/LayerNorm/beta/Initializer/zeros:08
Х
(generator/G_MODEL/C/r4/LayerNorm/gamma:0-generator/G_MODEL/C/r4/LayerNorm/gamma/Assign-generator/G_MODEL/C/r4/LayerNorm/gamma/read:029generator/G_MODEL/C/r4/LayerNorm/gamma/Initializer/ones:08
Ѕ
generator/G_MODEL/C/r4/r4/w:0"generator/G_MODEL/C/r4/r4/w/Assign"generator/G_MODEL/C/r4/r4/w/read:02:generator/G_MODEL/C/r4/r4/w/Initializer/truncated_normal:08
І
 generator/G_MODEL/C/r4/r4/bias:0%generator/G_MODEL/C/r4/r4/bias/Assign%generator/G_MODEL/C/r4/r4/bias/read:022generator/G_MODEL/C/r4/r4/bias/Initializer/Const:08
Ђ
generator/G_MODEL/C/r4/1/beta:0$generator/G_MODEL/C/r4/1/beta/Assign$generator/G_MODEL/C/r4/1/beta/read:021generator/G_MODEL/C/r4/1/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r4/1/gamma:0%generator/G_MODEL/C/r4/1/gamma/Assign%generator/G_MODEL/C/r4/1/gamma/read:021generator/G_MODEL/C/r4/1/gamma/Initializer/ones:08
Э
'generator/G_MODEL/C/r4/Conv_1/weights:0,generator/G_MODEL/C/r4/Conv_1/weights/Assign,generator/G_MODEL/C/r4/Conv_1/weights/read:02Dgenerator/G_MODEL/C/r4/Conv_1/weights/Initializer/truncated_normal:08
Ђ
generator/G_MODEL/C/r4/2/beta:0$generator/G_MODEL/C/r4/2/beta/Assign$generator/G_MODEL/C/r4/2/beta/read:021generator/G_MODEL/C/r4/2/beta/Initializer/zeros:08
Ѕ
 generator/G_MODEL/C/r4/2/gamma:0%generator/G_MODEL/C/r4/2/gamma/Assign%generator/G_MODEL/C/r4/2/gamma/read:021generator/G_MODEL/C/r4/2/gamma/Initializer/ones:08
С
$generator/G_MODEL/C/Conv_1/weights:0)generator/G_MODEL/C/Conv_1/weights/Assign)generator/G_MODEL/C/Conv_1/weights/read:02Agenerator/G_MODEL/C/Conv_1/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/C/LayerNorm_1/beta:0+generator/G_MODEL/C/LayerNorm_1/beta/Assign+generator/G_MODEL/C/LayerNorm_1/beta/read:028generator/G_MODEL/C/LayerNorm_1/beta/Initializer/zeros:08
С
'generator/G_MODEL/C/LayerNorm_1/gamma:0,generator/G_MODEL/C/LayerNorm_1/gamma/Assign,generator/G_MODEL/C/LayerNorm_1/gamma/read:028generator/G_MODEL/C/LayerNorm_1/gamma/Initializer/ones:08
Й
"generator/G_MODEL/D/Conv/weights:0'generator/G_MODEL/D/Conv/weights/Assign'generator/G_MODEL/D/Conv/weights/read:02?generator/G_MODEL/D/Conv/weights/Initializer/truncated_normal:08
Ж
$generator/G_MODEL/D/LayerNorm/beta:0)generator/G_MODEL/D/LayerNorm/beta/Assign)generator/G_MODEL/D/LayerNorm/beta/read:026generator/G_MODEL/D/LayerNorm/beta/Initializer/zeros:08
Й
%generator/G_MODEL/D/LayerNorm/gamma:0*generator/G_MODEL/D/LayerNorm/gamma/Assign*generator/G_MODEL/D/LayerNorm/gamma/read:026generator/G_MODEL/D/LayerNorm/gamma/Initializer/ones:08
С
$generator/G_MODEL/D/Conv_1/weights:0)generator/G_MODEL/D/Conv_1/weights/Assign)generator/G_MODEL/D/Conv_1/weights/read:02Agenerator/G_MODEL/D/Conv_1/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/D/LayerNorm_1/beta:0+generator/G_MODEL/D/LayerNorm_1/beta/Assign+generator/G_MODEL/D/LayerNorm_1/beta/read:028generator/G_MODEL/D/LayerNorm_1/beta/Initializer/zeros:08
С
'generator/G_MODEL/D/LayerNorm_1/gamma:0,generator/G_MODEL/D/LayerNorm_1/gamma/Assign,generator/G_MODEL/D/LayerNorm_1/gamma/read:028generator/G_MODEL/D/LayerNorm_1/gamma/Initializer/ones:08
Й
"generator/G_MODEL/E/Conv/weights:0'generator/G_MODEL/E/Conv/weights/Assign'generator/G_MODEL/E/Conv/weights/read:02?generator/G_MODEL/E/Conv/weights/Initializer/truncated_normal:08
Ж
$generator/G_MODEL/E/LayerNorm/beta:0)generator/G_MODEL/E/LayerNorm/beta/Assign)generator/G_MODEL/E/LayerNorm/beta/read:026generator/G_MODEL/E/LayerNorm/beta/Initializer/zeros:08
Й
%generator/G_MODEL/E/LayerNorm/gamma:0*generator/G_MODEL/E/LayerNorm/gamma/Assign*generator/G_MODEL/E/LayerNorm/gamma/read:026generator/G_MODEL/E/LayerNorm/gamma/Initializer/ones:08
С
$generator/G_MODEL/E/Conv_1/weights:0)generator/G_MODEL/E/Conv_1/weights/Assign)generator/G_MODEL/E/Conv_1/weights/read:02Agenerator/G_MODEL/E/Conv_1/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/E/LayerNorm_1/beta:0+generator/G_MODEL/E/LayerNorm_1/beta/Assign+generator/G_MODEL/E/LayerNorm_1/beta/read:028generator/G_MODEL/E/LayerNorm_1/beta/Initializer/zeros:08
С
'generator/G_MODEL/E/LayerNorm_1/gamma:0,generator/G_MODEL/E/LayerNorm_1/gamma/Assign,generator/G_MODEL/E/LayerNorm_1/gamma/read:028generator/G_MODEL/E/LayerNorm_1/gamma/Initializer/ones:08
С
$generator/G_MODEL/E/Conv_2/weights:0)generator/G_MODEL/E/Conv_2/weights/Assign)generator/G_MODEL/E/Conv_2/weights/read:02Agenerator/G_MODEL/E/Conv_2/weights/Initializer/truncated_normal:08
О
&generator/G_MODEL/E/LayerNorm_2/beta:0+generator/G_MODEL/E/LayerNorm_2/beta/Assign+generator/G_MODEL/E/LayerNorm_2/beta/read:028generator/G_MODEL/E/LayerNorm_2/beta/Initializer/zeros:08
С
'generator/G_MODEL/E/LayerNorm_2/gamma:0,generator/G_MODEL/E/LayerNorm_2/gamma/Assign,generator/G_MODEL/E/LayerNorm_2/gamma/read:028generator/G_MODEL/E/LayerNorm_2/gamma/Initializer/ones:08
й
*generator/G_MODEL/out_layer/Conv/weights:0/generator/G_MODEL/out_layer/Conv/weights/Assign/generator/G_MODEL/out_layer/Conv/weights/read:02Ggenerator/G_MODEL/out_layer/Conv/weights/Initializer/truncated_normal:08*Л
custom_signatureІ
B
input9
generator_input:0"џџџџџџџџџџџџџџџџџџT
outputJ
"generator/G_MODEL/out_layer/Tanh:0"џџџџџџџџџџџџџџџџџџ
AnimeGANv2