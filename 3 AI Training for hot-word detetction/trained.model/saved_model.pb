??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
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
executor_typestring ?
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
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??

?
conv_layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv_layer1/kernel
?
&conv_layer1/kernel/Read/ReadVariableOpReadVariableOpconv_layer1/kernel*&
_output_shapes
:*
dtype0
x
conv_layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv_layer1/bias
q
$conv_layer1/bias/Read/ReadVariableOpReadVariableOpconv_layer1/bias*
_output_shapes
:*
dtype0
?
conv_layer2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv_layer2/kernel
?
&conv_layer2/kernel/Read/ReadVariableOpReadVariableOpconv_layer2/kernel*&
_output_shapes
:*
dtype0
x
conv_layer2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv_layer2/bias
q
$conv_layer2/bias/Read/ReadVariableOpReadVariableOpconv_layer2/bias*
_output_shapes
:*
dtype0
?
hidden_layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(*%
shared_namehidden_layer1/kernel
~
(hidden_layer1/kernel/Read/ReadVariableOpReadVariableOphidden_layer1/kernel*
_output_shapes
:	?(*
dtype0
|
hidden_layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*#
shared_namehidden_layer1/bias
u
&hidden_layer1/bias/Read/ReadVariableOpReadVariableOphidden_layer1/bias*
_output_shapes
:(*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:(*
dtype0
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
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
Adam/conv_layer1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv_layer1/kernel/m
?
-Adam/conv_layer1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer1/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv_layer1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv_layer1/bias/m

+Adam/conv_layer1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer1/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv_layer2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv_layer2/kernel/m
?
-Adam/conv_layer2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer2/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv_layer2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv_layer2/bias/m

+Adam/conv_layer2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer2/bias/m*
_output_shapes
:*
dtype0
?
Adam/hidden_layer1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(*,
shared_nameAdam/hidden_layer1/kernel/m
?
/Adam/hidden_layer1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer1/kernel/m*
_output_shapes
:	?(*
dtype0
?
Adam/hidden_layer1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_nameAdam/hidden_layer1/bias/m
?
-Adam/hidden_layer1/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer1/bias/m*
_output_shapes
:(*
dtype0
?
Adam/output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*%
shared_nameAdam/output/kernel/m
}
(Adam/output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output/kernel/m*
_output_shapes

:(*
dtype0
|
Adam/output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/m
u
&Adam/output/bias/m/Read/ReadVariableOpReadVariableOpAdam/output/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv_layer1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv_layer1/kernel/v
?
-Adam/conv_layer1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer1/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv_layer1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv_layer1/bias/v

+Adam/conv_layer1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer1/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv_layer2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv_layer2/kernel/v
?
-Adam/conv_layer2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer2/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv_layer2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv_layer2/bias/v

+Adam/conv_layer2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer2/bias/v*
_output_shapes
:*
dtype0
?
Adam/hidden_layer1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(*,
shared_nameAdam/hidden_layer1/kernel/v
?
/Adam/hidden_layer1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer1/kernel/v*
_output_shapes
:	?(*
dtype0
?
Adam/hidden_layer1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_nameAdam/hidden_layer1/bias/v
?
-Adam/hidden_layer1/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer1/bias/v*
_output_shapes
:(*
dtype0
?
Adam/output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*%
shared_nameAdam/output/kernel/v
}
(Adam/output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output/kernel/v*
_output_shapes

:(*
dtype0
|
Adam/output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/v
u
&Adam/output/bias/v/Read/ReadVariableOpReadVariableOpAdam/output/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?7
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?7
value?7B?7 B?7
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
		optimizer

trainable_variables
regularization_losses
	variables
	keras_api

signatures
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
 regularization_losses
!	variables
"	keras_api
R
#trainable_variables
$regularization_losses
%	variables
&	keras_api
R
'trainable_variables
(regularization_losses
)	variables
*	keras_api
h

+kernel
,bias
-trainable_variables
.regularization_losses
/	variables
0	keras_api
h

1kernel
2bias
3trainable_variables
4regularization_losses
5	variables
6	keras_api
?
7iter

8beta_1

9beta_2
	:decay
;learning_ratemtmumvmw+mx,my1mz2m{v|v}v~v+v?,v?1v?2v?
8
0
1
2
3
+4
,5
16
27
 
8
0
1
2
3
+4
,5
16
27
?

trainable_variables
<layer_regularization_losses
=metrics
>layer_metrics
regularization_losses
?non_trainable_variables

@layers
	variables
 
^\
VARIABLE_VALUEconv_layer1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv_layer1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
trainable_variables
Alayer_regularization_losses
Bmetrics
Clayer_metrics
regularization_losses
Dnon_trainable_variables

Elayers
	variables
 
 
 
?
trainable_variables
Flayer_regularization_losses
Gmetrics
Hlayer_metrics
regularization_losses
Inon_trainable_variables

Jlayers
	variables
^\
VARIABLE_VALUEconv_layer2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv_layer2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
trainable_variables
Klayer_regularization_losses
Lmetrics
Mlayer_metrics
regularization_losses
Nnon_trainable_variables

Olayers
	variables
 
 
 
?
trainable_variables
Player_regularization_losses
Qmetrics
Rlayer_metrics
 regularization_losses
Snon_trainable_variables

Tlayers
!	variables
 
 
 
?
#trainable_variables
Ulayer_regularization_losses
Vmetrics
Wlayer_metrics
$regularization_losses
Xnon_trainable_variables

Ylayers
%	variables
 
 
 
?
'trainable_variables
Zlayer_regularization_losses
[metrics
\layer_metrics
(regularization_losses
]non_trainable_variables

^layers
)	variables
`^
VARIABLE_VALUEhidden_layer1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEhidden_layer1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
 

+0
,1
?
-trainable_variables
_layer_regularization_losses
`metrics
alayer_metrics
.regularization_losses
bnon_trainable_variables

clayers
/	variables
YW
VARIABLE_VALUEoutput/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEoutput/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21
 

10
21
?
3trainable_variables
dlayer_regularization_losses
emetrics
flayer_metrics
4regularization_losses
gnon_trainable_variables

hlayers
5	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

i0
j1
 
 
8
0
1
2
3
4
5
6
7
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	ktotal
	lcount
m	variables
n	keras_api
D
	ototal
	pcount
q
_fn_kwargs
r	variables
s	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

k0
l1

m	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

o0
p1

r	variables
?
VARIABLE_VALUEAdam/conv_layer1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_layer1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv_layer2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_layer2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/hidden_layer1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/hidden_layer1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/output/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/output/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv_layer1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_layer1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv_layer2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_layer2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/hidden_layer1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/hidden_layer1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/output/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/output/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
!serving_default_conv_layer1_inputPlaceholder*/
_output_shapes
:?????????c+*
dtype0*$
shape:?????????c+
?
StatefulPartitionedCallStatefulPartitionedCall!serving_default_conv_layer1_inputconv_layer1/kernelconv_layer1/biasconv_layer2/kernelconv_layer2/biashidden_layer1/kernelhidden_layer1/biasoutput/kerneloutput/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_170874
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&conv_layer1/kernel/Read/ReadVariableOp$conv_layer1/bias/Read/ReadVariableOp&conv_layer2/kernel/Read/ReadVariableOp$conv_layer2/bias/Read/ReadVariableOp(hidden_layer1/kernel/Read/ReadVariableOp&hidden_layer1/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp-Adam/conv_layer1/kernel/m/Read/ReadVariableOp+Adam/conv_layer1/bias/m/Read/ReadVariableOp-Adam/conv_layer2/kernel/m/Read/ReadVariableOp+Adam/conv_layer2/bias/m/Read/ReadVariableOp/Adam/hidden_layer1/kernel/m/Read/ReadVariableOp-Adam/hidden_layer1/bias/m/Read/ReadVariableOp(Adam/output/kernel/m/Read/ReadVariableOp&Adam/output/bias/m/Read/ReadVariableOp-Adam/conv_layer1/kernel/v/Read/ReadVariableOp+Adam/conv_layer1/bias/v/Read/ReadVariableOp-Adam/conv_layer2/kernel/v/Read/ReadVariableOp+Adam/conv_layer2/bias/v/Read/ReadVariableOp/Adam/hidden_layer1/kernel/v/Read/ReadVariableOp-Adam/hidden_layer1/bias/v/Read/ReadVariableOp(Adam/output/kernel/v/Read/ReadVariableOp&Adam/output/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
__inference__traced_save_171377
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv_layer1/kernelconv_layer1/biasconv_layer2/kernelconv_layer2/biashidden_layer1/kernelhidden_layer1/biasoutput/kerneloutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv_layer1/kernel/mAdam/conv_layer1/bias/mAdam/conv_layer2/kernel/mAdam/conv_layer2/bias/mAdam/hidden_layer1/kernel/mAdam/hidden_layer1/bias/mAdam/output/kernel/mAdam/output/bias/mAdam/conv_layer1/kernel/vAdam/conv_layer1/bias/vAdam/conv_layer2/kernel/vAdam/conv_layer2/bias/vAdam/hidden_layer1/kernel/vAdam/hidden_layer1/bias/vAdam/output/kernel/vAdam/output/bias/v*-
Tin&
$2"*
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
"__inference__traced_restore_171486??	
?
a
C__inference_dropout_layer_call_and_return_conditional_losses_170441

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_conv_layer1_layer_call_and_return_conditional_losses_170397

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????c+2
Relu?
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype026
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2'
%conv_layer1/kernel/Regularizer/Square?
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$conv_layer1/kernel/Regularizer/Const?
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"conv_layer1/kernel/Regularizer/Sum?
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$conv_layer1/kernel/Regularizer/mul/x?
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"conv_layer1/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????c+2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????c+: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?
?
G__inference_conv_layer1_layer_call_and_return_conditional_losses_171077

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????c+2
Relu?
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype026
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2'
%conv_layer1/kernel/Regularizer/Square?
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$conv_layer1/kernel/Regularizer/Const?
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"conv_layer1/kernel/Regularizer/Sum?
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$conv_layer1/kernel/Regularizer/mul/x?
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"conv_layer1/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????c+2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????c+: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?
a
C__inference_dropout_layer_call_and_return_conditional_losses_171135

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
I
-__inference_max_pooling2_layer_call_fn_170373

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
GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2_layer_call_and_return_conditional_losses_1703672
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_171179

inputs1
matmul_readvariableop_resource:	?(-
biasadd_readvariableop_resource:(
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????(2
Relu?
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?(*
dtype028
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?(2)
'hidden_layer1/kernel/Regularizer/Square?
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&hidden_layer1/kernel/Regularizer/Const?
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$hidden_layer1/kernel/Regularizer/Sum?
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&hidden_layer1/kernel/Regularizer/mul/x?
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$hidden_layer1/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
'__inference_output_layer_call_fn_171194

inputs
unknown:(
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_1704832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????(: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs
?N
?
F__inference_sequential_layer_call_and_return_conditional_losses_170769
conv_layer1_input,
conv_layer1_170720: 
conv_layer1_170722:,
conv_layer2_170726: 
conv_layer2_170728:'
hidden_layer1_170734:	?("
hidden_layer1_170736:(
output_170739:(
output_170741:
identity??#conv_layer1/StatefulPartitionedCall?4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?#conv_layer2/StatefulPartitionedCall?4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?%hidden_layer1/StatefulPartitionedCall?6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?/output/kernel/Regularizer/Square/ReadVariableOp?
#conv_layer1/StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputconv_layer1_170720conv_layer1_170722*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????c+*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer1_layer_call_and_return_conditional_losses_1703972%
#conv_layer1/StatefulPartitionedCall?
max_pooling1/PartitionedCallPartitionedCall,conv_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1_layer_call_and_return_conditional_losses_1703552
max_pooling1/PartitionedCall?
#conv_layer2/StatefulPartitionedCallStatefulPartitionedCall%max_pooling1/PartitionedCall:output:0conv_layer2_170726conv_layer2_170728*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer2_layer_call_and_return_conditional_losses_1704212%
#conv_layer2/StatefulPartitionedCall?
max_pooling2/PartitionedCallPartitionedCall,conv_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2_layer_call_and_return_conditional_losses_1703672
max_pooling2/PartitionedCall?
flatten/PartitionedCallPartitionedCall%max_pooling2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1704342
flatten/PartitionedCall?
dropout/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1704412
dropout/PartitionedCall?
%hidden_layer1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0hidden_layer1_170734hidden_layer1_170736*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_1704602'
%hidden_layer1/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall.hidden_layer1/StatefulPartitionedCall:output:0output_170739output_170741*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_1704832 
output/StatefulPartitionedCall?
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer1_170720*&
_output_shapes
:*
dtype026
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2'
%conv_layer1/kernel/Regularizer/Square?
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$conv_layer1/kernel/Regularizer/Const?
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"conv_layer1/kernel/Regularizer/Sum?
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$conv_layer1/kernel/Regularizer/mul/x?
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"conv_layer1/kernel/Regularizer/mul?
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer2_170726*&
_output_shapes
:*
dtype026
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2'
%conv_layer2/kernel/Regularizer/Square?
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$conv_layer2/kernel/Regularizer/Const?
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"conv_layer2/kernel/Regularizer/Sum?
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$conv_layer2/kernel/Regularizer/mul/x?
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"conv_layer2/kernel/Regularizer/mul?
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_layer1_170734*
_output_shapes
:	?(*
dtype028
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?(2)
'hidden_layer1/kernel/Regularizer/Square?
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&hidden_layer1/kernel/Regularizer/Const?
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$hidden_layer1/kernel/Regularizer/Sum?
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&hidden_layer1/kernel/Regularizer/mul/x?
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$hidden_layer1/kernel/Regularizer/mul?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_170739*
_output_shapes

:(*
dtype021
/output/kernel/Regularizer/Square/ReadVariableOp?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(2"
 output/kernel/Regularizer/Square?
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
output/kernel/Regularizer/Const?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/Sum?
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
output/kernel/Regularizer/mul/x?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0$^conv_layer1/StatefulPartitionedCall5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp$^conv_layer2/StatefulPartitionedCall5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp&^hidden_layer1/StatefulPartitionedCall7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall0^output/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 2J
#conv_layer1/StatefulPartitionedCall#conv_layer1/StatefulPartitionedCall2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp2J
#conv_layer2/StatefulPartitionedCall#conv_layer2/StatefulPartitionedCall2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp2N
%hidden_layer1/StatefulPartitionedCall%hidden_layer1/StatefulPartitionedCall2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:b ^
/
_output_shapes
:?????????c+
+
_user_specified_nameconv_layer1_input
?O
?
F__inference_sequential_layer_call_and_return_conditional_losses_170821
conv_layer1_input,
conv_layer1_170772: 
conv_layer1_170774:,
conv_layer2_170778: 
conv_layer2_170780:'
hidden_layer1_170786:	?("
hidden_layer1_170788:(
output_170791:(
output_170793:
identity??#conv_layer1/StatefulPartitionedCall?4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?#conv_layer2/StatefulPartitionedCall?4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?dropout/StatefulPartitionedCall?%hidden_layer1/StatefulPartitionedCall?6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?/output/kernel/Regularizer/Square/ReadVariableOp?
#conv_layer1/StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputconv_layer1_170772conv_layer1_170774*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????c+*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer1_layer_call_and_return_conditional_losses_1703972%
#conv_layer1/StatefulPartitionedCall?
max_pooling1/PartitionedCallPartitionedCall,conv_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1_layer_call_and_return_conditional_losses_1703552
max_pooling1/PartitionedCall?
#conv_layer2/StatefulPartitionedCallStatefulPartitionedCall%max_pooling1/PartitionedCall:output:0conv_layer2_170778conv_layer2_170780*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer2_layer_call_and_return_conditional_losses_1704212%
#conv_layer2/StatefulPartitionedCall?
max_pooling2/PartitionedCallPartitionedCall,conv_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2_layer_call_and_return_conditional_losses_1703672
max_pooling2/PartitionedCall?
flatten/PartitionedCallPartitionedCall%max_pooling2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1704342
flatten/PartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1705732!
dropout/StatefulPartitionedCall?
%hidden_layer1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0hidden_layer1_170786hidden_layer1_170788*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_1704602'
%hidden_layer1/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall.hidden_layer1/StatefulPartitionedCall:output:0output_170791output_170793*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_1704832 
output/StatefulPartitionedCall?
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer1_170772*&
_output_shapes
:*
dtype026
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2'
%conv_layer1/kernel/Regularizer/Square?
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$conv_layer1/kernel/Regularizer/Const?
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"conv_layer1/kernel/Regularizer/Sum?
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$conv_layer1/kernel/Regularizer/mul/x?
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"conv_layer1/kernel/Regularizer/mul?
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer2_170778*&
_output_shapes
:*
dtype026
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2'
%conv_layer2/kernel/Regularizer/Square?
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$conv_layer2/kernel/Regularizer/Const?
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"conv_layer2/kernel/Regularizer/Sum?
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$conv_layer2/kernel/Regularizer/mul/x?
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"conv_layer2/kernel/Regularizer/mul?
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_layer1_170786*
_output_shapes
:	?(*
dtype028
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?(2)
'hidden_layer1/kernel/Regularizer/Square?
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&hidden_layer1/kernel/Regularizer/Const?
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$hidden_layer1/kernel/Regularizer/Sum?
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&hidden_layer1/kernel/Regularizer/mul/x?
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$hidden_layer1/kernel/Regularizer/mul?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_170791*
_output_shapes

:(*
dtype021
/output/kernel/Regularizer/Square/ReadVariableOp?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(2"
 output/kernel/Regularizer/Square?
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
output/kernel/Regularizer/Const?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/Sum?
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
output/kernel/Regularizer/mul/x?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0$^conv_layer1/StatefulPartitionedCall5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp$^conv_layer2/StatefulPartitionedCall5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp ^dropout/StatefulPartitionedCall&^hidden_layer1/StatefulPartitionedCall7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall0^output/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 2J
#conv_layer1/StatefulPartitionedCall#conv_layer1/StatefulPartitionedCall2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp2J
#conv_layer2/StatefulPartitionedCall#conv_layer2/StatefulPartitionedCall2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2N
%hidden_layer1/StatefulPartitionedCall%hidden_layer1/StatefulPartitionedCall2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:b ^
/
_output_shapes
:?????????c+
+
_user_specified_nameconv_layer1_input
?
D
(__inference_dropout_layer_call_fn_171125

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1704412
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
C__inference_dropout_layer_call_and_return_conditional_losses_170573

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
I
-__inference_max_pooling1_layer_call_fn_170361

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
GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1_layer_call_and_return_conditional_losses_1703552
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?O
?
F__inference_sequential_layer_call_and_return_conditional_losses_170677

inputs,
conv_layer1_170628: 
conv_layer1_170630:,
conv_layer2_170634: 
conv_layer2_170636:'
hidden_layer1_170642:	?("
hidden_layer1_170644:(
output_170647:(
output_170649:
identity??#conv_layer1/StatefulPartitionedCall?4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?#conv_layer2/StatefulPartitionedCall?4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?dropout/StatefulPartitionedCall?%hidden_layer1/StatefulPartitionedCall?6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?/output/kernel/Regularizer/Square/ReadVariableOp?
#conv_layer1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_layer1_170628conv_layer1_170630*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????c+*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer1_layer_call_and_return_conditional_losses_1703972%
#conv_layer1/StatefulPartitionedCall?
max_pooling1/PartitionedCallPartitionedCall,conv_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1_layer_call_and_return_conditional_losses_1703552
max_pooling1/PartitionedCall?
#conv_layer2/StatefulPartitionedCallStatefulPartitionedCall%max_pooling1/PartitionedCall:output:0conv_layer2_170634conv_layer2_170636*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer2_layer_call_and_return_conditional_losses_1704212%
#conv_layer2/StatefulPartitionedCall?
max_pooling2/PartitionedCallPartitionedCall,conv_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2_layer_call_and_return_conditional_losses_1703672
max_pooling2/PartitionedCall?
flatten/PartitionedCallPartitionedCall%max_pooling2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1704342
flatten/PartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1705732!
dropout/StatefulPartitionedCall?
%hidden_layer1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0hidden_layer1_170642hidden_layer1_170644*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_1704602'
%hidden_layer1/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall.hidden_layer1/StatefulPartitionedCall:output:0output_170647output_170649*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_1704832 
output/StatefulPartitionedCall?
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer1_170628*&
_output_shapes
:*
dtype026
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2'
%conv_layer1/kernel/Regularizer/Square?
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$conv_layer1/kernel/Regularizer/Const?
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"conv_layer1/kernel/Regularizer/Sum?
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$conv_layer1/kernel/Regularizer/mul/x?
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"conv_layer1/kernel/Regularizer/mul?
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer2_170634*&
_output_shapes
:*
dtype026
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2'
%conv_layer2/kernel/Regularizer/Square?
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$conv_layer2/kernel/Regularizer/Const?
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"conv_layer2/kernel/Regularizer/Sum?
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$conv_layer2/kernel/Regularizer/mul/x?
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"conv_layer2/kernel/Regularizer/mul?
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_layer1_170642*
_output_shapes
:	?(*
dtype028
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?(2)
'hidden_layer1/kernel/Regularizer/Square?
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&hidden_layer1/kernel/Regularizer/Const?
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$hidden_layer1/kernel/Regularizer/Sum?
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&hidden_layer1/kernel/Regularizer/mul/x?
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$hidden_layer1/kernel/Regularizer/mul?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_170647*
_output_shapes

:(*
dtype021
/output/kernel/Regularizer/Square/ReadVariableOp?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(2"
 output/kernel/Regularizer/Square?
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
output/kernel/Regularizer/Const?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/Sum?
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
output/kernel/Regularizer/mul/x?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0$^conv_layer1/StatefulPartitionedCall5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp$^conv_layer2/StatefulPartitionedCall5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp ^dropout/StatefulPartitionedCall&^hidden_layer1/StatefulPartitionedCall7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall0^output/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 2J
#conv_layer1/StatefulPartitionedCall#conv_layer1/StatefulPartitionedCall2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp2J
#conv_layer2/StatefulPartitionedCall#conv_layer2/StatefulPartitionedCall2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2N
%hidden_layer1/StatefulPartitionedCall%hidden_layer1/StatefulPartitionedCall2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?
D
(__inference_flatten_layer_call_fn_171114

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1704342
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?N
?
F__inference_sequential_layer_call_and_return_conditional_losses_170514

inputs,
conv_layer1_170398: 
conv_layer1_170400:,
conv_layer2_170422: 
conv_layer2_170424:'
hidden_layer1_170461:	?("
hidden_layer1_170463:(
output_170484:(
output_170486:
identity??#conv_layer1/StatefulPartitionedCall?4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?#conv_layer2/StatefulPartitionedCall?4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?%hidden_layer1/StatefulPartitionedCall?6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?/output/kernel/Regularizer/Square/ReadVariableOp?
#conv_layer1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_layer1_170398conv_layer1_170400*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????c+*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer1_layer_call_and_return_conditional_losses_1703972%
#conv_layer1/StatefulPartitionedCall?
max_pooling1/PartitionedCallPartitionedCall,conv_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1_layer_call_and_return_conditional_losses_1703552
max_pooling1/PartitionedCall?
#conv_layer2/StatefulPartitionedCallStatefulPartitionedCall%max_pooling1/PartitionedCall:output:0conv_layer2_170422conv_layer2_170424*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer2_layer_call_and_return_conditional_losses_1704212%
#conv_layer2/StatefulPartitionedCall?
max_pooling2/PartitionedCallPartitionedCall,conv_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2_layer_call_and_return_conditional_losses_1703672
max_pooling2/PartitionedCall?
flatten/PartitionedCallPartitionedCall%max_pooling2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1704342
flatten/PartitionedCall?
dropout/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1704412
dropout/PartitionedCall?
%hidden_layer1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0hidden_layer1_170461hidden_layer1_170463*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_1704602'
%hidden_layer1/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall.hidden_layer1/StatefulPartitionedCall:output:0output_170484output_170486*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_1704832 
output/StatefulPartitionedCall?
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer1_170398*&
_output_shapes
:*
dtype026
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2'
%conv_layer1/kernel/Regularizer/Square?
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$conv_layer1/kernel/Regularizer/Const?
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"conv_layer1/kernel/Regularizer/Sum?
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$conv_layer1/kernel/Regularizer/mul/x?
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"conv_layer1/kernel/Regularizer/mul?
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer2_170422*&
_output_shapes
:*
dtype026
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2'
%conv_layer2/kernel/Regularizer/Square?
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$conv_layer2/kernel/Regularizer/Const?
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"conv_layer2/kernel/Regularizer/Sum?
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$conv_layer2/kernel/Regularizer/mul/x?
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"conv_layer2/kernel/Regularizer/mul?
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_layer1_170461*
_output_shapes
:	?(*
dtype028
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?(2)
'hidden_layer1/kernel/Regularizer/Square?
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&hidden_layer1/kernel/Regularizer/Const?
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$hidden_layer1/kernel/Regularizer/Sum?
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&hidden_layer1/kernel/Regularizer/mul/x?
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$hidden_layer1/kernel/Regularizer/mul?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_170484*
_output_shapes

:(*
dtype021
/output/kernel/Regularizer/Square/ReadVariableOp?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(2"
 output/kernel/Regularizer/Square?
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
output/kernel/Regularizer/Const?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/Sum?
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
output/kernel/Regularizer/mul/x?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/mul?
IdentityIdentity'output/StatefulPartitionedCall:output:0$^conv_layer1/StatefulPartitionedCall5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp$^conv_layer2/StatefulPartitionedCall5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp&^hidden_layer1/StatefulPartitionedCall7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall0^output/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 2J
#conv_layer1/StatefulPartitionedCall#conv_layer1/StatefulPartitionedCall2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp2J
#conv_layer2/StatefulPartitionedCall#conv_layer2/StatefulPartitionedCall2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp2N
%hidden_layer1/StatefulPartitionedCall%hidden_layer1/StatefulPartitionedCall2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?
?
,__inference_conv_layer2_layer_call_fn_171092

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer2_layer_call_and_return_conditional_losses_1704212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????12

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????1: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????1
 
_user_specified_nameinputs
?
a
(__inference_dropout_layer_call_fn_171130

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1705732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?;
?
!__inference__wrapped_model_170349
conv_layer1_inputO
5sequential_conv_layer1_conv2d_readvariableop_resource:D
6sequential_conv_layer1_biasadd_readvariableop_resource:O
5sequential_conv_layer2_conv2d_readvariableop_resource:D
6sequential_conv_layer2_biasadd_readvariableop_resource:J
7sequential_hidden_layer1_matmul_readvariableop_resource:	?(F
8sequential_hidden_layer1_biasadd_readvariableop_resource:(B
0sequential_output_matmul_readvariableop_resource:(?
1sequential_output_biasadd_readvariableop_resource:
identity??-sequential/conv_layer1/BiasAdd/ReadVariableOp?,sequential/conv_layer1/Conv2D/ReadVariableOp?-sequential/conv_layer2/BiasAdd/ReadVariableOp?,sequential/conv_layer2/Conv2D/ReadVariableOp?/sequential/hidden_layer1/BiasAdd/ReadVariableOp?.sequential/hidden_layer1/MatMul/ReadVariableOp?(sequential/output/BiasAdd/ReadVariableOp?'sequential/output/MatMul/ReadVariableOp?
,sequential/conv_layer1/Conv2D/ReadVariableOpReadVariableOp5sequential_conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02.
,sequential/conv_layer1/Conv2D/ReadVariableOp?
sequential/conv_layer1/Conv2DConv2Dconv_layer1_input4sequential/conv_layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+*
paddingSAME*
strides
2
sequential/conv_layer1/Conv2D?
-sequential/conv_layer1/BiasAdd/ReadVariableOpReadVariableOp6sequential_conv_layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential/conv_layer1/BiasAdd/ReadVariableOp?
sequential/conv_layer1/BiasAddBiasAdd&sequential/conv_layer1/Conv2D:output:05sequential/conv_layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+2 
sequential/conv_layer1/BiasAdd?
sequential/conv_layer1/ReluRelu'sequential/conv_layer1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????c+2
sequential/conv_layer1/Relu?
sequential/max_pooling1/MaxPoolMaxPool)sequential/conv_layer1/Relu:activations:0*/
_output_shapes
:?????????1*
ksize
*
paddingVALID*
strides
2!
sequential/max_pooling1/MaxPool?
,sequential/conv_layer2/Conv2D/ReadVariableOpReadVariableOp5sequential_conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02.
,sequential/conv_layer2/Conv2D/ReadVariableOp?
sequential/conv_layer2/Conv2DConv2D(sequential/max_pooling1/MaxPool:output:04sequential/conv_layer2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????1*
paddingSAME*
strides
2
sequential/conv_layer2/Conv2D?
-sequential/conv_layer2/BiasAdd/ReadVariableOpReadVariableOp6sequential_conv_layer2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential/conv_layer2/BiasAdd/ReadVariableOp?
sequential/conv_layer2/BiasAddBiasAdd&sequential/conv_layer2/Conv2D:output:05sequential/conv_layer2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????12 
sequential/conv_layer2/BiasAdd?
sequential/conv_layer2/ReluRelu'sequential/conv_layer2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????12
sequential/conv_layer2/Relu?
sequential/max_pooling2/MaxPoolMaxPool)sequential/conv_layer2/Relu:activations:0*/
_output_shapes
:?????????
*
ksize
*
paddingVALID*
strides
2!
sequential/max_pooling2/MaxPool?
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
sequential/flatten/Const?
sequential/flatten/ReshapeReshape(sequential/max_pooling2/MaxPool:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential/flatten/Reshape?
sequential/dropout/IdentityIdentity#sequential/flatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2
sequential/dropout/Identity?
.sequential/hidden_layer1/MatMul/ReadVariableOpReadVariableOp7sequential_hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype020
.sequential/hidden_layer1/MatMul/ReadVariableOp?
sequential/hidden_layer1/MatMulMatMul$sequential/dropout/Identity:output:06sequential/hidden_layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2!
sequential/hidden_layer1/MatMul?
/sequential/hidden_layer1/BiasAdd/ReadVariableOpReadVariableOp8sequential_hidden_layer1_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype021
/sequential/hidden_layer1/BiasAdd/ReadVariableOp?
 sequential/hidden_layer1/BiasAddBiasAdd)sequential/hidden_layer1/MatMul:product:07sequential/hidden_layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2"
 sequential/hidden_layer1/BiasAdd?
sequential/hidden_layer1/ReluRelu)sequential/hidden_layer1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????(2
sequential/hidden_layer1/Relu?
'sequential/output/MatMul/ReadVariableOpReadVariableOp0sequential_output_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02)
'sequential/output/MatMul/ReadVariableOp?
sequential/output/MatMulMatMul+sequential/hidden_layer1/Relu:activations:0/sequential/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/output/MatMul?
(sequential/output/BiasAdd/ReadVariableOpReadVariableOp1sequential_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(sequential/output/BiasAdd/ReadVariableOp?
sequential/output/BiasAddBiasAdd"sequential/output/MatMul:product:00sequential/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/output/BiasAdd?
sequential/output/SigmoidSigmoid"sequential/output/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential/output/Sigmoid?
IdentityIdentitysequential/output/Sigmoid:y:0.^sequential/conv_layer1/BiasAdd/ReadVariableOp-^sequential/conv_layer1/Conv2D/ReadVariableOp.^sequential/conv_layer2/BiasAdd/ReadVariableOp-^sequential/conv_layer2/Conv2D/ReadVariableOp0^sequential/hidden_layer1/BiasAdd/ReadVariableOp/^sequential/hidden_layer1/MatMul/ReadVariableOp)^sequential/output/BiasAdd/ReadVariableOp(^sequential/output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 2^
-sequential/conv_layer1/BiasAdd/ReadVariableOp-sequential/conv_layer1/BiasAdd/ReadVariableOp2\
,sequential/conv_layer1/Conv2D/ReadVariableOp,sequential/conv_layer1/Conv2D/ReadVariableOp2^
-sequential/conv_layer2/BiasAdd/ReadVariableOp-sequential/conv_layer2/BiasAdd/ReadVariableOp2\
,sequential/conv_layer2/Conv2D/ReadVariableOp,sequential/conv_layer2/Conv2D/ReadVariableOp2b
/sequential/hidden_layer1/BiasAdd/ReadVariableOp/sequential/hidden_layer1/BiasAdd/ReadVariableOp2`
.sequential/hidden_layer1/MatMul/ReadVariableOp.sequential/hidden_layer1/MatMul/ReadVariableOp2T
(sequential/output/BiasAdd/ReadVariableOp(sequential/output/BiasAdd/ReadVariableOp2R
'sequential/output/MatMul/ReadVariableOp'sequential/output/MatMul/ReadVariableOp:b ^
/
_output_shapes
:?????????c+
+
_user_specified_nameconv_layer1_input
?
?
B__inference_output_layer_call_and_return_conditional_losses_171211

inputs0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/output/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype021
/output/kernel/Regularizer/Square/ReadVariableOp?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(2"
 output/kernel/Regularizer/Square?
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
output/kernel/Regularizer/Const?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/Sum?
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
output/kernel/Regularizer/mul/x?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/mul?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
__inference_loss_fn_3_171255J
8output_kernel_regularizer_square_readvariableop_resource:(
identity??/output/kernel/Regularizer/Square/ReadVariableOp?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8output_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:(*
dtype021
/output/kernel/Regularizer/Square/ReadVariableOp?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(2"
 output/kernel/Regularizer/Square?
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
output/kernel/Regularizer/Const?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/Sum?
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
output/kernel/Regularizer/mul/x?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/mul?
IdentityIdentity!output/kernel/Regularizer/mul:z:00^output/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp
?	
?
+__inference_sequential_layer_call_fn_170717
conv_layer1_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?(
	unknown_4:(
	unknown_5:(
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1706772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:?????????c+
+
_user_specified_nameconv_layer1_input
?
?
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_170460

inputs1
matmul_readvariableop_resource:	?(-
biasadd_readvariableop_resource:(
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????(2
Relu?
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?(*
dtype028
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?(2)
'hidden_layer1/kernel/Regularizer/Square?
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&hidden_layer1/kernel/Regularizer/Const?
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$hidden_layer1/kernel/Regularizer/Sum?
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&hidden_layer1/kernel/Regularizer/mul/x?
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$hidden_layer1/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_171244R
?hidden_layer1_kernel_regularizer_square_readvariableop_resource:	?(
identity??6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp?hidden_layer1_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?(*
dtype028
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?(2)
'hidden_layer1/kernel/Regularizer/Square?
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&hidden_layer1/kernel/Regularizer/Const?
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$hidden_layer1/kernel/Regularizer/Sum?
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&hidden_layer1/kernel/Regularizer/mul/x?
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$hidden_layer1/kernel/Regularizer/mul?
IdentityIdentity(hidden_layer1/kernel/Regularizer/mul:z:07^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp
?
?
,__inference_conv_layer1_layer_call_fn_171060

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????c+*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer1_layer_call_and_return_conditional_losses_1703972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????c+2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????c+: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?
?
B__inference_output_layer_call_and_return_conditional_losses_170483

inputs0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/output/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype021
/output/kernel/Regularizer/Square/ReadVariableOp?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(2"
 output/kernel/Regularizer/Square?
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
output/kernel/Regularizer/Const?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/Sum?
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
output/kernel/Regularizer/mul/x?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/mul?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_171486
file_prefix=
#assignvariableop_conv_layer1_kernel:1
#assignvariableop_1_conv_layer1_bias:?
%assignvariableop_2_conv_layer2_kernel:1
#assignvariableop_3_conv_layer2_bias::
'assignvariableop_4_hidden_layer1_kernel:	?(3
%assignvariableop_5_hidden_layer1_bias:(2
 assignvariableop_6_output_kernel:(,
assignvariableop_7_output_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: G
-assignvariableop_17_adam_conv_layer1_kernel_m:9
+assignvariableop_18_adam_conv_layer1_bias_m:G
-assignvariableop_19_adam_conv_layer2_kernel_m:9
+assignvariableop_20_adam_conv_layer2_bias_m:B
/assignvariableop_21_adam_hidden_layer1_kernel_m:	?(;
-assignvariableop_22_adam_hidden_layer1_bias_m:(:
(assignvariableop_23_adam_output_kernel_m:(4
&assignvariableop_24_adam_output_bias_m:G
-assignvariableop_25_adam_conv_layer1_kernel_v:9
+assignvariableop_26_adam_conv_layer1_bias_v:G
-assignvariableop_27_adam_conv_layer2_kernel_v:9
+assignvariableop_28_adam_conv_layer2_bias_v:B
/assignvariableop_29_adam_hidden_layer1_kernel_v:	?(;
-assignvariableop_30_adam_hidden_layer1_bias_v:(:
(assignvariableop_31_adam_output_kernel_v:(4
&assignvariableop_32_adam_output_bias_v:
identity_34??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp#assignvariableop_conv_layer1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp#assignvariableop_1_conv_layer1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp%assignvariableop_2_conv_layer2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp#assignvariableop_3_conv_layer2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp'assignvariableop_4_hidden_layer1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp%assignvariableop_5_hidden_layer1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp assignvariableop_6_output_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_output_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp-assignvariableop_17_adam_conv_layer1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_conv_layer1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp-assignvariableop_19_adam_conv_layer2_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_conv_layer2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp/assignvariableop_21_adam_hidden_layer1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp-assignvariableop_22_adam_hidden_layer1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_output_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_output_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp-assignvariableop_25_adam_conv_layer1_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_conv_layer1_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp-assignvariableop_27_adam_conv_layer2_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_conv_layer2_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp/assignvariableop_29_adam_hidden_layer1_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp-assignvariableop_30_adam_hidden_layer1_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_output_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_output_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33?
Identity_34IdentityIdentity_33:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_34"#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322(
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
_user_specified_namefile_prefix
?
?
.__inference_hidden_layer1_layer_call_fn_171162

inputs
unknown:	?(
	unknown_0:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_1704602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????(2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
+__inference_sequential_layer_call_fn_170533
conv_layer1_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?(
	unknown_4:(
	unknown_5:(
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1705142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:?????????c+
+
_user_specified_nameconv_layer1_input
?	
?
$__inference_signature_wrapper_170874
conv_layer1_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?(
	unknown_4:(
	unknown_5:(
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_1703492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:?????????c+
+
_user_specified_nameconv_layer1_input
?
?
G__inference_conv_layer2_layer_call_and_return_conditional_losses_171109

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????1*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????12	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????12
Relu?
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype026
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2'
%conv_layer2/kernel/Regularizer/Square?
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$conv_layer2/kernel/Regularizer/Const?
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"conv_layer2/kernel/Regularizer/Sum?
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$conv_layer2/kernel/Regularizer/mul/x?
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"conv_layer2/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????12

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????1
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_171233W
=conv_layer2_kernel_regularizer_square_readvariableop_resource:
identity??4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp=conv_layer2_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype026
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2'
%conv_layer2/kernel/Regularizer/Square?
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$conv_layer2/kernel/Regularizer/Const?
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"conv_layer2/kernel/Regularizer/Sum?
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$conv_layer2/kernel/Regularizer/mul/x?
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"conv_layer2/kernel/Regularizer/mul?
IdentityIdentity&conv_layer2/kernel/Regularizer/mul:z:05^conv_layer2/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp
?I
?
__inference__traced_save_171377
file_prefix1
-savev2_conv_layer1_kernel_read_readvariableop/
+savev2_conv_layer1_bias_read_readvariableop1
-savev2_conv_layer2_kernel_read_readvariableop/
+savev2_conv_layer2_bias_read_readvariableop3
/savev2_hidden_layer1_kernel_read_readvariableop1
-savev2_hidden_layer1_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop8
4savev2_adam_conv_layer1_kernel_m_read_readvariableop6
2savev2_adam_conv_layer1_bias_m_read_readvariableop8
4savev2_adam_conv_layer2_kernel_m_read_readvariableop6
2savev2_adam_conv_layer2_bias_m_read_readvariableop:
6savev2_adam_hidden_layer1_kernel_m_read_readvariableop8
4savev2_adam_hidden_layer1_bias_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop8
4savev2_adam_conv_layer1_kernel_v_read_readvariableop6
2savev2_adam_conv_layer1_bias_v_read_readvariableop8
4savev2_adam_conv_layer2_kernel_v_read_readvariableop6
2savev2_adam_conv_layer2_bias_v_read_readvariableop:
6savev2_adam_hidden_layer1_kernel_v_read_readvariableop8
4savev2_adam_hidden_layer1_bias_v_read_readvariableop3
/savev2_adam_output_kernel_v_read_readvariableop1
-savev2_adam_output_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_conv_layer1_kernel_read_readvariableop+savev2_conv_layer1_bias_read_readvariableop-savev2_conv_layer2_kernel_read_readvariableop+savev2_conv_layer2_bias_read_readvariableop/savev2_hidden_layer1_kernel_read_readvariableop-savev2_hidden_layer1_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop4savev2_adam_conv_layer1_kernel_m_read_readvariableop2savev2_adam_conv_layer1_bias_m_read_readvariableop4savev2_adam_conv_layer2_kernel_m_read_readvariableop2savev2_adam_conv_layer2_bias_m_read_readvariableop6savev2_adam_hidden_layer1_kernel_m_read_readvariableop4savev2_adam_hidden_layer1_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop4savev2_adam_conv_layer1_kernel_v_read_readvariableop2savev2_adam_conv_layer1_bias_v_read_readvariableop4savev2_adam_conv_layer2_kernel_v_read_readvariableop2savev2_adam_conv_layer2_bias_v_read_readvariableop6savev2_adam_hidden_layer1_kernel_v_read_readvariableop4savev2_adam_hidden_layer1_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::::	?(:(:(:: : : : : : : : : :::::	?(:(:(::::::	?(:(:(:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?(: 

_output_shapes
:(:$ 

_output_shapes

:(: 

_output_shapes
::	
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
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?(: 

_output_shapes
:(:$ 

_output_shapes

:(: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?(: 

_output_shapes
:(:$  

_output_shapes

:(: !

_output_shapes
::"

_output_shapes
: 
?
?
__inference_loss_fn_0_171222W
=conv_layer1_kernel_regularizer_square_readvariableop_resource:
identity??4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp=conv_layer1_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype026
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2'
%conv_layer1/kernel/Regularizer/Square?
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$conv_layer1/kernel/Regularizer/Const?
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"conv_layer1/kernel/Regularizer/Sum?
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$conv_layer1/kernel/Regularizer/mul/x?
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"conv_layer1/kernel/Regularizer/mul?
IdentityIdentity&conv_layer1/kernel/Regularizer/mul:z:05^conv_layer1/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp
?
d
H__inference_max_pooling2_layer_call_and_return_conditional_losses_170367

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
+__inference_sequential_layer_call_fn_170895

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?(
	unknown_4:(
	unknown_5:(
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1705142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?
_
C__inference_flatten_layer_call_and_return_conditional_losses_170434

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?[
?
F__inference_sequential_layer_call_and_return_conditional_losses_170977

inputsD
*conv_layer1_conv2d_readvariableop_resource:9
+conv_layer1_biasadd_readvariableop_resource:D
*conv_layer2_conv2d_readvariableop_resource:9
+conv_layer2_biasadd_readvariableop_resource:?
,hidden_layer1_matmul_readvariableop_resource:	?(;
-hidden_layer1_biasadd_readvariableop_resource:(7
%output_matmul_readvariableop_resource:(4
&output_biasadd_readvariableop_resource:
identity??"conv_layer1/BiasAdd/ReadVariableOp?!conv_layer1/Conv2D/ReadVariableOp?4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?"conv_layer2/BiasAdd/ReadVariableOp?!conv_layer2/Conv2D/ReadVariableOp?4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?$hidden_layer1/BiasAdd/ReadVariableOp?#hidden_layer1/MatMul/ReadVariableOp?6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOp?/output/kernel/Regularizer/Square/ReadVariableOp?
!conv_layer1/Conv2D/ReadVariableOpReadVariableOp*conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv_layer1/Conv2D/ReadVariableOp?
conv_layer1/Conv2DConv2Dinputs)conv_layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+*
paddingSAME*
strides
2
conv_layer1/Conv2D?
"conv_layer1/BiasAdd/ReadVariableOpReadVariableOp+conv_layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv_layer1/BiasAdd/ReadVariableOp?
conv_layer1/BiasAddBiasAddconv_layer1/Conv2D:output:0*conv_layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+2
conv_layer1/BiasAdd?
conv_layer1/ReluReluconv_layer1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????c+2
conv_layer1/Relu?
max_pooling1/MaxPoolMaxPoolconv_layer1/Relu:activations:0*/
_output_shapes
:?????????1*
ksize
*
paddingVALID*
strides
2
max_pooling1/MaxPool?
!conv_layer2/Conv2D/ReadVariableOpReadVariableOp*conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv_layer2/Conv2D/ReadVariableOp?
conv_layer2/Conv2DConv2Dmax_pooling1/MaxPool:output:0)conv_layer2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????1*
paddingSAME*
strides
2
conv_layer2/Conv2D?
"conv_layer2/BiasAdd/ReadVariableOpReadVariableOp+conv_layer2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv_layer2/BiasAdd/ReadVariableOp?
conv_layer2/BiasAddBiasAddconv_layer2/Conv2D:output:0*conv_layer2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????12
conv_layer2/BiasAdd?
conv_layer2/ReluReluconv_layer2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????12
conv_layer2/Relu?
max_pooling2/MaxPoolMaxPoolconv_layer2/Relu:activations:0*/
_output_shapes
:?????????
*
ksize
*
paddingVALID*
strides
2
max_pooling2/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten/Const?
flatten/ReshapeReshapemax_pooling2/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape}
dropout/IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2
dropout/Identity?
#hidden_layer1/MatMul/ReadVariableOpReadVariableOp,hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02%
#hidden_layer1/MatMul/ReadVariableOp?
hidden_layer1/MatMulMatMuldropout/Identity:output:0+hidden_layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
hidden_layer1/MatMul?
$hidden_layer1/BiasAdd/ReadVariableOpReadVariableOp-hidden_layer1_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02&
$hidden_layer1/BiasAdd/ReadVariableOp?
hidden_layer1/BiasAddBiasAddhidden_layer1/MatMul:product:0,hidden_layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
hidden_layer1/BiasAdd?
hidden_layer1/ReluReluhidden_layer1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????(2
hidden_layer1/Relu?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMul hidden_layer1/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/MatMul?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOp?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/BiasAddv
output/SigmoidSigmoidoutput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
output/Sigmoid?
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype026
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2'
%conv_layer1/kernel/Regularizer/Square?
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$conv_layer1/kernel/Regularizer/Const?
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"conv_layer1/kernel/Regularizer/Sum?
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$conv_layer1/kernel/Regularizer/mul/x?
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"conv_layer1/kernel/Regularizer/mul?
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype026
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2'
%conv_layer2/kernel/Regularizer/Square?
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$conv_layer2/kernel/Regularizer/Const?
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"conv_layer2/kernel/Regularizer/Sum?
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$conv_layer2/kernel/Regularizer/mul/x?
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"conv_layer2/kernel/Regularizer/mul?
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp,hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype028
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?(2)
'hidden_layer1/kernel/Regularizer/Square?
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&hidden_layer1/kernel/Regularizer/Const?
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$hidden_layer1/kernel/Regularizer/Sum?
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&hidden_layer1/kernel/Regularizer/mul/x?
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$hidden_layer1/kernel/Regularizer/mul?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:(*
dtype021
/output/kernel/Regularizer/Square/ReadVariableOp?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(2"
 output/kernel/Regularizer/Square?
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
output/kernel/Regularizer/Const?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/Sum?
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
output/kernel/Regularizer/mul/x?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/mul?
IdentityIdentityoutput/Sigmoid:y:0#^conv_layer1/BiasAdd/ReadVariableOp"^conv_layer1/Conv2D/ReadVariableOp5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp#^conv_layer2/BiasAdd/ReadVariableOp"^conv_layer2/Conv2D/ReadVariableOp5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp%^hidden_layer1/BiasAdd/ReadVariableOp$^hidden_layer1/MatMul/ReadVariableOp7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 2H
"conv_layer1/BiasAdd/ReadVariableOp"conv_layer1/BiasAdd/ReadVariableOp2F
!conv_layer1/Conv2D/ReadVariableOp!conv_layer1/Conv2D/ReadVariableOp2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp2H
"conv_layer2/BiasAdd/ReadVariableOp"conv_layer2/BiasAdd/ReadVariableOp2F
!conv_layer2/Conv2D/ReadVariableOp!conv_layer2/Conv2D/ReadVariableOp2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp2L
$hidden_layer1/BiasAdd/ReadVariableOp$hidden_layer1/BiasAdd/ReadVariableOp2J
#hidden_layer1/MatMul/ReadVariableOp#hidden_layer1/MatMul/ReadVariableOp2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?
b
C__inference_dropout_layer_call_and_return_conditional_losses_171147

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
+__inference_sequential_layer_call_fn_170916

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?(
	unknown_4:(
	unknown_5:(
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1706772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?
_
C__inference_flatten_layer_call_and_return_conditional_losses_171120

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?d
?
F__inference_sequential_layer_call_and_return_conditional_losses_171045

inputsD
*conv_layer1_conv2d_readvariableop_resource:9
+conv_layer1_biasadd_readvariableop_resource:D
*conv_layer2_conv2d_readvariableop_resource:9
+conv_layer2_biasadd_readvariableop_resource:?
,hidden_layer1_matmul_readvariableop_resource:	?(;
-hidden_layer1_biasadd_readvariableop_resource:(7
%output_matmul_readvariableop_resource:(4
&output_biasadd_readvariableop_resource:
identity??"conv_layer1/BiasAdd/ReadVariableOp?!conv_layer1/Conv2D/ReadVariableOp?4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?"conv_layer2/BiasAdd/ReadVariableOp?!conv_layer2/Conv2D/ReadVariableOp?4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?$hidden_layer1/BiasAdd/ReadVariableOp?#hidden_layer1/MatMul/ReadVariableOp?6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOp?/output/kernel/Regularizer/Square/ReadVariableOp?
!conv_layer1/Conv2D/ReadVariableOpReadVariableOp*conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv_layer1/Conv2D/ReadVariableOp?
conv_layer1/Conv2DConv2Dinputs)conv_layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+*
paddingSAME*
strides
2
conv_layer1/Conv2D?
"conv_layer1/BiasAdd/ReadVariableOpReadVariableOp+conv_layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv_layer1/BiasAdd/ReadVariableOp?
conv_layer1/BiasAddBiasAddconv_layer1/Conv2D:output:0*conv_layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+2
conv_layer1/BiasAdd?
conv_layer1/ReluReluconv_layer1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????c+2
conv_layer1/Relu?
max_pooling1/MaxPoolMaxPoolconv_layer1/Relu:activations:0*/
_output_shapes
:?????????1*
ksize
*
paddingVALID*
strides
2
max_pooling1/MaxPool?
!conv_layer2/Conv2D/ReadVariableOpReadVariableOp*conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!conv_layer2/Conv2D/ReadVariableOp?
conv_layer2/Conv2DConv2Dmax_pooling1/MaxPool:output:0)conv_layer2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????1*
paddingSAME*
strides
2
conv_layer2/Conv2D?
"conv_layer2/BiasAdd/ReadVariableOpReadVariableOp+conv_layer2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"conv_layer2/BiasAdd/ReadVariableOp?
conv_layer2/BiasAddBiasAddconv_layer2/Conv2D:output:0*conv_layer2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????12
conv_layer2/BiasAdd?
conv_layer2/ReluReluconv_layer2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????12
conv_layer2/Relu?
max_pooling2/MaxPoolMaxPoolconv_layer2/Relu:activations:0*/
_output_shapes
:?????????
*
ksize
*
paddingVALID*
strides
2
max_pooling2/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten/Const?
flatten/ReshapeReshapemax_pooling2/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshapes
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/dropout/Const?
dropout/dropout/MulMulflatten/Reshape:output:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/Mulv
dropout/dropout/ShapeShapeflatten/Reshape:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/Mul_1?
#hidden_layer1/MatMul/ReadVariableOpReadVariableOp,hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype02%
#hidden_layer1/MatMul/ReadVariableOp?
hidden_layer1/MatMulMatMuldropout/dropout/Mul_1:z:0+hidden_layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
hidden_layer1/MatMul?
$hidden_layer1/BiasAdd/ReadVariableOpReadVariableOp-hidden_layer1_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02&
$hidden_layer1/BiasAdd/ReadVariableOp?
hidden_layer1/BiasAddBiasAddhidden_layer1/MatMul:product:0,hidden_layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(2
hidden_layer1/BiasAdd?
hidden_layer1/ReluReluhidden_layer1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????(2
hidden_layer1/Relu?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMul hidden_layer1/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/MatMul?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOp?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/BiasAddv
output/SigmoidSigmoidoutput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
output/Sigmoid?
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype026
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2'
%conv_layer1/kernel/Regularizer/Square?
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$conv_layer1/kernel/Regularizer/Const?
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"conv_layer1/kernel/Regularizer/Sum?
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$conv_layer1/kernel/Regularizer/mul/x?
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"conv_layer1/kernel/Regularizer/mul?
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype026
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2'
%conv_layer2/kernel/Regularizer/Square?
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$conv_layer2/kernel/Regularizer/Const?
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"conv_layer2/kernel/Regularizer/Sum?
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$conv_layer2/kernel/Regularizer/mul/x?
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"conv_layer2/kernel/Regularizer/mul?
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp,hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype028
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?(2)
'hidden_layer1/kernel/Regularizer/Square?
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&hidden_layer1/kernel/Regularizer/Const?
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$hidden_layer1/kernel/Regularizer/Sum?
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&hidden_layer1/kernel/Regularizer/mul/x?
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$hidden_layer1/kernel/Regularizer/mul?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:(*
dtype021
/output/kernel/Regularizer/Square/ReadVariableOp?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(2"
 output/kernel/Regularizer/Square?
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2!
output/kernel/Regularizer/Const?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/Sum?
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
output/kernel/Regularizer/mul/x?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
output/kernel/Regularizer/mul?
IdentityIdentityoutput/Sigmoid:y:0#^conv_layer1/BiasAdd/ReadVariableOp"^conv_layer1/Conv2D/ReadVariableOp5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp#^conv_layer2/BiasAdd/ReadVariableOp"^conv_layer2/Conv2D/ReadVariableOp5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp%^hidden_layer1/BiasAdd/ReadVariableOp$^hidden_layer1/MatMul/ReadVariableOp7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 2H
"conv_layer1/BiasAdd/ReadVariableOp"conv_layer1/BiasAdd/ReadVariableOp2F
!conv_layer1/Conv2D/ReadVariableOp!conv_layer1/Conv2D/ReadVariableOp2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp2H
"conv_layer2/BiasAdd/ReadVariableOp"conv_layer2/BiasAdd/ReadVariableOp2F
!conv_layer2/Conv2D/ReadVariableOp!conv_layer2/Conv2D/ReadVariableOp2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp2L
$hidden_layer1/BiasAdd/ReadVariableOp$hidden_layer1/BiasAdd/ReadVariableOp2J
#hidden_layer1/MatMul/ReadVariableOp#hidden_layer1/MatMul/ReadVariableOp2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?
d
H__inference_max_pooling1_layer_call_and_return_conditional_losses_170355

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
G__inference_conv_layer2_layer_call_and_return_conditional_losses_170421

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????1*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????12	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????12
Relu?
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype026
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2'
%conv_layer2/kernel/Regularizer/Square?
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2&
$conv_layer2/kernel/Regularizer/Const?
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"conv_layer2/kernel/Regularizer/Sum?
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2&
$conv_layer2/kernel/Regularizer/mul/x?
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"conv_layer2/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????12

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????1
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
W
conv_layer1_inputB
#serving_default_conv_layer1_input:0?????????c+:
output0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?J
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
		optimizer

trainable_variables
regularization_losses
	variables
	keras_api

signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"?F
_tf_keras_sequential?F{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 99, 43, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv_layer1_input"}}, {"class_name": "Conv2D", "config": {"name": "conv_layer1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 99, 43, 1]}, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv_layer2", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "hidden_layer1", "trainable": true, "dtype": "float32", "units": 40, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 99, 43, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 99, 43, 1]}, "float32", "conv_layer1_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 99, 43, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv_layer1_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv_layer1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 99, 43, 1]}, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 3}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 5}, {"class_name": "Conv2D", "config": {"name": "conv_layer2", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 8}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 10}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 11}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 12}, {"class_name": "Dense", "config": {"name": "hidden_layer1", "trainable": true, "dtype": "float32", "units": 40, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 15}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 16}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 19}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 20}]}}, "training_config": {"loss": {"class_name": "BinaryCrossentropy", "config": {"reduction": "auto", "name": "binary_crossentropy", "from_logits": false, "label_smoothing": 0}, "shared_object_id": 23}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 24}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_layer?
{"name": "conv_layer1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 99, 43, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv_layer1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 99, 43, 1]}, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 3}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 99, 43, 1]}}
?
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 25}}
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv_layer2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv_layer2", "trainable": true, "dtype": "float32", "filters": 4, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 8}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 4}}, "shared_object_id": 26}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 49, 21, 4]}}
?
trainable_variables
 regularization_losses
!	variables
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 27}}
?
#trainable_variables
$regularization_losses
%	variables
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 28}}
?
'trainable_variables
(regularization_losses
)	variables
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 12}
?	

+kernel
,bias
-trainable_variables
.regularization_losses
/	variables
0	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "hidden_layer1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "hidden_layer1", "trainable": true, "dtype": "float32", "units": 40, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 15}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 960}}, "shared_object_id": 29}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 960]}}
?	

1kernel
2bias
3trainable_variables
4regularization_losses
5	variables
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 19}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 40}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40]}}
?
7iter

8beta_1

9beta_2
	:decay
;learning_ratemtmumvmw+mx,my1mz2m{v|v}v~v+v?,v?1v?2v?"
	optimizer
X
0
1
2
3
+4
,5
16
27"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
X
0
1
2
3
+4
,5
16
27"
trackable_list_wrapper
?

trainable_variables
<layer_regularization_losses
=metrics
>layer_metrics
regularization_losses
?non_trainable_variables

@layers
	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
,:*2conv_layer1/kernel
:2conv_layer1/bias
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
trainable_variables
Alayer_regularization_losses
Bmetrics
Clayer_metrics
regularization_losses
Dnon_trainable_variables

Elayers
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
Flayer_regularization_losses
Gmetrics
Hlayer_metrics
regularization_losses
Inon_trainable_variables

Jlayers
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*2conv_layer2/kernel
:2conv_layer2/bias
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
trainable_variables
Klayer_regularization_losses
Lmetrics
Mlayer_metrics
regularization_losses
Nnon_trainable_variables

Olayers
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
Player_regularization_losses
Qmetrics
Rlayer_metrics
 regularization_losses
Snon_trainable_variables

Tlayers
!	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
#trainable_variables
Ulayer_regularization_losses
Vmetrics
Wlayer_metrics
$regularization_losses
Xnon_trainable_variables

Ylayers
%	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
'trainable_variables
Zlayer_regularization_losses
[metrics
\layer_metrics
(regularization_losses
]non_trainable_variables

^layers
)	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
':%	?(2hidden_layer1/kernel
 :(2hidden_layer1/bias
.
+0
,1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
?
-trainable_variables
_layer_regularization_losses
`metrics
alayer_metrics
.regularization_losses
bnon_trainable_variables

clayers
/	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:(2output/kernel
:2output/bias
.
10
21"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
?
3trainable_variables
dlayer_regularization_losses
emetrics
flayer_metrics
4regularization_losses
gnon_trainable_variables

hlayers
5	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
(
?0"
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
(
?0"
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
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	ktotal
	lcount
m	variables
n	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 31}
?
	ototal
	pcount
q
_fn_kwargs
r	variables
s	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 24}
:  (2total
:  (2count
.
k0
l1"
trackable_list_wrapper
-
m	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
o0
p1"
trackable_list_wrapper
-
r	variables"
_generic_user_object
1:/2Adam/conv_layer1/kernel/m
#:!2Adam/conv_layer1/bias/m
1:/2Adam/conv_layer2/kernel/m
#:!2Adam/conv_layer2/bias/m
,:*	?(2Adam/hidden_layer1/kernel/m
%:#(2Adam/hidden_layer1/bias/m
$:"(2Adam/output/kernel/m
:2Adam/output/bias/m
1:/2Adam/conv_layer1/kernel/v
#:!2Adam/conv_layer1/bias/v
1:/2Adam/conv_layer2/kernel/v
#:!2Adam/conv_layer2/bias/v
,:*	?(2Adam/hidden_layer1/kernel/v
%:#(2Adam/hidden_layer1/bias/v
$:"(2Adam/output/kernel/v
:2Adam/output/bias/v
?2?
+__inference_sequential_layer_call_fn_170533
+__inference_sequential_layer_call_fn_170895
+__inference_sequential_layer_call_fn_170916
+__inference_sequential_layer_call_fn_170717?
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
?2?
!__inference__wrapped_model_170349?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0
conv_layer1_input?????????c+
?2?
F__inference_sequential_layer_call_and_return_conditional_losses_170977
F__inference_sequential_layer_call_and_return_conditional_losses_171045
F__inference_sequential_layer_call_and_return_conditional_losses_170769
F__inference_sequential_layer_call_and_return_conditional_losses_170821?
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
?2?
,__inference_conv_layer1_layer_call_fn_171060?
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
G__inference_conv_layer1_layer_call_and_return_conditional_losses_171077?
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
?2?
-__inference_max_pooling1_layer_call_fn_170361?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
H__inference_max_pooling1_layer_call_and_return_conditional_losses_170355?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
,__inference_conv_layer2_layer_call_fn_171092?
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
G__inference_conv_layer2_layer_call_and_return_conditional_losses_171109?
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
?2?
-__inference_max_pooling2_layer_call_fn_170373?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
H__inference_max_pooling2_layer_call_and_return_conditional_losses_170367?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
(__inference_flatten_layer_call_fn_171114?
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
C__inference_flatten_layer_call_and_return_conditional_losses_171120?
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
?2?
(__inference_dropout_layer_call_fn_171125
(__inference_dropout_layer_call_fn_171130?
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
C__inference_dropout_layer_call_and_return_conditional_losses_171135
C__inference_dropout_layer_call_and_return_conditional_losses_171147?
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
?2?
.__inference_hidden_layer1_layer_call_fn_171162?
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
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_171179?
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
'__inference_output_layer_call_fn_171194?
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
B__inference_output_layer_call_and_return_conditional_losses_171211?
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
__inference_loss_fn_0_171222?
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
__inference_loss_fn_1_171233?
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
__inference_loss_fn_2_171244?
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
__inference_loss_fn_3_171255?
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
?B?
$__inference_signature_wrapper_170874conv_layer1_input"?
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
 ?
!__inference__wrapped_model_170349+,12B??
8?5
3?0
conv_layer1_input?????????c+
? "/?,
*
output ?
output??????????
G__inference_conv_layer1_layer_call_and_return_conditional_losses_171077l7?4
-?*
(?%
inputs?????????c+
? "-?*
#? 
0?????????c+
? ?
,__inference_conv_layer1_layer_call_fn_171060_7?4
-?*
(?%
inputs?????????c+
? " ??????????c+?
G__inference_conv_layer2_layer_call_and_return_conditional_losses_171109l7?4
-?*
(?%
inputs?????????1
? "-?*
#? 
0?????????1
? ?
,__inference_conv_layer2_layer_call_fn_171092_7?4
-?*
(?%
inputs?????????1
? " ??????????1?
C__inference_dropout_layer_call_and_return_conditional_losses_171135^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
C__inference_dropout_layer_call_and_return_conditional_losses_171147^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? }
(__inference_dropout_layer_call_fn_171125Q4?1
*?'
!?
inputs??????????
p 
? "???????????}
(__inference_dropout_layer_call_fn_171130Q4?1
*?'
!?
inputs??????????
p
? "????????????
C__inference_flatten_layer_call_and_return_conditional_losses_171120a7?4
-?*
(?%
inputs?????????

? "&?#
?
0??????????
? ?
(__inference_flatten_layer_call_fn_171114T7?4
-?*
(?%
inputs?????????

? "????????????
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_171179]+,0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????(
? ?
.__inference_hidden_layer1_layer_call_fn_171162P+,0?-
&?#
!?
inputs??????????
? "??????????(;
__inference_loss_fn_0_171222?

? 
? "? ;
__inference_loss_fn_1_171233?

? 
? "? ;
__inference_loss_fn_2_171244+?

? 
? "? ;
__inference_loss_fn_3_1712551?

? 
? "? ?
H__inference_max_pooling1_layer_call_and_return_conditional_losses_170355?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
-__inference_max_pooling1_layer_call_fn_170361?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_max_pooling2_layer_call_and_return_conditional_losses_170367?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
-__inference_max_pooling2_layer_call_fn_170373?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
B__inference_output_layer_call_and_return_conditional_losses_171211\12/?,
%?"
 ?
inputs?????????(
? "%?"
?
0?????????
? z
'__inference_output_layer_call_fn_171194O12/?,
%?"
 ?
inputs?????????(
? "???????????
F__inference_sequential_layer_call_and_return_conditional_losses_170769}+,12J?G
@?=
3?0
conv_layer1_input?????????c+
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_170821}+,12J?G
@?=
3?0
conv_layer1_input?????????c+
p

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_170977r+,12??<
5?2
(?%
inputs?????????c+
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_171045r+,12??<
5?2
(?%
inputs?????????c+
p

 
? "%?"
?
0?????????
? ?
+__inference_sequential_layer_call_fn_170533p+,12J?G
@?=
3?0
conv_layer1_input?????????c+
p 

 
? "???????????
+__inference_sequential_layer_call_fn_170717p+,12J?G
@?=
3?0
conv_layer1_input?????????c+
p

 
? "???????????
+__inference_sequential_layer_call_fn_170895e+,12??<
5?2
(?%
inputs?????????c+
p 

 
? "???????????
+__inference_sequential_layer_call_fn_170916e+,12??<
5?2
(?%
inputs?????????c+
p

 
? "???????????
$__inference_signature_wrapper_170874?+,12W?T
? 
M?J
H
conv_layer1_input3?0
conv_layer1_input?????????c+"/?,
*
output ?
output?????????