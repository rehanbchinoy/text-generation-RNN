??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
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
?
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.7.02v2.7.0-0-gc256c071bb28??
?
!my_model_2/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	z?*2
shared_name#!my_model_2/embedding_2/embeddings
?
5my_model_2/embedding_2/embeddings/Read/ReadVariableOpReadVariableOp!my_model_2/embedding_2/embeddings*
_output_shapes
:	z?*
dtype0
?
my_model_2/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?z**
shared_namemy_model_2/dense_2/kernel
?
-my_model_2/dense_2/kernel/Read/ReadVariableOpReadVariableOpmy_model_2/dense_2/kernel*
_output_shapes
:	?z*
dtype0
?
my_model_2/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:z*(
shared_namemy_model_2/dense_2/bias

+my_model_2/dense_2/bias/Read/ReadVariableOpReadVariableOpmy_model_2/dense_2/bias*
_output_shapes
:z*
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
?
"my_model_2/gru_2/gru_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*3
shared_name$"my_model_2/gru_2/gru_cell_2/kernel
?
6my_model_2/gru_2/gru_cell_2/kernel/Read/ReadVariableOpReadVariableOp"my_model_2/gru_2/gru_cell_2/kernel* 
_output_shapes
:
??*
dtype0
?
,my_model_2/gru_2/gru_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*=
shared_name.,my_model_2/gru_2/gru_cell_2/recurrent_kernel
?
@my_model_2/gru_2/gru_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp,my_model_2/gru_2/gru_cell_2/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
 my_model_2/gru_2/gru_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" my_model_2/gru_2/gru_cell_2/bias
?
4my_model_2/gru_2/gru_cell_2/bias/Read/ReadVariableOpReadVariableOp my_model_2/gru_2/gru_cell_2/bias*
_output_shapes
:	?*
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
?
(Adam/my_model_2/embedding_2/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	z?*9
shared_name*(Adam/my_model_2/embedding_2/embeddings/m
?
<Adam/my_model_2/embedding_2/embeddings/m/Read/ReadVariableOpReadVariableOp(Adam/my_model_2/embedding_2/embeddings/m*
_output_shapes
:	z?*
dtype0
?
 Adam/my_model_2/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?z*1
shared_name" Adam/my_model_2/dense_2/kernel/m
?
4Adam/my_model_2/dense_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/my_model_2/dense_2/kernel/m*
_output_shapes
:	?z*
dtype0
?
Adam/my_model_2/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:z*/
shared_name Adam/my_model_2/dense_2/bias/m
?
2Adam/my_model_2/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/my_model_2/dense_2/bias/m*
_output_shapes
:z*
dtype0
?
)Adam/my_model_2/gru_2/gru_cell_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*:
shared_name+)Adam/my_model_2/gru_2/gru_cell_2/kernel/m
?
=Adam/my_model_2/gru_2/gru_cell_2/kernel/m/Read/ReadVariableOpReadVariableOp)Adam/my_model_2/gru_2/gru_cell_2/kernel/m* 
_output_shapes
:
??*
dtype0
?
3Adam/my_model_2/gru_2/gru_cell_2/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*D
shared_name53Adam/my_model_2/gru_2/gru_cell_2/recurrent_kernel/m
?
GAdam/my_model_2/gru_2/gru_cell_2/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp3Adam/my_model_2/gru_2/gru_cell_2/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
'Adam/my_model_2/gru_2/gru_cell_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*8
shared_name)'Adam/my_model_2/gru_2/gru_cell_2/bias/m
?
;Adam/my_model_2/gru_2/gru_cell_2/bias/m/Read/ReadVariableOpReadVariableOp'Adam/my_model_2/gru_2/gru_cell_2/bias/m*
_output_shapes
:	?*
dtype0
?
(Adam/my_model_2/embedding_2/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	z?*9
shared_name*(Adam/my_model_2/embedding_2/embeddings/v
?
<Adam/my_model_2/embedding_2/embeddings/v/Read/ReadVariableOpReadVariableOp(Adam/my_model_2/embedding_2/embeddings/v*
_output_shapes
:	z?*
dtype0
?
 Adam/my_model_2/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?z*1
shared_name" Adam/my_model_2/dense_2/kernel/v
?
4Adam/my_model_2/dense_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/my_model_2/dense_2/kernel/v*
_output_shapes
:	?z*
dtype0
?
Adam/my_model_2/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:z*/
shared_name Adam/my_model_2/dense_2/bias/v
?
2Adam/my_model_2/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/my_model_2/dense_2/bias/v*
_output_shapes
:z*
dtype0
?
)Adam/my_model_2/gru_2/gru_cell_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*:
shared_name+)Adam/my_model_2/gru_2/gru_cell_2/kernel/v
?
=Adam/my_model_2/gru_2/gru_cell_2/kernel/v/Read/ReadVariableOpReadVariableOp)Adam/my_model_2/gru_2/gru_cell_2/kernel/v* 
_output_shapes
:
??*
dtype0
?
3Adam/my_model_2/gru_2/gru_cell_2/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*D
shared_name53Adam/my_model_2/gru_2/gru_cell_2/recurrent_kernel/v
?
GAdam/my_model_2/gru_2/gru_cell_2/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp3Adam/my_model_2/gru_2/gru_cell_2/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
'Adam/my_model_2/gru_2/gru_cell_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*8
shared_name)'Adam/my_model_2/gru_2/gru_cell_2/bias/v
?
;Adam/my_model_2/gru_2/gru_cell_2/bias/v/Read/ReadVariableOpReadVariableOp'Adam/my_model_2/gru_2/gru_cell_2/bias/v*
_output_shapes
:	?*
dtype0

NoOpNoOp
?&
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?%
value?%B?% B?%
?
	embedding
gru
	dense
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
b


embeddings
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?
iter

beta_1

beta_2
	decay
learning_rate
mFmGmH mI!mJ"mK
vLvMvN vO!vP"vQ
*

0
 1
!2
"3
4
5
*

0
 1
!2
"3
4
5
 
?
#non_trainable_variables

$layers
%metrics
&layer_regularization_losses
'layer_metrics
	variables
trainable_variables
regularization_losses
 
fd
VARIABLE_VALUE!my_model_2/embedding_2/embeddings/embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE


0


0
 
?
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
~

 kernel
!recurrent_kernel
"bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
 

 0
!1
"2

 0
!1
"2
 
?

1states
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
VT
VARIABLE_VALUEmy_model_2/dense_2/kernel'dense/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEmy_model_2/dense_2/bias%dense/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
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
^\
VARIABLE_VALUE"my_model_2/gru_2/gru_cell_2/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE,my_model_2/gru_2/gru_cell_2/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUE my_model_2/gru_2/gru_cell_2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2

<0
 
 
 
 
 
 
 

 0
!1
"2

 0
!1
"2
 
?
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
-	variables
.trainable_variables
/regularization_losses
 
 

0
 
 
 
 
 
 
 
 
4
	Btotal
	Ccount
D	variables
E	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

B0
C1

D	variables
??
VARIABLE_VALUE(Adam/my_model_2/embedding_2/embeddings/mKembedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/my_model_2/dense_2/kernel/mCdense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/my_model_2/dense_2/bias/mAdense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUE)Adam/my_model_2/gru_2/gru_cell_2/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/my_model_2/gru_2/gru_cell_2/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE'Adam/my_model_2/gru_2/gru_cell_2/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(Adam/my_model_2/embedding_2/embeddings/vKembedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/my_model_2/dense_2/kernel/vCdense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/my_model_2/dense_2/bias/vAdense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUE)Adam/my_model_2/gru_2/gru_cell_2/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE3Adam/my_model_2/gru_2/gru_cell_2/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE'Adam/my_model_2/gru_2/gru_cell_2/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????d*
dtype0	*
shape:?????????d
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1!my_model_2/embedding_2/embeddings my_model_2/gru_2/gru_cell_2/bias"my_model_2/gru_2/gru_cell_2/kernel,my_model_2/gru_2/gru_cell_2/recurrent_kernelmy_model_2/dense_2/kernelmy_model_2/dense_2/bias*
Tin
	2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????dz*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_98073
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename5my_model_2/embedding_2/embeddings/Read/ReadVariableOp-my_model_2/dense_2/kernel/Read/ReadVariableOp+my_model_2/dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp6my_model_2/gru_2/gru_cell_2/kernel/Read/ReadVariableOp@my_model_2/gru_2/gru_cell_2/recurrent_kernel/Read/ReadVariableOp4my_model_2/gru_2/gru_cell_2/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp<Adam/my_model_2/embedding_2/embeddings/m/Read/ReadVariableOp4Adam/my_model_2/dense_2/kernel/m/Read/ReadVariableOp2Adam/my_model_2/dense_2/bias/m/Read/ReadVariableOp=Adam/my_model_2/gru_2/gru_cell_2/kernel/m/Read/ReadVariableOpGAdam/my_model_2/gru_2/gru_cell_2/recurrent_kernel/m/Read/ReadVariableOp;Adam/my_model_2/gru_2/gru_cell_2/bias/m/Read/ReadVariableOp<Adam/my_model_2/embedding_2/embeddings/v/Read/ReadVariableOp4Adam/my_model_2/dense_2/kernel/v/Read/ReadVariableOp2Adam/my_model_2/dense_2/bias/v/Read/ReadVariableOp=Adam/my_model_2/gru_2/gru_cell_2/kernel/v/Read/ReadVariableOpGAdam/my_model_2/gru_2/gru_cell_2/recurrent_kernel/v/Read/ReadVariableOp;Adam/my_model_2/gru_2/gru_cell_2/bias/v/Read/ReadVariableOpConst*&
Tin
2	*
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
GPU2*0J 8? *'
f"R 
__inference__traced_save_99404
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename!my_model_2/embedding_2/embeddingsmy_model_2/dense_2/kernelmy_model_2/dense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate"my_model_2/gru_2/gru_cell_2/kernel,my_model_2/gru_2/gru_cell_2/recurrent_kernel my_model_2/gru_2/gru_cell_2/biastotalcount(Adam/my_model_2/embedding_2/embeddings/m Adam/my_model_2/dense_2/kernel/mAdam/my_model_2/dense_2/bias/m)Adam/my_model_2/gru_2/gru_cell_2/kernel/m3Adam/my_model_2/gru_2/gru_cell_2/recurrent_kernel/m'Adam/my_model_2/gru_2/gru_cell_2/bias/m(Adam/my_model_2/embedding_2/embeddings/v Adam/my_model_2/dense_2/kernel/vAdam/my_model_2/dense_2/bias/v)Adam/my_model_2/gru_2/gru_cell_2/kernel/v3Adam/my_model_2/gru_2/gru_cell_2/recurrent_kernel/v'Adam/my_model_2/gru_2/gru_cell_2/bias/v*%
Tin
2*
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
GPU2*0J 8? **
f%R#
!__inference__traced_restore_99489??
?
?
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_99306

inputs
states_0*
readvariableop_resource:	?2
matmul_readvariableop_resource:
??4
 matmul_1_readvariableop_resource:
??
identity

identity_1??MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
numv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????H
TanhTanhadd:z:0*
T0*(
_output_shapes
:??????????c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:??????????[
mulMul
Tanh_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????L
Tanh_2Tanh	add_2:z:0*
T0*(
_output_shapes
:??????????S
mul_1MulTanh:y:0states_0*
T0*(
_output_shapes
:??????????J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??W
subSubsub/x:output:0Tanh:y:0*
T0*(
_output_shapes
:??????????T
mul_2Mulsub:z:0
Tanh_2:y:0*
T0*(
_output_shapes
:??????????W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?h
?
!__inference__traced_restore_99489
file_prefixE
2assignvariableop_my_model_2_embedding_2_embeddings:	z??
,assignvariableop_1_my_model_2_dense_2_kernel:	?z8
*assignvariableop_2_my_model_2_dense_2_bias:z&
assignvariableop_3_adam_iter:	 (
assignvariableop_4_adam_beta_1: (
assignvariableop_5_adam_beta_2: '
assignvariableop_6_adam_decay: /
%assignvariableop_7_adam_learning_rate: I
5assignvariableop_8_my_model_2_gru_2_gru_cell_2_kernel:
??S
?assignvariableop_9_my_model_2_gru_2_gru_cell_2_recurrent_kernel:
??G
4assignvariableop_10_my_model_2_gru_2_gru_cell_2_bias:	?#
assignvariableop_11_total: #
assignvariableop_12_count: O
<assignvariableop_13_adam_my_model_2_embedding_2_embeddings_m:	z?G
4assignvariableop_14_adam_my_model_2_dense_2_kernel_m:	?z@
2assignvariableop_15_adam_my_model_2_dense_2_bias_m:zQ
=assignvariableop_16_adam_my_model_2_gru_2_gru_cell_2_kernel_m:
??[
Gassignvariableop_17_adam_my_model_2_gru_2_gru_cell_2_recurrent_kernel_m:
??N
;assignvariableop_18_adam_my_model_2_gru_2_gru_cell_2_bias_m:	?O
<assignvariableop_19_adam_my_model_2_embedding_2_embeddings_v:	z?G
4assignvariableop_20_adam_my_model_2_dense_2_kernel_v:	?z@
2assignvariableop_21_adam_my_model_2_dense_2_bias_v:zQ
=assignvariableop_22_adam_my_model_2_gru_2_gru_cell_2_kernel_v:
??[
Gassignvariableop_23_adam_my_model_2_gru_2_gru_cell_2_recurrent_kernel_v:
??N
;assignvariableop_24_adam_my_model_2_gru_2_gru_cell_2_bias_v:	?
identity_26??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B/embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB'dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB%dense/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBKembedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKembedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp2assignvariableop_my_model_2_embedding_2_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp,assignvariableop_1_my_model_2_dense_2_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp*assignvariableop_2_my_model_2_dense_2_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp5assignvariableop_8_my_model_2_gru_2_gru_cell_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp?assignvariableop_9_my_model_2_gru_2_gru_cell_2_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp4assignvariableop_10_my_model_2_gru_2_gru_cell_2_biasIdentity_10:output:0"/device:CPU:0*
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
AssignVariableOp_13AssignVariableOp<assignvariableop_13_adam_my_model_2_embedding_2_embeddings_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp4assignvariableop_14_adam_my_model_2_dense_2_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp2assignvariableop_15_adam_my_model_2_dense_2_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp=assignvariableop_16_adam_my_model_2_gru_2_gru_cell_2_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpGassignvariableop_17_adam_my_model_2_gru_2_gru_cell_2_recurrent_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp;assignvariableop_18_adam_my_model_2_gru_2_gru_cell_2_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp<assignvariableop_19_adam_my_model_2_embedding_2_embeddings_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_my_model_2_dense_2_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp2assignvariableop_21_adam_my_model_2_dense_2_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp=assignvariableop_22_adam_my_model_2_gru_2_gru_cell_2_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpGassignvariableop_23_adam_my_model_2_gru_2_gru_cell_2_recurrent_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp;assignvariableop_24_adam_my_model_2_gru_2_gru_cell_2_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_25Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_26IdentityIdentity_25:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_26Identity_26:output:0*G
_input_shapes6
4: : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_24AssignVariableOp_242(
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
_user_specified_namefile_prefix
?C
?	
gru_2_while_body_98368(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2%
!gru_2_while_gru_2_strided_slice_0c
_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0C
0gru_2_while_gru_cell_2_readvariableop_resource_0:	?K
7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0:
??M
9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0:
??
gru_2_while_identity
gru_2_while_identity_1
gru_2_while_identity_2
gru_2_while_identity_3
gru_2_while_identity_4#
gru_2_while_gru_2_strided_slicea
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensorA
.gru_2_while_gru_cell_2_readvariableop_resource:	?I
5gru_2_while_gru_cell_2_matmul_readvariableop_resource:
??K
7gru_2_while_gru_cell_2_matmul_1_readvariableop_resource:
????,gru_2/while/gru_cell_2/MatMul/ReadVariableOp?.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp?%gru_2/while/gru_cell_2/ReadVariableOp?
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
/gru_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0gru_2_while_placeholderFgru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
%gru_2/while/gru_cell_2/ReadVariableOpReadVariableOp0gru_2_while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
gru_2/while/gru_cell_2/unstackUnpack-gru_2/while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num?
,gru_2/while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
gru_2/while/gru_cell_2/MatMulMatMul6gru_2/while/TensorArrayV2Read/TensorListGetItem:item:04gru_2/while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
gru_2/while/gru_cell_2/BiasAddBiasAdd'gru_2/while/gru_cell_2/MatMul:product:0'gru_2/while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:??????????q
&gru_2/while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_2/while/gru_cell_2/splitSplit/gru_2/while/gru_cell_2/split/split_dim:output:0'gru_2/while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
gru_2/while/gru_cell_2/MatMul_1MatMulgru_2_while_placeholder_26gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 gru_2/while/gru_cell_2/BiasAdd_1BiasAdd)gru_2/while/gru_cell_2/MatMul_1:product:0'gru_2/while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:??????????q
gru_2/while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????s
(gru_2/while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_2/while/gru_cell_2/split_1SplitV)gru_2/while/gru_cell_2/BiasAdd_1:output:0%gru_2/while/gru_cell_2/Const:output:01gru_2/while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
gru_2/while/gru_cell_2/addAddV2%gru_2/while/gru_cell_2/split:output:0'gru_2/while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:??????????v
gru_2/while/gru_cell_2/TanhTanhgru_2/while/gru_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
gru_2/while/gru_cell_2/add_1AddV2%gru_2/while/gru_cell_2/split:output:1'gru_2/while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:??????????z
gru_2/while/gru_cell_2/Tanh_1Tanh gru_2/while/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:???????????
gru_2/while/gru_cell_2/mulMul!gru_2/while/gru_cell_2/Tanh_1:y:0'gru_2/while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:???????????
gru_2/while/gru_cell_2/add_2AddV2%gru_2/while/gru_cell_2/split:output:2gru_2/while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:??????????z
gru_2/while/gru_cell_2/Tanh_2Tanh gru_2/while/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:???????????
gru_2/while/gru_cell_2/mul_1Mulgru_2/while/gru_cell_2/Tanh:y:0gru_2_while_placeholder_2*
T0*(
_output_shapes
:??????????a
gru_2/while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
gru_2/while/gru_cell_2/subSub%gru_2/while/gru_cell_2/sub/x:output:0gru_2/while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:???????????
gru_2/while/gru_cell_2/mul_2Mulgru_2/while/gru_cell_2/sub:z:0!gru_2/while/gru_cell_2/Tanh_2:y:0*
T0*(
_output_shapes
:???????????
gru_2/while/gru_cell_2/add_3AddV2 gru_2/while/gru_cell_2/mul_1:z:0 gru_2/while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:???????????
0gru_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_2_while_placeholder_1gru_2_while_placeholder gru_2/while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype0:???S
gru_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
gru_2/while/addAddV2gru_2_while_placeholdergru_2/while/add/y:output:0*
T0*
_output_shapes
: U
gru_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
gru_2/while/add_1AddV2$gru_2_while_gru_2_while_loop_countergru_2/while/add_1/y:output:0*
T0*
_output_shapes
: k
gru_2/while/IdentityIdentitygru_2/while/add_1:z:0^gru_2/while/NoOp*
T0*
_output_shapes
: ?
gru_2/while/Identity_1Identity*gru_2_while_gru_2_while_maximum_iterations^gru_2/while/NoOp*
T0*
_output_shapes
: k
gru_2/while/Identity_2Identitygru_2/while/add:z:0^gru_2/while/NoOp*
T0*
_output_shapes
: ?
gru_2/while/Identity_3Identity@gru_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_2/while/NoOp*
T0*
_output_shapes
: ?
gru_2/while/Identity_4Identity gru_2/while/gru_cell_2/add_3:z:0^gru_2/while/NoOp*
T0*(
_output_shapes
:???????????
gru_2/while/NoOpNoOp-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "D
gru_2_while_gru_2_strided_slice!gru_2_while_gru_2_strided_slice_0"t
7gru_2_while_gru_cell_2_matmul_1_readvariableop_resource9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0"p
5gru_2_while_gru_cell_2_matmul_readvariableop_resource7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0"b
.gru_2_while_gru_cell_2_readvariableop_resource0gru_2_while_gru_cell_2_readvariableop_resource_0"5
gru_2_while_identitygru_2/while/Identity:output:0"9
gru_2_while_identity_1gru_2/while/Identity_1:output:0"9
gru_2_while_identity_2gru_2/while/Identity_2:output:0"9
gru_2_while_identity_3gru_2/while/Identity_3:output:0"9
gru_2_while_identity_4gru_2/while/Identity_4:output:0"?
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2\
,gru_2/while/gru_cell_2/MatMul/ReadVariableOp,gru_2/while/gru_cell_2/MatMul/ReadVariableOp2`
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp2N
%gru_2/while/gru_cell_2/ReadVariableOp%gru_2/while/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_body_97202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_gru_cell_2_97224_0:	?,
while_gru_cell_2_97226_0:
??,
while_gru_cell_2_97228_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_gru_cell_2_97224:	?*
while_gru_cell_2_97226:
??*
while_gru_cell_2_97228:
????(while/gru_cell_2/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
(while/gru_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_2_97224_0while_gru_cell_2_97226_0while_gru_cell_2_97228_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_97189?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/gru_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity1while/gru_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????w

while/NoOpNoOp)^while/gru_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "2
while_gru_cell_2_97224while_gru_cell_2_97224_0"2
while_gru_cell_2_97226while_gru_cell_2_97226_0"2
while_gru_cell_2_97228while_gru_cell_2_97228_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2T
(while/gru_cell_2/StatefulPartitionedCall(while/gru_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_99267

inputs
states_0*
readvariableop_resource:	?2
matmul_readvariableop_resource:
??4
 matmul_1_readvariableop_resource:
??
identity

identity_1??MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
numv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????H
TanhTanhadd:z:0*
T0*(
_output_shapes
:??????????c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:??????????[
mulMul
Tanh_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????L
Tanh_2Tanh	add_2:z:0*
T0*(
_output_shapes
:??????????S
mul_1MulTanh:y:0states_0*
T0*(
_output_shapes
:??????????J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??W
subSubsub/x:output:0Tanh:y:0*
T0*(
_output_shapes
:??????????T
mul_2Mulsub:z:0
Tanh_2:y:0*
T0*(
_output_shapes
:??????????W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?G
?
@__inference_gru_2_layer_call_and_return_conditional_losses_97645

inputs
initial_state5
"gru_cell_2_readvariableop_resource:	?=
)gru_cell_2_matmul_readvariableop_resource:
???
+gru_cell_2_matmul_1_readvariableop_resource:
??
identity

identity_1?? gru_cell_2/MatMul/ReadVariableOp?"gru_cell_2/MatMul_1/ReadVariableOp?gru_cell_2/ReadVariableOp?whilec
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d??????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask}
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource*
_output_shapes
:	?*
dtype0w
gru_cell_2/unstackUnpack!gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num?
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
gru_cell_2/MatMulMatMulstrided_slice_1:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:??????????e
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
gru_cell_2/MatMul_1MatMulinitial_state*gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
gru_cell_2/BiasAdd_1BiasAddgru_cell_2/MatMul_1:product:0gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:??????????e
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????g
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_cell_2/split_1SplitVgru_cell_2/BiasAdd_1:output:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:??????????^
gru_cell_2/TanhTanhgru_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:??????????b
gru_cell_2/Tanh_1Tanhgru_cell_2/add_1:z:0*
T0*(
_output_shapes
:??????????|
gru_cell_2/mulMulgru_cell_2/Tanh_1:y:0gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:??????????{
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/mul:z:0*
T0*(
_output_shapes
:??????????b
gru_cell_2/Tanh_2Tanhgru_cell_2/add_2:z:0*
T0*(
_output_shapes
:??????????n
gru_cell_2/mul_1Mulgru_cell_2/Tanh:y:0initial_state*
T0*(
_output_shapes
:??????????U
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??x
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:??????????u
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Tanh_2:y:0*
T0*(
_output_shapes
:??????????x
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0initial_statestrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_2_readvariableop_resource)gru_cell_2_matmul_readvariableop_resource+gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_97555*
condR
while_cond_97554*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d??????????*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????d?[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:?????????d?`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????d?:??????????: : : 2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs:WS
(
_output_shapes
:??????????
'
_user_specified_nameinitial_state
?
?
E__inference_my_model_2_layer_call_and_return_conditional_losses_98015
input_1	$
embedding_2_97985:	z?
gru_2_98001:	?
gru_2_98003:
??
gru_2_98005:
?? 
dense_2_98009:	?z
dense_2_98011:z
identity??dense_2/StatefulPartitionedCall?#embedding_2/StatefulPartitionedCall?gru_2/StatefulPartitionedCall?
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_2_97985*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????d?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_97483a
ShapeShape,embedding_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: Q
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:???????????
gru_2/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0zeros:output:0gru_2_98001gru_2_98003gru_2_98005*
Tin	
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:?????????d?:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_gru_2_layer_call_and_return_conditional_losses_97645?
dense_2/StatefulPartitionedCallStatefulPartitionedCall&gru_2/StatefulPartitionedCall:output:0dense_2_98009dense_2_98011*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????dz*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_97684{
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????dz?
NoOpNoOp ^dense_2/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall^gru_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2>
gru_2/StatefulPartitionedCallgru_2/StatefulPartitionedCall:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_1
?<
?
while_body_97789
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_2_readvariableop_resource_0:	?E
1while_gru_cell_2_matmul_readvariableop_resource_0:
??G
3while_gru_cell_2_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_2_readvariableop_resource:	?C
/while_gru_cell_2_matmul_readvariableop_resource:
??E
1while_gru_cell_2_matmul_1_readvariableop_resource:
????&while/gru_cell_2/MatMul/ReadVariableOp?(while/gru_cell_2/MatMul_1/ReadVariableOp?while/gru_cell_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/gru_cell_2/unstackUnpack'while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num?
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0!while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:??????????k
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
(while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_20while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/BiasAdd_1BiasAdd#while/gru_cell_2/MatMul_1:product:0!while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:??????????k
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????m
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
while/gru_cell_2/split_1SplitV#while/gru_cell_2/BiasAdd_1:output:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:??????????j
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:??????????n
while/gru_cell_2/Tanh_1Tanhwhile/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/mulMulwhile/gru_cell_2/Tanh_1:y:0!while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:???????????
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:??????????n
while/gru_cell_2/Tanh_2Tanhwhile/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Tanh:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????[
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh_2:y:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_2_matmul_1_readvariableop_resource3while_gru_cell_2_matmul_1_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2T
(while/gru_cell_2/MatMul_1/ReadVariableOp(while/gru_cell_2/MatMul_1/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_97189

inputs

states*
readvariableop_resource:	?2
matmul_readvariableop_resource:
??4
 matmul_1_readvariableop_resource:
??
identity

identity_1??MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
numv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????H
TanhTanhadd:z:0*
T0*(
_output_shapes
:??????????c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:??????????[
mulMul
Tanh_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????L
Tanh_2Tanh	add_2:z:0*
T0*(
_output_shapes
:??????????Q
mul_1MulTanh:y:0states*
T0*(
_output_shapes
:??????????J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??W
subSubsub/x:output:0Tanh:y:0*
T0*(
_output_shapes
:??????????T
mul_2Mulsub:z:0
Tanh_2:y:0*
T0*(
_output_shapes
:??????????W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?<
?
__inference__traced_save_99404
file_prefix@
<savev2_my_model_2_embedding_2_embeddings_read_readvariableop8
4savev2_my_model_2_dense_2_kernel_read_readvariableop6
2savev2_my_model_2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopA
=savev2_my_model_2_gru_2_gru_cell_2_kernel_read_readvariableopK
Gsavev2_my_model_2_gru_2_gru_cell_2_recurrent_kernel_read_readvariableop?
;savev2_my_model_2_gru_2_gru_cell_2_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopG
Csavev2_adam_my_model_2_embedding_2_embeddings_m_read_readvariableop?
;savev2_adam_my_model_2_dense_2_kernel_m_read_readvariableop=
9savev2_adam_my_model_2_dense_2_bias_m_read_readvariableopH
Dsavev2_adam_my_model_2_gru_2_gru_cell_2_kernel_m_read_readvariableopR
Nsavev2_adam_my_model_2_gru_2_gru_cell_2_recurrent_kernel_m_read_readvariableopF
Bsavev2_adam_my_model_2_gru_2_gru_cell_2_bias_m_read_readvariableopG
Csavev2_adam_my_model_2_embedding_2_embeddings_v_read_readvariableop?
;savev2_adam_my_model_2_dense_2_kernel_v_read_readvariableop=
9savev2_adam_my_model_2_dense_2_bias_v_read_readvariableopH
Dsavev2_adam_my_model_2_gru_2_gru_cell_2_kernel_v_read_readvariableopR
Nsavev2_adam_my_model_2_gru_2_gru_cell_2_recurrent_kernel_v_read_readvariableopF
Bsavev2_adam_my_model_2_gru_2_gru_cell_2_bias_v_read_readvariableop
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
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B/embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB'dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB%dense/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBKembedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBKembedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0<savev2_my_model_2_embedding_2_embeddings_read_readvariableop4savev2_my_model_2_dense_2_kernel_read_readvariableop2savev2_my_model_2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop=savev2_my_model_2_gru_2_gru_cell_2_kernel_read_readvariableopGsavev2_my_model_2_gru_2_gru_cell_2_recurrent_kernel_read_readvariableop;savev2_my_model_2_gru_2_gru_cell_2_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopCsavev2_adam_my_model_2_embedding_2_embeddings_m_read_readvariableop;savev2_adam_my_model_2_dense_2_kernel_m_read_readvariableop9savev2_adam_my_model_2_dense_2_bias_m_read_readvariableopDsavev2_adam_my_model_2_gru_2_gru_cell_2_kernel_m_read_readvariableopNsavev2_adam_my_model_2_gru_2_gru_cell_2_recurrent_kernel_m_read_readvariableopBsavev2_adam_my_model_2_gru_2_gru_cell_2_bias_m_read_readvariableopCsavev2_adam_my_model_2_embedding_2_embeddings_v_read_readvariableop;savev2_adam_my_model_2_dense_2_kernel_v_read_readvariableop9savev2_adam_my_model_2_dense_2_bias_v_read_readvariableopDsavev2_adam_my_model_2_gru_2_gru_cell_2_kernel_v_read_readvariableopNsavev2_adam_my_model_2_gru_2_gru_cell_2_recurrent_kernel_v_read_readvariableopBsavev2_adam_my_model_2_gru_2_gru_cell_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *(
dtypes
2	?
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
?: :	z?:	?z:z: : : : : :
??:
??:	?: : :	z?:	?z:z:
??:
??:	?:	z?:	?z:z:
??:
??:	?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	z?:%!

_output_shapes
:	?z: 

_output_shapes
:z:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&	"
 
_output_shapes
:
??:&
"
 
_output_shapes
:
??:%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	z?:%!

_output_shapes
:	?z: 

_output_shapes
:z:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:%!

_output_shapes
:	?:%!

_output_shapes
:	z?:%!

_output_shapes
:	?z: 

_output_shapes
:z:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:%!

_output_shapes
:	?:

_output_shapes
: 
?	
?
*__inference_my_model_2_layer_call_fn_97982
input_1	
unknown:	z?
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?z
	unknown_4:z
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????dz*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_my_model_2_layer_call_and_return_conditional_losses_97950s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????dz`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_1
?	
?
*__inference_my_model_2_layer_call_fn_98107

inputs	
unknown:	z?
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?z
	unknown_4:z
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????dz*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_my_model_2_layer_call_and_return_conditional_losses_97950s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????dz`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
!my_model_2_gru_2_while_cond_96999>
:my_model_2_gru_2_while_my_model_2_gru_2_while_loop_counterD
@my_model_2_gru_2_while_my_model_2_gru_2_while_maximum_iterations&
"my_model_2_gru_2_while_placeholder(
$my_model_2_gru_2_while_placeholder_1(
$my_model_2_gru_2_while_placeholder_2>
:my_model_2_gru_2_while_less_my_model_2_gru_2_strided_sliceU
Qmy_model_2_gru_2_while_my_model_2_gru_2_while_cond_96999___redundant_placeholder0U
Qmy_model_2_gru_2_while_my_model_2_gru_2_while_cond_96999___redundant_placeholder1U
Qmy_model_2_gru_2_while_my_model_2_gru_2_while_cond_96999___redundant_placeholder2U
Qmy_model_2_gru_2_while_my_model_2_gru_2_while_cond_96999___redundant_placeholder3#
my_model_2_gru_2_while_identity
?
my_model_2/gru_2/while/LessLess"my_model_2_gru_2_while_placeholder:my_model_2_gru_2_while_less_my_model_2_gru_2_strided_slice*
T0*
_output_shapes
: m
my_model_2/gru_2/while/IdentityIdentitymy_model_2/gru_2/while/Less:z:0*
T0
*
_output_shapes
: "K
my_model_2_gru_2_while_identity(my_model_2/gru_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?<
?
while_body_97555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_2_readvariableop_resource_0:	?E
1while_gru_cell_2_matmul_readvariableop_resource_0:
??G
3while_gru_cell_2_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_2_readvariableop_resource:	?C
/while_gru_cell_2_matmul_readvariableop_resource:
??E
1while_gru_cell_2_matmul_1_readvariableop_resource:
????&while/gru_cell_2/MatMul/ReadVariableOp?(while/gru_cell_2/MatMul_1/ReadVariableOp?while/gru_cell_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/gru_cell_2/unstackUnpack'while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num?
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0!while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:??????????k
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
(while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_20while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/BiasAdd_1BiasAdd#while/gru_cell_2/MatMul_1:product:0!while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:??????????k
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????m
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
while/gru_cell_2/split_1SplitV#while/gru_cell_2/BiasAdd_1:output:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:??????????j
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:??????????n
while/gru_cell_2/Tanh_1Tanhwhile/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/mulMulwhile/gru_cell_2/Tanh_1:y:0!while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:???????????
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:??????????n
while/gru_cell_2/Tanh_2Tanhwhile/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Tanh:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????[
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh_2:y:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_2_matmul_1_readvariableop_resource3while_gru_cell_2_matmul_1_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2T
(while/gru_cell_2/MatMul_1/ReadVariableOp(while/gru_cell_2/MatMul_1/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?	
?
*__inference_my_model_2_layer_call_fn_98090

inputs	
unknown:	z?
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?z
	unknown_4:z
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????dz*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_my_model_2_layer_call_and_return_conditional_losses_97691s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????dz`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_98620
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_98620___redundant_placeholder03
/while_while_cond_98620___redundant_placeholder13
/while_while_cond_98620___redundant_placeholder23
/while_while_cond_98620___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
gru_2_while_cond_98179(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2(
$gru_2_while_less_gru_2_strided_slice?
;gru_2_while_gru_2_while_cond_98179___redundant_placeholder0?
;gru_2_while_gru_2_while_cond_98179___redundant_placeholder1?
;gru_2_while_gru_2_while_cond_98179___redundant_placeholder2?
;gru_2_while_gru_2_while_cond_98179___redundant_placeholder3
gru_2_while_identity
x
gru_2/while/LessLessgru_2_while_placeholder$gru_2_while_less_gru_2_strided_slice*
T0*
_output_shapes
: W
gru_2/while/IdentityIdentitygru_2/while/Less:z:0*
T0
*
_output_shapes
: "5
gru_2_while_identitygru_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
*__inference_gru_cell_2_layer_call_fn_99228

inputs
states_0
unknown:	?
	unknown_0:
??
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_97335p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?<
?
while_body_98925
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_2_readvariableop_resource_0:	?E
1while_gru_cell_2_matmul_readvariableop_resource_0:
??G
3while_gru_cell_2_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_2_readvariableop_resource:	?C
/while_gru_cell_2_matmul_readvariableop_resource:
??E
1while_gru_cell_2_matmul_1_readvariableop_resource:
????&while/gru_cell_2/MatMul/ReadVariableOp?(while/gru_cell_2/MatMul_1/ReadVariableOp?while/gru_cell_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/gru_cell_2/unstackUnpack'while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num?
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0!while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:??????????k
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
(while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_20while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/BiasAdd_1BiasAdd#while/gru_cell_2/MatMul_1:product:0!while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:??????????k
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????m
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
while/gru_cell_2/split_1SplitV#while/gru_cell_2/BiasAdd_1:output:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:??????????j
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:??????????n
while/gru_cell_2/Tanh_1Tanhwhile/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/mulMulwhile/gru_cell_2/Tanh_1:y:0!while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:???????????
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:??????????n
while/gru_cell_2/Tanh_2Tanhwhile/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Tanh:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????[
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh_2:y:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_2_matmul_1_readvariableop_resource3while_gru_cell_2_matmul_1_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2T
(while/gru_cell_2/MatMul_1/ReadVariableOp(while/gru_cell_2/MatMul_1/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
E__inference_my_model_2_layer_call_and_return_conditional_losses_97691

inputs	$
embedding_2_97484:	z?
gru_2_97646:	?
gru_2_97648:
??
gru_2_97650:
?? 
dense_2_97685:	?z
dense_2_97687:z
identity??dense_2/StatefulPartitionedCall?#embedding_2/StatefulPartitionedCall?gru_2/StatefulPartitionedCall?
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_2_97484*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????d?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_97483a
ShapeShape,embedding_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: Q
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:???????????
gru_2/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0zeros:output:0gru_2_97646gru_2_97648gru_2_97650*
Tin	
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:?????????d?:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_gru_2_layer_call_and_return_conditional_losses_97645?
dense_2/StatefulPartitionedCallStatefulPartitionedCall&gru_2/StatefulPartitionedCall:output:0dense_2_97685dense_2_97687*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????dz*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_97684{
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????dz?
NoOpNoOp ^dense_2/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall^gru_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2>
gru_2/StatefulPartitionedCallgru_2/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_97335

inputs

states*
readvariableop_resource:	?2
matmul_readvariableop_resource:
??4
 matmul_1_readvariableop_resource:
??
identity

identity_1??MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
numv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????H
TanhTanhadd:z:0*
T0*(
_output_shapes
:??????????c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:??????????[
mulMul
Tanh_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????L
Tanh_2Tanh	add_2:z:0*
T0*(
_output_shapes
:??????????Q
mul_1MulTanh:y:0states*
T0*(
_output_shapes
:??????????J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??W
subSubsub/x:output:0Tanh:y:0*
T0*(
_output_shapes
:??????????T
mul_2Mulsub:z:0
Tanh_2:y:0*
T0*(
_output_shapes
:??????????W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:??????????[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?7
?
@__inference_gru_2_layer_call_and_return_conditional_losses_97267

inputs#
gru_cell_2_97190:	?$
gru_cell_2_97192:
??$
gru_cell_2_97194:
??
identity

identity_1??"gru_cell_2/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: Q
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
"gru_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_2_97190gru_cell_2_97192gru_cell_2_97194*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_97189n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_2_97190gru_cell_2_97192gru_cell_2_97194*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_97202*
condR
while_cond_97201*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:??????????s
NoOpNoOp#^gru_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2H
"gru_cell_2/StatefulPartitionedCall"gru_cell_2/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
while_cond_97201
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_97201___redundant_placeholder03
/while_while_cond_97201___redundant_placeholder13
/while_while_cond_97201___redundant_placeholder23
/while_while_cond_97201___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?P
?
@__inference_gru_2_layer_call_and_return_conditional_losses_98869
inputs_05
"gru_cell_2_readvariableop_resource:	?=
)gru_cell_2_matmul_readvariableop_resource:
???
+gru_cell_2_matmul_1_readvariableop_resource:
??
identity

identity_1?? gru_cell_2/MatMul/ReadVariableOp?"gru_cell_2/MatMul_1/ReadVariableOp?gru_cell_2/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: Q
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask}
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource*
_output_shapes
:	?*
dtype0w
gru_cell_2/unstackUnpack!gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num?
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
gru_cell_2/MatMulMatMulstrided_slice_2:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:??????????e
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
gru_cell_2/MatMul_1MatMulzeros:output:0*gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
gru_cell_2/BiasAdd_1BiasAddgru_cell_2/MatMul_1:product:0gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:??????????e
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????g
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_cell_2/split_1SplitVgru_cell_2/BiasAdd_1:output:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:??????????^
gru_cell_2/TanhTanhgru_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:??????????b
gru_cell_2/Tanh_1Tanhgru_cell_2/add_1:z:0*
T0*(
_output_shapes
:??????????|
gru_cell_2/mulMulgru_cell_2/Tanh_1:y:0gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:??????????{
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/mul:z:0*
T0*(
_output_shapes
:??????????b
gru_cell_2/Tanh_2Tanhgru_cell_2/add_2:z:0*
T0*(
_output_shapes
:??????????o
gru_cell_2/mul_1Mulgru_cell_2/Tanh:y:0zeros:output:0*
T0*(
_output_shapes
:??????????U
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??x
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:??????????u
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Tanh_2:y:0*
T0*(
_output_shapes
:??????????x
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_2_readvariableop_resource)gru_cell_2_matmul_readvariableop_resource+gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_98779*
condR
while_cond_98778*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
F__inference_embedding_2_layer_call_and_return_conditional_losses_98499

inputs	)
embedding_lookup_98493:	z?
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_98493inputs*
Tindices0	*)
_class
loc:@embedding_lookup/98493*,
_output_shapes
:?????????d?*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/98493*,
_output_shapes
:?????????d??
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????d?x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:?????????d?Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
%__inference_gru_2_layer_call_fn_98539

inputs
initial_state_0
unknown:	?
	unknown_0:
??
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsinitial_state_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:?????????d?:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_gru_2_layer_call_and_return_conditional_losses_97645t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????d?r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????d?:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs:YU
(
_output_shapes
:??????????
)
_user_specified_nameinitial_state/0
?
?
while_cond_97788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_97788___redundant_placeholder03
/while_while_cond_97788___redundant_placeholder13
/while_while_cond_97788___redundant_placeholder23
/while_while_cond_97788___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?	
?
*__inference_my_model_2_layer_call_fn_97706
input_1	
unknown:	z?
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?z
	unknown_4:z
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????dz*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_my_model_2_layer_call_and_return_conditional_losses_97691s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????dz`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_1
?y
?
E__inference_my_model_2_layer_call_and_return_conditional_losses_98295

inputs	5
"embedding_2_embedding_lookup_98110:	z?;
(gru_2_gru_cell_2_readvariableop_resource:	?C
/gru_2_gru_cell_2_matmul_readvariableop_resource:
??E
1gru_2_gru_cell_2_matmul_1_readvariableop_resource:
??<
)dense_2_tensordot_readvariableop_resource:	?z5
'dense_2_biasadd_readvariableop_resource:z
identity??dense_2/BiasAdd/ReadVariableOp? dense_2/Tensordot/ReadVariableOp?embedding_2/embedding_lookup?&gru_2/gru_cell_2/MatMul/ReadVariableOp?(gru_2/gru_cell_2/MatMul_1/ReadVariableOp?gru_2/gru_cell_2/ReadVariableOp?gru_2/while?
embedding_2/embedding_lookupResourceGather"embedding_2_embedding_lookup_98110inputs*
Tindices0	*5
_class+
)'loc:@embedding_2/embedding_lookup/98110*,
_output_shapes
:?????????d?*
dtype0?
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_2/embedding_lookup/98110*,
_output_shapes
:?????????d??
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????d?e
ShapeShape0embedding_2/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: Q
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????i
gru_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
gru_2/transpose	Transpose0embedding_2/embedding_lookup/Identity_1:output:0gru_2/transpose/perm:output:0*
T0*,
_output_shapes
:d??????????N
gru_2/ShapeShapegru_2/transpose:y:0*
T0*
_output_shapes
:c
gru_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
gru_2/strided_sliceStridedSlicegru_2/Shape:output:0"gru_2/strided_slice/stack:output:0$gru_2/strided_slice/stack_1:output:0$gru_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!gru_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_2/TensorArrayV2TensorListReserve*gru_2/TensorArrayV2/element_shape:output:0gru_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
-gru_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_2/transpose:y:0Dgru_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???e
gru_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
gru_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
gru_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
gru_2/strided_slice_1StridedSlicegru_2/transpose:y:0$gru_2/strided_slice_1/stack:output:0&gru_2/strided_slice_1/stack_1:output:0&gru_2/strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
gru_2/gru_cell_2/ReadVariableOpReadVariableOp(gru_2_gru_cell_2_readvariableop_resource*
_output_shapes
:	?*
dtype0?
gru_2/gru_cell_2/unstackUnpack'gru_2/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num?
&gru_2/gru_cell_2/MatMul/ReadVariableOpReadVariableOp/gru_2_gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
gru_2/gru_cell_2/MatMulMatMulgru_2/strided_slice_1:output:0.gru_2/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
gru_2/gru_cell_2/BiasAddBiasAdd!gru_2/gru_cell_2/MatMul:product:0!gru_2/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:??????????k
 gru_2/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_2/gru_cell_2/splitSplit)gru_2/gru_cell_2/split/split_dim:output:0!gru_2/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
(gru_2/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
gru_2/gru_cell_2/MatMul_1MatMulzeros:output:00gru_2/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
gru_2/gru_cell_2/BiasAdd_1BiasAdd#gru_2/gru_cell_2/MatMul_1:product:0!gru_2/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:??????????k
gru_2/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????m
"gru_2/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_2/gru_cell_2/split_1SplitV#gru_2/gru_cell_2/BiasAdd_1:output:0gru_2/gru_cell_2/Const:output:0+gru_2/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
gru_2/gru_cell_2/addAddV2gru_2/gru_cell_2/split:output:0!gru_2/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:??????????j
gru_2/gru_cell_2/TanhTanhgru_2/gru_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
gru_2/gru_cell_2/add_1AddV2gru_2/gru_cell_2/split:output:1!gru_2/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:??????????n
gru_2/gru_cell_2/Tanh_1Tanhgru_2/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:???????????
gru_2/gru_cell_2/mulMulgru_2/gru_cell_2/Tanh_1:y:0!gru_2/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:???????????
gru_2/gru_cell_2/add_2AddV2gru_2/gru_cell_2/split:output:2gru_2/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:??????????n
gru_2/gru_cell_2/Tanh_2Tanhgru_2/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:??????????{
gru_2/gru_cell_2/mul_1Mulgru_2/gru_cell_2/Tanh:y:0zeros:output:0*
T0*(
_output_shapes
:??????????[
gru_2/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
gru_2/gru_cell_2/subSubgru_2/gru_cell_2/sub/x:output:0gru_2/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:???????????
gru_2/gru_cell_2/mul_2Mulgru_2/gru_cell_2/sub:z:0gru_2/gru_cell_2/Tanh_2:y:0*
T0*(
_output_shapes
:???????????
gru_2/gru_cell_2/add_3AddV2gru_2/gru_cell_2/mul_1:z:0gru_2/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:??????????t
#gru_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
gru_2/TensorArrayV2_1TensorListReserve,gru_2/TensorArrayV2_1/element_shape:output:0gru_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???L

gru_2/timeConst*
_output_shapes
: *
dtype0*
value	B : i
gru_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????Z
gru_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
gru_2/whileWhile!gru_2/while/loop_counter:output:0'gru_2/while/maximum_iterations:output:0gru_2/time:output:0gru_2/TensorArrayV2_1:handle:0zeros:output:0gru_2/strided_slice:output:0=gru_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_2_gru_cell_2_readvariableop_resource/gru_2_gru_cell_2_matmul_readvariableop_resource1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *"
bodyR
gru_2_while_body_98180*"
condR
gru_2_while_cond_98179*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
6gru_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
(gru_2/TensorArrayV2Stack/TensorListStackTensorListStackgru_2/while:output:3?gru_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d??????????*
element_dtype0n
gru_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????g
gru_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
gru_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
gru_2/strided_slice_2StridedSlice1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0$gru_2/strided_slice_2/stack:output:0&gru_2/strided_slice_2/stack_1:output:0&gru_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskk
gru_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
gru_2/transpose_1	Transpose1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0gru_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????d?a
gru_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes
:	?z*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       \
dense_2/Tensordot/ShapeShapegru_2/transpose_1:y:0*
T0*
_output_shapes
:a
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_2/Tensordot/transpose	Transposegru_2/transpose_1:y:0!dense_2/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????d??
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????zc
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:za
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????dz?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:z*
dtype0?
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????dzk
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????dz?
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^embedding_2/embedding_lookup'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp^gru_2/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2P
&gru_2/gru_cell_2/MatMul/ReadVariableOp&gru_2/gru_cell_2/MatMul/ReadVariableOp2T
(gru_2/gru_cell_2/MatMul_1/ReadVariableOp(gru_2/gru_cell_2/MatMul_1/ReadVariableOp2B
gru_2/gru_cell_2/ReadVariableOpgru_2/gru_cell_2/ReadVariableOp2
gru_2/whilegru_2/while:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?	
gru_2_while_body_98180(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2%
!gru_2_while_gru_2_strided_slice_0c
_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0C
0gru_2_while_gru_cell_2_readvariableop_resource_0:	?K
7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0:
??M
9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0:
??
gru_2_while_identity
gru_2_while_identity_1
gru_2_while_identity_2
gru_2_while_identity_3
gru_2_while_identity_4#
gru_2_while_gru_2_strided_slicea
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensorA
.gru_2_while_gru_cell_2_readvariableop_resource:	?I
5gru_2_while_gru_cell_2_matmul_readvariableop_resource:
??K
7gru_2_while_gru_cell_2_matmul_1_readvariableop_resource:
????,gru_2/while/gru_cell_2/MatMul/ReadVariableOp?.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp?%gru_2/while/gru_cell_2/ReadVariableOp?
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
/gru_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0gru_2_while_placeholderFgru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
%gru_2/while/gru_cell_2/ReadVariableOpReadVariableOp0gru_2_while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
gru_2/while/gru_cell_2/unstackUnpack-gru_2/while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num?
,gru_2/while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
gru_2/while/gru_cell_2/MatMulMatMul6gru_2/while/TensorArrayV2Read/TensorListGetItem:item:04gru_2/while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
gru_2/while/gru_cell_2/BiasAddBiasAdd'gru_2/while/gru_cell_2/MatMul:product:0'gru_2/while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:??????????q
&gru_2/while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_2/while/gru_cell_2/splitSplit/gru_2/while/gru_cell_2/split/split_dim:output:0'gru_2/while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
gru_2/while/gru_cell_2/MatMul_1MatMulgru_2_while_placeholder_26gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 gru_2/while/gru_cell_2/BiasAdd_1BiasAdd)gru_2/while/gru_cell_2/MatMul_1:product:0'gru_2/while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:??????????q
gru_2/while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????s
(gru_2/while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_2/while/gru_cell_2/split_1SplitV)gru_2/while/gru_cell_2/BiasAdd_1:output:0%gru_2/while/gru_cell_2/Const:output:01gru_2/while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
gru_2/while/gru_cell_2/addAddV2%gru_2/while/gru_cell_2/split:output:0'gru_2/while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:??????????v
gru_2/while/gru_cell_2/TanhTanhgru_2/while/gru_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
gru_2/while/gru_cell_2/add_1AddV2%gru_2/while/gru_cell_2/split:output:1'gru_2/while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:??????????z
gru_2/while/gru_cell_2/Tanh_1Tanh gru_2/while/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:???????????
gru_2/while/gru_cell_2/mulMul!gru_2/while/gru_cell_2/Tanh_1:y:0'gru_2/while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:???????????
gru_2/while/gru_cell_2/add_2AddV2%gru_2/while/gru_cell_2/split:output:2gru_2/while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:??????????z
gru_2/while/gru_cell_2/Tanh_2Tanh gru_2/while/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:???????????
gru_2/while/gru_cell_2/mul_1Mulgru_2/while/gru_cell_2/Tanh:y:0gru_2_while_placeholder_2*
T0*(
_output_shapes
:??????????a
gru_2/while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
gru_2/while/gru_cell_2/subSub%gru_2/while/gru_cell_2/sub/x:output:0gru_2/while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:???????????
gru_2/while/gru_cell_2/mul_2Mulgru_2/while/gru_cell_2/sub:z:0!gru_2/while/gru_cell_2/Tanh_2:y:0*
T0*(
_output_shapes
:???????????
gru_2/while/gru_cell_2/add_3AddV2 gru_2/while/gru_cell_2/mul_1:z:0 gru_2/while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:???????????
0gru_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_2_while_placeholder_1gru_2_while_placeholder gru_2/while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype0:???S
gru_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
gru_2/while/addAddV2gru_2_while_placeholdergru_2/while/add/y:output:0*
T0*
_output_shapes
: U
gru_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
gru_2/while/add_1AddV2$gru_2_while_gru_2_while_loop_countergru_2/while/add_1/y:output:0*
T0*
_output_shapes
: k
gru_2/while/IdentityIdentitygru_2/while/add_1:z:0^gru_2/while/NoOp*
T0*
_output_shapes
: ?
gru_2/while/Identity_1Identity*gru_2_while_gru_2_while_maximum_iterations^gru_2/while/NoOp*
T0*
_output_shapes
: k
gru_2/while/Identity_2Identitygru_2/while/add:z:0^gru_2/while/NoOp*
T0*
_output_shapes
: ?
gru_2/while/Identity_3Identity@gru_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_2/while/NoOp*
T0*
_output_shapes
: ?
gru_2/while/Identity_4Identity gru_2/while/gru_cell_2/add_3:z:0^gru_2/while/NoOp*
T0*(
_output_shapes
:???????????
gru_2/while/NoOpNoOp-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp/^gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "D
gru_2_while_gru_2_strided_slice!gru_2_while_gru_2_strided_slice_0"t
7gru_2_while_gru_cell_2_matmul_1_readvariableop_resource9gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0"p
5gru_2_while_gru_cell_2_matmul_readvariableop_resource7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0"b
.gru_2_while_gru_cell_2_readvariableop_resource0gru_2_while_gru_cell_2_readvariableop_resource_0"5
gru_2_while_identitygru_2/while/Identity:output:0"9
gru_2_while_identity_1gru_2/while/Identity_1:output:0"9
gru_2_while_identity_2gru_2/while/Identity_2:output:0"9
gru_2_while_identity_3gru_2/while/Identity_3:output:0"9
gru_2_while_identity_4gru_2/while/Identity_4:output:0"?
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2\
,gru_2/while/gru_cell_2/MatMul/ReadVariableOp,gru_2/while/gru_cell_2/MatMul/ReadVariableOp2`
.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp.gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp2N
%gru_2/while/gru_cell_2/ReadVariableOp%gru_2/while/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?y
?
E__inference_my_model_2_layer_call_and_return_conditional_losses_98483

inputs	5
"embedding_2_embedding_lookup_98298:	z?;
(gru_2_gru_cell_2_readvariableop_resource:	?C
/gru_2_gru_cell_2_matmul_readvariableop_resource:
??E
1gru_2_gru_cell_2_matmul_1_readvariableop_resource:
??<
)dense_2_tensordot_readvariableop_resource:	?z5
'dense_2_biasadd_readvariableop_resource:z
identity??dense_2/BiasAdd/ReadVariableOp? dense_2/Tensordot/ReadVariableOp?embedding_2/embedding_lookup?&gru_2/gru_cell_2/MatMul/ReadVariableOp?(gru_2/gru_cell_2/MatMul_1/ReadVariableOp?gru_2/gru_cell_2/ReadVariableOp?gru_2/while?
embedding_2/embedding_lookupResourceGather"embedding_2_embedding_lookup_98298inputs*
Tindices0	*5
_class+
)'loc:@embedding_2/embedding_lookup/98298*,
_output_shapes
:?????????d?*
dtype0?
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_2/embedding_lookup/98298*,
_output_shapes
:?????????d??
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????d?e
ShapeShape0embedding_2/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: Q
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????i
gru_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
gru_2/transpose	Transpose0embedding_2/embedding_lookup/Identity_1:output:0gru_2/transpose/perm:output:0*
T0*,
_output_shapes
:d??????????N
gru_2/ShapeShapegru_2/transpose:y:0*
T0*
_output_shapes
:c
gru_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
gru_2/strided_sliceStridedSlicegru_2/Shape:output:0"gru_2/strided_slice/stack:output:0$gru_2/strided_slice/stack_1:output:0$gru_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!gru_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_2/TensorArrayV2TensorListReserve*gru_2/TensorArrayV2/element_shape:output:0gru_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
-gru_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_2/transpose:y:0Dgru_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???e
gru_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
gru_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
gru_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
gru_2/strided_slice_1StridedSlicegru_2/transpose:y:0$gru_2/strided_slice_1/stack:output:0&gru_2/strided_slice_1/stack_1:output:0&gru_2/strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
gru_2/gru_cell_2/ReadVariableOpReadVariableOp(gru_2_gru_cell_2_readvariableop_resource*
_output_shapes
:	?*
dtype0?
gru_2/gru_cell_2/unstackUnpack'gru_2/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num?
&gru_2/gru_cell_2/MatMul/ReadVariableOpReadVariableOp/gru_2_gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
gru_2/gru_cell_2/MatMulMatMulgru_2/strided_slice_1:output:0.gru_2/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
gru_2/gru_cell_2/BiasAddBiasAdd!gru_2/gru_cell_2/MatMul:product:0!gru_2/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:??????????k
 gru_2/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_2/gru_cell_2/splitSplit)gru_2/gru_cell_2/split/split_dim:output:0!gru_2/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
(gru_2/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
gru_2/gru_cell_2/MatMul_1MatMulzeros:output:00gru_2/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
gru_2/gru_cell_2/BiasAdd_1BiasAdd#gru_2/gru_cell_2/MatMul_1:product:0!gru_2/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:??????????k
gru_2/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????m
"gru_2/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_2/gru_cell_2/split_1SplitV#gru_2/gru_cell_2/BiasAdd_1:output:0gru_2/gru_cell_2/Const:output:0+gru_2/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
gru_2/gru_cell_2/addAddV2gru_2/gru_cell_2/split:output:0!gru_2/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:??????????j
gru_2/gru_cell_2/TanhTanhgru_2/gru_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
gru_2/gru_cell_2/add_1AddV2gru_2/gru_cell_2/split:output:1!gru_2/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:??????????n
gru_2/gru_cell_2/Tanh_1Tanhgru_2/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:???????????
gru_2/gru_cell_2/mulMulgru_2/gru_cell_2/Tanh_1:y:0!gru_2/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:???????????
gru_2/gru_cell_2/add_2AddV2gru_2/gru_cell_2/split:output:2gru_2/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:??????????n
gru_2/gru_cell_2/Tanh_2Tanhgru_2/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:??????????{
gru_2/gru_cell_2/mul_1Mulgru_2/gru_cell_2/Tanh:y:0zeros:output:0*
T0*(
_output_shapes
:??????????[
gru_2/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
gru_2/gru_cell_2/subSubgru_2/gru_cell_2/sub/x:output:0gru_2/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:???????????
gru_2/gru_cell_2/mul_2Mulgru_2/gru_cell_2/sub:z:0gru_2/gru_cell_2/Tanh_2:y:0*
T0*(
_output_shapes
:???????????
gru_2/gru_cell_2/add_3AddV2gru_2/gru_cell_2/mul_1:z:0gru_2/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:??????????t
#gru_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
gru_2/TensorArrayV2_1TensorListReserve,gru_2/TensorArrayV2_1/element_shape:output:0gru_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???L

gru_2/timeConst*
_output_shapes
: *
dtype0*
value	B : i
gru_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????Z
gru_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
gru_2/whileWhile!gru_2/while/loop_counter:output:0'gru_2/while/maximum_iterations:output:0gru_2/time:output:0gru_2/TensorArrayV2_1:handle:0zeros:output:0gru_2/strided_slice:output:0=gru_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_2_gru_cell_2_readvariableop_resource/gru_2_gru_cell_2_matmul_readvariableop_resource1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *"
bodyR
gru_2_while_body_98368*"
condR
gru_2_while_cond_98367*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
6gru_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
(gru_2/TensorArrayV2Stack/TensorListStackTensorListStackgru_2/while:output:3?gru_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d??????????*
element_dtype0n
gru_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????g
gru_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
gru_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
gru_2/strided_slice_2StridedSlice1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0$gru_2/strided_slice_2/stack:output:0&gru_2/strided_slice_2/stack_1:output:0&gru_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskk
gru_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
gru_2/transpose_1	Transpose1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0gru_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????d?a
gru_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes
:	?z*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       \
dense_2/Tensordot/ShapeShapegru_2/transpose_1:y:0*
T0*
_output_shapes
:a
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_2/Tensordot/transpose	Transposegru_2/transpose_1:y:0!dense_2/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????d??
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????zc
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:za
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????dz?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:z*
dtype0?
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????dzk
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????dz?
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^embedding_2/embedding_lookup'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp^gru_2/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2P
&gru_2/gru_cell_2/MatMul/ReadVariableOp&gru_2/gru_cell_2/MatMul/ReadVariableOp2T
(gru_2/gru_cell_2/MatMul_1/ReadVariableOp(gru_2/gru_cell_2/MatMul_1/ReadVariableOp2B
gru_2/gru_cell_2/ReadVariableOpgru_2/gru_cell_2/ReadVariableOp2
gru_2/whilegru_2/while:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_97390
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_97390___redundant_placeholder03
/while_while_cond_97390___redundant_placeholder13
/while_while_cond_97390___redundant_placeholder23
/while_while_cond_97390___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?<
?
while_body_99071
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_2_readvariableop_resource_0:	?E
1while_gru_cell_2_matmul_readvariableop_resource_0:
??G
3while_gru_cell_2_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_2_readvariableop_resource:	?C
/while_gru_cell_2_matmul_readvariableop_resource:
??E
1while_gru_cell_2_matmul_1_readvariableop_resource:
????&while/gru_cell_2/MatMul/ReadVariableOp?(while/gru_cell_2/MatMul_1/ReadVariableOp?while/gru_cell_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/gru_cell_2/unstackUnpack'while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num?
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0!while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:??????????k
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
(while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_20while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/BiasAdd_1BiasAdd#while/gru_cell_2/MatMul_1:product:0!while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:??????????k
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????m
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
while/gru_cell_2/split_1SplitV#while/gru_cell_2/BiasAdd_1:output:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:??????????j
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:??????????n
while/gru_cell_2/Tanh_1Tanhwhile/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/mulMulwhile/gru_cell_2/Tanh_1:y:0!while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:???????????
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:??????????n
while/gru_cell_2/Tanh_2Tanhwhile/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Tanh:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????[
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh_2:y:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_2_matmul_1_readvariableop_resource3while_gru_cell_2_matmul_1_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2T
(while/gru_cell_2/MatMul_1/ReadVariableOp(while/gru_cell_2/MatMul_1/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
E__inference_my_model_2_layer_call_and_return_conditional_losses_97950

inputs	$
embedding_2_97920:	z?
gru_2_97936:	?
gru_2_97938:
??
gru_2_97940:
?? 
dense_2_97944:	?z
dense_2_97946:z
identity??dense_2/StatefulPartitionedCall?#embedding_2/StatefulPartitionedCall?gru_2/StatefulPartitionedCall?
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_2_97920*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????d?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_97483a
ShapeShape,embedding_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: Q
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:???????????
gru_2/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0zeros:output:0gru_2_97936gru_2_97938gru_2_97940*
Tin	
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:?????????d?:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_gru_2_layer_call_and_return_conditional_losses_97879?
dense_2/StatefulPartitionedCallStatefulPartitionedCall&gru_2/StatefulPartitionedCall:output:0dense_2_97944dense_2_97946*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????dz*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_97684{
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????dz?
NoOpNoOp ^dense_2/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall^gru_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2>
gru_2/StatefulPartitionedCallgru_2/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
+__inference_embedding_2_layer_call_fn_98490

inputs	
unknown:	z?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????d?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_97483t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????d?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????d: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?<
?
while_body_98779
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_2_readvariableop_resource_0:	?E
1while_gru_cell_2_matmul_readvariableop_resource_0:
??G
3while_gru_cell_2_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_2_readvariableop_resource:	?C
/while_gru_cell_2_matmul_readvariableop_resource:
??E
1while_gru_cell_2_matmul_1_readvariableop_resource:
????&while/gru_cell_2/MatMul/ReadVariableOp?(while/gru_cell_2/MatMul_1/ReadVariableOp?while/gru_cell_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/gru_cell_2/unstackUnpack'while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num?
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0!while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:??????????k
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
(while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_20while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/BiasAdd_1BiasAdd#while/gru_cell_2/MatMul_1:product:0!while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:??????????k
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????m
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
while/gru_cell_2/split_1SplitV#while/gru_cell_2/BiasAdd_1:output:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:??????????j
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:??????????n
while/gru_cell_2/Tanh_1Tanhwhile/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/mulMulwhile/gru_cell_2/Tanh_1:y:0!while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:???????????
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:??????????n
while/gru_cell_2/Tanh_2Tanhwhile/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Tanh:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????[
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh_2:y:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_2_matmul_1_readvariableop_resource3while_gru_cell_2_matmul_1_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2T
(while/gru_cell_2/MatMul_1/ReadVariableOp(while/gru_cell_2/MatMul_1/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_97554
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_97554___redundant_placeholder03
/while_while_cond_97554___redundant_placeholder13
/while_while_cond_97554___redundant_placeholder23
/while_while_cond_97554___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
B__inference_dense_2_layer_call_and_return_conditional_losses_97684

inputs4
!tensordot_readvariableop_resource:	?z-
biasadd_readvariableop_resource:z
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?z*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:?????????d??
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????z[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:zY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????dzr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:z*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????dzc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????dzz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????d?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs
?7
?
@__inference_gru_2_layer_call_and_return_conditional_losses_97456

inputs#
gru_cell_2_97379:	?$
gru_cell_2_97381:
??$
gru_cell_2_97383:
??
identity

identity_1??"gru_cell_2/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: Q
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
"gru_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_2_97379gru_cell_2_97381gru_cell_2_97383*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_97335n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_2_97379gru_cell_2_97381gru_cell_2_97383*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_97391*
condR
while_cond_97390*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:??????????s
NoOpNoOp#^gru_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2H
"gru_cell_2/StatefulPartitionedCall"gru_cell_2/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
gru_2_while_cond_98367(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2(
$gru_2_while_less_gru_2_strided_slice?
;gru_2_while_gru_2_while_cond_98367___redundant_placeholder0?
;gru_2_while_gru_2_while_cond_98367___redundant_placeholder1?
;gru_2_while_gru_2_while_cond_98367___redundant_placeholder2?
;gru_2_while_gru_2_while_cond_98367___redundant_placeholder3
gru_2_while_identity
x
gru_2/while/LessLessgru_2_while_placeholder$gru_2_while_less_gru_2_strided_slice*
T0*
_output_shapes
: W
gru_2/while/IdentityIdentitygru_2/while/Less:z:0*
T0
*
_output_shapes
: "5
gru_2_while_identitygru_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?G
?
@__inference_gru_2_layer_call_and_return_conditional_losses_99161

inputs
initial_state_05
"gru_cell_2_readvariableop_resource:	?=
)gru_cell_2_matmul_readvariableop_resource:
???
+gru_cell_2_matmul_1_readvariableop_resource:
??
identity

identity_1?? gru_cell_2/MatMul/ReadVariableOp?"gru_cell_2/MatMul_1/ReadVariableOp?gru_cell_2/ReadVariableOp?whilec
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d??????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask}
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource*
_output_shapes
:	?*
dtype0w
gru_cell_2/unstackUnpack!gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num?
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
gru_cell_2/MatMulMatMulstrided_slice_1:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:??????????e
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
gru_cell_2/MatMul_1MatMulinitial_state_0*gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
gru_cell_2/BiasAdd_1BiasAddgru_cell_2/MatMul_1:product:0gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:??????????e
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????g
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_cell_2/split_1SplitVgru_cell_2/BiasAdd_1:output:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:??????????^
gru_cell_2/TanhTanhgru_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:??????????b
gru_cell_2/Tanh_1Tanhgru_cell_2/add_1:z:0*
T0*(
_output_shapes
:??????????|
gru_cell_2/mulMulgru_cell_2/Tanh_1:y:0gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:??????????{
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/mul:z:0*
T0*(
_output_shapes
:??????????b
gru_cell_2/Tanh_2Tanhgru_cell_2/add_2:z:0*
T0*(
_output_shapes
:??????????p
gru_cell_2/mul_1Mulgru_cell_2/Tanh:y:0initial_state_0*
T0*(
_output_shapes
:??????????U
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??x
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:??????????u
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Tanh_2:y:0*
T0*(
_output_shapes
:??????????x
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0initial_state_0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_2_readvariableop_resource)gru_cell_2_matmul_readvariableop_resource+gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_99071*
condR
while_cond_99070*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d??????????*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????d?[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:?????????d?`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????d?:??????????: : : 2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs:YU
(
_output_shapes
:??????????
)
_user_specified_nameinitial_state/0
?
?
'__inference_dense_2_layer_call_fn_99170

inputs
unknown:	?z
	unknown_0:z
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????dz*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_97684s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????dz`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????d?: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs
?<
?
while_body_98621
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_2_readvariableop_resource_0:	?E
1while_gru_cell_2_matmul_readvariableop_resource_0:
??G
3while_gru_cell_2_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_2_readvariableop_resource:	?C
/while_gru_cell_2_matmul_readvariableop_resource:
??E
1while_gru_cell_2_matmul_1_readvariableop_resource:
????&while/gru_cell_2/MatMul/ReadVariableOp?(while/gru_cell_2/MatMul_1/ReadVariableOp?while/gru_cell_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/gru_cell_2/unstackUnpack'while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num?
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0!while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:??????????k
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
(while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_20while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/BiasAdd_1BiasAdd#while/gru_cell_2/MatMul_1:product:0!while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:??????????k
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????m
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
while/gru_cell_2/split_1SplitV#while/gru_cell_2/BiasAdd_1:output:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:??????????j
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:??????????n
while/gru_cell_2/Tanh_1Tanhwhile/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/mulMulwhile/gru_cell_2/Tanh_1:y:0!while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:???????????
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:??????????n
while/gru_cell_2/Tanh_2Tanhwhile/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Tanh:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????[
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh_2:y:0*
T0*(
_output_shapes
:???????????
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:???????????
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:???????????

while/NoOpNoOp'^while/gru_cell_2/MatMul/ReadVariableOp)^while/gru_cell_2/MatMul_1/ReadVariableOp ^while/gru_cell_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1while_gru_cell_2_matmul_1_readvariableop_resource3while_gru_cell_2_matmul_1_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2T
(while/gru_cell_2/MatMul_1/ReadVariableOp(while/gru_cell_2/MatMul_1/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
F__inference_embedding_2_layer_call_and_return_conditional_losses_97483

inputs	)
embedding_lookup_97477:	z?
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_97477inputs*
Tindices0	*)
_class
loc:@embedding_lookup/97477*,
_output_shapes
:?????????d?*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/97477*,
_output_shapes
:?????????d??
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????d?x
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:?????????d?Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_99070
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_99070___redundant_placeholder03
/while_while_cond_99070___redundant_placeholder13
/while_while_cond_99070___redundant_placeholder23
/while_while_cond_99070___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?P
?
@__inference_gru_2_layer_call_and_return_conditional_losses_98711
inputs_05
"gru_cell_2_readvariableop_resource:	?=
)gru_cell_2_matmul_readvariableop_resource:
???
+gru_cell_2_matmul_1_readvariableop_resource:
??
identity

identity_1?? gru_cell_2/MatMul/ReadVariableOp?"gru_cell_2/MatMul_1/ReadVariableOp?gru_cell_2/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: Q
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask}
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource*
_output_shapes
:	?*
dtype0w
gru_cell_2/unstackUnpack!gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num?
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
gru_cell_2/MatMulMatMulstrided_slice_2:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:??????????e
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
gru_cell_2/MatMul_1MatMulzeros:output:0*gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
gru_cell_2/BiasAdd_1BiasAddgru_cell_2/MatMul_1:product:0gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:??????????e
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????g
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_cell_2/split_1SplitVgru_cell_2/BiasAdd_1:output:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:??????????^
gru_cell_2/TanhTanhgru_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:??????????b
gru_cell_2/Tanh_1Tanhgru_cell_2/add_1:z:0*
T0*(
_output_shapes
:??????????|
gru_cell_2/mulMulgru_cell_2/Tanh_1:y:0gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:??????????{
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/mul:z:0*
T0*(
_output_shapes
:??????????b
gru_cell_2/Tanh_2Tanhgru_cell_2/add_2:z:0*
T0*(
_output_shapes
:??????????o
gru_cell_2/mul_1Mulgru_cell_2/Tanh:y:0zeros:output:0*
T0*(
_output_shapes
:??????????U
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??x
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:??????????u
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Tanh_2:y:0*
T0*(
_output_shapes
:??????????x
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_2_readvariableop_resource)gru_cell_2_matmul_readvariableop_resource+gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_98621*
condR
while_cond_98620*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
#__inference_signature_wrapper_98073
input_1	
unknown:	z?
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?z
	unknown_4:z
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????dz*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_97115s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????dz`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_1
?

?
%__inference_gru_2_layer_call_fn_98553

inputs
initial_state_0
unknown:	?
	unknown_0:
??
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsinitial_state_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:?????????d?:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_gru_2_layer_call_and_return_conditional_losses_97879t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????d?r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????d?:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs:YU
(
_output_shapes
:??????????
)
_user_specified_nameinitial_state/0
?
?
while_cond_98778
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_98778___redundant_placeholder03
/while_while_cond_98778___redundant_placeholder13
/while_while_cond_98778___redundant_placeholder23
/while_while_cond_98778___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?G
?
@__inference_gru_2_layer_call_and_return_conditional_losses_97879

inputs
initial_state5
"gru_cell_2_readvariableop_resource:	?=
)gru_cell_2_matmul_readvariableop_resource:
???
+gru_cell_2_matmul_1_readvariableop_resource:
??
identity

identity_1?? gru_cell_2/MatMul/ReadVariableOp?"gru_cell_2/MatMul_1/ReadVariableOp?gru_cell_2/ReadVariableOp?whilec
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d??????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask}
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource*
_output_shapes
:	?*
dtype0w
gru_cell_2/unstackUnpack!gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num?
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
gru_cell_2/MatMulMatMulstrided_slice_1:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:??????????e
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
gru_cell_2/MatMul_1MatMulinitial_state*gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
gru_cell_2/BiasAdd_1BiasAddgru_cell_2/MatMul_1:product:0gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:??????????e
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????g
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_cell_2/split_1SplitVgru_cell_2/BiasAdd_1:output:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:??????????^
gru_cell_2/TanhTanhgru_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:??????????b
gru_cell_2/Tanh_1Tanhgru_cell_2/add_1:z:0*
T0*(
_output_shapes
:??????????|
gru_cell_2/mulMulgru_cell_2/Tanh_1:y:0gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:??????????{
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/mul:z:0*
T0*(
_output_shapes
:??????????b
gru_cell_2/Tanh_2Tanhgru_cell_2/add_2:z:0*
T0*(
_output_shapes
:??????????n
gru_cell_2/mul_1Mulgru_cell_2/Tanh:y:0initial_state*
T0*(
_output_shapes
:??????????U
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??x
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:??????????u
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Tanh_2:y:0*
T0*(
_output_shapes
:??????????x
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0initial_statestrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_2_readvariableop_resource)gru_cell_2_matmul_readvariableop_resource+gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_97789*
condR
while_cond_97788*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d??????????*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????d?[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:?????????d?`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????d?:??????????: : : 2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs:WS
(
_output_shapes
:??????????
'
_user_specified_nameinitial_state
??
?
 __inference__wrapped_model_97115
input_1	@
-my_model_2_embedding_2_embedding_lookup_96930:	z?F
3my_model_2_gru_2_gru_cell_2_readvariableop_resource:	?N
:my_model_2_gru_2_gru_cell_2_matmul_readvariableop_resource:
??P
<my_model_2_gru_2_gru_cell_2_matmul_1_readvariableop_resource:
??G
4my_model_2_dense_2_tensordot_readvariableop_resource:	?z@
2my_model_2_dense_2_biasadd_readvariableop_resource:z
identity??)my_model_2/dense_2/BiasAdd/ReadVariableOp?+my_model_2/dense_2/Tensordot/ReadVariableOp?'my_model_2/embedding_2/embedding_lookup?1my_model_2/gru_2/gru_cell_2/MatMul/ReadVariableOp?3my_model_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOp?*my_model_2/gru_2/gru_cell_2/ReadVariableOp?my_model_2/gru_2/while?
'my_model_2/embedding_2/embedding_lookupResourceGather-my_model_2_embedding_2_embedding_lookup_96930input_1*
Tindices0	*@
_class6
42loc:@my_model_2/embedding_2/embedding_lookup/96930*,
_output_shapes
:?????????d?*
dtype0?
0my_model_2/embedding_2/embedding_lookup/IdentityIdentity0my_model_2/embedding_2/embedding_lookup:output:0*
T0*@
_class6
42loc:@my_model_2/embedding_2/embedding_lookup/96930*,
_output_shapes
:?????????d??
2my_model_2/embedding_2/embedding_lookup/Identity_1Identity9my_model_2/embedding_2/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????d?{
my_model_2/ShapeShape;my_model_2/embedding_2/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:h
my_model_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 my_model_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 my_model_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
my_model_2/strided_sliceStridedSlicemy_model_2/Shape:output:0'my_model_2/strided_slice/stack:output:0)my_model_2/strided_slice/stack_1:output:0)my_model_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
my_model_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :??
my_model_2/zeros/mulMul!my_model_2/strided_slice:output:0my_model_2/zeros/mul/y:output:0*
T0*
_output_shapes
: Z
my_model_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?z
my_model_2/zeros/LessLessmy_model_2/zeros/mul:z:0 my_model_2/zeros/Less/y:output:0*
T0*
_output_shapes
: \
my_model_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :??
my_model_2/zeros/packedPack!my_model_2/strided_slice:output:0"my_model_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:[
my_model_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
my_model_2/zerosFill my_model_2/zeros/packed:output:0my_model_2/zeros/Const:output:0*
T0*(
_output_shapes
:??????????t
my_model_2/gru_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
my_model_2/gru_2/transpose	Transpose;my_model_2/embedding_2/embedding_lookup/Identity_1:output:0(my_model_2/gru_2/transpose/perm:output:0*
T0*,
_output_shapes
:d??????????d
my_model_2/gru_2/ShapeShapemy_model_2/gru_2/transpose:y:0*
T0*
_output_shapes
:n
$my_model_2/gru_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&my_model_2/gru_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&my_model_2/gru_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
my_model_2/gru_2/strided_sliceStridedSlicemy_model_2/gru_2/Shape:output:0-my_model_2/gru_2/strided_slice/stack:output:0/my_model_2/gru_2/strided_slice/stack_1:output:0/my_model_2/gru_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,my_model_2/gru_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
my_model_2/gru_2/TensorArrayV2TensorListReserve5my_model_2/gru_2/TensorArrayV2/element_shape:output:0'my_model_2/gru_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Fmy_model_2/gru_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
8my_model_2/gru_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormy_model_2/gru_2/transpose:y:0Omy_model_2/gru_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???p
&my_model_2/gru_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(my_model_2/gru_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(my_model_2/gru_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 my_model_2/gru_2/strided_slice_1StridedSlicemy_model_2/gru_2/transpose:y:0/my_model_2/gru_2/strided_slice_1/stack:output:01my_model_2/gru_2/strided_slice_1/stack_1:output:01my_model_2/gru_2/strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask?
*my_model_2/gru_2/gru_cell_2/ReadVariableOpReadVariableOp3my_model_2_gru_2_gru_cell_2_readvariableop_resource*
_output_shapes
:	?*
dtype0?
#my_model_2/gru_2/gru_cell_2/unstackUnpack2my_model_2/gru_2/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num?
1my_model_2/gru_2/gru_cell_2/MatMul/ReadVariableOpReadVariableOp:my_model_2_gru_2_gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
"my_model_2/gru_2/gru_cell_2/MatMulMatMul)my_model_2/gru_2/strided_slice_1:output:09my_model_2/gru_2/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#my_model_2/gru_2/gru_cell_2/BiasAddBiasAdd,my_model_2/gru_2/gru_cell_2/MatMul:product:0,my_model_2/gru_2/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:??????????v
+my_model_2/gru_2/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
!my_model_2/gru_2/gru_cell_2/splitSplit4my_model_2/gru_2/gru_cell_2/split/split_dim:output:0,my_model_2/gru_2/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
3my_model_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp<my_model_2_gru_2_gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
$my_model_2/gru_2/gru_cell_2/MatMul_1MatMulmy_model_2/zeros:output:0;my_model_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%my_model_2/gru_2/gru_cell_2/BiasAdd_1BiasAdd.my_model_2/gru_2/gru_cell_2/MatMul_1:product:0,my_model_2/gru_2/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:??????????v
!my_model_2/gru_2/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????x
-my_model_2/gru_2/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#my_model_2/gru_2/gru_cell_2/split_1SplitV.my_model_2/gru_2/gru_cell_2/BiasAdd_1:output:0*my_model_2/gru_2/gru_cell_2/Const:output:06my_model_2/gru_2/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
my_model_2/gru_2/gru_cell_2/addAddV2*my_model_2/gru_2/gru_cell_2/split:output:0,my_model_2/gru_2/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:???????????
 my_model_2/gru_2/gru_cell_2/TanhTanh#my_model_2/gru_2/gru_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
!my_model_2/gru_2/gru_cell_2/add_1AddV2*my_model_2/gru_2/gru_cell_2/split:output:1,my_model_2/gru_2/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:???????????
"my_model_2/gru_2/gru_cell_2/Tanh_1Tanh%my_model_2/gru_2/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:???????????
my_model_2/gru_2/gru_cell_2/mulMul&my_model_2/gru_2/gru_cell_2/Tanh_1:y:0,my_model_2/gru_2/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:???????????
!my_model_2/gru_2/gru_cell_2/add_2AddV2*my_model_2/gru_2/gru_cell_2/split:output:2#my_model_2/gru_2/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:???????????
"my_model_2/gru_2/gru_cell_2/Tanh_2Tanh%my_model_2/gru_2/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:???????????
!my_model_2/gru_2/gru_cell_2/mul_1Mul$my_model_2/gru_2/gru_cell_2/Tanh:y:0my_model_2/zeros:output:0*
T0*(
_output_shapes
:??????????f
!my_model_2/gru_2/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
my_model_2/gru_2/gru_cell_2/subSub*my_model_2/gru_2/gru_cell_2/sub/x:output:0$my_model_2/gru_2/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:???????????
!my_model_2/gru_2/gru_cell_2/mul_2Mul#my_model_2/gru_2/gru_cell_2/sub:z:0&my_model_2/gru_2/gru_cell_2/Tanh_2:y:0*
T0*(
_output_shapes
:???????????
!my_model_2/gru_2/gru_cell_2/add_3AddV2%my_model_2/gru_2/gru_cell_2/mul_1:z:0%my_model_2/gru_2/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:??????????
.my_model_2/gru_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
 my_model_2/gru_2/TensorArrayV2_1TensorListReserve7my_model_2/gru_2/TensorArrayV2_1/element_shape:output:0'my_model_2/gru_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???W
my_model_2/gru_2/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)my_model_2/gru_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????e
#my_model_2/gru_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
my_model_2/gru_2/whileWhile,my_model_2/gru_2/while/loop_counter:output:02my_model_2/gru_2/while/maximum_iterations:output:0my_model_2/gru_2/time:output:0)my_model_2/gru_2/TensorArrayV2_1:handle:0my_model_2/zeros:output:0'my_model_2/gru_2/strided_slice:output:0Hmy_model_2/gru_2/TensorArrayUnstack/TensorListFromTensor:output_handle:03my_model_2_gru_2_gru_cell_2_readvariableop_resource:my_model_2_gru_2_gru_cell_2_matmul_readvariableop_resource<my_model_2_gru_2_gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *-
body%R#
!my_model_2_gru_2_while_body_97000*-
cond%R#
!my_model_2_gru_2_while_cond_96999*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
Amy_model_2/gru_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
3my_model_2/gru_2/TensorArrayV2Stack/TensorListStackTensorListStackmy_model_2/gru_2/while:output:3Jmy_model_2/gru_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d??????????*
element_dtype0y
&my_model_2/gru_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????r
(my_model_2/gru_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(my_model_2/gru_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 my_model_2/gru_2/strided_slice_2StridedSlice<my_model_2/gru_2/TensorArrayV2Stack/TensorListStack:tensor:0/my_model_2/gru_2/strided_slice_2/stack:output:01my_model_2/gru_2/strided_slice_2/stack_1:output:01my_model_2/gru_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maskv
!my_model_2/gru_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
my_model_2/gru_2/transpose_1	Transpose<my_model_2/gru_2/TensorArrayV2Stack/TensorListStack:tensor:0*my_model_2/gru_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????d?l
my_model_2/gru_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
+my_model_2/dense_2/Tensordot/ReadVariableOpReadVariableOp4my_model_2_dense_2_tensordot_readvariableop_resource*
_output_shapes
:	?z*
dtype0k
!my_model_2/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!my_model_2/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       r
"my_model_2/dense_2/Tensordot/ShapeShape my_model_2/gru_2/transpose_1:y:0*
T0*
_output_shapes
:l
*my_model_2/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%my_model_2/dense_2/Tensordot/GatherV2GatherV2+my_model_2/dense_2/Tensordot/Shape:output:0*my_model_2/dense_2/Tensordot/free:output:03my_model_2/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,my_model_2/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'my_model_2/dense_2/Tensordot/GatherV2_1GatherV2+my_model_2/dense_2/Tensordot/Shape:output:0*my_model_2/dense_2/Tensordot/axes:output:05my_model_2/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"my_model_2/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
!my_model_2/dense_2/Tensordot/ProdProd.my_model_2/dense_2/Tensordot/GatherV2:output:0+my_model_2/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$my_model_2/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
#my_model_2/dense_2/Tensordot/Prod_1Prod0my_model_2/dense_2/Tensordot/GatherV2_1:output:0-my_model_2/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(my_model_2/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
#my_model_2/dense_2/Tensordot/concatConcatV2*my_model_2/dense_2/Tensordot/free:output:0*my_model_2/dense_2/Tensordot/axes:output:01my_model_2/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
"my_model_2/dense_2/Tensordot/stackPack*my_model_2/dense_2/Tensordot/Prod:output:0,my_model_2/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
&my_model_2/dense_2/Tensordot/transpose	Transpose my_model_2/gru_2/transpose_1:y:0,my_model_2/dense_2/Tensordot/concat:output:0*
T0*,
_output_shapes
:?????????d??
$my_model_2/dense_2/Tensordot/ReshapeReshape*my_model_2/dense_2/Tensordot/transpose:y:0+my_model_2/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
#my_model_2/dense_2/Tensordot/MatMulMatMul-my_model_2/dense_2/Tensordot/Reshape:output:03my_model_2/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????zn
$my_model_2/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:zl
*my_model_2/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%my_model_2/dense_2/Tensordot/concat_1ConcatV2.my_model_2/dense_2/Tensordot/GatherV2:output:0-my_model_2/dense_2/Tensordot/Const_2:output:03my_model_2/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
my_model_2/dense_2/TensordotReshape-my_model_2/dense_2/Tensordot/MatMul:product:0.my_model_2/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????dz?
)my_model_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp2my_model_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:z*
dtype0?
my_model_2/dense_2/BiasAddBiasAdd%my_model_2/dense_2/Tensordot:output:01my_model_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????dzv
IdentityIdentity#my_model_2/dense_2/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????dz?
NoOpNoOp*^my_model_2/dense_2/BiasAdd/ReadVariableOp,^my_model_2/dense_2/Tensordot/ReadVariableOp(^my_model_2/embedding_2/embedding_lookup2^my_model_2/gru_2/gru_cell_2/MatMul/ReadVariableOp4^my_model_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOp+^my_model_2/gru_2/gru_cell_2/ReadVariableOp^my_model_2/gru_2/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 2V
)my_model_2/dense_2/BiasAdd/ReadVariableOp)my_model_2/dense_2/BiasAdd/ReadVariableOp2Z
+my_model_2/dense_2/Tensordot/ReadVariableOp+my_model_2/dense_2/Tensordot/ReadVariableOp2R
'my_model_2/embedding_2/embedding_lookup'my_model_2/embedding_2/embedding_lookup2f
1my_model_2/gru_2/gru_cell_2/MatMul/ReadVariableOp1my_model_2/gru_2/gru_cell_2/MatMul/ReadVariableOp2j
3my_model_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOp3my_model_2/gru_2/gru_cell_2/MatMul_1/ReadVariableOp2X
*my_model_2/gru_2/gru_cell_2/ReadVariableOp*my_model_2/gru_2/gru_cell_2/ReadVariableOp20
my_model_2/gru_2/whilemy_model_2/gru_2/while:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_1
?
?
E__inference_my_model_2_layer_call_and_return_conditional_losses_98048
input_1	$
embedding_2_98018:	z?
gru_2_98034:	?
gru_2_98036:
??
gru_2_98038:
?? 
dense_2_98042:	?z
dense_2_98044:z
identity??dense_2/StatefulPartitionedCall?#embedding_2/StatefulPartitionedCall?gru_2/StatefulPartitionedCall?
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_2_98018*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????d?*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_2_layer_call_and_return_conditional_losses_97483a
ShapeShape,embedding_2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskN
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?_
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: O
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?Y

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: Q
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:???????????
gru_2/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0zeros:output:0gru_2_98034gru_2_98036gru_2_98038*
Tin	
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:?????????d?:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_gru_2_layer_call_and_return_conditional_losses_97879?
dense_2/StatefulPartitionedCallStatefulPartitionedCall&gru_2/StatefulPartitionedCall:output:0dense_2_98042dense_2_98044*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????dz*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_97684{
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????dz?
NoOpNoOp ^dense_2/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall^gru_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????d: : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2>
gru_2/StatefulPartitionedCallgru_2/StatefulPartitionedCall:P L
'
_output_shapes
:?????????d
!
_user_specified_name	input_1
?G
?
@__inference_gru_2_layer_call_and_return_conditional_losses_99015

inputs
initial_state_05
"gru_cell_2_readvariableop_resource:	?=
)gru_cell_2_matmul_readvariableop_resource:
???
+gru_cell_2_matmul_1_readvariableop_resource:
??
identity

identity_1?? gru_cell_2/MatMul/ReadVariableOp?"gru_cell_2/MatMul_1/ReadVariableOp?gru_cell_2/ReadVariableOp?whilec
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d??????????B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask}
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource*
_output_shapes
:	?*
dtype0w
gru_cell_2/unstackUnpack!gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num?
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
gru_cell_2/MatMulMatMulstrided_slice_1:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:??????????e
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
gru_cell_2/MatMul_1MatMulinitial_state_0*gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
gru_cell_2/BiasAdd_1BiasAddgru_cell_2/MatMul_1:product:0gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:??????????e
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????g
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
gru_cell_2/split_1SplitVgru_cell_2/BiasAdd_1:output:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:??????????^
gru_cell_2/TanhTanhgru_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:??????????b
gru_cell_2/Tanh_1Tanhgru_cell_2/add_1:z:0*
T0*(
_output_shapes
:??????????|
gru_cell_2/mulMulgru_cell_2/Tanh_1:y:0gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:??????????{
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/mul:z:0*
T0*(
_output_shapes
:??????????b
gru_cell_2/Tanh_2Tanhgru_cell_2/add_2:z:0*
T0*(
_output_shapes
:??????????p
gru_cell_2/mul_1Mulgru_cell_2/Tanh:y:0initial_state_0*
T0*(
_output_shapes
:??????????U
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??x
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:??????????u
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Tanh_2:y:0*
T0*(
_output_shapes
:??????????x
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:??????????n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0initial_state_0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_2_readvariableop_resource)gru_cell_2_matmul_readvariableop_resource+gru_cell_2_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_98925*
condR
while_cond_98924*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d??????????*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:?????????d?[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:?????????d?`

Identity_1Identitywhile:output:4^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????d?:??????????: : : 2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs:YU
(
_output_shapes
:??????????
)
_user_specified_nameinitial_state/0
?
?
while_cond_98924
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_98924___redundant_placeholder03
/while_while_cond_98924___redundant_placeholder13
/while_while_cond_98924___redundant_placeholder23
/while_while_cond_98924___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
B__inference_dense_2_layer_call_and_return_conditional_losses_99200

inputs4
!tensordot_readvariableop_resource:	?z-
biasadd_readvariableop_resource:z
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?z*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:?????????d??
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????z[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:zY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????dzr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:z*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????dzc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????dzz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????d?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:?????????d?
 
_user_specified_nameinputs
?	
?
%__inference_gru_2_layer_call_fn_98525
inputs_0
unknown:	?
	unknown_0:
??
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:???????????????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_gru_2_layer_call_and_return_conditional_losses_97456}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?

?
*__inference_gru_cell_2_layer_call_fn_99214

inputs
states_0
unknown:	?
	unknown_0:
??
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_97189p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?
?
while_body_97391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_gru_cell_2_97413_0:	?,
while_gru_cell_2_97415_0:
??,
while_gru_cell_2_97417_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_gru_cell_2_97413:	?*
while_gru_cell_2_97415:
??*
while_gru_cell_2_97417:
????(while/gru_cell_2/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
(while/gru_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_2_97413_0while_gru_cell_2_97415_0while_gru_cell_2_97417_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_97335?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/gru_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity1while/gru_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????w

while/NoOpNoOp)^while/gru_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "2
while_gru_cell_2_97413while_gru_cell_2_97413_0"2
while_gru_cell_2_97415while_gru_cell_2_97415_0"2
while_gru_cell_2_97417while_gru_cell_2_97417_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2T
(while/gru_cell_2/StatefulPartitionedCall(while/gru_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?Q
?
!my_model_2_gru_2_while_body_97000>
:my_model_2_gru_2_while_my_model_2_gru_2_while_loop_counterD
@my_model_2_gru_2_while_my_model_2_gru_2_while_maximum_iterations&
"my_model_2_gru_2_while_placeholder(
$my_model_2_gru_2_while_placeholder_1(
$my_model_2_gru_2_while_placeholder_2;
7my_model_2_gru_2_while_my_model_2_gru_2_strided_slice_0y
umy_model_2_gru_2_while_tensorarrayv2read_tensorlistgetitem_my_model_2_gru_2_tensorarrayunstack_tensorlistfromtensor_0N
;my_model_2_gru_2_while_gru_cell_2_readvariableop_resource_0:	?V
Bmy_model_2_gru_2_while_gru_cell_2_matmul_readvariableop_resource_0:
??X
Dmy_model_2_gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0:
??#
my_model_2_gru_2_while_identity%
!my_model_2_gru_2_while_identity_1%
!my_model_2_gru_2_while_identity_2%
!my_model_2_gru_2_while_identity_3%
!my_model_2_gru_2_while_identity_49
5my_model_2_gru_2_while_my_model_2_gru_2_strided_slicew
smy_model_2_gru_2_while_tensorarrayv2read_tensorlistgetitem_my_model_2_gru_2_tensorarrayunstack_tensorlistfromtensorL
9my_model_2_gru_2_while_gru_cell_2_readvariableop_resource:	?T
@my_model_2_gru_2_while_gru_cell_2_matmul_readvariableop_resource:
??V
Bmy_model_2_gru_2_while_gru_cell_2_matmul_1_readvariableop_resource:
????7my_model_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOp?9my_model_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp?0my_model_2/gru_2/while/gru_cell_2/ReadVariableOp?
Hmy_model_2/gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
:my_model_2/gru_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemumy_model_2_gru_2_while_tensorarrayv2read_tensorlistgetitem_my_model_2_gru_2_tensorarrayunstack_tensorlistfromtensor_0"my_model_2_gru_2_while_placeholderQmy_model_2/gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype0?
0my_model_2/gru_2/while/gru_cell_2/ReadVariableOpReadVariableOp;my_model_2_gru_2_while_gru_cell_2_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
)my_model_2/gru_2/while/gru_cell_2/unstackUnpack8my_model_2/gru_2/while/gru_cell_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num?
7my_model_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOpReadVariableOpBmy_model_2_gru_2_while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
(my_model_2/gru_2/while/gru_cell_2/MatMulMatMulAmy_model_2/gru_2/while/TensorArrayV2Read/TensorListGetItem:item:0?my_model_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)my_model_2/gru_2/while/gru_cell_2/BiasAddBiasAdd2my_model_2/gru_2/while/gru_cell_2/MatMul:product:02my_model_2/gru_2/while/gru_cell_2/unstack:output:0*
T0*(
_output_shapes
:??????????|
1my_model_2/gru_2/while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
'my_model_2/gru_2/while/gru_cell_2/splitSplit:my_model_2/gru_2/while/gru_cell_2/split/split_dim:output:02my_model_2/gru_2/while/gru_cell_2/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
9my_model_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOpDmy_model_2_gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype0?
*my_model_2/gru_2/while/gru_cell_2/MatMul_1MatMul$my_model_2_gru_2_while_placeholder_2Amy_model_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+my_model_2/gru_2/while/gru_cell_2/BiasAdd_1BiasAdd4my_model_2/gru_2/while/gru_cell_2/MatMul_1:product:02my_model_2/gru_2/while/gru_cell_2/unstack:output:1*
T0*(
_output_shapes
:??????????|
'my_model_2/gru_2/while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????~
3my_model_2/gru_2/while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)my_model_2/gru_2/while/gru_cell_2/split_1SplitV4my_model_2/gru_2/while/gru_cell_2/BiasAdd_1:output:00my_model_2/gru_2/while/gru_cell_2/Const:output:0<my_model_2/gru_2/while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split?
%my_model_2/gru_2/while/gru_cell_2/addAddV20my_model_2/gru_2/while/gru_cell_2/split:output:02my_model_2/gru_2/while/gru_cell_2/split_1:output:0*
T0*(
_output_shapes
:???????????
&my_model_2/gru_2/while/gru_cell_2/TanhTanh)my_model_2/gru_2/while/gru_cell_2/add:z:0*
T0*(
_output_shapes
:???????????
'my_model_2/gru_2/while/gru_cell_2/add_1AddV20my_model_2/gru_2/while/gru_cell_2/split:output:12my_model_2/gru_2/while/gru_cell_2/split_1:output:1*
T0*(
_output_shapes
:???????????
(my_model_2/gru_2/while/gru_cell_2/Tanh_1Tanh+my_model_2/gru_2/while/gru_cell_2/add_1:z:0*
T0*(
_output_shapes
:???????????
%my_model_2/gru_2/while/gru_cell_2/mulMul,my_model_2/gru_2/while/gru_cell_2/Tanh_1:y:02my_model_2/gru_2/while/gru_cell_2/split_1:output:2*
T0*(
_output_shapes
:???????????
'my_model_2/gru_2/while/gru_cell_2/add_2AddV20my_model_2/gru_2/while/gru_cell_2/split:output:2)my_model_2/gru_2/while/gru_cell_2/mul:z:0*
T0*(
_output_shapes
:???????????
(my_model_2/gru_2/while/gru_cell_2/Tanh_2Tanh+my_model_2/gru_2/while/gru_cell_2/add_2:z:0*
T0*(
_output_shapes
:???????????
'my_model_2/gru_2/while/gru_cell_2/mul_1Mul*my_model_2/gru_2/while/gru_cell_2/Tanh:y:0$my_model_2_gru_2_while_placeholder_2*
T0*(
_output_shapes
:??????????l
'my_model_2/gru_2/while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
%my_model_2/gru_2/while/gru_cell_2/subSub0my_model_2/gru_2/while/gru_cell_2/sub/x:output:0*my_model_2/gru_2/while/gru_cell_2/Tanh:y:0*
T0*(
_output_shapes
:???????????
'my_model_2/gru_2/while/gru_cell_2/mul_2Mul)my_model_2/gru_2/while/gru_cell_2/sub:z:0,my_model_2/gru_2/while/gru_cell_2/Tanh_2:y:0*
T0*(
_output_shapes
:???????????
'my_model_2/gru_2/while/gru_cell_2/add_3AddV2+my_model_2/gru_2/while/gru_cell_2/mul_1:z:0+my_model_2/gru_2/while/gru_cell_2/mul_2:z:0*
T0*(
_output_shapes
:???????????
;my_model_2/gru_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$my_model_2_gru_2_while_placeholder_1"my_model_2_gru_2_while_placeholder+my_model_2/gru_2/while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype0:???^
my_model_2/gru_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
my_model_2/gru_2/while/addAddV2"my_model_2_gru_2_while_placeholder%my_model_2/gru_2/while/add/y:output:0*
T0*
_output_shapes
: `
my_model_2/gru_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
my_model_2/gru_2/while/add_1AddV2:my_model_2_gru_2_while_my_model_2_gru_2_while_loop_counter'my_model_2/gru_2/while/add_1/y:output:0*
T0*
_output_shapes
: ?
my_model_2/gru_2/while/IdentityIdentity my_model_2/gru_2/while/add_1:z:0^my_model_2/gru_2/while/NoOp*
T0*
_output_shapes
: ?
!my_model_2/gru_2/while/Identity_1Identity@my_model_2_gru_2_while_my_model_2_gru_2_while_maximum_iterations^my_model_2/gru_2/while/NoOp*
T0*
_output_shapes
: ?
!my_model_2/gru_2/while/Identity_2Identitymy_model_2/gru_2/while/add:z:0^my_model_2/gru_2/while/NoOp*
T0*
_output_shapes
: ?
!my_model_2/gru_2/while/Identity_3IdentityKmy_model_2/gru_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^my_model_2/gru_2/while/NoOp*
T0*
_output_shapes
: ?
!my_model_2/gru_2/while/Identity_4Identity+my_model_2/gru_2/while/gru_cell_2/add_3:z:0^my_model_2/gru_2/while/NoOp*
T0*(
_output_shapes
:???????????
my_model_2/gru_2/while/NoOpNoOp8^my_model_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOp:^my_model_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp1^my_model_2/gru_2/while/gru_cell_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "?
Bmy_model_2_gru_2_while_gru_cell_2_matmul_1_readvariableop_resourceDmy_model_2_gru_2_while_gru_cell_2_matmul_1_readvariableop_resource_0"?
@my_model_2_gru_2_while_gru_cell_2_matmul_readvariableop_resourceBmy_model_2_gru_2_while_gru_cell_2_matmul_readvariableop_resource_0"x
9my_model_2_gru_2_while_gru_cell_2_readvariableop_resource;my_model_2_gru_2_while_gru_cell_2_readvariableop_resource_0"K
my_model_2_gru_2_while_identity(my_model_2/gru_2/while/Identity:output:0"O
!my_model_2_gru_2_while_identity_1*my_model_2/gru_2/while/Identity_1:output:0"O
!my_model_2_gru_2_while_identity_2*my_model_2/gru_2/while/Identity_2:output:0"O
!my_model_2_gru_2_while_identity_3*my_model_2/gru_2/while/Identity_3:output:0"O
!my_model_2_gru_2_while_identity_4*my_model_2/gru_2/while/Identity_4:output:0"p
5my_model_2_gru_2_while_my_model_2_gru_2_strided_slice7my_model_2_gru_2_while_my_model_2_gru_2_strided_slice_0"?
smy_model_2_gru_2_while_tensorarrayv2read_tensorlistgetitem_my_model_2_gru_2_tensorarrayunstack_tensorlistfromtensorumy_model_2_gru_2_while_tensorarrayv2read_tensorlistgetitem_my_model_2_gru_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2r
7my_model_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOp7my_model_2/gru_2/while/gru_cell_2/MatMul/ReadVariableOp2v
9my_model_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp9my_model_2/gru_2/while/gru_cell_2/MatMul_1/ReadVariableOp2d
0my_model_2/gru_2/while/gru_cell_2/ReadVariableOp0my_model_2/gru_2/while/gru_cell_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?	
?
%__inference_gru_2_layer_call_fn_98512
inputs_0
unknown:	?
	unknown_0:
??
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:???????????????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_gru_2_layer_call_and_return_conditional_losses_97267}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0	?????????d@
output_14
StatefulPartitionedCall:0?????????dztensorflow/serving/predict:?s
?
	embedding
gru
	dense
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
R__call__
*S&call_and_return_all_conditional_losses
T_default_save_signature"
_tf_keras_model
?


embeddings
	variables
trainable_variables
regularization_losses
	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
?
iter

beta_1

beta_2
	decay
learning_rate
mFmGmH mI!mJ"mK
vLvMvN vO!vP"vQ"
	optimizer
J

0
 1
!2
"3
4
5"
trackable_list_wrapper
J

0
 1
!2
"3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
#non_trainable_variables

$layers
%metrics
&layer_regularization_losses
'layer_metrics
	variables
trainable_variables
regularization_losses
R__call__
T_default_save_signature
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
,
[serving_default"
signature_map
4:2	z?2!my_model_2/embedding_2/embeddings
'

0"
trackable_list_wrapper
'

0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
?

 kernel
!recurrent_kernel
"bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

1states
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
,:*	?z2my_model_2/dense_2/kernel
%:#z2my_model_2/dense_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
6:4
??2"my_model_2/gru_2/gru_cell_2/kernel
@:>
??2,my_model_2/gru_2/gru_cell_2/recurrent_kernel
3:1	?2 my_model_2/gru_2/gru_cell_2/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
'
<0"
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
5
 0
!1
"2"
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
-	variables
.trainable_variables
/regularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
N
	Btotal
	Ccount
D	variables
E	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
B0
C1"
trackable_list_wrapper
-
D	variables"
_generic_user_object
9:7	z?2(Adam/my_model_2/embedding_2/embeddings/m
1:/	?z2 Adam/my_model_2/dense_2/kernel/m
*:(z2Adam/my_model_2/dense_2/bias/m
;:9
??2)Adam/my_model_2/gru_2/gru_cell_2/kernel/m
E:C
??23Adam/my_model_2/gru_2/gru_cell_2/recurrent_kernel/m
8:6	?2'Adam/my_model_2/gru_2/gru_cell_2/bias/m
9:7	z?2(Adam/my_model_2/embedding_2/embeddings/v
1:/	?z2 Adam/my_model_2/dense_2/kernel/v
*:(z2Adam/my_model_2/dense_2/bias/v
;:9
??2)Adam/my_model_2/gru_2/gru_cell_2/kernel/v
E:C
??23Adam/my_model_2/gru_2/gru_cell_2/recurrent_kernel/v
8:6	?2'Adam/my_model_2/gru_2/gru_cell_2/bias/v
?2?
*__inference_my_model_2_layer_call_fn_97706
*__inference_my_model_2_layer_call_fn_98090
*__inference_my_model_2_layer_call_fn_98107
*__inference_my_model_2_layer_call_fn_97982?
???
FullArgSpecC
args;?8
jself
jinputs
jstates
jreturn_state

jtraining
varargs
 
varkw
 
defaults?

 
p 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_my_model_2_layer_call_and_return_conditional_losses_98295
E__inference_my_model_2_layer_call_and_return_conditional_losses_98483
E__inference_my_model_2_layer_call_and_return_conditional_losses_98015
E__inference_my_model_2_layer_call_and_return_conditional_losses_98048?
???
FullArgSpecC
args;?8
jself
jinputs
jstates
jreturn_state

jtraining
varargs
 
varkw
 
defaults?

 
p 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_97115input_1"?
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
?2?
+__inference_embedding_2_layer_call_fn_98490?
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
F__inference_embedding_2_layer_call_and_return_conditional_losses_98499?
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
%__inference_gru_2_layer_call_fn_98512
%__inference_gru_2_layer_call_fn_98525
%__inference_gru_2_layer_call_fn_98539
%__inference_gru_2_layer_call_fn_98553?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
@__inference_gru_2_layer_call_and_return_conditional_losses_98711
@__inference_gru_2_layer_call_and_return_conditional_losses_98869
@__inference_gru_2_layer_call_and_return_conditional_losses_99015
@__inference_gru_2_layer_call_and_return_conditional_losses_99161?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_dense_2_layer_call_fn_99170?
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
B__inference_dense_2_layer_call_and_return_conditional_losses_99200?
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
?B?
#__inference_signature_wrapper_98073input_1"?
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
?2?
*__inference_gru_cell_2_layer_call_fn_99214
*__inference_gru_cell_2_layer_call_fn_99228?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_99267
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_99306?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
 ?
 __inference__wrapped_model_97115s
" !0?-
&?#
!?
input_1?????????d	
? "7?4
2
output_1&?#
output_1?????????dz?
B__inference_dense_2_layer_call_and_return_conditional_losses_99200e4?1
*?'
%?"
inputs?????????d?
? ")?&
?
0?????????dz
? ?
'__inference_dense_2_layer_call_fn_99170X4?1
*?'
%?"
inputs?????????d?
? "??????????dz?
F__inference_embedding_2_layer_call_and_return_conditional_losses_98499`
/?,
%?"
 ?
inputs?????????d	
? "*?'
 ?
0?????????d?
? ?
+__inference_embedding_2_layer_call_fn_98490S
/?,
%?"
 ?
inputs?????????d	
? "??????????d??
@__inference_gru_2_layer_call_and_return_conditional_losses_98711?" !P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "Z?W
P?M
+?(
0/0???????????????????
?
0/1??????????
? ?
@__inference_gru_2_layer_call_and_return_conditional_losses_98869?" !P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "Z?W
P?M
+?(
0/0???????????????????
?
0/1??????????
? ?
@__inference_gru_2_layer_call_and_return_conditional_losses_99015?" !m?j
c?`
%?"
inputs?????????d?

 
p 
/?,
*?'
initial_state/0??????????
? "Q?N
G?D
"?
0/0?????????d?
?
0/1??????????
? ?
@__inference_gru_2_layer_call_and_return_conditional_losses_99161?" !m?j
c?`
%?"
inputs?????????d?

 
p
/?,
*?'
initial_state/0??????????
? "Q?N
G?D
"?
0/0?????????d?
?
0/1??????????
? ?
%__inference_gru_2_layer_call_fn_98512?" !P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "L?I
)?&
0???????????????????
?
1???????????
%__inference_gru_2_layer_call_fn_98525?" !P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "L?I
)?&
0???????????????????
?
1???????????
%__inference_gru_2_layer_call_fn_98539?" !m?j
c?`
%?"
inputs?????????d?

 
p 
/?,
*?'
initial_state/0??????????
? "C?@
 ?
0?????????d?
?
1???????????
%__inference_gru_2_layer_call_fn_98553?" !m?j
c?`
%?"
inputs?????????d?

 
p
/?,
*?'
initial_state/0??????????
? "C?@
 ?
0?????????d?
?
1???????????
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_99267?" !^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p 
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_99306?" !^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
*__inference_gru_cell_2_layer_call_fn_99214?" !^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p 
? "F?C
?
0??????????
#? 
?
1/0???????????
*__inference_gru_cell_2_layer_call_fn_99228?" !^?[
T?Q
!?
inputs??????????
(?%
#? 
states/0??????????
p
? "F?C
?
0??????????
#? 
?
1/0???????????
E__inference_my_model_2_layer_call_and_return_conditional_losses_98015q
" !<?9
2?/
!?
input_1?????????d	

 
p 
p 
? ")?&
?
0?????????dz
? ?
E__inference_my_model_2_layer_call_and_return_conditional_losses_98048q
" !<?9
2?/
!?
input_1?????????d	

 
p 
p
? ")?&
?
0?????????dz
? ?
E__inference_my_model_2_layer_call_and_return_conditional_losses_98295p
" !;?8
1?.
 ?
inputs?????????d	

 
p 
p 
? ")?&
?
0?????????dz
? ?
E__inference_my_model_2_layer_call_and_return_conditional_losses_98483p
" !;?8
1?.
 ?
inputs?????????d	

 
p 
p
? ")?&
?
0?????????dz
? ?
*__inference_my_model_2_layer_call_fn_97706d
" !<?9
2?/
!?
input_1?????????d	

 
p 
p 
? "??????????dz?
*__inference_my_model_2_layer_call_fn_97982d
" !<?9
2?/
!?
input_1?????????d	

 
p 
p
? "??????????dz?
*__inference_my_model_2_layer_call_fn_98090c
" !;?8
1?.
 ?
inputs?????????d	

 
p 
p 
? "??????????dz?
*__inference_my_model_2_layer_call_fn_98107c
" !;?8
1?.
 ?
inputs?????????d	

 
p 
p
? "??????????dz?
#__inference_signature_wrapper_98073~
" !;?8
? 
1?.
,
input_1!?
input_1?????????d	"7?4
2
output_1&?#
output_1?????????dz