??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02unknown8??
?
conv2d_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_26/kernel
}
$conv2d_26/kernel/Read/ReadVariableOpReadVariableOpconv2d_26/kernel*&
_output_shapes
:*
dtype0
t
conv2d_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_26/bias
m
"conv2d_26/bias/Read/ReadVariableOpReadVariableOpconv2d_26/bias*
_output_shapes
:*
dtype0
?
conv2d_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*!
shared_nameconv2d_27/kernel
}
$conv2d_27/kernel/Read/ReadVariableOpReadVariableOpconv2d_27/kernel*&
_output_shapes
:$*
dtype0
t
conv2d_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*
shared_nameconv2d_27/bias
m
"conv2d_27/bias/Read/ReadVariableOpReadVariableOpconv2d_27/bias*
_output_shapes
:$*
dtype0
|
dense_76/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_76/kernel
u
#dense_76/kernel/Read/ReadVariableOpReadVariableOpdense_76/kernel* 
_output_shapes
:
??*
dtype0
r
dense_76/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_76/bias
k
!dense_76/bias/Read/ReadVariableOpReadVariableOpdense_76/bias*
_output_shapes
:*
dtype0
z
dense_77/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0* 
shared_namedense_77/kernel
s
#dense_77/kernel/Read/ReadVariableOpReadVariableOpdense_77/kernel*
_output_shapes

:0*
dtype0
r
dense_77/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_namedense_77/bias
k
!dense_77/bias/Read/ReadVariableOpReadVariableOpdense_77/bias*
_output_shapes
:0*
dtype0
z
dense_78/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0* 
shared_namedense_78/kernel
s
#dense_78/kernel/Read/ReadVariableOpReadVariableOpdense_78/kernel*
_output_shapes

:0*
dtype0
r
dense_78/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_78/bias
k
!dense_78/bias/Read/ReadVariableOpReadVariableOpdense_78/bias*
_output_shapes
:*
dtype0
z
dense_79/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_79/kernel
s
#dense_79/kernel/Read/ReadVariableOpReadVariableOpdense_79/kernel*
_output_shapes

:*
dtype0
r
dense_79/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_79/bias
k
!dense_79/bias/Read/ReadVariableOpReadVariableOpdense_79/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv2d_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_26/kernel/m
?
+Adam/conv2d_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_26/bias/m
{
)Adam/conv2d_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*(
shared_nameAdam/conv2d_27/kernel/m
?
+Adam/conv2d_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/m*&
_output_shapes
:$*
dtype0
?
Adam/conv2d_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*&
shared_nameAdam/conv2d_27/bias/m
{
)Adam/conv2d_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/m*
_output_shapes
:$*
dtype0
?
Adam/dense_76/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_76/kernel/m
?
*Adam/dense_76/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_76/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_76/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_76/bias/m
y
(Adam/dense_76/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_76/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_77/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*'
shared_nameAdam/dense_77/kernel/m
?
*Adam/dense_77/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_77/kernel/m*
_output_shapes

:0*
dtype0
?
Adam/dense_77/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*%
shared_nameAdam/dense_77/bias/m
y
(Adam/dense_77/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_77/bias/m*
_output_shapes
:0*
dtype0
?
Adam/dense_78/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*'
shared_nameAdam/dense_78/kernel/m
?
*Adam/dense_78/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_78/kernel/m*
_output_shapes

:0*
dtype0
?
Adam/dense_78/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_78/bias/m
y
(Adam/dense_78/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_78/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_79/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_79/kernel/m
?
*Adam/dense_79/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_79/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_79/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_79/bias/m
y
(Adam/dense_79/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_79/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_26/kernel/v
?
+Adam/conv2d_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_26/bias/v
{
)Adam/conv2d_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*(
shared_nameAdam/conv2d_27/kernel/v
?
+Adam/conv2d_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/v*&
_output_shapes
:$*
dtype0
?
Adam/conv2d_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*&
shared_nameAdam/conv2d_27/bias/v
{
)Adam/conv2d_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/v*
_output_shapes
:$*
dtype0
?
Adam/dense_76/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_76/kernel/v
?
*Adam/dense_76/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_76/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_76/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_76/bias/v
y
(Adam/dense_76/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_76/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_77/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*'
shared_nameAdam/dense_77/kernel/v
?
*Adam/dense_77/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_77/kernel/v*
_output_shapes

:0*
dtype0
?
Adam/dense_77/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*%
shared_nameAdam/dense_77/bias/v
y
(Adam/dense_77/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_77/bias/v*
_output_shapes
:0*
dtype0
?
Adam/dense_78/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*'
shared_nameAdam/dense_78/kernel/v
?
*Adam/dense_78/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_78/kernel/v*
_output_shapes

:0*
dtype0
?
Adam/dense_78/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_78/bias/v
y
(Adam/dense_78/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_78/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_79/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_79/kernel/v
?
*Adam/dense_79/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_79/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_79/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_79/bias/v
y
(Adam/dense_79/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_79/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?e
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?d
value?dB?d B?d
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses* 
?
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(_random_generator
)__call__
**&call_and_return_all_conditional_losses* 
?

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses*
?
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7_random_generator
8__call__
*9&call_and_return_all_conditional_losses* 
?
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses* 
?
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D_random_generator
E__call__
*F&call_and_return_all_conditional_losses* 
?
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses* 
?

Mkernel
Nbias
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses*
?

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses*
?

]kernel
^bias
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses*
?

ekernel
fbias
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses*
?
miter

nbeta_1

obeta_2
	pdecay
qlearning_ratem?m?+m?,m?Mm?Nm?Um?Vm?]m?^m?em?fm?v?v?+v?,v?Mv?Nv?Uv?Vv?]v?^v?ev?fv?*
Z
0
1
+2
,3
M4
N5
U6
V7
]8
^9
e10
f11*
Z
0
1
+2
,3
M4
N5
U6
V7
]8
^9
e10
f11*

r0
s1
t2
u3* 
?
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

{serving_default* 
`Z
VARIABLE_VALUEconv2d_26/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_26/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
$	variables
%trainable_variables
&regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEconv2d_27/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_27/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

+0
,1*

+0
,1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
3	variables
4trainable_variables
5regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_76/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_76/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

M0
N1*

M0
N1*
	
r0* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_77/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_77/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

U0
V1*

U0
V1*
	
s0* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_78/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_78/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

]0
^1*

]0
^1*
	
t0* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_79/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_79/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

e0
f1*

e0
f1*
	
u0* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
Z
0
1
2
3
4
5
6
7
	8

9
10
11*

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
r0* 
* 
* 
* 
* 
	
s0* 
* 
* 
* 
* 
	
t0* 
* 
* 
* 
* 
	
u0* 
* 
<

?total

?count
?	variables
?	keras_api*
M

?total

?count
?
_fn_kwargs
?	variables
?	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
?}
VARIABLE_VALUEAdam/conv2d_26/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_26/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_27/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_27/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_76/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_76/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_77/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_77/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_78/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_78/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_79/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_79/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_26/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_26/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_27/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_27/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_76/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_76/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_77/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_77/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_78/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_78/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_79/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_79/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_conv2d_26_inputPlaceholder*/
_output_shapes
:?????????dd*
dtype0*$
shape:?????????dd
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_26_inputconv2d_26/kernelconv2d_26/biasconv2d_27/kernelconv2d_27/biasdense_76/kerneldense_76/biasdense_77/kerneldense_77/biasdense_78/kerneldense_78/biasdense_79/kerneldense_79/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_408606
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_26/kernel/Read/ReadVariableOp"conv2d_26/bias/Read/ReadVariableOp$conv2d_27/kernel/Read/ReadVariableOp"conv2d_27/bias/Read/ReadVariableOp#dense_76/kernel/Read/ReadVariableOp!dense_76/bias/Read/ReadVariableOp#dense_77/kernel/Read/ReadVariableOp!dense_77/bias/Read/ReadVariableOp#dense_78/kernel/Read/ReadVariableOp!dense_78/bias/Read/ReadVariableOp#dense_79/kernel/Read/ReadVariableOp!dense_79/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_26/kernel/m/Read/ReadVariableOp)Adam/conv2d_26/bias/m/Read/ReadVariableOp+Adam/conv2d_27/kernel/m/Read/ReadVariableOp)Adam/conv2d_27/bias/m/Read/ReadVariableOp*Adam/dense_76/kernel/m/Read/ReadVariableOp(Adam/dense_76/bias/m/Read/ReadVariableOp*Adam/dense_77/kernel/m/Read/ReadVariableOp(Adam/dense_77/bias/m/Read/ReadVariableOp*Adam/dense_78/kernel/m/Read/ReadVariableOp(Adam/dense_78/bias/m/Read/ReadVariableOp*Adam/dense_79/kernel/m/Read/ReadVariableOp(Adam/dense_79/bias/m/Read/ReadVariableOp+Adam/conv2d_26/kernel/v/Read/ReadVariableOp)Adam/conv2d_26/bias/v/Read/ReadVariableOp+Adam/conv2d_27/kernel/v/Read/ReadVariableOp)Adam/conv2d_27/bias/v/Read/ReadVariableOp*Adam/dense_76/kernel/v/Read/ReadVariableOp(Adam/dense_76/bias/v/Read/ReadVariableOp*Adam/dense_77/kernel/v/Read/ReadVariableOp(Adam/dense_77/bias/v/Read/ReadVariableOp*Adam/dense_78/kernel/v/Read/ReadVariableOp(Adam/dense_78/bias/v/Read/ReadVariableOp*Adam/dense_79/kernel/v/Read/ReadVariableOp(Adam/dense_79/bias/v/Read/ReadVariableOpConst*:
Tin3
12/	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_409088
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_26/kernelconv2d_26/biasconv2d_27/kernelconv2d_27/biasdense_76/kerneldense_76/biasdense_77/kerneldense_77/biasdense_78/kerneldense_78/biasdense_79/kerneldense_79/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_26/kernel/mAdam/conv2d_26/bias/mAdam/conv2d_27/kernel/mAdam/conv2d_27/bias/mAdam/dense_76/kernel/mAdam/dense_76/bias/mAdam/dense_77/kernel/mAdam/dense_77/bias/mAdam/dense_78/kernel/mAdam/dense_78/bias/mAdam/dense_79/kernel/mAdam/dense_79/bias/mAdam/conv2d_26/kernel/vAdam/conv2d_26/bias/vAdam/conv2d_27/kernel/vAdam/conv2d_27/bias/vAdam/dense_76/kernel/vAdam/dense_76/bias/vAdam/dense_77/kernel/vAdam/dense_77/bias/vAdam/dense_78/kernel/vAdam/dense_78/bias/vAdam/dense_79/kernel/vAdam/dense_79/bias/v*9
Tin2
02.*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_409233??
?
d
F__inference_dropout_29_layer_call_and_return_conditional_losses_407744

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????$c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????$"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$:W S
/
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
?
.__inference_sequential_36_layer_call_fn_408184
conv2d_26_input!
unknown:
	unknown_0:#
	unknown_1:$
	unknown_2:$
	unknown_3:
??
	unknown_4:
	unknown_5:0
	unknown_6:0
	unknown_7:0
	unknown_8:
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_26_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_36_layer_call_and_return_conditional_losses_408128o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????dd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????dd
)
_user_specified_nameconv2d_26_input
?
?
)__inference_dense_79_layer_call_fn_408869

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_79_layer_call_and_return_conditional_losses_407840o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_dense_76_layer_call_and_return_conditional_losses_408790

inputs2
matmul_readvariableop_resource:
??-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_76/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:??????????
1dense_76/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
"dense_76/kernel/Regularizer/SquareSquare9dense_76/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??r
!dense_76/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_76/kernel/Regularizer/SumSum&dense_76/kernel/Regularizer/Square:y:0*dense_76/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_76/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_76/kernel/Regularizer/mulMul*dense_76/kernel/Regularizer/mul/x:output:0(dense_76/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_76/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_76/kernel/Regularizer/Square/ReadVariableOp1dense_76/kernel/Regularizer/Square/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_408606
conv2d_26_input!
unknown:
	unknown_0:#
	unknown_1:$
	unknown_2:$
	unknown_3:
??
	unknown_4:
	unknown_5:0
	unknown_6:0
	unknown_7:0
	unknown_8:
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_26_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_407658o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????dd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????dd
)
_user_specified_nameconv2d_26_input
?
M
1__inference_max_pooling2d_27_layer_call_fn_408715

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_407679?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

e
F__inference_dropout_28_layer_call_and_return_conditional_losses_407987

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????//$C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????//$*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????//$w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????//$q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????//$a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????//$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????//$:W S
/
_output_shapes
:?????????//$
 
_user_specified_nameinputs
?
?
D__inference_dense_79_layer_call_and_return_conditional_losses_407840

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_79/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:??????????
1dense_79/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0?
"dense_79/kernel/Regularizer/SquareSquare9dense_79/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:r
!dense_79/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_79/kernel/Regularizer/SumSum&dense_79/kernel/Regularizer/Square:y:0*dense_79/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_79/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_79/kernel/Regularizer/mulMul*dense_79/kernel/Regularizer/mul/x:output:0(dense_79/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_79/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_79/kernel/Regularizer/Square/ReadVariableOp1dense_79/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_27_layer_call_fn_408672

inputs!
unknown:$
	unknown_0:$
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????//$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_407725w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????//$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????11: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????11
 
_user_specified_nameinputs
?
d
F__inference_dropout_28_layer_call_and_return_conditional_losses_408698

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????//$c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????//$"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????//$:W S
/
_output_shapes
:?????????//$
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_407679

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_408908L
:dense_77_kernel_regularizer_square_readvariableop_resource:0
identity??1dense_77/kernel/Regularizer/Square/ReadVariableOp?
1dense_77/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_77_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:0*
dtype0?
"dense_77/kernel/Regularizer/SquareSquare9dense_77/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_77/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_77/kernel/Regularizer/SumSum&dense_77/kernel/Regularizer/Square:y:0*dense_77/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_77/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_77/kernel/Regularizer/mulMul*dense_77/kernel/Regularizer/mul/x:output:0(dense_77/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_77/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_77/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_77/kernel/Regularizer/Square/ReadVariableOp1dense_77/kernel/Regularizer/Square/ReadVariableOp
?W
?
I__inference_sequential_36_layer_call_and_return_conditional_losses_408312
conv2d_26_input*
conv2d_26_408251:
conv2d_26_408253:*
conv2d_27_408258:$
conv2d_27_408260:$#
dense_76_408267:
??
dense_76_408269:!
dense_77_408272:0
dense_77_408274:0!
dense_78_408277:0
dense_78_408279:!
dense_79_408282:
dense_79_408284:
identity??!conv2d_26/StatefulPartitionedCall?!conv2d_27/StatefulPartitionedCall? dense_76/StatefulPartitionedCall?1dense_76/kernel/Regularizer/Square/ReadVariableOp? dense_77/StatefulPartitionedCall?1dense_77/kernel/Regularizer/Square/ReadVariableOp? dense_78/StatefulPartitionedCall?1dense_78/kernel/Regularizer/Square/ReadVariableOp? dense_79/StatefulPartitionedCall?1dense_79/kernel/Regularizer/Square/ReadVariableOp?"dropout_27/StatefulPartitionedCall?"dropout_28/StatefulPartitionedCall?"dropout_29/StatefulPartitionedCall?
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCallconv2d_26_inputconv2d_26_408251conv2d_26_408253*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????bb*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_26_layer_call_and_return_conditional_losses_407700?
 max_pooling2d_26/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????11* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_407667?
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????11* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_408020?
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall+dropout_27/StatefulPartitionedCall:output:0conv2d_27_408258conv2d_27_408260*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????//$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_407725?
"dropout_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0#^dropout_27/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????//$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_407987?
 max_pooling2d_27/PartitionedCallPartitionedCall+dropout_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_407679?
"dropout_29/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_27/PartitionedCall:output:0#^dropout_28/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_407964?
flatten_13/PartitionedCallPartitionedCall+dropout_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_13_layer_call_and_return_conditional_losses_407752?
 dense_76/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0dense_76_408267dense_76_408269*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_407771?
 dense_77/StatefulPartitionedCallStatefulPartitionedCall)dense_76/StatefulPartitionedCall:output:0dense_77_408272dense_77_408274*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_77_layer_call_and_return_conditional_losses_407794?
 dense_78/StatefulPartitionedCallStatefulPartitionedCall)dense_77/StatefulPartitionedCall:output:0dense_78_408277dense_78_408279*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_78_layer_call_and_return_conditional_losses_407817?
 dense_79/StatefulPartitionedCallStatefulPartitionedCall)dense_78/StatefulPartitionedCall:output:0dense_79_408282dense_79_408284*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_79_layer_call_and_return_conditional_losses_407840?
1dense_76/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_76_408267* 
_output_shapes
:
??*
dtype0?
"dense_76/kernel/Regularizer/SquareSquare9dense_76/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??r
!dense_76/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_76/kernel/Regularizer/SumSum&dense_76/kernel/Regularizer/Square:y:0*dense_76/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_76/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_76/kernel/Regularizer/mulMul*dense_76/kernel/Regularizer/mul/x:output:0(dense_76/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_77/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_77_408272*
_output_shapes

:0*
dtype0?
"dense_77/kernel/Regularizer/SquareSquare9dense_77/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_77/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_77/kernel/Regularizer/SumSum&dense_77/kernel/Regularizer/Square:y:0*dense_77/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_77/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_77/kernel/Regularizer/mulMul*dense_77/kernel/Regularizer/mul/x:output:0(dense_77/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_78/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_78_408277*
_output_shapes

:0*
dtype0?
"dense_78/kernel/Regularizer/SquareSquare9dense_78/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_78/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_78/kernel/Regularizer/SumSum&dense_78/kernel/Regularizer/Square:y:0*dense_78/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_78/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_78/kernel/Regularizer/mulMul*dense_78/kernel/Regularizer/mul/x:output:0(dense_78/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_79/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_79_408282*
_output_shapes

:*
dtype0?
"dense_79/kernel/Regularizer/SquareSquare9dense_79/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:r
!dense_79/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_79/kernel/Regularizer/SumSum&dense_79/kernel/Regularizer/Square:y:0*dense_79/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_79/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_79/kernel/Regularizer/mulMul*dense_79/kernel/Regularizer/mul/x:output:0(dense_79/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_79/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall2^dense_76/kernel/Regularizer/Square/ReadVariableOp!^dense_77/StatefulPartitionedCall2^dense_77/kernel/Regularizer/Square/ReadVariableOp!^dense_78/StatefulPartitionedCall2^dense_78/kernel/Regularizer/Square/ReadVariableOp!^dense_79/StatefulPartitionedCall2^dense_79/kernel/Regularizer/Square/ReadVariableOp#^dropout_27/StatefulPartitionedCall#^dropout_28/StatefulPartitionedCall#^dropout_29/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????dd: : : : : : : : : : : : 2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2f
1dense_76/kernel/Regularizer/Square/ReadVariableOp1dense_76/kernel/Regularizer/Square/ReadVariableOp2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall2f
1dense_77/kernel/Regularizer/Square/ReadVariableOp1dense_77/kernel/Regularizer/Square/ReadVariableOp2D
 dense_78/StatefulPartitionedCall dense_78/StatefulPartitionedCall2f
1dense_78/kernel/Regularizer/Square/ReadVariableOp1dense_78/kernel/Regularizer/Square/ReadVariableOp2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall2f
1dense_79/kernel/Regularizer/Square/ReadVariableOp1dense_79/kernel/Regularizer/Square/ReadVariableOp2H
"dropout_27/StatefulPartitionedCall"dropout_27/StatefulPartitionedCall2H
"dropout_28/StatefulPartitionedCall"dropout_28/StatefulPartitionedCall2H
"dropout_29/StatefulPartitionedCall"dropout_29/StatefulPartitionedCall:` \
/
_output_shapes
:?????????dd
)
_user_specified_nameconv2d_26_input
?

e
F__inference_dropout_27_layer_call_and_return_conditional_losses_408020

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????11C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????11*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????11w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????11q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????11a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????11"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????11:W S
/
_output_shapes
:?????????11
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_407667

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
)__inference_dense_77_layer_call_fn_408805

inputs
unknown:0
	unknown_0:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_77_layer_call_and_return_conditional_losses_407794o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_13_layer_call_and_return_conditional_losses_407752

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? Q  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$:W S
/
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
G
+__inference_dropout_27_layer_call_fn_408641

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????11* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_407712h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????11"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????11:W S
/
_output_shapes
:?????????11
 
_user_specified_nameinputs
?[
?
__inference__traced_save_409088
file_prefix/
+savev2_conv2d_26_kernel_read_readvariableop-
)savev2_conv2d_26_bias_read_readvariableop/
+savev2_conv2d_27_kernel_read_readvariableop-
)savev2_conv2d_27_bias_read_readvariableop.
*savev2_dense_76_kernel_read_readvariableop,
(savev2_dense_76_bias_read_readvariableop.
*savev2_dense_77_kernel_read_readvariableop,
(savev2_dense_77_bias_read_readvariableop.
*savev2_dense_78_kernel_read_readvariableop,
(savev2_dense_78_bias_read_readvariableop.
*savev2_dense_79_kernel_read_readvariableop,
(savev2_dense_79_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_26_kernel_m_read_readvariableop4
0savev2_adam_conv2d_26_bias_m_read_readvariableop6
2savev2_adam_conv2d_27_kernel_m_read_readvariableop4
0savev2_adam_conv2d_27_bias_m_read_readvariableop5
1savev2_adam_dense_76_kernel_m_read_readvariableop3
/savev2_adam_dense_76_bias_m_read_readvariableop5
1savev2_adam_dense_77_kernel_m_read_readvariableop3
/savev2_adam_dense_77_bias_m_read_readvariableop5
1savev2_adam_dense_78_kernel_m_read_readvariableop3
/savev2_adam_dense_78_bias_m_read_readvariableop5
1savev2_adam_dense_79_kernel_m_read_readvariableop3
/savev2_adam_dense_79_bias_m_read_readvariableop6
2savev2_adam_conv2d_26_kernel_v_read_readvariableop4
0savev2_adam_conv2d_26_bias_v_read_readvariableop6
2savev2_adam_conv2d_27_kernel_v_read_readvariableop4
0savev2_adam_conv2d_27_bias_v_read_readvariableop5
1savev2_adam_dense_76_kernel_v_read_readvariableop3
/savev2_adam_dense_76_bias_v_read_readvariableop5
1savev2_adam_dense_77_kernel_v_read_readvariableop3
/savev2_adam_dense_77_bias_v_read_readvariableop5
1savev2_adam_dense_78_kernel_v_read_readvariableop3
/savev2_adam_dense_78_bias_v_read_readvariableop5
1savev2_adam_dense_79_kernel_v_read_readvariableop3
/savev2_adam_dense_79_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*?
value?B?.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_26_kernel_read_readvariableop)savev2_conv2d_26_bias_read_readvariableop+savev2_conv2d_27_kernel_read_readvariableop)savev2_conv2d_27_bias_read_readvariableop*savev2_dense_76_kernel_read_readvariableop(savev2_dense_76_bias_read_readvariableop*savev2_dense_77_kernel_read_readvariableop(savev2_dense_77_bias_read_readvariableop*savev2_dense_78_kernel_read_readvariableop(savev2_dense_78_bias_read_readvariableop*savev2_dense_79_kernel_read_readvariableop(savev2_dense_79_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_26_kernel_m_read_readvariableop0savev2_adam_conv2d_26_bias_m_read_readvariableop2savev2_adam_conv2d_27_kernel_m_read_readvariableop0savev2_adam_conv2d_27_bias_m_read_readvariableop1savev2_adam_dense_76_kernel_m_read_readvariableop/savev2_adam_dense_76_bias_m_read_readvariableop1savev2_adam_dense_77_kernel_m_read_readvariableop/savev2_adam_dense_77_bias_m_read_readvariableop1savev2_adam_dense_78_kernel_m_read_readvariableop/savev2_adam_dense_78_bias_m_read_readvariableop1savev2_adam_dense_79_kernel_m_read_readvariableop/savev2_adam_dense_79_bias_m_read_readvariableop2savev2_adam_conv2d_26_kernel_v_read_readvariableop0savev2_adam_conv2d_26_bias_v_read_readvariableop2savev2_adam_conv2d_27_kernel_v_read_readvariableop0savev2_adam_conv2d_27_bias_v_read_readvariableop1savev2_adam_dense_76_kernel_v_read_readvariableop/savev2_adam_dense_76_bias_v_read_readvariableop1savev2_adam_dense_77_kernel_v_read_readvariableop/savev2_adam_dense_77_bias_v_read_readvariableop1savev2_adam_dense_78_kernel_v_read_readvariableop/savev2_adam_dense_78_bias_v_read_readvariableop1savev2_adam_dense_79_kernel_v_read_readvariableop/savev2_adam_dense_79_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::$:$:
??::0:0:0:::: : : : : : : : : :::$:$:
??::0:0:0::::::$:$:
??::0:0:0:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:$: 

_output_shapes
:$:&"
 
_output_shapes
:
??: 

_output_shapes
::$ 

_output_shapes

:0: 

_output_shapes
:0:$	 

_output_shapes

:0: 


_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:$: 

_output_shapes
:$:&"
 
_output_shapes
:
??: 

_output_shapes
::$ 

_output_shapes

:0: 

_output_shapes
:0:$ 

_output_shapes

:0: 

_output_shapes
::$  

_output_shapes

:: !

_output_shapes
::,"(
&
_output_shapes
:: #

_output_shapes
::,$(
&
_output_shapes
:$: %

_output_shapes
:$:&&"
 
_output_shapes
:
??: '

_output_shapes
::$( 

_output_shapes

:0: )

_output_shapes
:0:$* 

_output_shapes

:0: +

_output_shapes
::$, 

_output_shapes

:: -

_output_shapes
::.

_output_shapes
: 
?
?
.__inference_sequential_36_layer_call_fn_408371

inputs!
unknown:
	unknown_0:#
	unknown_1:$
	unknown_2:$
	unknown_3:
??
	unknown_4:
	unknown_5:0
	unknown_6:0
	unknown_7:0
	unknown_8:
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_36_layer_call_and_return_conditional_losses_407871o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????dd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?
?
)__inference_dense_76_layer_call_fn_408773

inputs
unknown:
??
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_407771o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?V
?
I__inference_sequential_36_layer_call_and_return_conditional_losses_408128

inputs*
conv2d_26_408067:
conv2d_26_408069:*
conv2d_27_408074:$
conv2d_27_408076:$#
dense_76_408083:
??
dense_76_408085:!
dense_77_408088:0
dense_77_408090:0!
dense_78_408093:0
dense_78_408095:!
dense_79_408098:
dense_79_408100:
identity??!conv2d_26/StatefulPartitionedCall?!conv2d_27/StatefulPartitionedCall? dense_76/StatefulPartitionedCall?1dense_76/kernel/Regularizer/Square/ReadVariableOp? dense_77/StatefulPartitionedCall?1dense_77/kernel/Regularizer/Square/ReadVariableOp? dense_78/StatefulPartitionedCall?1dense_78/kernel/Regularizer/Square/ReadVariableOp? dense_79/StatefulPartitionedCall?1dense_79/kernel/Regularizer/Square/ReadVariableOp?"dropout_27/StatefulPartitionedCall?"dropout_28/StatefulPartitionedCall?"dropout_29/StatefulPartitionedCall?
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_26_408067conv2d_26_408069*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????bb*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_26_layer_call_and_return_conditional_losses_407700?
 max_pooling2d_26/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????11* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_407667?
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????11* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_408020?
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall+dropout_27/StatefulPartitionedCall:output:0conv2d_27_408074conv2d_27_408076*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????//$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_407725?
"dropout_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0#^dropout_27/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????//$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_407987?
 max_pooling2d_27/PartitionedCallPartitionedCall+dropout_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_407679?
"dropout_29/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_27/PartitionedCall:output:0#^dropout_28/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_407964?
flatten_13/PartitionedCallPartitionedCall+dropout_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_13_layer_call_and_return_conditional_losses_407752?
 dense_76/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0dense_76_408083dense_76_408085*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_407771?
 dense_77/StatefulPartitionedCallStatefulPartitionedCall)dense_76/StatefulPartitionedCall:output:0dense_77_408088dense_77_408090*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_77_layer_call_and_return_conditional_losses_407794?
 dense_78/StatefulPartitionedCallStatefulPartitionedCall)dense_77/StatefulPartitionedCall:output:0dense_78_408093dense_78_408095*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_78_layer_call_and_return_conditional_losses_407817?
 dense_79/StatefulPartitionedCallStatefulPartitionedCall)dense_78/StatefulPartitionedCall:output:0dense_79_408098dense_79_408100*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_79_layer_call_and_return_conditional_losses_407840?
1dense_76/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_76_408083* 
_output_shapes
:
??*
dtype0?
"dense_76/kernel/Regularizer/SquareSquare9dense_76/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??r
!dense_76/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_76/kernel/Regularizer/SumSum&dense_76/kernel/Regularizer/Square:y:0*dense_76/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_76/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_76/kernel/Regularizer/mulMul*dense_76/kernel/Regularizer/mul/x:output:0(dense_76/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_77/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_77_408088*
_output_shapes

:0*
dtype0?
"dense_77/kernel/Regularizer/SquareSquare9dense_77/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_77/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_77/kernel/Regularizer/SumSum&dense_77/kernel/Regularizer/Square:y:0*dense_77/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_77/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_77/kernel/Regularizer/mulMul*dense_77/kernel/Regularizer/mul/x:output:0(dense_77/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_78/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_78_408093*
_output_shapes

:0*
dtype0?
"dense_78/kernel/Regularizer/SquareSquare9dense_78/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_78/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_78/kernel/Regularizer/SumSum&dense_78/kernel/Regularizer/Square:y:0*dense_78/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_78/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_78/kernel/Regularizer/mulMul*dense_78/kernel/Regularizer/mul/x:output:0(dense_78/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_79/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_79_408098*
_output_shapes

:*
dtype0?
"dense_79/kernel/Regularizer/SquareSquare9dense_79/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:r
!dense_79/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_79/kernel/Regularizer/SumSum&dense_79/kernel/Regularizer/Square:y:0*dense_79/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_79/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_79/kernel/Regularizer/mulMul*dense_79/kernel/Regularizer/mul/x:output:0(dense_79/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_79/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall2^dense_76/kernel/Regularizer/Square/ReadVariableOp!^dense_77/StatefulPartitionedCall2^dense_77/kernel/Regularizer/Square/ReadVariableOp!^dense_78/StatefulPartitionedCall2^dense_78/kernel/Regularizer/Square/ReadVariableOp!^dense_79/StatefulPartitionedCall2^dense_79/kernel/Regularizer/Square/ReadVariableOp#^dropout_27/StatefulPartitionedCall#^dropout_28/StatefulPartitionedCall#^dropout_29/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????dd: : : : : : : : : : : : 2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2f
1dense_76/kernel/Regularizer/Square/ReadVariableOp1dense_76/kernel/Regularizer/Square/ReadVariableOp2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall2f
1dense_77/kernel/Regularizer/Square/ReadVariableOp1dense_77/kernel/Regularizer/Square/ReadVariableOp2D
 dense_78/StatefulPartitionedCall dense_78/StatefulPartitionedCall2f
1dense_78/kernel/Regularizer/Square/ReadVariableOp1dense_78/kernel/Regularizer/Square/ReadVariableOp2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall2f
1dense_79/kernel/Regularizer/Square/ReadVariableOp1dense_79/kernel/Regularizer/Square/ReadVariableOp2H
"dropout_27/StatefulPartitionedCall"dropout_27/StatefulPartitionedCall2H
"dropout_28/StatefulPartitionedCall"dropout_28/StatefulPartitionedCall2H
"dropout_29/StatefulPartitionedCall"dropout_29/StatefulPartitionedCall:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?_
?
I__inference_sequential_36_layer_call_and_return_conditional_losses_408477

inputsB
(conv2d_26_conv2d_readvariableop_resource:7
)conv2d_26_biasadd_readvariableop_resource:B
(conv2d_27_conv2d_readvariableop_resource:$7
)conv2d_27_biasadd_readvariableop_resource:$;
'dense_76_matmul_readvariableop_resource:
??6
(dense_76_biasadd_readvariableop_resource:9
'dense_77_matmul_readvariableop_resource:06
(dense_77_biasadd_readvariableop_resource:09
'dense_78_matmul_readvariableop_resource:06
(dense_78_biasadd_readvariableop_resource:9
'dense_79_matmul_readvariableop_resource:6
(dense_79_biasadd_readvariableop_resource:
identity?? conv2d_26/BiasAdd/ReadVariableOp?conv2d_26/Conv2D/ReadVariableOp? conv2d_27/BiasAdd/ReadVariableOp?conv2d_27/Conv2D/ReadVariableOp?dense_76/BiasAdd/ReadVariableOp?dense_76/MatMul/ReadVariableOp?1dense_76/kernel/Regularizer/Square/ReadVariableOp?dense_77/BiasAdd/ReadVariableOp?dense_77/MatMul/ReadVariableOp?1dense_77/kernel/Regularizer/Square/ReadVariableOp?dense_78/BiasAdd/ReadVariableOp?dense_78/MatMul/ReadVariableOp?1dense_78/kernel/Regularizer/Square/ReadVariableOp?dense_79/BiasAdd/ReadVariableOp?dense_79/MatMul/ReadVariableOp?1dense_79/kernel/Regularizer/Square/ReadVariableOp?
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_26/Conv2DConv2Dinputs'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bb*
paddingVALID*
strides
?
 conv2d_26/BiasAdd/ReadVariableOpReadVariableOp)conv2d_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_26/BiasAddBiasAddconv2d_26/Conv2D:output:0(conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bbl
conv2d_26/ReluReluconv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:?????????bb?
max_pooling2d_26/MaxPoolMaxPoolconv2d_26/Relu:activations:0*/
_output_shapes
:?????????11*
ksize
*
paddingSAME*
strides
|
dropout_27/IdentityIdentity!max_pooling2d_26/MaxPool:output:0*
T0*/
_output_shapes
:?????????11?
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:$*
dtype0?
conv2d_27/Conv2DConv2Ddropout_27/Identity:output:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//$*
paddingVALID*
strides
?
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0?
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//$l
conv2d_27/ReluReluconv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:?????????//$w
dropout_28/IdentityIdentityconv2d_27/Relu:activations:0*
T0*/
_output_shapes
:?????????//$?
max_pooling2d_27/MaxPoolMaxPooldropout_28/Identity:output:0*/
_output_shapes
:?????????$*
ksize
*
paddingSAME*
strides
|
dropout_29/IdentityIdentity!max_pooling2d_27/MaxPool:output:0*
T0*/
_output_shapes
:?????????$a
flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? Q  ?
flatten_13/ReshapeReshapedropout_29/Identity:output:0flatten_13/Const:output:0*
T0*)
_output_shapes
:????????????
dense_76/MatMul/ReadVariableOpReadVariableOp'dense_76_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_76/MatMulMatMulflatten_13/Reshape:output:0&dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_76/BiasAdd/ReadVariableOpReadVariableOp(dense_76_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_76/BiasAddBiasAdddense_76/MatMul:product:0'dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense_76/ReluReludense_76/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_77/MatMul/ReadVariableOpReadVariableOp'dense_77_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
dense_77/MatMulMatMuldense_76/Relu:activations:0&dense_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0?
dense_77/BiasAdd/ReadVariableOpReadVariableOp(dense_77_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
dense_77/BiasAddBiasAdddense_77/MatMul:product:0'dense_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0b
dense_77/ReluReludense_77/BiasAdd:output:0*
T0*'
_output_shapes
:?????????0?
dense_78/MatMul/ReadVariableOpReadVariableOp'dense_78_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
dense_78/MatMulMatMuldense_77/Relu:activations:0&dense_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_78/BiasAdd/ReadVariableOpReadVariableOp(dense_78_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_78/BiasAddBiasAdddense_78/MatMul:product:0'dense_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense_78/ReluReludense_78/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_79/MatMul/ReadVariableOpReadVariableOp'dense_79_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_79/MatMulMatMuldense_78/Relu:activations:0&dense_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_79/BiasAdd/ReadVariableOpReadVariableOp(dense_79_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_79/BiasAddBiasAdddense_79/MatMul:product:0'dense_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_79/SoftmaxSoftmaxdense_79/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
1dense_76/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_76_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
"dense_76/kernel/Regularizer/SquareSquare9dense_76/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??r
!dense_76/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_76/kernel/Regularizer/SumSum&dense_76/kernel/Regularizer/Square:y:0*dense_76/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_76/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_76/kernel/Regularizer/mulMul*dense_76/kernel/Regularizer/mul/x:output:0(dense_76/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_77/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_77_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
"dense_77/kernel/Regularizer/SquareSquare9dense_77/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_77/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_77/kernel/Regularizer/SumSum&dense_77/kernel/Regularizer/Square:y:0*dense_77/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_77/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_77/kernel/Regularizer/mulMul*dense_77/kernel/Regularizer/mul/x:output:0(dense_77/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_78/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_78_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
"dense_78/kernel/Regularizer/SquareSquare9dense_78/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_78/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_78/kernel/Regularizer/SumSum&dense_78/kernel/Regularizer/Square:y:0*dense_78/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_78/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_78/kernel/Regularizer/mulMul*dense_78/kernel/Regularizer/mul/x:output:0(dense_78/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_79/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_79_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
"dense_79/kernel/Regularizer/SquareSquare9dense_79/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:r
!dense_79/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_79/kernel/Regularizer/SumSum&dense_79/kernel/Regularizer/Square:y:0*dense_79/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_79/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_79/kernel/Regularizer/mulMul*dense_79/kernel/Regularizer/mul/x:output:0(dense_79/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentitydense_79/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_26/BiasAdd/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp2^dense_76/kernel/Regularizer/Square/ReadVariableOp ^dense_77/BiasAdd/ReadVariableOp^dense_77/MatMul/ReadVariableOp2^dense_77/kernel/Regularizer/Square/ReadVariableOp ^dense_78/BiasAdd/ReadVariableOp^dense_78/MatMul/ReadVariableOp2^dense_78/kernel/Regularizer/Square/ReadVariableOp ^dense_79/BiasAdd/ReadVariableOp^dense_79/MatMul/ReadVariableOp2^dense_79/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????dd: : : : : : : : : : : : 2D
 conv2d_26/BiasAdd/ReadVariableOp conv2d_26/BiasAdd/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2B
dense_76/BiasAdd/ReadVariableOpdense_76/BiasAdd/ReadVariableOp2@
dense_76/MatMul/ReadVariableOpdense_76/MatMul/ReadVariableOp2f
1dense_76/kernel/Regularizer/Square/ReadVariableOp1dense_76/kernel/Regularizer/Square/ReadVariableOp2B
dense_77/BiasAdd/ReadVariableOpdense_77/BiasAdd/ReadVariableOp2@
dense_77/MatMul/ReadVariableOpdense_77/MatMul/ReadVariableOp2f
1dense_77/kernel/Regularizer/Square/ReadVariableOp1dense_77/kernel/Regularizer/Square/ReadVariableOp2B
dense_78/BiasAdd/ReadVariableOpdense_78/BiasAdd/ReadVariableOp2@
dense_78/MatMul/ReadVariableOpdense_78/MatMul/ReadVariableOp2f
1dense_78/kernel/Regularizer/Square/ReadVariableOp1dense_78/kernel/Regularizer/Square/ReadVariableOp2B
dense_79/BiasAdd/ReadVariableOpdense_79/BiasAdd/ReadVariableOp2@
dense_79/MatMul/ReadVariableOpdense_79/MatMul/ReadVariableOp2f
1dense_79/kernel/Regularizer/Square/ReadVariableOp1dense_79/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_408636

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_26_layer_call_and_return_conditional_losses_408626

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bb*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bbX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????bbi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????bbw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????dd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?
?
)__inference_dense_78_layer_call_fn_408837

inputs
unknown:0
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_78_layer_call_and_return_conditional_losses_407817o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????0: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
D__inference_dense_76_layer_call_and_return_conditional_losses_407771

inputs2
matmul_readvariableop_resource:
??-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_76/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:??????????
1dense_76/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
"dense_76/kernel/Regularizer/SquareSquare9dense_76/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??r
!dense_76/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_76/kernel/Regularizer/SumSum&dense_76/kernel/Regularizer/Square:y:0*dense_76/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_76/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_76/kernel/Regularizer/mulMul*dense_76/kernel/Regularizer/mul/x:output:0(dense_76/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_76/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_76/kernel/Regularizer/Square/ReadVariableOp1dense_76/kernel/Regularizer/Square/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?

e
F__inference_dropout_29_layer_call_and_return_conditional_losses_407964

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????$C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????$*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????$w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????$q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????$a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$:W S
/
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
d
F__inference_dropout_27_layer_call_and_return_conditional_losses_408651

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????11c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????11"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????11:W S
/
_output_shapes
:?????????11
 
_user_specified_nameinputs
?
?
.__inference_sequential_36_layer_call_fn_408400

inputs!
unknown:
	unknown_0:#
	unknown_1:$
	unknown_2:$
	unknown_3:
??
	unknown_4:
	unknown_5:0
	unknown_6:0
	unknown_7:0
	unknown_8:
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_36_layer_call_and_return_conditional_losses_408128o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????dd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?N
?
!__inference__wrapped_model_407658
conv2d_26_inputP
6sequential_36_conv2d_26_conv2d_readvariableop_resource:E
7sequential_36_conv2d_26_biasadd_readvariableop_resource:P
6sequential_36_conv2d_27_conv2d_readvariableop_resource:$E
7sequential_36_conv2d_27_biasadd_readvariableop_resource:$I
5sequential_36_dense_76_matmul_readvariableop_resource:
??D
6sequential_36_dense_76_biasadd_readvariableop_resource:G
5sequential_36_dense_77_matmul_readvariableop_resource:0D
6sequential_36_dense_77_biasadd_readvariableop_resource:0G
5sequential_36_dense_78_matmul_readvariableop_resource:0D
6sequential_36_dense_78_biasadd_readvariableop_resource:G
5sequential_36_dense_79_matmul_readvariableop_resource:D
6sequential_36_dense_79_biasadd_readvariableop_resource:
identity??.sequential_36/conv2d_26/BiasAdd/ReadVariableOp?-sequential_36/conv2d_26/Conv2D/ReadVariableOp?.sequential_36/conv2d_27/BiasAdd/ReadVariableOp?-sequential_36/conv2d_27/Conv2D/ReadVariableOp?-sequential_36/dense_76/BiasAdd/ReadVariableOp?,sequential_36/dense_76/MatMul/ReadVariableOp?-sequential_36/dense_77/BiasAdd/ReadVariableOp?,sequential_36/dense_77/MatMul/ReadVariableOp?-sequential_36/dense_78/BiasAdd/ReadVariableOp?,sequential_36/dense_78/MatMul/ReadVariableOp?-sequential_36/dense_79/BiasAdd/ReadVariableOp?,sequential_36/dense_79/MatMul/ReadVariableOp?
-sequential_36/conv2d_26/Conv2D/ReadVariableOpReadVariableOp6sequential_36_conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_36/conv2d_26/Conv2DConv2Dconv2d_26_input5sequential_36/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bb*
paddingVALID*
strides
?
.sequential_36/conv2d_26/BiasAdd/ReadVariableOpReadVariableOp7sequential_36_conv2d_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_36/conv2d_26/BiasAddBiasAdd'sequential_36/conv2d_26/Conv2D:output:06sequential_36/conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bb?
sequential_36/conv2d_26/ReluRelu(sequential_36/conv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:?????????bb?
&sequential_36/max_pooling2d_26/MaxPoolMaxPool*sequential_36/conv2d_26/Relu:activations:0*/
_output_shapes
:?????????11*
ksize
*
paddingSAME*
strides
?
!sequential_36/dropout_27/IdentityIdentity/sequential_36/max_pooling2d_26/MaxPool:output:0*
T0*/
_output_shapes
:?????????11?
-sequential_36/conv2d_27/Conv2D/ReadVariableOpReadVariableOp6sequential_36_conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:$*
dtype0?
sequential_36/conv2d_27/Conv2DConv2D*sequential_36/dropout_27/Identity:output:05sequential_36/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//$*
paddingVALID*
strides
?
.sequential_36/conv2d_27/BiasAdd/ReadVariableOpReadVariableOp7sequential_36_conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0?
sequential_36/conv2d_27/BiasAddBiasAdd'sequential_36/conv2d_27/Conv2D:output:06sequential_36/conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//$?
sequential_36/conv2d_27/ReluRelu(sequential_36/conv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:?????????//$?
!sequential_36/dropout_28/IdentityIdentity*sequential_36/conv2d_27/Relu:activations:0*
T0*/
_output_shapes
:?????????//$?
&sequential_36/max_pooling2d_27/MaxPoolMaxPool*sequential_36/dropout_28/Identity:output:0*/
_output_shapes
:?????????$*
ksize
*
paddingSAME*
strides
?
!sequential_36/dropout_29/IdentityIdentity/sequential_36/max_pooling2d_27/MaxPool:output:0*
T0*/
_output_shapes
:?????????$o
sequential_36/flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? Q  ?
 sequential_36/flatten_13/ReshapeReshape*sequential_36/dropout_29/Identity:output:0'sequential_36/flatten_13/Const:output:0*
T0*)
_output_shapes
:????????????
,sequential_36/dense_76/MatMul/ReadVariableOpReadVariableOp5sequential_36_dense_76_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
sequential_36/dense_76/MatMulMatMul)sequential_36/flatten_13/Reshape:output:04sequential_36/dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_36/dense_76/BiasAdd/ReadVariableOpReadVariableOp6sequential_36_dense_76_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_36/dense_76/BiasAddBiasAdd'sequential_36/dense_76/MatMul:product:05sequential_36/dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
sequential_36/dense_76/ReluRelu'sequential_36/dense_76/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
,sequential_36/dense_77/MatMul/ReadVariableOpReadVariableOp5sequential_36_dense_77_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
sequential_36/dense_77/MatMulMatMul)sequential_36/dense_76/Relu:activations:04sequential_36/dense_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0?
-sequential_36/dense_77/BiasAdd/ReadVariableOpReadVariableOp6sequential_36_dense_77_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
sequential_36/dense_77/BiasAddBiasAdd'sequential_36/dense_77/MatMul:product:05sequential_36/dense_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0~
sequential_36/dense_77/ReluRelu'sequential_36/dense_77/BiasAdd:output:0*
T0*'
_output_shapes
:?????????0?
,sequential_36/dense_78/MatMul/ReadVariableOpReadVariableOp5sequential_36_dense_78_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
sequential_36/dense_78/MatMulMatMul)sequential_36/dense_77/Relu:activations:04sequential_36/dense_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_36/dense_78/BiasAdd/ReadVariableOpReadVariableOp6sequential_36_dense_78_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_36/dense_78/BiasAddBiasAdd'sequential_36/dense_78/MatMul:product:05sequential_36/dense_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
sequential_36/dense_78/ReluRelu'sequential_36/dense_78/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
,sequential_36/dense_79/MatMul/ReadVariableOpReadVariableOp5sequential_36_dense_79_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_36/dense_79/MatMulMatMul)sequential_36/dense_78/Relu:activations:04sequential_36/dense_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_36/dense_79/BiasAdd/ReadVariableOpReadVariableOp6sequential_36_dense_79_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_36/dense_79/BiasAddBiasAdd'sequential_36/dense_79/MatMul:product:05sequential_36/dense_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_36/dense_79/SoftmaxSoftmax'sequential_36/dense_79/BiasAdd:output:0*
T0*'
_output_shapes
:?????????w
IdentityIdentity(sequential_36/dense_79/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^sequential_36/conv2d_26/BiasAdd/ReadVariableOp.^sequential_36/conv2d_26/Conv2D/ReadVariableOp/^sequential_36/conv2d_27/BiasAdd/ReadVariableOp.^sequential_36/conv2d_27/Conv2D/ReadVariableOp.^sequential_36/dense_76/BiasAdd/ReadVariableOp-^sequential_36/dense_76/MatMul/ReadVariableOp.^sequential_36/dense_77/BiasAdd/ReadVariableOp-^sequential_36/dense_77/MatMul/ReadVariableOp.^sequential_36/dense_78/BiasAdd/ReadVariableOp-^sequential_36/dense_78/MatMul/ReadVariableOp.^sequential_36/dense_79/BiasAdd/ReadVariableOp-^sequential_36/dense_79/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????dd: : : : : : : : : : : : 2`
.sequential_36/conv2d_26/BiasAdd/ReadVariableOp.sequential_36/conv2d_26/BiasAdd/ReadVariableOp2^
-sequential_36/conv2d_26/Conv2D/ReadVariableOp-sequential_36/conv2d_26/Conv2D/ReadVariableOp2`
.sequential_36/conv2d_27/BiasAdd/ReadVariableOp.sequential_36/conv2d_27/BiasAdd/ReadVariableOp2^
-sequential_36/conv2d_27/Conv2D/ReadVariableOp-sequential_36/conv2d_27/Conv2D/ReadVariableOp2^
-sequential_36/dense_76/BiasAdd/ReadVariableOp-sequential_36/dense_76/BiasAdd/ReadVariableOp2\
,sequential_36/dense_76/MatMul/ReadVariableOp,sequential_36/dense_76/MatMul/ReadVariableOp2^
-sequential_36/dense_77/BiasAdd/ReadVariableOp-sequential_36/dense_77/BiasAdd/ReadVariableOp2\
,sequential_36/dense_77/MatMul/ReadVariableOp,sequential_36/dense_77/MatMul/ReadVariableOp2^
-sequential_36/dense_78/BiasAdd/ReadVariableOp-sequential_36/dense_78/BiasAdd/ReadVariableOp2\
,sequential_36/dense_78/MatMul/ReadVariableOp,sequential_36/dense_78/MatMul/ReadVariableOp2^
-sequential_36/dense_79/BiasAdd/ReadVariableOp-sequential_36/dense_79/BiasAdd/ReadVariableOp2\
,sequential_36/dense_79/MatMul/ReadVariableOp,sequential_36/dense_79/MatMul/ReadVariableOp:` \
/
_output_shapes
:?????????dd
)
_user_specified_nameconv2d_26_input
?
d
+__inference_dropout_27_layer_call_fn_408646

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????11* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_408020w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????11`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????1122
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????11
 
_user_specified_nameinputs
?
G
+__inference_dropout_29_layer_call_fn_408725

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_407744h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$:W S
/
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
?
D__inference_dense_77_layer_call_and_return_conditional_losses_408822

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_77/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????0?
1dense_77/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
"dense_77/kernel/Regularizer/SquareSquare9dense_77/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_77/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_77/kernel/Regularizer/SumSum&dense_77/kernel/Regularizer/Square:y:0*dense_77/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_77/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_77/kernel/Regularizer/mulMul*dense_77/kernel/Regularizer/mul/x:output:0(dense_77/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????0?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_77/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_77/kernel/Regularizer/Square/ReadVariableOp1dense_77/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_3_408930L
:dense_79_kernel_regularizer_square_readvariableop_resource:
identity??1dense_79/kernel/Regularizer/Square/ReadVariableOp?
1dense_79/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_79_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:*
dtype0?
"dense_79/kernel/Regularizer/SquareSquare9dense_79/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:r
!dense_79/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_79/kernel/Regularizer/SumSum&dense_79/kernel/Regularizer/Square:y:0*dense_79/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_79/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_79/kernel/Regularizer/mulMul*dense_79/kernel/Regularizer/mul/x:output:0(dense_79/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_79/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_79/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_79/kernel/Regularizer/Square/ReadVariableOp1dense_79/kernel/Regularizer/Square/ReadVariableOp
?R
?
I__inference_sequential_36_layer_call_and_return_conditional_losses_407871

inputs*
conv2d_26_407701:
conv2d_26_407703:*
conv2d_27_407726:$
conv2d_27_407728:$#
dense_76_407772:
??
dense_76_407774:!
dense_77_407795:0
dense_77_407797:0!
dense_78_407818:0
dense_78_407820:!
dense_79_407841:
dense_79_407843:
identity??!conv2d_26/StatefulPartitionedCall?!conv2d_27/StatefulPartitionedCall? dense_76/StatefulPartitionedCall?1dense_76/kernel/Regularizer/Square/ReadVariableOp? dense_77/StatefulPartitionedCall?1dense_77/kernel/Regularizer/Square/ReadVariableOp? dense_78/StatefulPartitionedCall?1dense_78/kernel/Regularizer/Square/ReadVariableOp? dense_79/StatefulPartitionedCall?1dense_79/kernel/Regularizer/Square/ReadVariableOp?
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_26_407701conv2d_26_407703*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????bb*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_26_layer_call_and_return_conditional_losses_407700?
 max_pooling2d_26/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????11* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_407667?
dropout_27/PartitionedCallPartitionedCall)max_pooling2d_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????11* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_407712?
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall#dropout_27/PartitionedCall:output:0conv2d_27_407726conv2d_27_407728*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????//$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_407725?
dropout_28/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????//$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_407736?
 max_pooling2d_27/PartitionedCallPartitionedCall#dropout_28/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_407679?
dropout_29/PartitionedCallPartitionedCall)max_pooling2d_27/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_407744?
flatten_13/PartitionedCallPartitionedCall#dropout_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_13_layer_call_and_return_conditional_losses_407752?
 dense_76/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0dense_76_407772dense_76_407774*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_407771?
 dense_77/StatefulPartitionedCallStatefulPartitionedCall)dense_76/StatefulPartitionedCall:output:0dense_77_407795dense_77_407797*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_77_layer_call_and_return_conditional_losses_407794?
 dense_78/StatefulPartitionedCallStatefulPartitionedCall)dense_77/StatefulPartitionedCall:output:0dense_78_407818dense_78_407820*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_78_layer_call_and_return_conditional_losses_407817?
 dense_79/StatefulPartitionedCallStatefulPartitionedCall)dense_78/StatefulPartitionedCall:output:0dense_79_407841dense_79_407843*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_79_layer_call_and_return_conditional_losses_407840?
1dense_76/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_76_407772* 
_output_shapes
:
??*
dtype0?
"dense_76/kernel/Regularizer/SquareSquare9dense_76/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??r
!dense_76/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_76/kernel/Regularizer/SumSum&dense_76/kernel/Regularizer/Square:y:0*dense_76/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_76/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_76/kernel/Regularizer/mulMul*dense_76/kernel/Regularizer/mul/x:output:0(dense_76/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_77/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_77_407795*
_output_shapes

:0*
dtype0?
"dense_77/kernel/Regularizer/SquareSquare9dense_77/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_77/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_77/kernel/Regularizer/SumSum&dense_77/kernel/Regularizer/Square:y:0*dense_77/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_77/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_77/kernel/Regularizer/mulMul*dense_77/kernel/Regularizer/mul/x:output:0(dense_77/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_78/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_78_407818*
_output_shapes

:0*
dtype0?
"dense_78/kernel/Regularizer/SquareSquare9dense_78/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_78/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_78/kernel/Regularizer/SumSum&dense_78/kernel/Regularizer/Square:y:0*dense_78/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_78/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_78/kernel/Regularizer/mulMul*dense_78/kernel/Regularizer/mul/x:output:0(dense_78/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_79/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_79_407841*
_output_shapes

:*
dtype0?
"dense_79/kernel/Regularizer/SquareSquare9dense_79/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:r
!dense_79/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_79/kernel/Regularizer/SumSum&dense_79/kernel/Regularizer/Square:y:0*dense_79/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_79/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_79/kernel/Regularizer/mulMul*dense_79/kernel/Regularizer/mul/x:output:0(dense_79/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_79/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall2^dense_76/kernel/Regularizer/Square/ReadVariableOp!^dense_77/StatefulPartitionedCall2^dense_77/kernel/Regularizer/Square/ReadVariableOp!^dense_78/StatefulPartitionedCall2^dense_78/kernel/Regularizer/Square/ReadVariableOp!^dense_79/StatefulPartitionedCall2^dense_79/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????dd: : : : : : : : : : : : 2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2f
1dense_76/kernel/Regularizer/Square/ReadVariableOp1dense_76/kernel/Regularizer/Square/ReadVariableOp2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall2f
1dense_77/kernel/Regularizer/Square/ReadVariableOp1dense_77/kernel/Regularizer/Square/ReadVariableOp2D
 dense_78/StatefulPartitionedCall dense_78/StatefulPartitionedCall2f
1dense_78/kernel/Regularizer/Square/ReadVariableOp1dense_78/kernel/Regularizer/Square/ReadVariableOp2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall2f
1dense_79/kernel/Regularizer/Square/ReadVariableOp1dense_79/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?

e
F__inference_dropout_27_layer_call_and_return_conditional_losses_408663

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????11C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????11*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????11w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????11q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????11a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????11"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????11:W S
/
_output_shapes
:?????????11
 
_user_specified_nameinputs
?
?
*__inference_conv2d_26_layer_call_fn_408615

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????bb*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_26_layer_call_and_return_conditional_losses_407700w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????bb`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????dd: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?
d
+__inference_dropout_29_layer_call_fn_408730

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_407964w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
?
D__inference_dense_79_layer_call_and_return_conditional_losses_408886

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_79/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:??????????
1dense_79/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0?
"dense_79/kernel/Regularizer/SquareSquare9dense_79/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:r
!dense_79/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_79/kernel/Regularizer/SumSum&dense_79/kernel/Regularizer/Square:y:0*dense_79/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_79/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_79/kernel/Regularizer/mulMul*dense_79/kernel/Regularizer/mul/x:output:0(dense_79/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_79/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_79/kernel/Regularizer/Square/ReadVariableOp1dense_79/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_13_layer_call_fn_408752

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_13_layer_call_and_return_conditional_losses_407752b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$:W S
/
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
?
D__inference_dense_78_layer_call_and_return_conditional_losses_408854

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_78/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:??????????
1dense_78/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
"dense_78/kernel/Regularizer/SquareSquare9dense_78/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_78/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_78/kernel/Regularizer/SumSum&dense_78/kernel/Regularizer/Square:y:0*dense_78/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_78/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_78/kernel/Regularizer/mulMul*dense_78/kernel/Regularizer/mul/x:output:0(dense_78/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_78/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_78/kernel/Regularizer/Square/ReadVariableOp1dense_78/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
d
F__inference_dropout_28_layer_call_and_return_conditional_losses_407736

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????//$c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????//$"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????//$:W S
/
_output_shapes
:?????????//$
 
_user_specified_nameinputs
?
?
E__inference_conv2d_27_layer_call_and_return_conditional_losses_408683

inputs8
conv2d_readvariableop_resource:$-
biasadd_readvariableop_resource:$
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:$*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//$*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//$X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????//$i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????//$w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????11: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????11
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_408919L
:dense_78_kernel_regularizer_square_readvariableop_resource:0
identity??1dense_78/kernel/Regularizer/Square/ReadVariableOp?
1dense_78/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_78_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:0*
dtype0?
"dense_78/kernel/Regularizer/SquareSquare9dense_78/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_78/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_78/kernel/Regularizer/SumSum&dense_78/kernel/Regularizer/Square:y:0*dense_78/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_78/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_78/kernel/Regularizer/mulMul*dense_78/kernel/Regularizer/mul/x:output:0(dense_78/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_78/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_78/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_78/kernel/Regularizer/Square/ReadVariableOp1dense_78/kernel/Regularizer/Square/ReadVariableOp
?
h
L__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_408720

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_408897N
:dense_76_kernel_regularizer_square_readvariableop_resource:
??
identity??1dense_76/kernel/Regularizer/Square/ReadVariableOp?
1dense_76/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_76_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
"dense_76/kernel/Regularizer/SquareSquare9dense_76/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??r
!dense_76/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_76/kernel/Regularizer/SumSum&dense_76/kernel/Regularizer/Square:y:0*dense_76/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_76/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_76/kernel/Regularizer/mulMul*dense_76/kernel/Regularizer/mul/x:output:0(dense_76/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_76/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_76/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_76/kernel/Regularizer/Square/ReadVariableOp1dense_76/kernel/Regularizer/Square/ReadVariableOp
?v
?
I__inference_sequential_36_layer_call_and_return_conditional_losses_408575

inputsB
(conv2d_26_conv2d_readvariableop_resource:7
)conv2d_26_biasadd_readvariableop_resource:B
(conv2d_27_conv2d_readvariableop_resource:$7
)conv2d_27_biasadd_readvariableop_resource:$;
'dense_76_matmul_readvariableop_resource:
??6
(dense_76_biasadd_readvariableop_resource:9
'dense_77_matmul_readvariableop_resource:06
(dense_77_biasadd_readvariableop_resource:09
'dense_78_matmul_readvariableop_resource:06
(dense_78_biasadd_readvariableop_resource:9
'dense_79_matmul_readvariableop_resource:6
(dense_79_biasadd_readvariableop_resource:
identity?? conv2d_26/BiasAdd/ReadVariableOp?conv2d_26/Conv2D/ReadVariableOp? conv2d_27/BiasAdd/ReadVariableOp?conv2d_27/Conv2D/ReadVariableOp?dense_76/BiasAdd/ReadVariableOp?dense_76/MatMul/ReadVariableOp?1dense_76/kernel/Regularizer/Square/ReadVariableOp?dense_77/BiasAdd/ReadVariableOp?dense_77/MatMul/ReadVariableOp?1dense_77/kernel/Regularizer/Square/ReadVariableOp?dense_78/BiasAdd/ReadVariableOp?dense_78/MatMul/ReadVariableOp?1dense_78/kernel/Regularizer/Square/ReadVariableOp?dense_79/BiasAdd/ReadVariableOp?dense_79/MatMul/ReadVariableOp?1dense_79/kernel/Regularizer/Square/ReadVariableOp?
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_26/Conv2DConv2Dinputs'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bb*
paddingVALID*
strides
?
 conv2d_26/BiasAdd/ReadVariableOpReadVariableOp)conv2d_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_26/BiasAddBiasAddconv2d_26/Conv2D:output:0(conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bbl
conv2d_26/ReluReluconv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:?????????bb?
max_pooling2d_26/MaxPoolMaxPoolconv2d_26/Relu:activations:0*/
_output_shapes
:?????????11*
ksize
*
paddingSAME*
strides
]
dropout_27/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
dropout_27/dropout/MulMul!max_pooling2d_26/MaxPool:output:0!dropout_27/dropout/Const:output:0*
T0*/
_output_shapes
:?????????11i
dropout_27/dropout/ShapeShape!max_pooling2d_26/MaxPool:output:0*
T0*
_output_shapes
:?
/dropout_27/dropout/random_uniform/RandomUniformRandomUniform!dropout_27/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????11*
dtype0f
!dropout_27/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_27/dropout/GreaterEqualGreaterEqual8dropout_27/dropout/random_uniform/RandomUniform:output:0*dropout_27/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????11?
dropout_27/dropout/CastCast#dropout_27/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????11?
dropout_27/dropout/Mul_1Muldropout_27/dropout/Mul:z:0dropout_27/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????11?
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:$*
dtype0?
conv2d_27/Conv2DConv2Ddropout_27/dropout/Mul_1:z:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//$*
paddingVALID*
strides
?
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0?
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//$l
conv2d_27/ReluReluconv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:?????????//$]
dropout_28/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?????
dropout_28/dropout/MulMulconv2d_27/Relu:activations:0!dropout_28/dropout/Const:output:0*
T0*/
_output_shapes
:?????????//$d
dropout_28/dropout/ShapeShapeconv2d_27/Relu:activations:0*
T0*
_output_shapes
:?
/dropout_28/dropout/random_uniform/RandomUniformRandomUniform!dropout_28/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????//$*
dtype0f
!dropout_28/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout_28/dropout/GreaterEqualGreaterEqual8dropout_28/dropout/random_uniform/RandomUniform:output:0*dropout_28/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????//$?
dropout_28/dropout/CastCast#dropout_28/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????//$?
dropout_28/dropout/Mul_1Muldropout_28/dropout/Mul:z:0dropout_28/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????//$?
max_pooling2d_27/MaxPoolMaxPooldropout_28/dropout/Mul_1:z:0*/
_output_shapes
:?????????$*
ksize
*
paddingSAME*
strides
]
dropout_29/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_29/dropout/MulMul!max_pooling2d_27/MaxPool:output:0!dropout_29/dropout/Const:output:0*
T0*/
_output_shapes
:?????????$i
dropout_29/dropout/ShapeShape!max_pooling2d_27/MaxPool:output:0*
T0*
_output_shapes
:?
/dropout_29/dropout/random_uniform/RandomUniformRandomUniform!dropout_29/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????$*
dtype0f
!dropout_29/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_29/dropout/GreaterEqualGreaterEqual8dropout_29/dropout/random_uniform/RandomUniform:output:0*dropout_29/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????$?
dropout_29/dropout/CastCast#dropout_29/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????$?
dropout_29/dropout/Mul_1Muldropout_29/dropout/Mul:z:0dropout_29/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????$a
flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? Q  ?
flatten_13/ReshapeReshapedropout_29/dropout/Mul_1:z:0flatten_13/Const:output:0*
T0*)
_output_shapes
:????????????
dense_76/MatMul/ReadVariableOpReadVariableOp'dense_76_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_76/MatMulMatMulflatten_13/Reshape:output:0&dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_76/BiasAdd/ReadVariableOpReadVariableOp(dense_76_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_76/BiasAddBiasAdddense_76/MatMul:product:0'dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense_76/ReluReludense_76/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_77/MatMul/ReadVariableOpReadVariableOp'dense_77_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
dense_77/MatMulMatMuldense_76/Relu:activations:0&dense_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0?
dense_77/BiasAdd/ReadVariableOpReadVariableOp(dense_77_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
dense_77/BiasAddBiasAdddense_77/MatMul:product:0'dense_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0b
dense_77/ReluReludense_77/BiasAdd:output:0*
T0*'
_output_shapes
:?????????0?
dense_78/MatMul/ReadVariableOpReadVariableOp'dense_78_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
dense_78/MatMulMatMuldense_77/Relu:activations:0&dense_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_78/BiasAdd/ReadVariableOpReadVariableOp(dense_78_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_78/BiasAddBiasAdddense_78/MatMul:product:0'dense_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense_78/ReluReludense_78/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_79/MatMul/ReadVariableOpReadVariableOp'dense_79_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_79/MatMulMatMuldense_78/Relu:activations:0&dense_79/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_79/BiasAdd/ReadVariableOpReadVariableOp(dense_79_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_79/BiasAddBiasAdddense_79/MatMul:product:0'dense_79/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_79/SoftmaxSoftmaxdense_79/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
1dense_76/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_76_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
"dense_76/kernel/Regularizer/SquareSquare9dense_76/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??r
!dense_76/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_76/kernel/Regularizer/SumSum&dense_76/kernel/Regularizer/Square:y:0*dense_76/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_76/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_76/kernel/Regularizer/mulMul*dense_76/kernel/Regularizer/mul/x:output:0(dense_76/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_77/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_77_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
"dense_77/kernel/Regularizer/SquareSquare9dense_77/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_77/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_77/kernel/Regularizer/SumSum&dense_77/kernel/Regularizer/Square:y:0*dense_77/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_77/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_77/kernel/Regularizer/mulMul*dense_77/kernel/Regularizer/mul/x:output:0(dense_77/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_78/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_78_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
"dense_78/kernel/Regularizer/SquareSquare9dense_78/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_78/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_78/kernel/Regularizer/SumSum&dense_78/kernel/Regularizer/Square:y:0*dense_78/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_78/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_78/kernel/Regularizer/mulMul*dense_78/kernel/Regularizer/mul/x:output:0(dense_78/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_79/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_79_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
"dense_79/kernel/Regularizer/SquareSquare9dense_79/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:r
!dense_79/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_79/kernel/Regularizer/SumSum&dense_79/kernel/Regularizer/Square:y:0*dense_79/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_79/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_79/kernel/Regularizer/mulMul*dense_79/kernel/Regularizer/mul/x:output:0(dense_79/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentitydense_79/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_26/BiasAdd/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp2^dense_76/kernel/Regularizer/Square/ReadVariableOp ^dense_77/BiasAdd/ReadVariableOp^dense_77/MatMul/ReadVariableOp2^dense_77/kernel/Regularizer/Square/ReadVariableOp ^dense_78/BiasAdd/ReadVariableOp^dense_78/MatMul/ReadVariableOp2^dense_78/kernel/Regularizer/Square/ReadVariableOp ^dense_79/BiasAdd/ReadVariableOp^dense_79/MatMul/ReadVariableOp2^dense_79/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????dd: : : : : : : : : : : : 2D
 conv2d_26/BiasAdd/ReadVariableOp conv2d_26/BiasAdd/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2B
dense_76/BiasAdd/ReadVariableOpdense_76/BiasAdd/ReadVariableOp2@
dense_76/MatMul/ReadVariableOpdense_76/MatMul/ReadVariableOp2f
1dense_76/kernel/Regularizer/Square/ReadVariableOp1dense_76/kernel/Regularizer/Square/ReadVariableOp2B
dense_77/BiasAdd/ReadVariableOpdense_77/BiasAdd/ReadVariableOp2@
dense_77/MatMul/ReadVariableOpdense_77/MatMul/ReadVariableOp2f
1dense_77/kernel/Regularizer/Square/ReadVariableOp1dense_77/kernel/Regularizer/Square/ReadVariableOp2B
dense_78/BiasAdd/ReadVariableOpdense_78/BiasAdd/ReadVariableOp2@
dense_78/MatMul/ReadVariableOpdense_78/MatMul/ReadVariableOp2f
1dense_78/kernel/Regularizer/Square/ReadVariableOp1dense_78/kernel/Regularizer/Square/ReadVariableOp2B
dense_79/BiasAdd/ReadVariableOpdense_79/BiasAdd/ReadVariableOp2@
dense_79/MatMul/ReadVariableOpdense_79/MatMul/ReadVariableOp2f
1dense_79/kernel/Regularizer/Square/ReadVariableOp1dense_79/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?
d
F__inference_dropout_27_layer_call_and_return_conditional_losses_407712

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????11c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????11"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????11:W S
/
_output_shapes
:?????????11
 
_user_specified_nameinputs
?
?
D__inference_dense_77_layer_call_and_return_conditional_losses_407794

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_77/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????0?
1dense_77/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
"dense_77/kernel/Regularizer/SquareSquare9dense_77/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_77/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_77/kernel/Regularizer/SumSum&dense_77/kernel/Regularizer/Square:y:0*dense_77/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_77/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_77/kernel/Regularizer/mulMul*dense_77/kernel/Regularizer/mul/x:output:0(dense_77/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????0?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_77/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_77/kernel/Regularizer/Square/ReadVariableOp1dense_77/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_26_layer_call_and_return_conditional_losses_407700

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bb*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bbX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????bbi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????bbw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????dd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?
?
.__inference_sequential_36_layer_call_fn_407898
conv2d_26_input!
unknown:
	unknown_0:#
	unknown_1:$
	unknown_2:$
	unknown_3:
??
	unknown_4:
	unknown_5:0
	unknown_6:0
	unknown_7:0
	unknown_8:
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_26_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_36_layer_call_and_return_conditional_losses_407871o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????dd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????dd
)
_user_specified_nameconv2d_26_input
?
?
D__inference_dense_78_layer_call_and_return_conditional_losses_407817

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_78/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:??????????
1dense_78/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
"dense_78/kernel/Regularizer/SquareSquare9dense_78/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_78/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_78/kernel/Regularizer/SumSum&dense_78/kernel/Regularizer/Square:y:0*dense_78/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_78/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_78/kernel/Regularizer/mulMul*dense_78/kernel/Regularizer/mul/x:output:0(dense_78/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_78/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_78/kernel/Regularizer/Square/ReadVariableOp1dense_78/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????0
 
_user_specified_nameinputs
?

e
F__inference_dropout_28_layer_call_and_return_conditional_losses_408710

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????//$C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????//$*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????//$w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????//$q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????//$a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????//$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????//$:W S
/
_output_shapes
:?????????//$
 
_user_specified_nameinputs
?
b
F__inference_flatten_13_layer_call_and_return_conditional_losses_408758

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? Q  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$:W S
/
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
?
E__inference_conv2d_27_layer_call_and_return_conditional_losses_407725

inputs8
conv2d_readvariableop_resource:$-
biasadd_readvariableop_resource:$
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:$*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//$*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//$X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????//$i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????//$w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????11: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????11
 
_user_specified_nameinputs
?R
?
I__inference_sequential_36_layer_call_and_return_conditional_losses_408248
conv2d_26_input*
conv2d_26_408187:
conv2d_26_408189:*
conv2d_27_408194:$
conv2d_27_408196:$#
dense_76_408203:
??
dense_76_408205:!
dense_77_408208:0
dense_77_408210:0!
dense_78_408213:0
dense_78_408215:!
dense_79_408218:
dense_79_408220:
identity??!conv2d_26/StatefulPartitionedCall?!conv2d_27/StatefulPartitionedCall? dense_76/StatefulPartitionedCall?1dense_76/kernel/Regularizer/Square/ReadVariableOp? dense_77/StatefulPartitionedCall?1dense_77/kernel/Regularizer/Square/ReadVariableOp? dense_78/StatefulPartitionedCall?1dense_78/kernel/Regularizer/Square/ReadVariableOp? dense_79/StatefulPartitionedCall?1dense_79/kernel/Regularizer/Square/ReadVariableOp?
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCallconv2d_26_inputconv2d_26_408187conv2d_26_408189*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????bb*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_26_layer_call_and_return_conditional_losses_407700?
 max_pooling2d_26/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????11* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_407667?
dropout_27/PartitionedCallPartitionedCall)max_pooling2d_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????11* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_27_layer_call_and_return_conditional_losses_407712?
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall#dropout_27/PartitionedCall:output:0conv2d_27_408194conv2d_27_408196*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????//$*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_407725?
dropout_28/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????//$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_407736?
 max_pooling2d_27/PartitionedCallPartitionedCall#dropout_28/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_407679?
dropout_29/PartitionedCallPartitionedCall)max_pooling2d_27/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_407744?
flatten_13/PartitionedCallPartitionedCall#dropout_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_13_layer_call_and_return_conditional_losses_407752?
 dense_76/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0dense_76_408203dense_76_408205*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_407771?
 dense_77/StatefulPartitionedCallStatefulPartitionedCall)dense_76/StatefulPartitionedCall:output:0dense_77_408208dense_77_408210*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_77_layer_call_and_return_conditional_losses_407794?
 dense_78/StatefulPartitionedCallStatefulPartitionedCall)dense_77/StatefulPartitionedCall:output:0dense_78_408213dense_78_408215*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_78_layer_call_and_return_conditional_losses_407817?
 dense_79/StatefulPartitionedCallStatefulPartitionedCall)dense_78/StatefulPartitionedCall:output:0dense_79_408218dense_79_408220*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_79_layer_call_and_return_conditional_losses_407840?
1dense_76/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_76_408203* 
_output_shapes
:
??*
dtype0?
"dense_76/kernel/Regularizer/SquareSquare9dense_76/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??r
!dense_76/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_76/kernel/Regularizer/SumSum&dense_76/kernel/Regularizer/Square:y:0*dense_76/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_76/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_76/kernel/Regularizer/mulMul*dense_76/kernel/Regularizer/mul/x:output:0(dense_76/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_77/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_77_408208*
_output_shapes

:0*
dtype0?
"dense_77/kernel/Regularizer/SquareSquare9dense_77/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_77/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_77/kernel/Regularizer/SumSum&dense_77/kernel/Regularizer/Square:y:0*dense_77/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_77/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_77/kernel/Regularizer/mulMul*dense_77/kernel/Regularizer/mul/x:output:0(dense_77/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_78/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_78_408213*
_output_shapes

:0*
dtype0?
"dense_78/kernel/Regularizer/SquareSquare9dense_78/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_78/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_78/kernel/Regularizer/SumSum&dense_78/kernel/Regularizer/Square:y:0*dense_78/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_78/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_78/kernel/Regularizer/mulMul*dense_78/kernel/Regularizer/mul/x:output:0(dense_78/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_79/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_79_408218*
_output_shapes

:*
dtype0?
"dense_79/kernel/Regularizer/SquareSquare9dense_79/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:r
!dense_79/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_79/kernel/Regularizer/SumSum&dense_79/kernel/Regularizer/Square:y:0*dense_79/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_79/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_79/kernel/Regularizer/mulMul*dense_79/kernel/Regularizer/mul/x:output:0(dense_79/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_79/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall2^dense_76/kernel/Regularizer/Square/ReadVariableOp!^dense_77/StatefulPartitionedCall2^dense_77/kernel/Regularizer/Square/ReadVariableOp!^dense_78/StatefulPartitionedCall2^dense_78/kernel/Regularizer/Square/ReadVariableOp!^dense_79/StatefulPartitionedCall2^dense_79/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????dd: : : : : : : : : : : : 2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2f
1dense_76/kernel/Regularizer/Square/ReadVariableOp1dense_76/kernel/Regularizer/Square/ReadVariableOp2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall2f
1dense_77/kernel/Regularizer/Square/ReadVariableOp1dense_77/kernel/Regularizer/Square/ReadVariableOp2D
 dense_78/StatefulPartitionedCall dense_78/StatefulPartitionedCall2f
1dense_78/kernel/Regularizer/Square/ReadVariableOp1dense_78/kernel/Regularizer/Square/ReadVariableOp2D
 dense_79/StatefulPartitionedCall dense_79/StatefulPartitionedCall2f
1dense_79/kernel/Regularizer/Square/ReadVariableOp1dense_79/kernel/Regularizer/Square/ReadVariableOp:` \
/
_output_shapes
:?????????dd
)
_user_specified_nameconv2d_26_input
ӳ
?
"__inference__traced_restore_409233
file_prefix;
!assignvariableop_conv2d_26_kernel:/
!assignvariableop_1_conv2d_26_bias:=
#assignvariableop_2_conv2d_27_kernel:$/
!assignvariableop_3_conv2d_27_bias:$6
"assignvariableop_4_dense_76_kernel:
??.
 assignvariableop_5_dense_76_bias:4
"assignvariableop_6_dense_77_kernel:0.
 assignvariableop_7_dense_77_bias:04
"assignvariableop_8_dense_78_kernel:0.
 assignvariableop_9_dense_78_bias:5
#assignvariableop_10_dense_79_kernel:/
!assignvariableop_11_dense_79_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: E
+assignvariableop_21_adam_conv2d_26_kernel_m:7
)assignvariableop_22_adam_conv2d_26_bias_m:E
+assignvariableop_23_adam_conv2d_27_kernel_m:$7
)assignvariableop_24_adam_conv2d_27_bias_m:$>
*assignvariableop_25_adam_dense_76_kernel_m:
??6
(assignvariableop_26_adam_dense_76_bias_m:<
*assignvariableop_27_adam_dense_77_kernel_m:06
(assignvariableop_28_adam_dense_77_bias_m:0<
*assignvariableop_29_adam_dense_78_kernel_m:06
(assignvariableop_30_adam_dense_78_bias_m:<
*assignvariableop_31_adam_dense_79_kernel_m:6
(assignvariableop_32_adam_dense_79_bias_m:E
+assignvariableop_33_adam_conv2d_26_kernel_v:7
)assignvariableop_34_adam_conv2d_26_bias_v:E
+assignvariableop_35_adam_conv2d_27_kernel_v:$7
)assignvariableop_36_adam_conv2d_27_bias_v:$>
*assignvariableop_37_adam_dense_76_kernel_v:
??6
(assignvariableop_38_adam_dense_76_bias_v:<
*assignvariableop_39_adam_dense_77_kernel_v:06
(assignvariableop_40_adam_dense_77_bias_v:0<
*assignvariableop_41_adam_dense_78_kernel_v:06
(assignvariableop_42_adam_dense_78_bias_v:<
*assignvariableop_43_adam_dense_79_kernel_v:6
(assignvariableop_44_adam_dense_79_bias_v:
identity_46??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*?
value?B?.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_26_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_26_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_27_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_27_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_76_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_76_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_77_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_77_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_78_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_78_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_79_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_79_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_conv2d_26_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_conv2d_26_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_conv2d_27_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_conv2d_27_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_76_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_76_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_77_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_77_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_78_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_78_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_79_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_79_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_26_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_26_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv2d_27_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv2d_27_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_76_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_76_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_77_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_77_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_78_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_78_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_dense_79_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_dense_79_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_46IdentityIdentity_45:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_46Identity_46:output:0*o
_input_shapes^
\: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
d
F__inference_dropout_29_layer_call_and_return_conditional_losses_408735

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????$c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????$"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$:W S
/
_output_shapes
:?????????$
 
_user_specified_nameinputs
?

e
F__inference_dropout_29_layer_call_and_return_conditional_losses_408747

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????$C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????$*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????$w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????$q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????$a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????$:W S
/
_output_shapes
:?????????$
 
_user_specified_nameinputs
?
d
+__inference_dropout_28_layer_call_fn_408693

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????//$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_407987w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????//$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????//$22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????//$
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_26_layer_call_fn_408631

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_407667?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_28_layer_call_fn_408688

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????//$* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_407736h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????//$"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????//$:W S
/
_output_shapes
:?????????//$
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
S
conv2d_26_input@
!serving_default_conv2d_26_input:0?????????dd<
dense_790
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
?
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(_random_generator
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer
?

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
?
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7_random_generator
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
?
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D_random_generator
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layer
?
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Mkernel
Nbias
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
?

]kernel
^bias
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_layer
?

ekernel
fbias
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses"
_tf_keras_layer
?
miter

nbeta_1

obeta_2
	pdecay
qlearning_ratem?m?+m?,m?Mm?Nm?Um?Vm?]m?^m?em?fm?v?v?+v?,v?Mv?Nv?Uv?Vv?]v?^v?ev?fv?"
	optimizer
v
0
1
+2
,3
M4
N5
U6
V7
]8
^9
e10
f11"
trackable_list_wrapper
v
0
1
+2
,3
M4
N5
U6
V7
]8
^9
e10
f11"
trackable_list_wrapper
<
r0
s1
t2
u3"
trackable_list_wrapper
?
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
.__inference_sequential_36_layer_call_fn_407898
.__inference_sequential_36_layer_call_fn_408371
.__inference_sequential_36_layer_call_fn_408400
.__inference_sequential_36_layer_call_fn_408184?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_sequential_36_layer_call_and_return_conditional_losses_408477
I__inference_sequential_36_layer_call_and_return_conditional_losses_408575
I__inference_sequential_36_layer_call_and_return_conditional_losses_408248
I__inference_sequential_36_layer_call_and_return_conditional_losses_408312?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_407658conv2d_26_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
{serving_default"
signature_map
*:(2conv2d_26/kernel
:2conv2d_26/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv2d_26_layer_call_fn_408615?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_26_layer_call_and_return_conditional_losses_408626?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
?2?
1__inference_max_pooling2d_26_layer_call_fn_408631?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_408636?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
$	variables
%trainable_variables
&regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
+__inference_dropout_27_layer_call_fn_408641
+__inference_dropout_27_layer_call_fn_408646?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_27_layer_call_and_return_conditional_losses_408651
F__inference_dropout_27_layer_call_and_return_conditional_losses_408663?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
*:($2conv2d_27/kernel
:$2conv2d_27/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv2d_27_layer_call_fn_408672?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_27_layer_call_and_return_conditional_losses_408683?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
3	variables
4trainable_variables
5regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
+__inference_dropout_28_layer_call_fn_408688
+__inference_dropout_28_layer_call_fn_408693?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_28_layer_call_and_return_conditional_losses_408698
F__inference_dropout_28_layer_call_and_return_conditional_losses_408710?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
?2?
1__inference_max_pooling2d_27_layer_call_fn_408715?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_408720?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
+__inference_dropout_29_layer_call_fn_408725
+__inference_dropout_29_layer_call_fn_408730?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_29_layer_call_and_return_conditional_losses_408735
F__inference_dropout_29_layer_call_and_return_conditional_losses_408747?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_flatten_13_layer_call_fn_408752?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_13_layer_call_and_return_conditional_losses_408758?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
#:!
??2dense_76/kernel
:2dense_76/bias
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
'
r0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_76_layer_call_fn_408773?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_76_layer_call_and_return_conditional_losses_408790?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
!:02dense_77/kernel
:02dense_77/bias
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
'
s0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_77_layer_call_fn_408805?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_77_layer_call_and_return_conditional_losses_408822?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
!:02dense_78/kernel
:2dense_78/bias
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
'
t0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_78_layer_call_fn_408837?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_78_layer_call_and_return_conditional_losses_408854?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
!:2dense_79/kernel
:2dense_79/bias
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
'
u0"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_79_layer_call_fn_408869?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_79_layer_call_and_return_conditional_losses_408886?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?2?
__inference_loss_fn_0_408897?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_408908?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_408919?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_408930?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
 "
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
	8

9
10
11"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
$__inference_signature_wrapper_408606conv2d_26_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
r0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
s0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
t0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
u0"
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
/:-2Adam/conv2d_26/kernel/m
!:2Adam/conv2d_26/bias/m
/:-$2Adam/conv2d_27/kernel/m
!:$2Adam/conv2d_27/bias/m
(:&
??2Adam/dense_76/kernel/m
 :2Adam/dense_76/bias/m
&:$02Adam/dense_77/kernel/m
 :02Adam/dense_77/bias/m
&:$02Adam/dense_78/kernel/m
 :2Adam/dense_78/bias/m
&:$2Adam/dense_79/kernel/m
 :2Adam/dense_79/bias/m
/:-2Adam/conv2d_26/kernel/v
!:2Adam/conv2d_26/bias/v
/:-$2Adam/conv2d_27/kernel/v
!:$2Adam/conv2d_27/bias/v
(:&
??2Adam/dense_76/kernel/v
 :2Adam/dense_76/bias/v
&:$02Adam/dense_77/kernel/v
 :02Adam/dense_77/bias/v
&:$02Adam/dense_78/kernel/v
 :2Adam/dense_78/bias/v
&:$2Adam/dense_79/kernel/v
 :2Adam/dense_79/bias/v?
!__inference__wrapped_model_407658?+,MNUV]^ef@?=
6?3
1?.
conv2d_26_input?????????dd
? "3?0
.
dense_79"?
dense_79??????????
E__inference_conv2d_26_layer_call_and_return_conditional_losses_408626l7?4
-?*
(?%
inputs?????????dd
? "-?*
#? 
0?????????bb
? ?
*__inference_conv2d_26_layer_call_fn_408615_7?4
-?*
(?%
inputs?????????dd
? " ??????????bb?
E__inference_conv2d_27_layer_call_and_return_conditional_losses_408683l+,7?4
-?*
(?%
inputs?????????11
? "-?*
#? 
0?????????//$
? ?
*__inference_conv2d_27_layer_call_fn_408672_+,7?4
-?*
(?%
inputs?????????11
? " ??????????//$?
D__inference_dense_76_layer_call_and_return_conditional_losses_408790^MN1?.
'?$
"?
inputs???????????
? "%?"
?
0?????????
? ~
)__inference_dense_76_layer_call_fn_408773QMN1?.
'?$
"?
inputs???????????
? "???????????
D__inference_dense_77_layer_call_and_return_conditional_losses_408822\UV/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????0
? |
)__inference_dense_77_layer_call_fn_408805OUV/?,
%?"
 ?
inputs?????????
? "??????????0?
D__inference_dense_78_layer_call_and_return_conditional_losses_408854\]^/?,
%?"
 ?
inputs?????????0
? "%?"
?
0?????????
? |
)__inference_dense_78_layer_call_fn_408837O]^/?,
%?"
 ?
inputs?????????0
? "???????????
D__inference_dense_79_layer_call_and_return_conditional_losses_408886\ef/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? |
)__inference_dense_79_layer_call_fn_408869Oef/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_dropout_27_layer_call_and_return_conditional_losses_408651l;?8
1?.
(?%
inputs?????????11
p 
? "-?*
#? 
0?????????11
? ?
F__inference_dropout_27_layer_call_and_return_conditional_losses_408663l;?8
1?.
(?%
inputs?????????11
p
? "-?*
#? 
0?????????11
? ?
+__inference_dropout_27_layer_call_fn_408641_;?8
1?.
(?%
inputs?????????11
p 
? " ??????????11?
+__inference_dropout_27_layer_call_fn_408646_;?8
1?.
(?%
inputs?????????11
p
? " ??????????11?
F__inference_dropout_28_layer_call_and_return_conditional_losses_408698l;?8
1?.
(?%
inputs?????????//$
p 
? "-?*
#? 
0?????????//$
? ?
F__inference_dropout_28_layer_call_and_return_conditional_losses_408710l;?8
1?.
(?%
inputs?????????//$
p
? "-?*
#? 
0?????????//$
? ?
+__inference_dropout_28_layer_call_fn_408688_;?8
1?.
(?%
inputs?????????//$
p 
? " ??????????//$?
+__inference_dropout_28_layer_call_fn_408693_;?8
1?.
(?%
inputs?????????//$
p
? " ??????????//$?
F__inference_dropout_29_layer_call_and_return_conditional_losses_408735l;?8
1?.
(?%
inputs?????????$
p 
? "-?*
#? 
0?????????$
? ?
F__inference_dropout_29_layer_call_and_return_conditional_losses_408747l;?8
1?.
(?%
inputs?????????$
p
? "-?*
#? 
0?????????$
? ?
+__inference_dropout_29_layer_call_fn_408725_;?8
1?.
(?%
inputs?????????$
p 
? " ??????????$?
+__inference_dropout_29_layer_call_fn_408730_;?8
1?.
(?%
inputs?????????$
p
? " ??????????$?
F__inference_flatten_13_layer_call_and_return_conditional_losses_408758b7?4
-?*
(?%
inputs?????????$
? "'?$
?
0???????????
? ?
+__inference_flatten_13_layer_call_fn_408752U7?4
-?*
(?%
inputs?????????$
? "????????????;
__inference_loss_fn_0_408897M?

? 
? "? ;
__inference_loss_fn_1_408908U?

? 
? "? ;
__inference_loss_fn_2_408919]?

? 
? "? ;
__inference_loss_fn_3_408930e?

? 
? "? ?
L__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_408636?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_26_layer_call_fn_408631?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_408720?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_27_layer_call_fn_408715?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_36_layer_call_and_return_conditional_losses_408248+,MNUV]^efH?E
>?;
1?.
conv2d_26_input?????????dd
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_36_layer_call_and_return_conditional_losses_408312+,MNUV]^efH?E
>?;
1?.
conv2d_26_input?????????dd
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_36_layer_call_and_return_conditional_losses_408477v+,MNUV]^ef??<
5?2
(?%
inputs?????????dd
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_36_layer_call_and_return_conditional_losses_408575v+,MNUV]^ef??<
5?2
(?%
inputs?????????dd
p

 
? "%?"
?
0?????????
? ?
.__inference_sequential_36_layer_call_fn_407898r+,MNUV]^efH?E
>?;
1?.
conv2d_26_input?????????dd
p 

 
? "???????????
.__inference_sequential_36_layer_call_fn_408184r+,MNUV]^efH?E
>?;
1?.
conv2d_26_input?????????dd
p

 
? "???????????
.__inference_sequential_36_layer_call_fn_408371i+,MNUV]^ef??<
5?2
(?%
inputs?????????dd
p 

 
? "???????????
.__inference_sequential_36_layer_call_fn_408400i+,MNUV]^ef??<
5?2
(?%
inputs?????????dd
p

 
? "???????????
$__inference_signature_wrapper_408606?+,MNUV]^efS?P
? 
I?F
D
conv2d_26_input1?.
conv2d_26_input?????????dd"3?0
.
dense_79"?
dense_79?????????