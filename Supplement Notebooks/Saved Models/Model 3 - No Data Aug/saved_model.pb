??
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
 ?"serve*2.8.02unknown8??
?
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:*
dtype0
|
dense_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??0* 
shared_namedense_43/kernel
u
#dense_43/kernel/Read/ReadVariableOpReadVariableOpdense_43/kernel* 
_output_shapes
:
??0*
dtype0
r
dense_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_namedense_43/bias
k
!dense_43/bias/Read/ReadVariableOpReadVariableOpdense_43/bias*
_output_shapes
:0*
dtype0
z
dense_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0* 
shared_namedense_44/kernel
s
#dense_44/kernel/Read/ReadVariableOpReadVariableOpdense_44/kernel*
_output_shapes

:0*
dtype0
r
dense_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_44/bias
k
!dense_44/bias/Read/ReadVariableOpReadVariableOpdense_44/bias*
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
Adam/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_3/kernel/m
?
*Adam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_3/bias/m
y
(Adam/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_43/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??0*'
shared_nameAdam/dense_43/kernel/m
?
*Adam/dense_43/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_43/kernel/m* 
_output_shapes
:
??0*
dtype0
?
Adam/dense_43/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*%
shared_nameAdam/dense_43/bias/m
y
(Adam/dense_43/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_43/bias/m*
_output_shapes
:0*
dtype0
?
Adam/dense_44/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*'
shared_nameAdam/dense_44/kernel/m
?
*Adam/dense_44/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_44/kernel/m*
_output_shapes

:0*
dtype0
?
Adam/dense_44/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_44/bias/m
y
(Adam/dense_44/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_44/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_3/kernel/v
?
*Adam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_3/bias/v
y
(Adam/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_43/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??0*'
shared_nameAdam/dense_43/kernel/v
?
*Adam/dense_43/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_43/kernel/v* 
_output_shapes
:
??0*
dtype0
?
Adam/dense_43/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*%
shared_nameAdam/dense_43/bias/v
y
(Adam/dense_43/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_43/bias/v*
_output_shapes
:0*
dtype0
?
Adam/dense_44/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*'
shared_nameAdam/dense_44/kernel/v
?
*Adam/dense_44/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_44/kernel/v*
_output_shapes

:0*
dtype0
?
Adam/dense_44/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_44/bias/v
y
(Adam/dense_44/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_44/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?8
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?8
value?8B?8 B?8
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
?
	variables
trainable_variables
 regularization_losses
!	keras_api
"_random_generator
#__call__
*$&call_and_return_all_conditional_losses* 
?
%	variables
&trainable_variables
'regularization_losses
(	keras_api
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

3kernel
4bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses*
?
;iter

<beta_1

=beta_2
	>decay
?learning_ratemqmr+ms,mt3mu4mvvwvx+vy,vz3v{4v|*
.
0
1
+2
,3
34
45*
.
0
1
+2
,3
34
45*

@0
A1* 
?
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Gserving_default* 
_Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
 regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
?
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_43/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_43/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

+0
,1*

+0
,1*
	
@0* 
?
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_44/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_44/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

30
41*

30
41*
	
A0* 
?
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*
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
.
0
1
2
3
4
5*

f0
g1*
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
	
@0* 
* 
* 
* 
* 
	
A0* 
* 
8
	htotal
	icount
j	variables
k	keras_api*
H
	ltotal
	mcount
n
_fn_kwargs
o	variables
p	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

h0
i1*

j	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

l0
m1*

o	variables*
?|
VARIABLE_VALUEAdam/conv2d_3/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_3/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_43/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_43/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_44/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_44/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/conv2d_3/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_3/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_43/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_43/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_44/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_44/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_conv2d_3_inputPlaceholder*/
_output_shapes
:?????????dd*
dtype0*$
shape:?????????dd
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_3_inputconv2d_3/kernelconv2d_3/biasdense_43/kerneldense_43/biasdense_44/kerneldense_44/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_172810
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#dense_43/kernel/Read/ReadVariableOp!dense_43/bias/Read/ReadVariableOp#dense_44/kernel/Read/ReadVariableOp!dense_44/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv2d_3/kernel/m/Read/ReadVariableOp(Adam/conv2d_3/bias/m/Read/ReadVariableOp*Adam/dense_43/kernel/m/Read/ReadVariableOp(Adam/dense_43/bias/m/Read/ReadVariableOp*Adam/dense_44/kernel/m/Read/ReadVariableOp(Adam/dense_44/bias/m/Read/ReadVariableOp*Adam/conv2d_3/kernel/v/Read/ReadVariableOp(Adam/conv2d_3/bias/v/Read/ReadVariableOp*Adam/dense_43/kernel/v/Read/ReadVariableOp(Adam/dense_43/bias/v/Read/ReadVariableOp*Adam/dense_44/kernel/v/Read/ReadVariableOp(Adam/dense_44/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
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
__inference__traced_save_173068
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_3/kernelconv2d_3/biasdense_43/kerneldense_43/biasdense_44/kerneldense_44/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_3/kernel/mAdam/conv2d_3/bias/mAdam/dense_43/kernel/mAdam/dense_43/bias/mAdam/dense_44/kernel/mAdam/dense_44/bias/mAdam/conv2d_3/kernel/vAdam/conv2d_3/bias/vAdam/dense_43/kernel/vAdam/dense_43/bias/vAdam/dense_44/kernel/vAdam/dense_44/bias/v*'
Tin 
2*
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
"__inference__traced_restore_173159??
?9
?
I__inference_sequential_16_layer_call_and_return_conditional_losses_172791

inputsA
'conv2d_3_conv2d_readvariableop_resource:6
(conv2d_3_biasadd_readvariableop_resource:;
'dense_43_matmul_readvariableop_resource:
??06
(dense_43_biasadd_readvariableop_resource:09
'dense_44_matmul_readvariableop_resource:06
(dense_44_biasadd_readvariableop_resource:
identity??conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?dense_43/BiasAdd/ReadVariableOp?dense_43/MatMul/ReadVariableOp?1dense_43/kernel/Regularizer/Square/ReadVariableOp?dense_44/BiasAdd/ReadVariableOp?dense_44/MatMul/ReadVariableOp?1dense_44/kernel/Regularizer/Square/ReadVariableOp?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_3/Conv2DConv2Dinputs&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bb*
paddingVALID*
strides
?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bbj
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????bb?
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*/
_output_shapes
:?????????11*
ksize
*
paddingSAME*
strides
\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_3/dropout/MulMul max_pooling2d_3/MaxPool:output:0 dropout_3/dropout/Const:output:0*
T0*/
_output_shapes
:?????????11g
dropout_3/dropout/ShapeShape max_pooling2d_3/MaxPool:output:0*
T0*
_output_shapes
:?
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????11*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????11?
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????11?
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????11`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????Ҩ  ?
flatten_3/ReshapeReshapedropout_3/dropout/Mul_1:z:0flatten_3/Const:output:0*
T0*)
_output_shapes
:????????????
dense_43/MatMul/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource* 
_output_shapes
:
??0*
dtype0?
dense_43/MatMulMatMulflatten_3/Reshape:output:0&dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0?
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
dense_43/BiasAddBiasAdddense_43/MatMul:product:0'dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0b
dense_43/ReluReludense_43/BiasAdd:output:0*
T0*'
_output_shapes
:?????????0?
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
dense_44/MatMulMatMuldense_43/Relu:activations:0&dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_44/BiasAddBiasAdddense_44/MatMul:product:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_44/SoftmaxSoftmaxdense_44/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource* 
_output_shapes
:
??0*
dtype0?
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??0r
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentitydense_44/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp^dense_43/MatMul/ReadVariableOp2^dense_43/kernel/Regularizer/Square/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp2^dense_44/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????dd: : : : : : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2@
dense_43/MatMul/ReadVariableOpdense_43/MatMul/ReadVariableOp2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?
F
*__inference_dropout_3_layer_call_fn_172845

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
GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_172354h
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
?	
?
.__inference_sequential_16_layer_call_fn_172685

inputs!
unknown:
	unknown_0:
	unknown_1:
??0
	unknown_2:0
	unknown_3:0
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_16_layer_call_and_return_conditional_losses_172423o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????dd: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_172855

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
?
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_172354

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
?
D__inference_conv2d_3_layer_call_and_return_conditional_losses_172830

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
?
?
D__inference_dense_43_layer_call_and_return_conditional_losses_172910

inputs2
matmul_readvariableop_resource:
??0-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_43/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??0*
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
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??0*
dtype0?
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??0r
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????0?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_43/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
)__inference_dense_44_layer_call_fn_172925

inputs
unknown:0
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
D__inference_dense_44_layer_call_and_return_conditional_losses_172404o
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
:?????????0: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????0
 
_user_specified_nameinputs
?,
?
I__inference_sequential_16_layer_call_and_return_conditional_losses_172650
conv2d_3_input)
conv2d_3_172619:
conv2d_3_172621:#
dense_43_172627:
??0
dense_43_172629:0!
dense_44_172632:0
dense_44_172634:
identity?? conv2d_3/StatefulPartitionedCall? dense_43/StatefulPartitionedCall?1dense_43/kernel/Regularizer/Square/ReadVariableOp? dense_44/StatefulPartitionedCall?1dense_44/kernel/Regularizer/Square/ReadVariableOp?!dropout_3/StatefulPartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputconv2d_3_172619conv2d_3_172621*
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
GPU2*0J 8? *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_172342?
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_172321?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_172484?
flatten_3/PartitionedCallPartitionedCall*dropout_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_172362?
 dense_43/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_43_172627dense_43_172629*
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
D__inference_dense_43_layer_call_and_return_conditional_losses_172381?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_172632dense_44_172634*
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
D__inference_dense_44_layer_call_and_return_conditional_losses_172404?
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_43_172627* 
_output_shapes
:
??0*
dtype0?
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??0r
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_44_172632*
_output_shapes

:0*
dtype0?
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_44/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall2^dense_43/kernel/Regularizer/Square/ReadVariableOp!^dense_44/StatefulPartitionedCall2^dense_44/kernel/Regularizer/Square/ReadVariableOp"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????dd: : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:_ [
/
_output_shapes
:?????????dd
(
_user_specified_nameconv2d_3_input
?

d
E__inference_dropout_3_layer_call_and_return_conditional_losses_172484

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
 *??L>?
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
?	
?
.__inference_sequential_16_layer_call_fn_172582
conv2d_3_input!
unknown:
	unknown_0:
	unknown_1:
??0
	unknown_2:0
	unknown_3:0
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_16_layer_call_and_return_conditional_losses_172550o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????dd: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:?????????dd
(
_user_specified_nameconv2d_3_input
?
L
0__inference_max_pooling2d_3_layer_call_fn_172835

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
GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_172321?
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
?
?
D__inference_dense_44_layer_call_and_return_conditional_losses_172404

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_44/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
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
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_44/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????0
 
_user_specified_nameinputs
?+
?
I__inference_sequential_16_layer_call_and_return_conditional_losses_172616
conv2d_3_input)
conv2d_3_172585:
conv2d_3_172587:#
dense_43_172593:
??0
dense_43_172595:0!
dense_44_172598:0
dense_44_172600:
identity?? conv2d_3/StatefulPartitionedCall? dense_43/StatefulPartitionedCall?1dense_43/kernel/Regularizer/Square/ReadVariableOp? dense_44/StatefulPartitionedCall?1dense_44/kernel/Regularizer/Square/ReadVariableOp?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputconv2d_3_172585conv2d_3_172587*
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
GPU2*0J 8? *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_172342?
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_172321?
dropout_3/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_172354?
flatten_3/PartitionedCallPartitionedCall"dropout_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_172362?
 dense_43/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_43_172593dense_43_172595*
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
D__inference_dense_43_layer_call_and_return_conditional_losses_172381?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_172598dense_44_172600*
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
D__inference_dense_44_layer_call_and_return_conditional_losses_172404?
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_43_172593* 
_output_shapes
:
??0*
dtype0?
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??0r
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_44_172598*
_output_shapes

:0*
dtype0?
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_44/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall2^dense_43/kernel/Regularizer/Square/ReadVariableOp!^dense_44/StatefulPartitionedCall2^dense_44/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????dd: : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp:_ [
/
_output_shapes
:?????????dd
(
_user_specified_nameconv2d_3_input
?
?
)__inference_dense_43_layer_call_fn_172893

inputs
unknown:
??0
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
D__inference_dense_43_layer_call_and_return_conditional_losses_172381o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?1
?
I__inference_sequential_16_layer_call_and_return_conditional_losses_172743

inputsA
'conv2d_3_conv2d_readvariableop_resource:6
(conv2d_3_biasadd_readvariableop_resource:;
'dense_43_matmul_readvariableop_resource:
??06
(dense_43_biasadd_readvariableop_resource:09
'dense_44_matmul_readvariableop_resource:06
(dense_44_biasadd_readvariableop_resource:
identity??conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?dense_43/BiasAdd/ReadVariableOp?dense_43/MatMul/ReadVariableOp?1dense_43/kernel/Regularizer/Square/ReadVariableOp?dense_44/BiasAdd/ReadVariableOp?dense_44/MatMul/ReadVariableOp?1dense_44/kernel/Regularizer/Square/ReadVariableOp?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_3/Conv2DConv2Dinputs&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bb*
paddingVALID*
strides
?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bbj
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????bb?
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*/
_output_shapes
:?????????11*
ksize
*
paddingSAME*
strides
z
dropout_3/IdentityIdentity max_pooling2d_3/MaxPool:output:0*
T0*/
_output_shapes
:?????????11`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????Ҩ  ?
flatten_3/ReshapeReshapedropout_3/Identity:output:0flatten_3/Const:output:0*
T0*)
_output_shapes
:????????????
dense_43/MatMul/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource* 
_output_shapes
:
??0*
dtype0?
dense_43/MatMulMatMulflatten_3/Reshape:output:0&dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0?
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
dense_43/BiasAddBiasAdddense_43/MatMul:product:0'dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0b
dense_43/ReluReludense_43/BiasAdd:output:0*
T0*'
_output_shapes
:?????????0?
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
dense_44/MatMulMatMuldense_43/Relu:activations:0&dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_44/BiasAddBiasAdddense_44/MatMul:product:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_44/SoftmaxSoftmaxdense_44/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource* 
_output_shapes
:
??0*
dtype0?
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??0r
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentitydense_44/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp^dense_43/MatMul/ReadVariableOp2^dense_43/kernel/Regularizer/Square/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp2^dense_44/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????dd: : : : : : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2@
dense_43/MatMul/ReadVariableOpdense_43/MatMul/ReadVariableOp2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_172878

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????Ҩ  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????11:W S
/
_output_shapes
:?????????11
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_172321

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
?,
?
I__inference_sequential_16_layer_call_and_return_conditional_losses_172550

inputs)
conv2d_3_172519:
conv2d_3_172521:#
dense_43_172527:
??0
dense_43_172529:0!
dense_44_172532:0
dense_44_172534:
identity?? conv2d_3/StatefulPartitionedCall? dense_43/StatefulPartitionedCall?1dense_43/kernel/Regularizer/Square/ReadVariableOp? dense_44/StatefulPartitionedCall?1dense_44/kernel/Regularizer/Square/ReadVariableOp?!dropout_3/StatefulPartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_3_172519conv2d_3_172521*
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
GPU2*0J 8? *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_172342?
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_172321?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_172484?
flatten_3/PartitionedCallPartitionedCall*dropout_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_172362?
 dense_43/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_43_172527dense_43_172529*
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
D__inference_dense_43_layer_call_and_return_conditional_losses_172381?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_172532dense_44_172534*
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
D__inference_dense_44_layer_call_and_return_conditional_losses_172404?
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_43_172527* 
_output_shapes
:
??0*
dtype0?
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??0r
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_44_172532*
_output_shapes

:0*
dtype0?
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_44/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall2^dense_43/kernel/Regularizer/Square/ReadVariableOp!^dense_44/StatefulPartitionedCall2^dense_44/kernel/Regularizer/Square/ReadVariableOp"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????dd: : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_172964L
:dense_44_kernel_regularizer_square_readvariableop_resource:0
identity??1dense_44/kernel/Regularizer/Square/ReadVariableOp?
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_44_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:0*
dtype0?
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_44/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_44/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp
?
c
*__inference_dropout_3_layer_call_fn_172850

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
GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_172484w
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
g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_172840

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
?
F
*__inference_flatten_3_layer_call_fn_172872

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
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_172362b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????11:W S
/
_output_shapes
:?????????11
 
_user_specified_nameinputs
?	
?
.__inference_sequential_16_layer_call_fn_172702

inputs!
unknown:
	unknown_0:
	unknown_1:
??0
	unknown_2:0
	unknown_3:0
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_16_layer_call_and_return_conditional_losses_172550o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????dd: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?

d
E__inference_dropout_3_layer_call_and_return_conditional_losses_172867

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
 *??L>?
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
?
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_172362

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????Ҩ  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????"
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
)__inference_conv2d_3_layer_call_fn_172819

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
GPU2*0J 8? *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_172342w
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
?	
?
.__inference_sequential_16_layer_call_fn_172438
conv2d_3_input!
unknown:
	unknown_0:
	unknown_1:
??0
	unknown_2:0
	unknown_3:0
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_16_layer_call_and_return_conditional_losses_172423o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????dd: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:?????????dd
(
_user_specified_nameconv2d_3_input
?*
?
I__inference_sequential_16_layer_call_and_return_conditional_losses_172423

inputs)
conv2d_3_172343:
conv2d_3_172345:#
dense_43_172382:
??0
dense_43_172384:0!
dense_44_172405:0
dense_44_172407:
identity?? conv2d_3/StatefulPartitionedCall? dense_43/StatefulPartitionedCall?1dense_43/kernel/Regularizer/Square/ReadVariableOp? dense_44/StatefulPartitionedCall?1dense_44/kernel/Regularizer/Square/ReadVariableOp?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_3_172343conv2d_3_172345*
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
GPU2*0J 8? *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_172342?
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_172321?
dropout_3/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
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
GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_172354?
flatten_3/PartitionedCallPartitionedCall"dropout_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_172362?
 dense_43/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_43_172382dense_43_172384*
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
D__inference_dense_43_layer_call_and_return_conditional_losses_172381?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_172405dense_44_172407*
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
D__inference_dense_44_layer_call_and_return_conditional_losses_172404?
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_43_172382* 
_output_shapes
:
??0*
dtype0?
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??0r
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_44_172405*
_output_shapes

:0*
dtype0?
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_44/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall2^dense_43/kernel/Regularizer/Square/ReadVariableOp!^dense_44/StatefulPartitionedCall2^dense_44/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????dd: : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs
?
?
D__inference_dense_44_layer_call_and_return_conditional_losses_172942

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_44/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
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
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:0r
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_44/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
D__inference_conv2d_3_layer_call_and_return_conditional_losses_172342

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
?)
?
!__inference__wrapped_model_172312
conv2d_3_inputO
5sequential_16_conv2d_3_conv2d_readvariableop_resource:D
6sequential_16_conv2d_3_biasadd_readvariableop_resource:I
5sequential_16_dense_43_matmul_readvariableop_resource:
??0D
6sequential_16_dense_43_biasadd_readvariableop_resource:0G
5sequential_16_dense_44_matmul_readvariableop_resource:0D
6sequential_16_dense_44_biasadd_readvariableop_resource:
identity??-sequential_16/conv2d_3/BiasAdd/ReadVariableOp?,sequential_16/conv2d_3/Conv2D/ReadVariableOp?-sequential_16/dense_43/BiasAdd/ReadVariableOp?,sequential_16/dense_43/MatMul/ReadVariableOp?-sequential_16/dense_44/BiasAdd/ReadVariableOp?,sequential_16/dense_44/MatMul/ReadVariableOp?
,sequential_16/conv2d_3/Conv2D/ReadVariableOpReadVariableOp5sequential_16_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_16/conv2d_3/Conv2DConv2Dconv2d_3_input4sequential_16/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bb*
paddingVALID*
strides
?
-sequential_16/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_16/conv2d_3/BiasAddBiasAdd&sequential_16/conv2d_3/Conv2D:output:05sequential_16/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????bb?
sequential_16/conv2d_3/ReluRelu'sequential_16/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????bb?
%sequential_16/max_pooling2d_3/MaxPoolMaxPool)sequential_16/conv2d_3/Relu:activations:0*/
_output_shapes
:?????????11*
ksize
*
paddingSAME*
strides
?
 sequential_16/dropout_3/IdentityIdentity.sequential_16/max_pooling2d_3/MaxPool:output:0*
T0*/
_output_shapes
:?????????11n
sequential_16/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????Ҩ  ?
sequential_16/flatten_3/ReshapeReshape)sequential_16/dropout_3/Identity:output:0&sequential_16/flatten_3/Const:output:0*
T0*)
_output_shapes
:????????????
,sequential_16/dense_43/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_43_matmul_readvariableop_resource* 
_output_shapes
:
??0*
dtype0?
sequential_16/dense_43/MatMulMatMul(sequential_16/flatten_3/Reshape:output:04sequential_16/dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0?
-sequential_16/dense_43/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_43_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0?
sequential_16/dense_43/BiasAddBiasAdd'sequential_16/dense_43/MatMul:product:05sequential_16/dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????0~
sequential_16/dense_43/ReluRelu'sequential_16/dense_43/BiasAdd:output:0*
T0*'
_output_shapes
:?????????0?
,sequential_16/dense_44/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_44_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0?
sequential_16/dense_44/MatMulMatMul)sequential_16/dense_43/Relu:activations:04sequential_16/dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_16/dense_44/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_44_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_16/dense_44/BiasAddBiasAdd'sequential_16/dense_44/MatMul:product:05sequential_16/dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_16/dense_44/SoftmaxSoftmax'sequential_16/dense_44/BiasAdd:output:0*
T0*'
_output_shapes
:?????????w
IdentityIdentity(sequential_16/dense_44/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_16/conv2d_3/BiasAdd/ReadVariableOp-^sequential_16/conv2d_3/Conv2D/ReadVariableOp.^sequential_16/dense_43/BiasAdd/ReadVariableOp-^sequential_16/dense_43/MatMul/ReadVariableOp.^sequential_16/dense_44/BiasAdd/ReadVariableOp-^sequential_16/dense_44/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????dd: : : : : : 2^
-sequential_16/conv2d_3/BiasAdd/ReadVariableOp-sequential_16/conv2d_3/BiasAdd/ReadVariableOp2\
,sequential_16/conv2d_3/Conv2D/ReadVariableOp,sequential_16/conv2d_3/Conv2D/ReadVariableOp2^
-sequential_16/dense_43/BiasAdd/ReadVariableOp-sequential_16/dense_43/BiasAdd/ReadVariableOp2\
,sequential_16/dense_43/MatMul/ReadVariableOp,sequential_16/dense_43/MatMul/ReadVariableOp2^
-sequential_16/dense_44/BiasAdd/ReadVariableOp-sequential_16/dense_44/BiasAdd/ReadVariableOp2\
,sequential_16/dense_44/MatMul/ReadVariableOp,sequential_16/dense_44/MatMul/ReadVariableOp:_ [
/
_output_shapes
:?????????dd
(
_user_specified_nameconv2d_3_input
?
?
__inference_loss_fn_0_172953N
:dense_43_kernel_regularizer_square_readvariableop_resource:
??0
identity??1dense_43/kernel/Regularizer/Square/ReadVariableOp?
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_43_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??0*
dtype0?
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??0r
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_43/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_43/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp
?<
?
__inference__traced_save_173068
file_prefix.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_dense_43_kernel_read_readvariableop,
(savev2_dense_43_bias_read_readvariableop.
*savev2_dense_44_kernel_read_readvariableop,
(savev2_dense_44_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_conv2d_3_kernel_m_read_readvariableop3
/savev2_adam_conv2d_3_bias_m_read_readvariableop5
1savev2_adam_dense_43_kernel_m_read_readvariableop3
/savev2_adam_dense_43_bias_m_read_readvariableop5
1savev2_adam_dense_44_kernel_m_read_readvariableop3
/savev2_adam_dense_44_bias_m_read_readvariableop5
1savev2_adam_conv2d_3_kernel_v_read_readvariableop3
/savev2_adam_conv2d_3_bias_v_read_readvariableop5
1savev2_adam_dense_43_kernel_v_read_readvariableop3
/savev2_adam_dense_43_bias_v_read_readvariableop5
1savev2_adam_dense_44_kernel_v_read_readvariableop3
/savev2_adam_dense_44_bias_v_read_readvariableop
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
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_dense_43_kernel_read_readvariableop(savev2_dense_43_bias_read_readvariableop*savev2_dense_44_kernel_read_readvariableop(savev2_dense_44_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop/savev2_adam_conv2d_3_bias_m_read_readvariableop1savev2_adam_dense_43_kernel_m_read_readvariableop/savev2_adam_dense_43_bias_m_read_readvariableop1savev2_adam_dense_44_kernel_m_read_readvariableop/savev2_adam_dense_44_bias_m_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop/savev2_adam_conv2d_3_bias_v_read_readvariableop1savev2_adam_dense_43_kernel_v_read_readvariableop/savev2_adam_dense_43_bias_v_read_readvariableop1savev2_adam_dense_44_kernel_v_read_readvariableop/savev2_adam_dense_44_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :::
??0:0:0:: : : : : : : : : :::
??0:0:0::::
??0:0:0:: 2(
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
::&"
 
_output_shapes
:
??0: 

_output_shapes
:0:$ 

_output_shapes

:0: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
??0: 

_output_shapes
:0:$ 

_output_shapes

:0: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
??0: 

_output_shapes
:0:$ 

_output_shapes

:0: 

_output_shapes
::

_output_shapes
: 
?
?
D__inference_dense_43_layer_call_and_return_conditional_losses_172381

inputs2
matmul_readvariableop_resource:
??0-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_43/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??0*
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
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??0*
dtype0?
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??0r
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??D;?
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????0?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_43/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_172810
conv2d_3_input!
unknown:
	unknown_0:
	unknown_1:
??0
	unknown_2:0
	unknown_3:0
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_172312o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????dd: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:?????????dd
(
_user_specified_nameconv2d_3_input
?l
?
"__inference__traced_restore_173159
file_prefix:
 assignvariableop_conv2d_3_kernel:.
 assignvariableop_1_conv2d_3_bias:6
"assignvariableop_2_dense_43_kernel:
??0.
 assignvariableop_3_dense_43_bias:04
"assignvariableop_4_dense_44_kernel:0.
 assignvariableop_5_dense_44_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: D
*assignvariableop_15_adam_conv2d_3_kernel_m:6
(assignvariableop_16_adam_conv2d_3_bias_m:>
*assignvariableop_17_adam_dense_43_kernel_m:
??06
(assignvariableop_18_adam_dense_43_bias_m:0<
*assignvariableop_19_adam_dense_44_kernel_m:06
(assignvariableop_20_adam_dense_44_bias_m:D
*assignvariableop_21_adam_conv2d_3_kernel_v:6
(assignvariableop_22_adam_conv2d_3_bias_v:>
*assignvariableop_23_adam_dense_43_kernel_v:
??06
(assignvariableop_24_adam_dense_43_bias_v:0<
*assignvariableop_25_adam_dense_44_kernel_v:06
(assignvariableop_26_adam_dense_44_bias_v:
identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp assignvariableop_conv2d_3_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_3_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_43_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_43_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_44_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_44_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_conv2d_3_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_conv2d_3_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_43_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_43_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_44_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_44_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_conv2d_3_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_conv2d_3_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_43_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_43_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_44_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_44_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
Q
conv2d_3_input?
 serving_default_conv2d_3_input:0?????????dd<
dense_440
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?~
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
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
"_random_generator
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
?
%	variables
&trainable_variables
'regularization_losses
(	keras_api
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

3kernel
4bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
?
;iter

<beta_1

=beta_2
	>decay
?learning_ratemqmr+ms,mt3mu4mvvwvx+vy,vz3v{4v|"
	optimizer
J
0
1
+2
,3
34
45"
trackable_list_wrapper
J
0
1
+2
,3
34
45"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
?
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
.__inference_sequential_16_layer_call_fn_172438
.__inference_sequential_16_layer_call_fn_172685
.__inference_sequential_16_layer_call_fn_172702
.__inference_sequential_16_layer_call_fn_172582?
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
I__inference_sequential_16_layer_call_and_return_conditional_losses_172743
I__inference_sequential_16_layer_call_and_return_conditional_losses_172791
I__inference_sequential_16_layer_call_and_return_conditional_losses_172616
I__inference_sequential_16_layer_call_and_return_conditional_losses_172650?
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
!__inference__wrapped_model_172312conv2d_3_input"?
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
Gserving_default"
signature_map
):'2conv2d_3/kernel
:2conv2d_3/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_3_layer_call_fn_172819?
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
D__inference_conv2d_3_layer_call_and_return_conditional_losses_172830?
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
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
0__inference_max_pooling2d_3_layer_call_fn_172835?
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
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_172840?
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
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
 regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
*__inference_dropout_3_layer_call_fn_172845
*__inference_dropout_3_layer_call_fn_172850?
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
E__inference_dropout_3_layer_call_and_return_conditional_losses_172855
E__inference_dropout_3_layer_call_and_return_conditional_losses_172867?
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
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_flatten_3_layer_call_fn_172872?
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
E__inference_flatten_3_layer_call_and_return_conditional_losses_172878?
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
??02dense_43/kernel
:02dense_43/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
'
@0"
trackable_list_wrapper
?
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_43_layer_call_fn_172893?
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
D__inference_dense_43_layer_call_and_return_conditional_losses_172910?
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
!:02dense_44/kernel
:2dense_44/bias
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
'
A0"
trackable_list_wrapper
?
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_44_layer_call_fn_172925?
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
D__inference_dense_44_layer_call_and_return_conditional_losses_172942?
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
__inference_loss_fn_0_172953?
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
__inference_loss_fn_1_172964?
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
J
0
1
2
3
4
5"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
$__inference_signature_wrapper_172810conv2d_3_input"?
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
'
@0"
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
A0"
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	htotal
	icount
j	variables
k	keras_api"
_tf_keras_metric
^
	ltotal
	mcount
n
_fn_kwargs
o	variables
p	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
h0
i1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
l0
m1"
trackable_list_wrapper
-
o	variables"
_generic_user_object
.:,2Adam/conv2d_3/kernel/m
 :2Adam/conv2d_3/bias/m
(:&
??02Adam/dense_43/kernel/m
 :02Adam/dense_43/bias/m
&:$02Adam/dense_44/kernel/m
 :2Adam/dense_44/bias/m
.:,2Adam/conv2d_3/kernel/v
 :2Adam/conv2d_3/bias/v
(:&
??02Adam/dense_43/kernel/v
 :02Adam/dense_43/bias/v
&:$02Adam/dense_44/kernel/v
 :2Adam/dense_44/bias/v?
!__inference__wrapped_model_172312~+,34??<
5?2
0?-
conv2d_3_input?????????dd
? "3?0
.
dense_44"?
dense_44??????????
D__inference_conv2d_3_layer_call_and_return_conditional_losses_172830l7?4
-?*
(?%
inputs?????????dd
? "-?*
#? 
0?????????bb
? ?
)__inference_conv2d_3_layer_call_fn_172819_7?4
-?*
(?%
inputs?????????dd
? " ??????????bb?
D__inference_dense_43_layer_call_and_return_conditional_losses_172910^+,1?.
'?$
"?
inputs???????????
? "%?"
?
0?????????0
? ~
)__inference_dense_43_layer_call_fn_172893Q+,1?.
'?$
"?
inputs???????????
? "??????????0?
D__inference_dense_44_layer_call_and_return_conditional_losses_172942\34/?,
%?"
 ?
inputs?????????0
? "%?"
?
0?????????
? |
)__inference_dense_44_layer_call_fn_172925O34/?,
%?"
 ?
inputs?????????0
? "???????????
E__inference_dropout_3_layer_call_and_return_conditional_losses_172855l;?8
1?.
(?%
inputs?????????11
p 
? "-?*
#? 
0?????????11
? ?
E__inference_dropout_3_layer_call_and_return_conditional_losses_172867l;?8
1?.
(?%
inputs?????????11
p
? "-?*
#? 
0?????????11
? ?
*__inference_dropout_3_layer_call_fn_172845_;?8
1?.
(?%
inputs?????????11
p 
? " ??????????11?
*__inference_dropout_3_layer_call_fn_172850_;?8
1?.
(?%
inputs?????????11
p
? " ??????????11?
E__inference_flatten_3_layer_call_and_return_conditional_losses_172878b7?4
-?*
(?%
inputs?????????11
? "'?$
?
0???????????
? ?
*__inference_flatten_3_layer_call_fn_172872U7?4
-?*
(?%
inputs?????????11
? "????????????;
__inference_loss_fn_0_172953+?

? 
? "? ;
__inference_loss_fn_1_1729643?

? 
? "? ?
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_172840?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_3_layer_call_fn_172835?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_16_layer_call_and_return_conditional_losses_172616x+,34G?D
=?:
0?-
conv2d_3_input?????????dd
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_16_layer_call_and_return_conditional_losses_172650x+,34G?D
=?:
0?-
conv2d_3_input?????????dd
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_16_layer_call_and_return_conditional_losses_172743p+,34??<
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
I__inference_sequential_16_layer_call_and_return_conditional_losses_172791p+,34??<
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
.__inference_sequential_16_layer_call_fn_172438k+,34G?D
=?:
0?-
conv2d_3_input?????????dd
p 

 
? "???????????
.__inference_sequential_16_layer_call_fn_172582k+,34G?D
=?:
0?-
conv2d_3_input?????????dd
p

 
? "???????????
.__inference_sequential_16_layer_call_fn_172685c+,34??<
5?2
(?%
inputs?????????dd
p 

 
? "???????????
.__inference_sequential_16_layer_call_fn_172702c+,34??<
5?2
(?%
inputs?????????dd
p

 
? "???????????
$__inference_signature_wrapper_172810?+,34Q?N
? 
G?D
B
conv2d_3_input0?-
conv2d_3_input?????????dd"3?0
.
dense_44"?
dense_44?????????