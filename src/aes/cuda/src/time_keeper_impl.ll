; ModuleID = 'time_keeper_impl.bc'
source_filename = "./src/common/time_measurement/time_keeper_impl.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.TimeKeeperImpl::Iterator" = type { %"class.TimeKeeper::Iterator", %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator" }
%"class.TimeKeeper::Iterator" = type { i32 (...)** }
%"struct.std::_Rb_tree_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%class.TimeKeeperImpl = type { %class.TimeKeeper, %"class.std::map", %class.Timer*, double }
%class.TimeKeeper = type { i32 (...)** }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%class.Timer = type { i32 (...)** }
%"struct.std::pair" = type { %"class.std::__cxx11::basic_string", double }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [40 x i8] }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { i32 (...)** }
%"struct.std::__cow_string" = type { %union.anon.6 }
%union.anon.6 = type { i8* }
%"class.std::unique_ptr" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.11" }
%"struct.std::_Head_base.11" = type { %"class.TimeKeeper::Iterator"* }

$_ZN14TimeKeeperImplD2Ev = comdat any

$_ZN14TimeKeeperImplD0Ev = comdat any

$_ZN14TimeKeeperImpl8IteratorD0Ev = comdat any

$_ZN10TimeKeeper8IteratorD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_emplace_uniqueIJRPKciEEES6_ISt17_Rb_tree_iteratorIS8_EbEDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRPKciEEEvPSt13_Rb_tree_nodeIS8_EDpOT_ = comdat any

$_ZTS10TimeKeeper = comdat any

$_ZTI10TimeKeeper = comdat any

$_ZTSN10TimeKeeper8IteratorE = comdat any

$_ZTIN10TimeKeeper8IteratorE = comdat any

@_ZTVN14TimeKeeperImpl8IteratorE = dso_local unnamed_addr constant { [6 x i8*] } { [6 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN14TimeKeeperImpl8IteratorE to i8*), i8* bitcast (void (%"class.TimeKeeper::Iterator"*)* @_ZN10TimeKeeper8IteratorD2Ev to i8*), i8* bitcast (void (%"class.TimeKeeperImpl::Iterator"*)* @_ZN14TimeKeeperImpl8IteratorD0Ev to i8*), i8* bitcast (i1 (%"class.TimeKeeperImpl::Iterator"*)* @_ZN14TimeKeeperImpl8Iterator7HasNextEv to i8*), i8* bitcast (void (%"struct.std::pair"*, %"class.TimeKeeperImpl::Iterator"*)* @_ZN14TimeKeeperImpl8Iterator4NextB5cxx11Ev to i8*)] }, align 8
@_ZTV14TimeKeeperImpl = dso_local unnamed_addr constant { [8 x i8*] } { [8 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI14TimeKeeperImpl to i8*), i8* bitcast (void (%class.TimeKeeperImpl*)* @_ZN14TimeKeeperImplD2Ev to i8*), i8* bitcast (void (%class.TimeKeeperImpl*)* @_ZN14TimeKeeperImplD0Ev to i8*), i8* bitcast (void (%class.TimeKeeperImpl*)* @_ZN14TimeKeeperImpl5StartEv to i8*), i8* bitcast (void (%class.TimeKeeperImpl*, i8**, i64)* @_ZN14TimeKeeperImpl3EndESt16initializer_listIPKcE to i8*), i8* bitcast (void (%"class.std::unique_ptr"*, %class.TimeKeeperImpl*)* @_ZN14TimeKeeperImpl19GetCatagoryIteratorEv to i8*), i8* bitcast (double (%class.TimeKeeperImpl*, i8*)* @_ZN14TimeKeeperImpl7GetTimeEPKc to i8*)] }, align 8
@.str = private unnamed_addr constant [26 x i8] c"Timer is already running.\00", align 1
@_ZTISt13runtime_error = external dso_local constant i8*
@.str.1 = private unnamed_addr constant [28 x i8] c"Timer has not been started.\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS14TimeKeeperImpl = dso_local constant [17 x i8] c"14TimeKeeperImpl\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTS10TimeKeeper = linkonce_odr dso_local constant [13 x i8] c"10TimeKeeper\00", comdat, align 1
@_ZTI10TimeKeeper = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @_ZTS10TimeKeeper, i32 0, i32 0) }, comdat, align 8
@_ZTI14TimeKeeperImpl = dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_ZTS14TimeKeeperImpl, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI10TimeKeeper to i8*) }, align 8
@_ZTSN14TimeKeeperImpl8IteratorE = dso_local constant [28 x i8] c"N14TimeKeeperImpl8IteratorE\00", align 1
@_ZTSN10TimeKeeper8IteratorE = linkonce_odr dso_local constant [24 x i8] c"N10TimeKeeper8IteratorE\00", comdat, align 1
@_ZTIN10TimeKeeper8IteratorE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @_ZTSN10TimeKeeper8IteratorE, i32 0, i32 0) }, comdat, align 8
@_ZTIN14TimeKeeperImpl8IteratorE = dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTSN14TimeKeeperImpl8IteratorE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN10TimeKeeper8IteratorE to i8*) }, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"basic_string::_M_construct null not valid\00", align 1

@_ZN14TimeKeeperImpl8IteratorC1ESt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEESB_ = dso_local unnamed_addr alias void (%"class.TimeKeeperImpl::Iterator"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*), void (%"class.TimeKeeperImpl::Iterator"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*)* @_ZN14TimeKeeperImpl8IteratorC2ESt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEESB_
@_ZN14TimeKeeperImplC1EP5Timer = dso_local unnamed_addr alias void (%class.TimeKeeperImpl*, %class.Timer*), void (%class.TimeKeeperImpl*, %class.Timer*)* @_ZN14TimeKeeperImplC2EP5Timer

; Function Attrs: nofree norecurse nounwind uwtable writeonly
define dso_local void @_ZN14TimeKeeperImpl8IteratorC2ESt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEESB_(%"class.TimeKeeperImpl::Iterator"* nocapture %this, %"struct.std::_Rb_tree_node_base"* %begin.coerce, %"struct.std::_Rb_tree_node_base"* %end.coerce) unnamed_addr #0 align 2 {
entry:
  %0 = getelementptr %"class.TimeKeeperImpl::Iterator", %"class.TimeKeeperImpl::Iterator"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [6 x i8*] }, { [6 x i8*] }* @_ZTVN14TimeKeeperImpl8IteratorE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !2
  %begin.sroa.0.0..sroa_idx = getelementptr inbounds %"class.TimeKeeperImpl::Iterator", %"class.TimeKeeperImpl::Iterator"* %this, i64 0, i32 1, i32 0
  store %"struct.std::_Rb_tree_node_base"* %begin.coerce, %"struct.std::_Rb_tree_node_base"** %begin.sroa.0.0..sroa_idx, align 8, !tbaa.struct !5
  %begin.sroa.0.0..sroa_idx3 = getelementptr inbounds %"class.TimeKeeperImpl::Iterator", %"class.TimeKeeperImpl::Iterator"* %this, i64 0, i32 2, i32 0
  store %"struct.std::_Rb_tree_node_base"* %begin.coerce, %"struct.std::_Rb_tree_node_base"** %begin.sroa.0.0..sroa_idx3, align 8, !tbaa.struct !5
  %end.sroa.0.0..sroa_idx = getelementptr inbounds %"class.TimeKeeperImpl::Iterator", %"class.TimeKeeperImpl::Iterator"* %this, i64 0, i32 3, i32 0
  store %"struct.std::_Rb_tree_node_base"* %end.coerce, %"struct.std::_Rb_tree_node_base"** %end.sroa.0.0..sroa_idx, align 8, !tbaa.struct !5
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: norecurse nounwind readonly uwtable
define dso_local zeroext i1 @_ZN14TimeKeeperImpl8Iterator7HasNextEv(%"class.TimeKeeperImpl::Iterator"* nocapture readonly %this) unnamed_addr #2 align 2 {
entry:
  %_M_node.i = getelementptr inbounds %"class.TimeKeeperImpl::Iterator", %"class.TimeKeeperImpl::Iterator"* %this, i64 0, i32 2, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node.i, align 8, !tbaa !9
  %_M_node2.i = getelementptr inbounds %"class.TimeKeeperImpl::Iterator", %"class.TimeKeeperImpl::Iterator"* %this, i64 0, i32 3, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node2.i, align 8, !tbaa !9
  %cmp.i = icmp ne %"struct.std::_Rb_tree_node_base"* %0, %1
  ret i1 %cmp.i
}

; Function Attrs: uwtable
define dso_local void @_ZN14TimeKeeperImpl8Iterator4NextB5cxx11Ev(%"struct.std::pair"* noalias sret %agg.result, %"class.TimeKeeperImpl::Iterator"* nocapture %this) unnamed_addr #3 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %__dnew.i.i.i.i.i = alloca i64, align 8
  %iterator_ = getelementptr inbounds %"class.TimeKeeperImpl::Iterator", %"class.TimeKeeperImpl::Iterator"* %this, i64 0, i32 2
  %0 = bitcast %"struct.std::_Rb_tree_iterator"* %iterator_ to %"struct.std::_Rb_tree_node"**
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %0, align 8, !tbaa !9
  %_M_storage.i.i = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %1, i64 0, i32 1
  %second = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %1, i64 0, i32 1, i32 0, i64 32
  %first.i = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 0
  %2 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 0, i32 2
  %3 = bitcast %"struct.std::pair"* %agg.result to %union.anon**
  store %union.anon* %2, %union.anon** %3, align 8, !tbaa !11
  %_M_p.i15.i.i = bitcast %"struct.__gnu_cxx::__aligned_membuf"* %_M_storage.i.i to i8**
  %4 = load i8*, i8** %_M_p.i15.i.i, align 8, !tbaa !13
  %_M_string_length.i.i.i = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %1, i64 0, i32 1, i32 0, i64 8
  %5 = bitcast i8* %_M_string_length.i.i.i to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !16
  %cmp.i.i.i.i.i.i = icmp ne i8* %4, null
  %cmp.i.i.i.i.i = icmp eq i64 %6, 0
  %or.cond.i.i.i.i.i = or i1 %cmp.i.i.i.i.i.i, %cmp.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %entry
  tail call void @_ZSt19__throw_logic_errorPKc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0)) #16
  unreachable

if.end.i.i.i.i.i:                                 ; preds = %entry
  %7 = bitcast %union.anon* %2 to i8*
  %8 = bitcast i64* %__dnew.i.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #17
  store i64 %6, i64* %__dnew.i.i.i.i.i, align 8, !tbaa !17
  %cmp3.i.i.i.i.i = icmp ugt i64 %6, 15
  br i1 %cmp3.i.i.i.i.i, label %if.then4.i.i.i.i.i, label %if.end6.i.i.i.i.i

if.then4.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i
  %call5.i.i.i14.i.i = call i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull %first.i, i64* nonnull dereferenceable(8) %__dnew.i.i.i.i.i, i64 0)
  %_M_p.i18.i.i.i.i.i = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 0, i32 0, i32 0
  store i8* %call5.i.i.i14.i.i, i8** %_M_p.i18.i.i.i.i.i, align 8, !tbaa !13
  %9 = load i64, i64* %__dnew.i.i.i.i.i, align 8, !tbaa !17
  %_M_allocated_capacity.i.i.i.i.i.i = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i.i.i.i, align 8, !tbaa !18
  br label %if.end6.i.i.i.i.i

if.end6.i.i.i.i.i:                                ; preds = %if.then4.i.i.i.i.i, %if.end.i.i.i.i.i
  %10 = phi i8* [ %call5.i.i.i14.i.i, %if.then4.i.i.i.i.i ], [ %7, %if.end.i.i.i.i.i ]
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 0, i32 0, i32 0
  switch i64 %6, label %if.end.i.i.i.i.i.i.i.i [
    i64 1, label %if.then.i.i.i.i.i.i.i
    i64 0, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IRdLb1EEERKS5_OT_.exit
  ]

if.then.i.i.i.i.i.i.i:                            ; preds = %if.end6.i.i.i.i.i
  %11 = load i8, i8* %4, align 1, !tbaa !18
  store i8 %11, i8* %10, align 1, !tbaa !18
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IRdLb1EEERKS5_OT_.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end6.i.i.i.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 %4, i64 %6, i1 false) #17
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IRdLb1EEERKS5_OT_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IRdLb1EEERKS5_OT_.exit: ; preds = %if.end6.i.i.i.i.i, %if.then.i.i.i.i.i.i.i, %if.end.i.i.i.i.i.i.i.i
  %12 = load i64, i64* %__dnew.i.i.i.i.i, align 8, !tbaa !17
  %_M_string_length.i.i.i.i.i.i.i = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 0, i32 1
  store i64 %12, i64* %_M_string_length.i.i.i.i.i.i.i, align 8, !tbaa !16
  %13 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !13
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds i8, i8* %13, i64 %12
  store i8 0, i8* %arrayidx.i.i.i.i.i.i, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #17
  %second.i = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %agg.result, i64 0, i32 1
  %14 = bitcast i8* %second to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !19
  %16 = bitcast double* %second.i to i64*
  store i64 %15, i64* %16, align 8, !tbaa !21
  %retval.sroa.0.0..sroa_idx.i = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %iterator_, i64 0, i32 0
  %retval.sroa.0.0.copyload.i = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %retval.sroa.0.0..sroa_idx.i, align 8
  %call.i = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %retval.sroa.0.0.copyload.i) #18
  store %"struct.std::_Rb_tree_node_base"* %call.i, %"struct.std::_Rb_tree_node_base"** %retval.sroa.0.0..sroa_idx.i, align 8, !tbaa !9
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable writeonly
define dso_local void @_ZN14TimeKeeperImplC2EP5Timer(%class.TimeKeeperImpl* %this, %class.Timer* %timer) unnamed_addr #0 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr %class.TimeKeeperImpl, %class.TimeKeeperImpl* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV14TimeKeeperImpl, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !2
  %1 = getelementptr inbounds %class.TimeKeeperImpl, %class.TimeKeeperImpl* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0
  %2 = getelementptr inbounds i8, i8* %1, i64 8
  %_M_color.i.i.i.i = bitcast i8* %2 to i32*
  store i32 0, i32* %_M_color.i.i.i.i, align 8, !tbaa !23
  %_M_parent.i.i.i.i.i = getelementptr inbounds i8, i8* %1, i64 16
  %3 = bitcast i8* %_M_parent.i.i.i.i.i to %"struct.std::_Rb_tree_node_base"**
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %3, align 8, !tbaa !27
  %_M_left.i.i.i.i.i = getelementptr inbounds i8, i8* %1, i64 24
  %4 = bitcast i8* %_M_left.i.i.i.i.i to i8**
  store i8* %2, i8** %4, align 8, !tbaa !28
  %_M_right.i.i.i.i.i = getelementptr inbounds i8, i8* %1, i64 32
  %5 = bitcast i8* %_M_right.i.i.i.i.i to i8**
  store i8* %2, i8** %5, align 8, !tbaa !29
  %_M_node_count.i.i.i.i.i = getelementptr inbounds i8, i8* %1, i64 40
  %6 = bitcast i8* %_M_node_count.i.i.i.i.i to i64*
  store i64 0, i64* %6, align 8, !tbaa !30
  %timer_ = getelementptr inbounds %class.TimeKeeperImpl, %class.TimeKeeperImpl* %this, i64 0, i32 2
  store %class.Timer* %timer, %class.Timer** %timer_, align 8, !tbaa !31
  %start_time_ = getelementptr inbounds %class.TimeKeeperImpl, %class.TimeKeeperImpl* %this, i64 0, i32 3
  store double -1.000000e+00, double* %start_time_, align 8, !tbaa !36
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN14TimeKeeperImpl5StartEv(%class.TimeKeeperImpl* nocapture %this) unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %start_time_ = getelementptr inbounds %class.TimeKeeperImpl, %class.TimeKeeperImpl* %this, i64 0, i32 3
  %0 = load double, double* %start_time_, align 8, !tbaa !36
  %cmp = fcmp ogt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 16) #17
  %1 = bitcast i8* %exception to %"class.std::runtime_error"*
  invoke void @_ZNSt13runtime_errorC1EPKc(%"class.std::runtime_error"* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  tail call void @__cxa_throw(i8* %exception, i8* bitcast (i8** @_ZTISt13runtime_error to i8*), i8* bitcast (void (%"class.std::runtime_error"*)* @_ZNSt13runtime_errorD1Ev to i8*)) #16
  unreachable

lpad:                                             ; preds = %if.then
  %2 = landingpad { i8*, i32 }
          cleanup
  tail call void @__cxa_free_exception(i8* %exception) #17
  resume { i8*, i32 } %2

if.end:                                           ; preds = %entry
  %timer_ = getelementptr inbounds %class.TimeKeeperImpl, %class.TimeKeeperImpl* %this, i64 0, i32 2
  %3 = load %class.Timer*, %class.Timer** %timer_, align 8, !tbaa !31
  %4 = bitcast %class.Timer* %3 to double (%class.Timer*)***
  %vtable = load double (%class.Timer*)**, double (%class.Timer*)*** %4, align 8, !tbaa !2
  %5 = load double (%class.Timer*)*, double (%class.Timer*)** %vtable, align 8
  %call = tail call double %5(%class.Timer* %3)
  store double %call, double* %start_time_, align 8, !tbaa !36
  ret void
}

declare dso_local i8* @__cxa_allocate_exception(i64) local_unnamed_addr

declare dso_local void @_ZNSt13runtime_errorC1EPKc(%"class.std::runtime_error"*, i8*) unnamed_addr #4

declare dso_local i32 @__gxx_personality_v0(...)

declare dso_local void @__cxa_free_exception(i8*) local_unnamed_addr

; Function Attrs: nounwind
declare dso_local void @_ZNSt13runtime_errorD1Ev(%"class.std::runtime_error"*) unnamed_addr #5

declare dso_local void @__cxa_throw(i8*, i8*, i8*) local_unnamed_addr

; Function Attrs: uwtable
define dso_local void @_ZN14TimeKeeperImpl3EndESt16initializer_listIPKcE(%class.TimeKeeperImpl* %this, i8** %catagory_names.coerce0, i64 %catagory_names.coerce1) unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i149 = alloca i64, align 8
  %__dnew.i.i.i.i = alloca i64, align 8
  %catagory_name = alloca i8*, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp22 = alloca i32, align 4
  %ref.tmp26 = alloca %"class.std::__cxx11::basic_string", align 8
  %start_time_ = getelementptr inbounds %class.TimeKeeperImpl, %class.TimeKeeperImpl* %this, i64 0, i32 3
  %0 = load double, double* %start_time_, align 8, !tbaa !36
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 16) #17
  %1 = bitcast i8* %exception to %"class.std::runtime_error"*
  invoke void @_ZNSt13runtime_errorC1EPKc(%"class.std::runtime_error"* %1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  tail call void @__cxa_throw(i8* %exception, i8* bitcast (i8** @_ZTISt13runtime_error to i8*), i8* bitcast (void (%"class.std::runtime_error"*)* @_ZNSt13runtime_errorD1Ev to i8*)) #16
  unreachable

lpad:                                             ; preds = %if.then
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  tail call void @__cxa_free_exception(i8* %exception) #17
  br label %eh.resume

if.end:                                           ; preds = %entry
  %timer_ = getelementptr inbounds %class.TimeKeeperImpl, %class.TimeKeeperImpl* %this, i64 0, i32 2
  %5 = load %class.Timer*, %class.Timer** %timer_, align 8, !tbaa !31
  %6 = bitcast %class.Timer* %5 to double (%class.Timer*)***
  %vtable = load double (%class.Timer*)**, double (%class.Timer*)*** %6, align 8, !tbaa !2
  %7 = load double (%class.Timer*)*, double (%class.Timer*)** %vtable, align 8
  %call = tail call double %7(%class.Timer* %5)
  %8 = load double, double* %start_time_, align 8, !tbaa !36
  %sub = fsub double %call, %8
  store double -1.000000e+00, double* %start_time_, align 8, !tbaa !36
  %add.ptr.i = getelementptr inbounds i8*, i8** %catagory_names.coerce0, i64 %catagory_names.coerce1
  %cmp6185 = icmp eq i64 %catagory_names.coerce1, 0
  br i1 %cmp6185, label %for.cond.cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %9 = bitcast i8** %catagory_name to i8*
  %10 = bitcast i8** %catagory_name to i64*
  %time_catagories_ = getelementptr inbounds %class.TimeKeeperImpl, %class.TimeKeeperImpl* %this, i64 0, i32 1
  %11 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %13 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  %14 = bitcast %union.anon* %12 to i8*
  %15 = bitcast i64* %__dnew.i.i.i.i to i8*
  %_M_p.i18.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  %_M_t.i = getelementptr inbounds %"class.std::map", %"class.std::map"* %time_catagories_, i64 0, i32 0
  %16 = getelementptr inbounds %"class.std::map", %"class.std::map"* %time_catagories_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %_M_parent.i.i = getelementptr inbounds i8, i8* %16, i64 16
  %17 = bitcast i8* %_M_parent.i.i to %"struct.std::_Rb_tree_node"**
  %add.ptr.i13.i = getelementptr inbounds i8, i8* %16, i64 8
  %_M_header.i14.i = bitcast i8* %add.ptr.i13.i to %"struct.std::_Rb_tree_node_base"*
  %18 = bitcast i32* %ref.tmp22 to i8*
  %19 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp26 to i8*
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp26, i64 0, i32 2
  %21 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp26 to %union.anon**
  %22 = bitcast %union.anon* %20 to i8*
  %23 = bitcast i64* %__dnew.i.i.i.i149 to i8*
  %_M_p.i18.i.i.i.i155 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp26, i64 0, i32 0, i32 0
  %_M_allocated_capacity.i.i.i.i.i156 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp26, i64 0, i32 2, i32 0
  %_M_string_length.i.i.i.i.i.i162 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp26, i64 0, i32 1
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end39, %if.end
  ret void

for.body:                                         ; preds = %for.body.lr.ph, %if.end39
  %__begin1.0186 = phi i8** [ %catagory_names.coerce0, %for.body.lr.ph ], [ %incdec.ptr, %if.end39 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #17
  %24 = bitcast i8** %__begin1.0186 to i64*
  %25 = load i64, i64* %24, align 8, !tbaa !6
  store i64 %25, i64* %10, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #17
  %.cast = inttoptr i64 %25 to i8*
  store %union.anon* %12, %union.anon** %13, align 8, !tbaa !11
  %tobool.i = icmp eq i64 %25, 0
  br i1 %tobool.i, label %if.then.i.i.i.i, label %cond.end.thread.i

cond.end.thread.i:                                ; preds = %for.body
  %call.i.i = call i64 @strlen(i8* nonnull dereferenceable(1) %.cast) #17
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #17
  store i64 %call.i.i, i64* %__dnew.i.i.i.i, align 8, !tbaa !17
  %cmp3.i.i.i.i = icmp ugt i64 %call.i.i, 15
  br i1 %cmp3.i.i.i.i, label %if.then4.i.i.i.i, label %if.end6.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body
  invoke void @_ZSt19__throw_logic_errorPKc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0)) #16
          to label %.noexc unwind label %lpad8.loopexit.split-lp

.noexc:                                           ; preds = %if.then.i.i.i.i
  unreachable

if.then4.i.i.i.i:                                 ; preds = %cond.end.thread.i
  %call5.i.i.i9.i74 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull %ref.tmp, i64* nonnull dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %lpad8.loopexit

call5.i.i.i9.i.noexc:                             ; preds = %if.then4.i.i.i.i
  store i8* %call5.i.i.i9.i74, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !13
  %26 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !17
  store i64 %26, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !18
  br label %if.end6.i.i.i.i

if.end6.i.i.i.i:                                  ; preds = %call5.i.i.i9.i.noexc, %cond.end.thread.i
  %27 = phi i8* [ %call5.i.i.i9.i74, %call5.i.i.i9.i.noexc ], [ %14, %cond.end.thread.i ]
  switch i64 %call.i.i, label %if.end.i.i.i.i.i.i.i [
    i64 1, label %if.then.i.i.i.i.i.i
    i64 0, label %invoke.cont9
  ]

if.then.i.i.i.i.i.i:                              ; preds = %if.end6.i.i.i.i
  %28 = load i8, i8* %.cast, align 1, !tbaa !18
  store i8 %28, i8* %27, align 1, !tbaa !18
  br label %invoke.cont9

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end6.i.i.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* nonnull align 1 %.cast, i64 %call.i.i, i1 false) #17
  br label %invoke.cont9

invoke.cont9:                                     ; preds = %if.end.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i, %if.end6.i.i.i.i
  %29 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !17
  store i64 %29, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !16
  %30 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !13
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %30, i64 %29
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #17
  %31 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %17, align 8, !tbaa !27
  %cmp10.i.i = icmp eq %"struct.std::_Rb_tree_node"* %31, null
  br i1 %cmp10.i.i, label %invoke.cont9.invoke.cont11_crit_edge, label %while.body.lr.ph.i.i

invoke.cont9.invoke.cont11_crit_edge:             ; preds = %invoke.cont9
  %.pre = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !13
  br label %invoke.cont11

while.body.lr.ph.i.i:                             ; preds = %invoke.cont9
  %32 = load i64, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !16
  %33 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i, %while.body.lr.ph.i.i
  %__x.addr.012.i.i = phi %"struct.std::_Rb_tree_node"* [ %31, %while.body.lr.ph.i.i ], [ %__x.addr.1.i.i, %if.end.i.i ]
  %__y.addr.011.i.i = phi %"struct.std::_Rb_tree_node_base"* [ %_M_header.i14.i, %while.body.lr.ph.i.i ], [ %__y.addr.1.i.i, %if.end.i.i ]
  %_M_string_length.i.i.i.i.i.i76 = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__x.addr.012.i.i, i64 0, i32 1, i32 0, i64 8
  %34 = bitcast i8* %_M_string_length.i.i.i.i.i.i76 to i64*
  %35 = load i64, i64* %34, align 8, !tbaa !16
  %cmp.i15.i.i.i.i.i = icmp ugt i64 %35, %32
  %.sroa.speculated.i.i.i.i.i = select i1 %cmp.i15.i.i.i.i.i, i64 %32, i64 %35
  %cmp.i13.i.i.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %cmp.i13.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %while.body.i.i
  %_M_storage.i.i.i.i.i = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__x.addr.012.i.i, i64 0, i32 1
  %_M_p.i.i.i.i.i17.i = bitcast %"struct.__gnu_cxx::__aligned_membuf"* %_M_storage.i.i.i.i.i to i8**
  %36 = load i8*, i8** %_M_p.i.i.i.i.i17.i, align 8, !tbaa !13
  %call.i.i.i.i.i.i = call i32 @memcmp(i8* %36, i8* %33, i64 %.sroa.speculated.i.i.i.i.i) #17
  %tobool.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i.i, 0
  br i1 %tobool.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %while.body.i.i
  %sub.i.i.i.i.i.i = sub i64 %35, %32
  %cmp.i.i.i.i.i.i = icmp sgt i64 %sub.i.i.i.i.i.i, 2147483647
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i77, label %if.else.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  %37 = icmp sgt i64 %sub.i.i.i.i.i.i, -2147483648
  %spec.select7.i.i.i.i.i.i = select i1 %37, i64 %sub.i.i.i.i.i.i, i64 -2147483648
  %38 = trunc i64 %spec.select7.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %if.else.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %__r.0.i.i.i.i.i = phi i32 [ %call.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %38, %if.else.i.i.i.i.i.i ]
  %cmp.i.i.i.i = icmp slt i32 %__r.0.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.else.i.i, label %if.then.i.i77

if.then.i.i77:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %if.then.i.i.i.i.i
  %39 = getelementptr %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__x.addr.012.i.i, i64 0, i32 0
  %_M_left.i.i.i = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__x.addr.012.i.i, i64 0, i32 0, i32 2
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %_M_right.i.i.i = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__x.addr.012.i.i, i64 0, i32 0, i32 3
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i77
  %__y.addr.1.i.i = phi %"struct.std::_Rb_tree_node_base"* [ %__y.addr.011.i.i, %if.else.i.i ], [ %39, %if.then.i.i77 ]
  %__x.addr.1.in.in.i.i = phi %"struct.std::_Rb_tree_node_base"** [ %_M_right.i.i.i, %if.else.i.i ], [ %_M_left.i.i.i, %if.then.i.i77 ]
  %__x.addr.1.in.i.i = bitcast %"struct.std::_Rb_tree_node_base"** %__x.addr.1.in.in.i.i to %"struct.std::_Rb_tree_node"**
  %__x.addr.1.i.i = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr.1.in.i.i, align 8, !tbaa !6
  %cmp.i18.i = icmp eq %"struct.std::_Rb_tree_node"* %__x.addr.1.i.i, null
  br i1 %cmp.i18.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i, label %while.body.i.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i: ; preds = %if.end.i.i
  %cmp.i.i = icmp eq %"struct.std::_Rb_tree_node_base"* %__y.addr.1.i.i, %_M_header.i14.i
  br i1 %cmp.i.i, label %invoke.cont11, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i
  %_M_string_length.i14.i.i.i.i = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %__y.addr.1.i.i, i64 1, i32 1
  %40 = bitcast %"struct.std::_Rb_tree_node_base"** %_M_string_length.i14.i.i.i.i to i64*
  %41 = load i64, i64* %40, align 8, !tbaa !16
  %cmp.i15.i.i.i.i = icmp ugt i64 %32, %41
  %.sroa.speculated.i.i.i.i = select i1 %cmp.i15.i.i.i.i, i64 %41, i64 %32
  %cmp.i13.i.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %cmp.i13.i.i.i.i, label %if.then.i.i.i.i78, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %lor.lhs.false.i
  %_M_storage.i.i.i.i = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %__y.addr.1.i.i, i64 1
  %_M_p.i.i.i.i.i.i = bitcast %"struct.std::_Rb_tree_node_base"* %_M_storage.i.i.i.i to i8**
  %42 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !13
  %call.i.i.i.i.i = call i32 @memcmp(i8* %33, i8* %42, i64 %.sroa.speculated.i.i.i.i) #17
  %tobool.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.i.i.i.i, label %if.then.i.i.i.i78, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

if.then.i.i.i.i78:                                ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %lor.lhs.false.i
  %sub.i.i.i.i.i = sub i64 %32, %41
  %cmp.i.i.i.i.i = icmp sgt i64 %sub.i.i.i.i.i, 2147483647
  br i1 %cmp.i.i.i.i.i, label %cond.false.i, label %if.else.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i78
  %43 = icmp sgt i64 %sub.i.i.i.i.i, -2147483648
  %spec.select7.i.i.i.i.i = select i1 %43, i64 %sub.i.i.i.i.i, i64 -2147483648
  %44 = trunc i64 %spec.select7.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %if.else.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %__r.0.i.i.i.i = phi i32 [ %call.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %44, %if.else.i.i.i.i.i ]
  %cmp.i.i.i79 = icmp slt i32 %__r.0.i.i.i.i, 0
  br i1 %cmp.i.i.i79, label %invoke.cont11, label %cond.false.i

cond.false.i:                                     ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %if.then.i.i.i.i78
  br label %invoke.cont11

invoke.cont11:                                    ; preds = %invoke.cont9.invoke.cont11_crit_edge, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %cond.false.i
  %45 = phi i8* [ %33, %cond.false.i ], [ %33, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %33, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i ], [ %.pre, %invoke.cont9.invoke.cont11_crit_edge ]
  %retval.sroa.0.0.i = phi %"struct.std::_Rb_tree_node_base"* [ %__y.addr.1.i.i, %cond.false.i ], [ %_M_header.i14.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %_M_header.i14.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i ], [ %_M_header.i14.i, %invoke.cont9.invoke.cont11_crit_edge ]
  %cmp.i.i.i82 = icmp eq i8* %45, %14
  br i1 %cmp.i.i.i82, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %if.then.i.i83

if.then.i.i83:                                    ; preds = %invoke.cont11
  call void @_ZdlPv(i8* %45) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %invoke.cont11, %if.then.i.i83
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #17
  %cmp.i = icmp eq %"struct.std::_Rb_tree_node_base"* %retval.sroa.0.0.i, %_M_header.i14.i
  br i1 %cmp.i, label %if.then20, label %if.end39

if.then20:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #17
  store i32 0, i32* %ref.tmp22, align 4, !tbaa !37
  %call5.i = call { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_emplace_uniqueIJRPKciEEES6_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(%"class.std::_Rb_tree"* nonnull %_M_t.i, i8** nonnull dereferenceable(8) %catagory_name, i32* nonnull dereferenceable(4) %ref.tmp22)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #17
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %19) #17
  %46 = load i8*, i8** %catagory_name, align 8, !tbaa !6
  store %union.anon* %20, %union.anon** %21, align 8, !tbaa !11
  %tobool.i150 = icmp eq i8* %46, null
  br i1 %tobool.i150, label %if.then.i.i.i.i154, label %cond.end.thread.i153

cond.end.thread.i153:                             ; preds = %if.then20
  %call.i.i151 = call i64 @strlen(i8* nonnull dereferenceable(1) %46) #17
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #17
  store i64 %call.i.i151, i64* %__dnew.i.i.i.i149, align 8, !tbaa !17
  %cmp3.i.i.i.i152 = icmp ugt i64 %call.i.i151, 15
  br i1 %cmp3.i.i.i.i152, label %if.then4.i.i.i.i157, label %if.end6.i.i.i.i159

if.then.i.i.i.i154:                               ; preds = %if.then20
  invoke void @_ZSt19__throw_logic_errorPKc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0)) #16
          to label %.noexc164 unwind label %lpad28.loopexit.split-lp

.noexc164:                                        ; preds = %if.then.i.i.i.i154
  unreachable

if.then4.i.i.i.i157:                              ; preds = %cond.end.thread.i153
  %call5.i.i.i9.i166 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull %ref.tmp26, i64* nonnull dereferenceable(8) %__dnew.i.i.i.i149, i64 0)
          to label %call5.i.i.i9.i.noexc165 unwind label %lpad28.loopexit

call5.i.i.i9.i.noexc165:                          ; preds = %if.then4.i.i.i.i157
  store i8* %call5.i.i.i9.i166, i8** %_M_p.i18.i.i.i.i155, align 8, !tbaa !13
  %47 = load i64, i64* %__dnew.i.i.i.i149, align 8, !tbaa !17
  store i64 %47, i64* %_M_allocated_capacity.i.i.i.i.i156, align 8, !tbaa !18
  br label %if.end6.i.i.i.i159

if.end6.i.i.i.i159:                               ; preds = %call5.i.i.i9.i.noexc165, %cond.end.thread.i153
  %48 = phi i8* [ %call5.i.i.i9.i166, %call5.i.i.i9.i.noexc165 ], [ %22, %cond.end.thread.i153 ]
  switch i64 %call.i.i151, label %if.end.i.i.i.i.i.i.i161 [
    i64 1, label %if.then.i.i.i.i.i.i160
    i64 0, label %invoke.cont29
  ]

if.then.i.i.i.i.i.i160:                           ; preds = %if.end6.i.i.i.i159
  %49 = load i8, i8* %46, align 1, !tbaa !18
  store i8 %49, i8* %48, align 1, !tbaa !18
  br label %invoke.cont29

if.end.i.i.i.i.i.i.i161:                          ; preds = %if.end6.i.i.i.i159
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %48, i8* nonnull align 1 %46, i64 %call.i.i151, i1 false) #17
  br label %invoke.cont29

invoke.cont29:                                    ; preds = %if.end.i.i.i.i.i.i.i161, %if.then.i.i.i.i.i.i160, %if.end6.i.i.i.i159
  %50 = load i64, i64* %__dnew.i.i.i.i149, align 8, !tbaa !17
  store i64 %50, i64* %_M_string_length.i.i.i.i.i.i162, align 8, !tbaa !16
  %51 = load i8*, i8** %_M_p.i18.i.i.i.i155, align 8, !tbaa !13
  %arrayidx.i.i.i.i.i163 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8 0, i8* %arrayidx.i.i.i.i.i163, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #17
  %52 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %17, align 8, !tbaa !27
  %cmp10.i.i92 = icmp eq %"struct.std::_Rb_tree_node"* %52, null
  br i1 %cmp10.i.i92, label %invoke.cont29.invoke.cont31_crit_edge, label %while.body.lr.ph.i.i95

invoke.cont29.invoke.cont31_crit_edge:            ; preds = %invoke.cont29
  %.pre187 = load i8*, i8** %_M_p.i18.i.i.i.i155, align 8, !tbaa !13
  br label %invoke.cont31

while.body.lr.ph.i.i95:                           ; preds = %invoke.cont29
  %53 = load i64, i64* %_M_string_length.i.i.i.i.i.i162, align 8, !tbaa !16
  %54 = load i8*, i8** %_M_p.i18.i.i.i.i155, align 8
  br label %while.body.i.i102

while.body.i.i102:                                ; preds = %if.end.i.i125, %while.body.lr.ph.i.i95
  %__x.addr.012.i.i96 = phi %"struct.std::_Rb_tree_node"* [ %52, %while.body.lr.ph.i.i95 ], [ %__x.addr.1.i.i123, %if.end.i.i125 ]
  %__y.addr.011.i.i97 = phi %"struct.std::_Rb_tree_node_base"* [ %_M_header.i14.i, %while.body.lr.ph.i.i95 ], [ %__y.addr.1.i.i120, %if.end.i.i125 ]
  %_M_string_length.i.i.i.i.i.i98 = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__x.addr.012.i.i96, i64 0, i32 1, i32 0, i64 8
  %55 = bitcast i8* %_M_string_length.i.i.i.i.i.i98 to i64*
  %56 = load i64, i64* %55, align 8, !tbaa !16
  %cmp.i15.i.i.i.i.i99 = icmp ugt i64 %56, %53
  %.sroa.speculated.i.i.i.i.i100 = select i1 %cmp.i15.i.i.i.i.i99, i64 %53, i64 %56
  %cmp.i13.i.i.i.i.i101 = icmp eq i64 %.sroa.speculated.i.i.i.i.i100, 0
  br i1 %cmp.i13.i.i.i.i.i101, label %if.then.i.i.i.i.i110, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i107

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i107: ; preds = %while.body.i.i102
  %_M_storage.i.i.i.i.i103 = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__x.addr.012.i.i96, i64 0, i32 1
  %_M_p.i.i.i.i.i17.i104 = bitcast %"struct.__gnu_cxx::__aligned_membuf"* %_M_storage.i.i.i.i.i103 to i8**
  %57 = load i8*, i8** %_M_p.i.i.i.i.i17.i104, align 8, !tbaa !13
  %call.i.i.i.i.i.i105 = call i32 @memcmp(i8* %57, i8* %54, i64 %.sroa.speculated.i.i.i.i.i100) #17
  %tobool.i.i.i.i.i106 = icmp eq i32 %call.i.i.i.i.i.i105, 0
  br i1 %tobool.i.i.i.i.i106, label %if.then.i.i.i.i.i110, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i115

if.then.i.i.i.i.i110:                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i107, %while.body.i.i102
  %sub.i.i.i.i.i.i108 = sub i64 %56, %53
  %cmp.i.i.i.i.i.i109 = icmp sgt i64 %sub.i.i.i.i.i.i108, 2147483647
  br i1 %cmp.i.i.i.i.i.i109, label %if.then.i.i117, label %if.else.i.i.i.i.i.i112

if.else.i.i.i.i.i.i112:                           ; preds = %if.then.i.i.i.i.i110
  %58 = icmp sgt i64 %sub.i.i.i.i.i.i108, -2147483648
  %spec.select7.i.i.i.i.i.i111 = select i1 %58, i64 %sub.i.i.i.i.i.i108, i64 -2147483648
  %59 = trunc i64 %spec.select7.i.i.i.i.i.i111 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i115

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i115: ; preds = %if.else.i.i.i.i.i.i112, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i107
  %__r.0.i.i.i.i.i113 = phi i32 [ %call.i.i.i.i.i.i105, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i107 ], [ %59, %if.else.i.i.i.i.i.i112 ]
  %cmp.i.i.i.i114 = icmp slt i32 %__r.0.i.i.i.i.i113, 0
  br i1 %cmp.i.i.i.i114, label %if.else.i.i119, label %if.then.i.i117

if.then.i.i117:                                   ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i115, %if.then.i.i.i.i.i110
  %60 = getelementptr %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__x.addr.012.i.i96, i64 0, i32 0
  %_M_left.i.i.i116 = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__x.addr.012.i.i96, i64 0, i32 0, i32 2
  br label %if.end.i.i125

if.else.i.i119:                                   ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i115
  %_M_right.i.i.i118 = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__x.addr.012.i.i96, i64 0, i32 0, i32 3
  br label %if.end.i.i125

if.end.i.i125:                                    ; preds = %if.else.i.i119, %if.then.i.i117
  %__y.addr.1.i.i120 = phi %"struct.std::_Rb_tree_node_base"* [ %__y.addr.011.i.i97, %if.else.i.i119 ], [ %60, %if.then.i.i117 ]
  %__x.addr.1.in.in.i.i121 = phi %"struct.std::_Rb_tree_node_base"** [ %_M_right.i.i.i118, %if.else.i.i119 ], [ %_M_left.i.i.i116, %if.then.i.i117 ]
  %__x.addr.1.in.i.i122 = bitcast %"struct.std::_Rb_tree_node_base"** %__x.addr.1.in.in.i.i121 to %"struct.std::_Rb_tree_node"**
  %__x.addr.1.i.i123 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr.1.in.i.i122, align 8, !tbaa !6
  %cmp.i18.i124 = icmp eq %"struct.std::_Rb_tree_node"* %__x.addr.1.i.i123, null
  br i1 %cmp.i18.i124, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i127, label %while.body.i.i102

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i127: ; preds = %if.end.i.i125
  %cmp.i.i126 = icmp eq %"struct.std::_Rb_tree_node_base"* %__y.addr.1.i.i120, %_M_header.i14.i
  br i1 %cmp.i.i126, label %invoke.cont31, label %lor.lhs.false.i132

lor.lhs.false.i132:                               ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i127
  %_M_string_length.i14.i.i.i.i128 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %__y.addr.1.i.i120, i64 1, i32 1
  %61 = bitcast %"struct.std::_Rb_tree_node_base"** %_M_string_length.i14.i.i.i.i128 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !16
  %cmp.i15.i.i.i.i129 = icmp ugt i64 %53, %62
  %.sroa.speculated.i.i.i.i130 = select i1 %cmp.i15.i.i.i.i129, i64 %62, i64 %53
  %cmp.i13.i.i.i.i131 = icmp eq i64 %.sroa.speculated.i.i.i.i130, 0
  br i1 %cmp.i13.i.i.i.i131, label %if.then.i.i.i.i140, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i137

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i137: ; preds = %lor.lhs.false.i132
  %_M_storage.i.i.i.i133 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %__y.addr.1.i.i120, i64 1
  %_M_p.i.i.i.i.i.i134 = bitcast %"struct.std::_Rb_tree_node_base"* %_M_storage.i.i.i.i133 to i8**
  %63 = load i8*, i8** %_M_p.i.i.i.i.i.i134, align 8, !tbaa !13
  %call.i.i.i.i.i135 = call i32 @memcmp(i8* %54, i8* %63, i64 %.sroa.speculated.i.i.i.i130) #17
  %tobool.i.i.i.i136 = icmp eq i32 %call.i.i.i.i.i135, 0
  br i1 %tobool.i.i.i.i136, label %if.then.i.i.i.i140, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i145

if.then.i.i.i.i140:                               ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i137, %lor.lhs.false.i132
  %sub.i.i.i.i.i138 = sub i64 %53, %62
  %cmp.i.i.i.i.i139 = icmp sgt i64 %sub.i.i.i.i.i138, 2147483647
  br i1 %cmp.i.i.i.i.i139, label %cond.false.i146, label %if.else.i.i.i.i.i142

if.else.i.i.i.i.i142:                             ; preds = %if.then.i.i.i.i140
  %64 = icmp sgt i64 %sub.i.i.i.i.i138, -2147483648
  %spec.select7.i.i.i.i.i141 = select i1 %64, i64 %sub.i.i.i.i.i138, i64 -2147483648
  %65 = trunc i64 %spec.select7.i.i.i.i.i141 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i145

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i145: ; preds = %if.else.i.i.i.i.i142, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i137
  %__r.0.i.i.i.i143 = phi i32 [ %call.i.i.i.i.i135, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i137 ], [ %65, %if.else.i.i.i.i.i142 ]
  %cmp.i.i.i144 = icmp slt i32 %__r.0.i.i.i.i143, 0
  br i1 %cmp.i.i.i144, label %invoke.cont31, label %cond.false.i146

cond.false.i146:                                  ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i145, %if.then.i.i.i.i140
  br label %invoke.cont31

invoke.cont31:                                    ; preds = %invoke.cont29.invoke.cont31_crit_edge, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i127, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i145, %cond.false.i146
  %66 = phi i8* [ %54, %cond.false.i146 ], [ %54, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i145 ], [ %54, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i127 ], [ %.pre187, %invoke.cont29.invoke.cont31_crit_edge ]
  %retval.sroa.0.0.i147 = phi %"struct.std::_Rb_tree_node_base"* [ %__y.addr.1.i.i120, %cond.false.i146 ], [ %_M_header.i14.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i145 ], [ %_M_header.i14.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i127 ], [ %_M_header.i14.i, %invoke.cont29.invoke.cont31_crit_edge ]
  %cmp.i.i.i71 = icmp eq i8* %66, %22
  br i1 %cmp.i.i.i71, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %if.then.i.i72

if.then.i.i72:                                    ; preds = %invoke.cont31
  call void @_ZdlPv(i8* %66) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %invoke.cont31, %if.then.i.i72
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #17
  br label %if.end39

lpad8.loopexit:                                   ; preds = %if.then4.i.i.i.i
  %lpad.loopexit = landingpad { i8*, i32 }
          cleanup
  br label %lpad8

lpad8.loopexit.split-lp:                          ; preds = %if.then.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup
  br label %lpad8

lpad8:                                            ; preds = %lpad8.loopexit.split-lp, %lpad8.loopexit
  %lpad.phi = phi { i8*, i32 } [ %lpad.loopexit, %lpad8.loopexit ], [ %lpad.loopexit.split-lp, %lpad8.loopexit.split-lp ]
  %67 = extractvalue { i8*, i32 } %lpad.phi, 0
  %68 = extractvalue { i8*, i32 } %lpad.phi, 1
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #17
  br label %ehcleanup41

lpad28.loopexit:                                  ; preds = %if.then4.i.i.i.i157
  %lpad.loopexit173 = landingpad { i8*, i32 }
          cleanup
  br label %lpad28

lpad28.loopexit.split-lp:                         ; preds = %if.then.i.i.i.i154
  %lpad.loopexit.split-lp174 = landingpad { i8*, i32 }
          cleanup
  br label %lpad28

lpad28:                                           ; preds = %lpad28.loopexit.split-lp, %lpad28.loopexit
  %lpad.phi175 = phi { i8*, i32 } [ %lpad.loopexit173, %lpad28.loopexit ], [ %lpad.loopexit.split-lp174, %lpad28.loopexit.split-lp ]
  %69 = extractvalue { i8*, i32 } %lpad.phi175, 0
  %70 = extractvalue { i8*, i32 } %lpad.phi175, 1
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #17
  br label %ehcleanup41

if.end39:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %catagory.sroa.0.0 = phi %"struct.std::_Rb_tree_node_base"* [ %retval.sroa.0.0.i147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %retval.sroa.0.0.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ]
  %second = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %catagory.sroa.0.0, i64 2
  %71 = bitcast %"struct.std::_Rb_tree_node_base"* %second to double*
  %72 = load double, double* %71, align 8, !tbaa !39
  %add = fadd double %sub, %72
  store double %add, double* %71, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #17
  %incdec.ptr = getelementptr inbounds i8*, i8** %__begin1.0186, i64 1
  %cmp6 = icmp eq i8** %incdec.ptr, %add.ptr.i
  br i1 %cmp6, label %for.cond.cleanup, label %for.body

ehcleanup41:                                      ; preds = %lpad28, %lpad8
  %ehselector.slot.2 = phi i32 [ %70, %lpad28 ], [ %68, %lpad8 ]
  %exn.slot.2 = phi i8* [ %69, %lpad28 ], [ %67, %lpad8 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #17
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup41, %lpad
  %ehselector.slot.3 = phi i32 [ %4, %lpad ], [ %ehselector.slot.2, %ehcleanup41 ]
  %exn.slot.3 = phi i8* [ %3, %lpad ], [ %exn.slot.2, %ehcleanup41 ]
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.3, 0
  %lpad.val48 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.3, 1
  resume { i8*, i32 } %lpad.val48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree uwtable
define dso_local void @_ZN14TimeKeeperImpl19GetCatagoryIteratorEv(%"class.std::unique_ptr"* noalias nocapture sret %agg.result, %class.TimeKeeperImpl* %this) unnamed_addr #6 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %call = tail call dereferenceable(32) i8* @_Znwm(i64 32) #19
  %0 = getelementptr inbounds %class.TimeKeeperImpl, %class.TimeKeeperImpl* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0
  %_M_left.i.i = getelementptr inbounds i8, i8* %0, i64 24
  %1 = bitcast i8* %_M_left.i.i to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !28
  %add.ptr.i.i = getelementptr inbounds i8, i8* %0, i64 8
  %3 = bitcast i8* %call to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [6 x i8*] }, { [6 x i8*] }* @_ZTVN14TimeKeeperImpl8IteratorE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %3, align 8, !tbaa !2
  %begin.sroa.0.0..sroa_idx.i = getelementptr inbounds i8, i8* %call, i64 8
  %4 = bitcast i8* %begin.sroa.0.0..sroa_idx.i to i64*
  store i64 %2, i64* %4, align 8, !tbaa.struct !5
  %begin.sroa.0.0..sroa_idx3.i = getelementptr inbounds i8, i8* %call, i64 16
  %5 = bitcast i8* %begin.sroa.0.0..sroa_idx3.i to i64*
  store i64 %2, i64* %5, align 8, !tbaa.struct !5
  %end.sroa.0.0..sroa_idx.i = getelementptr inbounds i8, i8* %call, i64 24
  %6 = bitcast i8* %end.sroa.0.0..sroa_idx.i to i8**
  store i8* %add.ptr.i.i, i8** %6, align 8, !tbaa.struct !5
  %7 = bitcast %"class.std::unique_ptr"* %agg.result to i8**
  store i8* %call, i8** %7, align 8, !tbaa !6
  ret void
}

; Function Attrs: nobuiltin nofree
declare dso_local noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #8

; Function Attrs: uwtable
define dso_local double @_ZN14TimeKeeperImpl7GetTimeEPKc(%class.TimeKeeperImpl* %this, i8* readonly %catagory_name) unnamed_addr #3 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #17
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !11
  %tobool.i = icmp eq i8* %catagory_name, null
  br i1 %tobool.i, label %if.then.i.i.i.i, label %cond.end.thread.i

cond.end.thread.i:                                ; preds = %entry
  %3 = bitcast %union.anon* %1 to i8*
  %call.i.i = call i64 @strlen(i8* nonnull dereferenceable(1) %catagory_name) #17
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #17
  store i64 %call.i.i, i64* %__dnew.i.i.i.i, align 8, !tbaa !17
  %cmp3.i.i.i.i = icmp ugt i64 %call.i.i, 15
  br i1 %cmp3.i.i.i.i, label %if.then4.i.i.i.i, label %if.end6.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %entry
  invoke void @_ZSt19__throw_logic_errorPKc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0)) #16
          to label %.noexc unwind label %lpad

.noexc:                                           ; preds = %if.then.i.i.i.i
  unreachable

if.then4.i.i.i.i:                                 ; preds = %cond.end.thread.i
  %call5.i.i.i9.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull %ref.tmp, i64* nonnull dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %lpad

call5.i.i.i9.i.noexc:                             ; preds = %if.then4.i.i.i.i
  %_M_p.i18.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i15, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !13
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !17
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !18
  br label %if.end6.i.i.i.i

if.end6.i.i.i.i:                                  ; preds = %call5.i.i.i9.i.noexc, %cond.end.thread.i
  %6 = phi i8* [ %call5.i.i.i9.i15, %call5.i.i.i9.i.noexc ], [ %3, %cond.end.thread.i ]
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  switch i64 %call.i.i, label %if.end.i.i.i.i.i.i.i [
    i64 1, label %if.then.i.i.i.i.i.i
    i64 0, label %invoke.cont
  ]

if.then.i.i.i.i.i.i:                              ; preds = %if.end6.i.i.i.i
  %7 = load i8, i8* %catagory_name, align 1, !tbaa !18
  store i8 %7, i8* %6, align 1, !tbaa !18
  br label %invoke.cont

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end6.i.i.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* nonnull align 1 %catagory_name, i64 %call.i.i, i1 false) #17
  br label %invoke.cont

invoke.cont:                                      ; preds = %if.end.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i, %if.end6.i.i.i.i
  %8 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !17
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %8, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !16
  %9 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !13
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %9, i64 %8
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #17
  %10 = getelementptr inbounds %class.TimeKeeperImpl, %class.TimeKeeperImpl* %this, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0
  %_M_parent.i.i = getelementptr inbounds i8, i8* %10, i64 16
  %11 = bitcast i8* %_M_parent.i.i to %"struct.std::_Rb_tree_node"**
  %12 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %11, align 8, !tbaa !27
  %add.ptr.i13.i = getelementptr inbounds i8, i8* %10, i64 8
  %_M_header.i14.i = bitcast i8* %add.ptr.i13.i to %"struct.std::_Rb_tree_node_base"*
  %cmp10.i.i = icmp eq %"struct.std::_Rb_tree_node"* %12, null
  br i1 %cmp10.i.i, label %invoke.cont.invoke.cont4_crit_edge, label %while.body.lr.ph.i.i

invoke.cont.invoke.cont4_crit_edge:               ; preds = %invoke.cont
  %.pre = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !13
  br label %invoke.cont4

while.body.lr.ph.i.i:                             ; preds = %invoke.cont
  %13 = load i64, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !16
  %14 = load i8*, i8** %_M_p.i.i.i.i.i, align 8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i, %while.body.lr.ph.i.i
  %__x.addr.012.i.i = phi %"struct.std::_Rb_tree_node"* [ %12, %while.body.lr.ph.i.i ], [ %__x.addr.1.i.i, %if.end.i.i ]
  %__y.addr.011.i.i = phi %"struct.std::_Rb_tree_node_base"* [ %_M_header.i14.i, %while.body.lr.ph.i.i ], [ %__y.addr.1.i.i, %if.end.i.i ]
  %_M_string_length.i.i.i.i.i.i17 = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__x.addr.012.i.i, i64 0, i32 1, i32 0, i64 8
  %15 = bitcast i8* %_M_string_length.i.i.i.i.i.i17 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !16
  %cmp.i15.i.i.i.i.i = icmp ugt i64 %16, %13
  %.sroa.speculated.i.i.i.i.i = select i1 %cmp.i15.i.i.i.i.i, i64 %13, i64 %16
  %cmp.i13.i.i.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %cmp.i13.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %while.body.i.i
  %_M_storage.i.i.i.i.i = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__x.addr.012.i.i, i64 0, i32 1
  %_M_p.i.i.i.i.i17.i = bitcast %"struct.__gnu_cxx::__aligned_membuf"* %_M_storage.i.i.i.i.i to i8**
  %17 = load i8*, i8** %_M_p.i.i.i.i.i17.i, align 8, !tbaa !13
  %call.i.i.i.i.i.i = call i32 @memcmp(i8* %17, i8* %14, i64 %.sroa.speculated.i.i.i.i.i) #17
  %tobool.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i.i, 0
  br i1 %tobool.i.i.i.i.i, label %if.then.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %while.body.i.i
  %sub.i.i.i.i.i.i = sub i64 %16, %13
  %cmp.i.i.i.i.i.i = icmp sgt i64 %sub.i.i.i.i.i.i, 2147483647
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i18, label %if.else.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i
  %18 = icmp sgt i64 %sub.i.i.i.i.i.i, -2147483648
  %spec.select7.i.i.i.i.i.i = select i1 %18, i64 %sub.i.i.i.i.i.i, i64 -2147483648
  %19 = trunc i64 %spec.select7.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %if.else.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %__r.0.i.i.i.i.i = phi i32 [ %call.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %19, %if.else.i.i.i.i.i.i ]
  %cmp.i.i.i.i = icmp slt i32 %__r.0.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.else.i.i, label %if.then.i.i18

if.then.i.i18:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %if.then.i.i.i.i.i
  %20 = getelementptr %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__x.addr.012.i.i, i64 0, i32 0
  %_M_left.i.i.i = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__x.addr.012.i.i, i64 0, i32 0, i32 2
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %_M_right.i.i.i = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__x.addr.012.i.i, i64 0, i32 0, i32 3
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i18
  %__y.addr.1.i.i = phi %"struct.std::_Rb_tree_node_base"* [ %__y.addr.011.i.i, %if.else.i.i ], [ %20, %if.then.i.i18 ]
  %__x.addr.1.in.in.i.i = phi %"struct.std::_Rb_tree_node_base"** [ %_M_right.i.i.i, %if.else.i.i ], [ %_M_left.i.i.i, %if.then.i.i18 ]
  %__x.addr.1.in.i.i = bitcast %"struct.std::_Rb_tree_node_base"** %__x.addr.1.in.in.i.i to %"struct.std::_Rb_tree_node"**
  %__x.addr.1.i.i = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr.1.in.i.i, align 8, !tbaa !6
  %cmp.i18.i = icmp eq %"struct.std::_Rb_tree_node"* %__x.addr.1.i.i, null
  br i1 %cmp.i18.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i, label %while.body.i.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i: ; preds = %if.end.i.i
  %cmp.i.i = icmp eq %"struct.std::_Rb_tree_node_base"* %__y.addr.1.i.i, %_M_header.i14.i
  br i1 %cmp.i.i, label %invoke.cont4, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i
  %_M_string_length.i14.i.i.i.i = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %__y.addr.1.i.i, i64 1, i32 1
  %21 = bitcast %"struct.std::_Rb_tree_node_base"** %_M_string_length.i14.i.i.i.i to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !16
  %cmp.i15.i.i.i.i = icmp ugt i64 %13, %22
  %.sroa.speculated.i.i.i.i = select i1 %cmp.i15.i.i.i.i, i64 %22, i64 %13
  %cmp.i13.i.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %cmp.i13.i.i.i.i, label %if.then.i.i.i.i19, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %lor.lhs.false.i
  %_M_storage.i.i.i.i = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %__y.addr.1.i.i, i64 1
  %_M_p.i.i.i.i.i.i = bitcast %"struct.std::_Rb_tree_node_base"* %_M_storage.i.i.i.i to i8**
  %23 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !13
  %call.i.i.i.i.i = call i32 @memcmp(i8* %14, i8* %23, i64 %.sroa.speculated.i.i.i.i) #17
  %tobool.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.i.i.i.i, label %if.then.i.i.i.i19, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

if.then.i.i.i.i19:                                ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %lor.lhs.false.i
  %sub.i.i.i.i.i = sub i64 %13, %22
  %cmp.i.i.i.i.i = icmp sgt i64 %sub.i.i.i.i.i, 2147483647
  br i1 %cmp.i.i.i.i.i, label %cond.false.i, label %if.else.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i19
  %24 = icmp sgt i64 %sub.i.i.i.i.i, -2147483648
  %spec.select7.i.i.i.i.i = select i1 %24, i64 %sub.i.i.i.i.i, i64 -2147483648
  %25 = trunc i64 %spec.select7.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %if.else.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %__r.0.i.i.i.i = phi i32 [ %call.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %25, %if.else.i.i.i.i.i ]
  %cmp.i.i.i20 = icmp slt i32 %__r.0.i.i.i.i, 0
  br i1 %cmp.i.i.i20, label %invoke.cont4, label %cond.false.i

cond.false.i:                                     ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %if.then.i.i.i.i19
  br label %invoke.cont4

invoke.cont4:                                     ; preds = %invoke.cont.invoke.cont4_crit_edge, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %cond.false.i
  %26 = phi i8* [ %14, %cond.false.i ], [ %14, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %14, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i ], [ %.pre, %invoke.cont.invoke.cont4_crit_edge ]
  %retval.sroa.0.0.i = phi %"struct.std::_Rb_tree_node_base"* [ %__y.addr.1.i.i, %cond.false.i ], [ %_M_header.i14.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %_M_header.i14.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i ], [ %_M_header.i14.i, %invoke.cont.invoke.cont4_crit_edge ]
  %cmp.i.i.i23 = icmp eq i8* %26, %3
  br i1 %cmp.i.i.i23, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %if.then.i.i24

if.then.i.i24:                                    ; preds = %invoke.cont4
  call void @_ZdlPv(i8* %26) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %invoke.cont4, %if.then.i.i24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #17
  %cmp.i = icmp eq %"struct.std::_Rb_tree_node_base"* %retval.sroa.0.0.i, %_M_header.i14.i
  br i1 %cmp.i, label %cleanup, label %if.else

lpad:                                             ; preds = %if.then4.i.i.i.i, %if.then.i.i.i.i
  %27 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #17
  resume { i8*, i32 } %27

if.else:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %second = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %retval.sroa.0.0.i, i64 2
  %28 = bitcast %"struct.std::_Rb_tree_node_base"* %second to double*
  %29 = load double, double* %28, align 8, !tbaa !39
  br label %cleanup

cleanup:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %if.else
  %retval.0 = phi double [ %29, %if.else ], [ 0.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ]
  ret double %retval.0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN14TimeKeeperImplD2Ev(%class.TimeKeeperImpl* %this) unnamed_addr #9 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr %class.TimeKeeperImpl, %class.TimeKeeperImpl* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV14TimeKeeperImpl, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !2
  %time_catagories_ = getelementptr inbounds %class.TimeKeeperImpl, %class.TimeKeeperImpl* %this, i64 0, i32 1
  %_M_t.i = getelementptr inbounds %"class.std::map", %"class.std::map"* %time_catagories_, i64 0, i32 0
  %1 = getelementptr inbounds %"class.std::map", %"class.std::map"* %time_catagories_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %_M_parent.i.i.i = getelementptr inbounds i8, i8* %1, i64 16
  %2 = bitcast i8* %_M_parent.i.i.i to %"struct.std::_Rb_tree_node"**
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %2, align 8, !tbaa !27
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* nonnull %_M_t.i, %"struct.std::_Rb_tree_node"* %3)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEED2Ev.exit unwind label %lpad.i.i

lpad.i.i:                                         ; preds = %entry
  %4 = landingpad { i8*, i32 }
          catch i8* null
  %5 = extractvalue { i8*, i32 } %4, 0
  tail call void @__clang_call_terminate(i8* %5) #20
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEED2Ev.exit: ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN14TimeKeeperImplD0Ev(%class.TimeKeeperImpl* %this) unnamed_addr #9 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr %class.TimeKeeperImpl, %class.TimeKeeperImpl* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [8 x i8*] }, { [8 x i8*] }* @_ZTV14TimeKeeperImpl, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !2
  %time_catagories_.i = getelementptr inbounds %class.TimeKeeperImpl, %class.TimeKeeperImpl* %this, i64 0, i32 1
  %_M_t.i.i = getelementptr inbounds %"class.std::map", %"class.std::map"* %time_catagories_.i, i64 0, i32 0
  %1 = getelementptr inbounds %"class.std::map", %"class.std::map"* %time_catagories_.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %_M_parent.i.i.i.i = getelementptr inbounds i8, i8* %1, i64 16
  %2 = bitcast i8* %_M_parent.i.i.i.i to %"struct.std::_Rb_tree_node"**
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %2, align 8, !tbaa !27
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* nonnull %_M_t.i.i, %"struct.std::_Rb_tree_node"* %3)
          to label %_ZN14TimeKeeperImplD2Ev.exit unwind label %lpad.i.i.i

lpad.i.i.i:                                       ; preds = %entry
  %4 = landingpad { i8*, i32 }
          catch i8* null
  %5 = extractvalue { i8*, i32 } %4, 0
  tail call void @__clang_call_terminate(i8* %5) #20
  unreachable

_ZN14TimeKeeperImplD2Ev.exit:                     ; preds = %entry
  %6 = bitcast %class.TimeKeeperImpl* %this to i8*
  tail call void @_ZdlPv(i8* %6) #21
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN14TimeKeeperImpl8IteratorD0Ev(%"class.TimeKeeperImpl::Iterator"* %this) unnamed_addr #10 comdat align 2 {
entry:
  %0 = bitcast %"class.TimeKeeperImpl::Iterator"* %this to i8*
  tail call void @_ZdlPv(i8* %0) #21
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN10TimeKeeper8IteratorD2Ev(%"class.TimeKeeper::Iterator"* %this) unnamed_addr #9 comdat align 2 {
entry:
  ret void
}

; Function Attrs: noreturn
declare dso_local void @_ZSt19__throw_logic_errorPKc(i8*) local_unnamed_addr #11

declare dso_local i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"*, i64* dereferenceable(8), i64) local_unnamed_addr #4

declare dso_local i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare dso_local void @__cxa_rethrow() local_unnamed_addr

declare dso_local void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) local_unnamed_addr #12 comdat {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #17
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare dso_local void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x) local_unnamed_addr #3 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %cmp7 = icmp eq %"struct.std::_Rb_tree_node"* %__x, null
  br i1 %cmp7, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %__x.addr.08 = phi %"struct.std::_Rb_tree_node"* [ %3, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %__x, %entry ]
  %_M_right.i = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__x.addr.08, i64 0, i32 0, i32 3
  %0 = bitcast %"struct.std::_Rb_tree_node_base"** %_M_right.i to %"struct.std::_Rb_tree_node"**
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %0, align 8, !tbaa !41
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %1)
  %_M_left.i = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__x.addr.08, i64 0, i32 0, i32 2
  %2 = bitcast %"struct.std::_Rb_tree_node_base"** %_M_left.i to %"struct.std::_Rb_tree_node"**
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %2, align 8, !tbaa !42
  %_M_storage.i.i.i = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__x.addr.08, i64 0, i32 1
  %_M_p.i.i.i.i.i.i.i.i.i = bitcast %"struct.__gnu_cxx::__aligned_membuf"* %_M_storage.i.i.i to i8**
  %4 = load i8*, i8** %_M_p.i.i.i.i.i.i.i.i.i, align 8, !tbaa !13
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__x.addr.08, i64 0, i32 1, i32 0, i64 16
  %cmp.i.i.i.i.i.i.i.i = icmp eq i8* %4, %5
  br i1 %cmp.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %if.then.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i:                            ; preds = %while.body
  tail call void @_ZdlPv(i8* %4) #17
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %while.body, %if.then.i.i.i.i.i.i.i
  %6 = bitcast %"struct.std::_Rb_tree_node"* %__x.addr.08 to i8*
  tail call void @_ZdlPv(i8* nonnull %6) #17
  %cmp = icmp eq %"struct.std::_Rb_tree_node"* %3, null
  br i1 %cmp, label %while.end, label %while.body

while.end:                                        ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) local_unnamed_addr #13

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #14

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #15

; Function Attrs: uwtable
define linkonce_odr dso_local { %"struct.std::_Rb_tree_node_base"*, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_emplace_uniqueIJRPKciEEES6_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(%"class.std::_Rb_tree"* %this, i8** dereferenceable(8) %__args, i32* dereferenceable(4) %__args1) local_unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
invoke.cont:
  %call2.i.i.i.i = tail call i8* @_Znwm(i64 72)
  %0 = bitcast i8* %call2.i.i.i.i to %"struct.std::_Rb_tree_node"*
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRPKciEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* nonnull %0, i8** nonnull dereferenceable(8) %__args, i32* nonnull dereferenceable(4) %__args1)
  %_M_storage.i.i.i42 = getelementptr inbounds i8, i8* %call2.i.i.i.i, i64 32
  %first.i.i = bitcast i8* %_M_storage.i.i.i42 to %"class.std::__cxx11::basic_string"*
  %call8 = invoke { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(%"class.std::_Rb_tree"* %this, %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %first.i.i)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont
  %1 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call8, 0
  %2 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call8, 1
  %tobool = icmp eq %"struct.std::_Rb_tree_node_base"* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %invoke.cont7
  %cmp.i = icmp eq %"struct.std::_Rb_tree_node_base"* %1, null
  br i1 %cmp.i, label %lor.lhs.false.i, label %invoke.cont11

lor.lhs.false.i:                                  ; preds = %if.then
  %3 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %add.ptr.i.i = getelementptr inbounds i8, i8* %3, i64 8
  %_M_header.i.i = bitcast i8* %add.ptr.i.i to %"struct.std::_Rb_tree_node_base"*
  %cmp2.i = icmp eq %"struct.std::_Rb_tree_node_base"* %2, %_M_header.i.i
  br i1 %cmp2.i, label %invoke.cont11, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %4 = getelementptr inbounds i8, i8* %call2.i.i.i.i, i64 40
  %5 = bitcast i8* %4 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !16
  %_M_string_length.i14.i.i.i.i = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %2, i64 1, i32 1
  %7 = bitcast %"struct.std::_Rb_tree_node_base"** %_M_string_length.i14.i.i.i.i to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !16
  %cmp.i15.i.i.i.i = icmp ugt i64 %6, %8
  %.sroa.speculated.i.i.i.i = select i1 %cmp.i15.i.i.i.i, i64 %8, i64 %6
  %cmp.i13.i.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %cmp.i13.i.i.i.i, label %if.then.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %lor.rhs.i
  %_M_storage.i.i.i13.i = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %2, i64 1
  %_M_p.i.i.i.i.i.i = bitcast %"struct.std::_Rb_tree_node_base"* %_M_storage.i.i.i13.i to i8**
  %9 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !13
  %_M_p.i.i.i.i.i = bitcast i8* %_M_storage.i.i.i42 to i8**
  %10 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !13
  %call.i.i.i.i.i = tail call i32 @memcmp(i8* %10, i8* %9, i64 %.sroa.speculated.i.i.i.i) #17
  %tobool.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.i.i.i.i, label %if.then.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

if.then.i.i.i.i:                                  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %lor.rhs.i
  %sub.i.i.i.i.i = sub i64 %6, %8
  %cmp.i.i.i.i.i = icmp sgt i64 %sub.i.i.i.i.i, 2147483647
  br i1 %cmp.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, label %if.else.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i
  %11 = icmp sgt i64 %sub.i.i.i.i.i, -2147483648
  %spec.select7.i.i.i.i.i = select i1 %11, i64 %sub.i.i.i.i.i, i64 -2147483648
  %12 = trunc i64 %spec.select7.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %if.else.i.i.i.i.i, %if.then.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %__r.0.i.i.i.i = phi i32 [ %call.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %12, %if.else.i.i.i.i.i ], [ 2147483647, %if.then.i.i.i.i ]
  %cmp.i.i.i = icmp slt i32 %__r.0.i.i.i.i, 0
  br label %invoke.cont11

invoke.cont11:                                    ; preds = %if.then, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %lor.lhs.false.i
  %13 = phi i1 [ true, %lor.lhs.false.i ], [ %cmp.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ true, %if.then ]
  %14 = bitcast i8* %call2.i.i.i.i to %"struct.std::_Rb_tree_node_base"*
  %15 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %add.ptr.i = getelementptr inbounds i8, i8* %15, i64 8
  %_M_header.i = bitcast i8* %add.ptr.i to %"struct.std::_Rb_tree_node_base"*
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext %13, %"struct.std::_Rb_tree_node_base"* nonnull %14, %"struct.std::_Rb_tree_node_base"* nonnull %2, %"struct.std::_Rb_tree_node_base"* nonnull dereferenceable(32) %_M_header.i) #17
  %_M_node_count.i = getelementptr inbounds i8, i8* %15, i64 40
  %16 = bitcast i8* %_M_node_count.i to i64*
  %17 = load i64, i64* %16, align 8, !tbaa !30
  %inc.i = add i64 %17, 1
  store i64 %inc.i, i64* %16, align 8, !tbaa !30
  %18 = ptrtoint i8* %call2.i.i.i.i to i64
  br label %cleanup

lpad:                                             ; preds = %invoke.cont
  %19 = landingpad { i8*, i32 }
          catch i8* null
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = tail call i8* @__cxa_begin_catch(i8* %20) #17
  %_M_p.i.i.i.i.i.i.i.i.i = bitcast i8* %_M_storage.i.i.i42 to i8**
  %22 = load i8*, i8** %_M_p.i.i.i.i.i.i.i.i.i, align 8, !tbaa !13
  %23 = getelementptr inbounds i8, i8* %call2.i.i.i.i, i64 48
  %cmp.i.i.i.i.i.i.i.i = icmp eq i8* %22, %23
  br i1 %cmp.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %if.then.i.i.i.i.i.i.i

if.end:                                           ; preds = %invoke.cont7
  %_M_p.i.i.i.i.i.i.i.i.i44 = bitcast i8* %_M_storage.i.i.i42 to i8**
  %24 = load i8*, i8** %_M_p.i.i.i.i.i.i.i.i.i44, align 8, !tbaa !13
  %25 = getelementptr inbounds i8, i8* %call2.i.i.i.i, i64 48
  %cmp.i.i.i.i.i.i.i.i45 = icmp eq i8* %24, %25
  br i1 %cmp.i.i.i.i.i.i.i.i45, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit47, label %if.then.i.i.i.i.i.i.i46

if.then.i.i.i.i.i.i.i46:                          ; preds = %if.end
  tail call void @_ZdlPv(i8* %24) #17
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit47

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit47: ; preds = %if.end, %if.then.i.i.i.i.i.i.i46
  tail call void @_ZdlPv(i8* nonnull %call2.i.i.i.i) #17
  %26 = ptrtoint %"struct.std::_Rb_tree_node_base"* %1 to i64
  br label %cleanup

cleanup:                                          ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit47, %invoke.cont11
  %retval.sroa.0.0 = phi i64 [ %26, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit47 ], [ %18, %invoke.cont11 ]
  %retval.sroa.3.0 = phi i8 [ 0, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit47 ], [ 1, %invoke.cont11 ]
  %27 = inttoptr i64 %retval.sroa.0.0 to %"struct.std::_Rb_tree_node_base"*
  %.fca.0.insert = insertvalue { %"struct.std::_Rb_tree_node_base"*, i8 } undef, %"struct.std::_Rb_tree_node_base"* %27, 0
  %.fca.1.insert = insertvalue { %"struct.std::_Rb_tree_node_base"*, i8 } %.fca.0.insert, i8 %retval.sroa.3.0, 1
  ret { %"struct.std::_Rb_tree_node_base"*, i8 } %.fca.1.insert

if.then.i.i.i.i.i.i.i:                            ; preds = %lpad
  tail call void @_ZdlPv(i8* %22) #17
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %lpad, %if.then.i.i.i.i.i.i.i
  tail call void @_ZdlPv(i8* nonnull %call2.i.i.i.i) #17
  invoke void @__cxa_rethrow() #16
          to label %unreachable unwind label %lpad24

lpad24:                                           ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %28 = landingpad { i8*, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %invoke.cont26 unwind label %terminate.lpad

invoke.cont26:                                    ; preds = %lpad24
  resume { i8*, i32 } %28

terminate.lpad:                                   ; preds = %lpad24
  %29 = landingpad { i8*, i32 }
          catch i8* null
  %30 = extractvalue { i8*, i32 } %29, 0
  tail call void @__clang_call_terminate(i8* %30) #20
  unreachable

unreachable:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(%"class.std::_Rb_tree"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__k) local_unnamed_addr #3 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_parent.i = getelementptr inbounds i8, i8* %0, i64 16
  %1 = bitcast i8* %_M_parent.i to i64*
  %add.ptr.i = getelementptr inbounds i8, i8* %0, i64 8
  %__x.sroa.0.069 = load i64, i64* %1, align 8, !tbaa !6
  %cmp70 = icmp eq i64 %__x.sroa.0.069, 0
  br i1 %cmp70, label %while.end.thread, label %while.body.lr.ph

while.end.thread:                                 ; preds = %entry
  %2 = ptrtoint i8* %add.ptr.i to i64
  %3 = bitcast i8* %add.ptr.i to %"struct.std::_Rb_tree_node_base"*
  br label %if.then

while.body.lr.ph:                                 ; preds = %entry
  %_M_string_length.i.i.i.i33 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %__k, i64 0, i32 1
  %4 = load i64, i64* %_M_string_length.i.i.i.i33, align 8, !tbaa !16
  %_M_p.i.i.i.i39 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %__k, i64 0, i32 0, i32 0
  %5 = load i8*, i8** %_M_p.i.i.i.i39, align 8
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cond.end
  %__x.sroa.0.071 = phi i64 [ %__x.sroa.0.069, %while.body.lr.ph ], [ %__x.sroa.0.0, %cond.end ]
  %6 = inttoptr i64 %__x.sroa.0.071 to %"struct.std::_Rb_tree_node"*
  %_M_string_length.i14.i.i.i34 = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %6, i64 0, i32 1, i32 0, i64 8
  %7 = bitcast i8* %_M_string_length.i14.i.i.i34 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !16
  %cmp.i15.i.i.i35 = icmp ugt i64 %4, %8
  %.sroa.speculated.i.i.i36 = select i1 %cmp.i15.i.i.i35, i64 %8, i64 %4
  %cmp.i13.i.i.i37 = icmp eq i64 %.sroa.speculated.i.i.i36, 0
  br i1 %cmp.i13.i.i.i37, label %if.then.i.i.i45, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i42

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i42: ; preds = %while.body
  %_M_storage.i.i.i27 = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %6, i64 0, i32 1
  %_M_p.i.i.i.i.i38 = bitcast %"struct.__gnu_cxx::__aligned_membuf"* %_M_storage.i.i.i27 to i8**
  %9 = load i8*, i8** %_M_p.i.i.i.i.i38, align 8, !tbaa !13
  %call.i.i.i.i40 = tail call i32 @memcmp(i8* %5, i8* %9, i64 %.sroa.speculated.i.i.i36) #17
  %tobool.i.i.i41 = icmp eq i32 %call.i.i.i.i40, 0
  br i1 %tobool.i.i.i41, label %if.then.i.i.i45, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit50

if.then.i.i.i45:                                  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i42, %while.body
  %sub.i.i.i.i43 = sub i64 %4, %8
  %cmp.i.i.i.i44 = icmp sgt i64 %sub.i.i.i.i43, 2147483647
  br i1 %cmp.i.i.i.i44, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit50.thread, label %if.else.i.i.i.i47

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit50.thread: ; preds = %if.then.i.i.i45
  %10 = inttoptr i64 %__x.sroa.0.071 to %"struct.std::_Rb_tree_node_base"*
  br label %cond.false

if.else.i.i.i.i47:                                ; preds = %if.then.i.i.i45
  %11 = icmp sgt i64 %sub.i.i.i.i43, -2147483648
  %spec.select7.i.i.i.i46 = select i1 %11, i64 %sub.i.i.i.i43, i64 -2147483648
  %12 = trunc i64 %spec.select7.i.i.i.i46 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit50

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit50: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i42, %if.else.i.i.i.i47
  %__r.0.i.i.i48 = phi i32 [ %call.i.i.i.i40, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i42 ], [ %12, %if.else.i.i.i.i47 ]
  %cmp.i.i49 = icmp slt i32 %__r.0.i.i.i48, 0
  %13 = inttoptr i64 %__x.sroa.0.071 to %"struct.std::_Rb_tree_node_base"*
  br i1 %cmp.i.i49, label %cond.true, label %cond.false

cond.true:                                        ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit50
  %_M_left.i32 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %13, i64 0, i32 2
  br label %cond.end

cond.false:                                       ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit50.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit50
  %14 = phi %"struct.std::_Rb_tree_node_base"* [ %10, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit50.thread ], [ %13, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit50 ]
  %_M_right.i = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %14, i64 0, i32 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cmp.i.i4964 = phi i1 [ true, %cond.true ], [ false, %cond.false ]
  %cond.in.in = phi %"struct.std::_Rb_tree_node_base"** [ %_M_left.i32, %cond.true ], [ %_M_right.i, %cond.false ]
  %15 = bitcast %"struct.std::_Rb_tree_node_base"** %cond.in.in to i64*
  %__x.sroa.0.0 = load i64, i64* %15, align 8, !tbaa !6
  %cmp = icmp eq i64 %__x.sroa.0.0, 0
  br i1 %cmp, label %while.end, label %while.body

while.end:                                        ; preds = %cond.end
  %16 = inttoptr i64 %__x.sroa.0.071 to %"struct.std::_Rb_tree_node_base"*
  br i1 %cmp.i.i4964, label %if.then, label %if.end12

if.then:                                          ; preds = %while.end.thread, %while.end
  %17 = phi %"struct.std::_Rb_tree_node_base"* [ %3, %while.end.thread ], [ %16, %while.end ]
  %__y.sroa.0.0.lcssa78 = phi i64 [ %2, %while.end.thread ], [ %__x.sroa.0.071, %while.end ]
  %_M_left.i = getelementptr inbounds i8, i8* %0, i64 24
  %18 = bitcast i8* %_M_left.i to %"struct.std::_Rb_tree_node_base"**
  %19 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %18, align 8, !tbaa !28
  %cmp.i = icmp eq %"struct.std::_Rb_tree_node_base"* %19, %17
  br i1 %cmp.i, label %cleanup, label %if.else

if.else:                                          ; preds = %if.then
  %call.i = tail call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %17) #18
  %20 = ptrtoint %"struct.std::_Rb_tree_node_base"* %call.i to i64
  br label %if.end12

if.end12:                                         ; preds = %if.else, %while.end
  %__y.sroa.0.0.lcssa77 = phi i64 [ %__y.sroa.0.0.lcssa78, %if.else ], [ %__x.sroa.0.071, %while.end ]
  %.pre-phi = phi %"struct.std::_Rb_tree_node_base"* [ %call.i, %if.else ], [ %16, %while.end ]
  %__j.sroa.0.0 = phi i64 [ %20, %if.else ], [ %__x.sroa.0.071, %while.end ]
  %_M_string_length.i.i.i.i = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %.pre-phi, i64 1, i32 1
  %21 = bitcast %"struct.std::_Rb_tree_node_base"** %_M_string_length.i.i.i.i to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !16
  %_M_string_length.i14.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %__k, i64 0, i32 1
  %23 = load i64, i64* %_M_string_length.i14.i.i.i, align 8, !tbaa !16
  %cmp.i15.i.i.i = icmp ugt i64 %22, %23
  %.sroa.speculated.i.i.i = select i1 %cmp.i15.i.i.i, i64 %23, i64 %22
  %cmp.i13.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %cmp.i13.i.i.i, label %if.then.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %if.end12
  %_M_storage.i.i.i = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %.pre-phi, i64 1
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %__k, i64 0, i32 0, i32 0
  %24 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !13
  %_M_p.i.i.i.i = bitcast %"struct.std::_Rb_tree_node_base"* %_M_storage.i.i.i to i8**
  %25 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !13
  %call.i.i.i.i = tail call i32 @memcmp(i8* %25, i8* %24, i64 %.sroa.speculated.i.i.i) #17
  %tobool.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.i.i.i, label %if.then.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

if.then.i.i.i:                                    ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %if.end12
  %sub.i.i.i.i = sub i64 %22, %23
  %cmp.i.i.i.i = icmp sgt i64 %sub.i.i.i.i, 2147483647
  br i1 %cmp.i.i.i.i, label %if.end18, label %if.else.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i.i.i
  %26 = icmp sgt i64 %sub.i.i.i.i, -2147483648
  %spec.select7.i.i.i.i = select i1 %26, i64 %sub.i.i.i.i, i64 -2147483648
  %27 = trunc i64 %spec.select7.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %if.else.i.i.i.i
  %__r.0.i.i.i = phi i32 [ %call.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %27, %if.else.i.i.i.i ]
  %cmp.i.i = icmp slt i32 %__r.0.i.i.i, 0
  br i1 %cmp.i.i, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.then.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br label %cleanup

cleanup:                                          ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %if.then, %if.end18
  %retval.sroa.0.0 = phi i64 [ %__j.sroa.0.0, %if.end18 ], [ 0, %if.then ], [ 0, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %retval.sroa.4.0 = phi i64 [ 0, %if.end18 ], [ %__y.sroa.0.0.lcssa78, %if.then ], [ %__y.sroa.0.0.lcssa77, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %28 = inttoptr i64 %retval.sroa.0.0 to %"struct.std::_Rb_tree_node_base"*
  %.fca.0.insert = insertvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } undef, %"struct.std::_Rb_tree_node_base"* %28, 0
  %29 = inttoptr i64 %retval.sroa.4.0 to %"struct.std::_Rb_tree_node_base"*
  %.fca.1.insert = insertvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %.fca.0.insert, %"struct.std::_Rb_tree_node_base"* %29, 1
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %.fca.1.insert
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRPKciEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__node, i8** dereferenceable(8) %__args, i32* dereferenceable(4) %__args1) local_unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i.i.i.i = alloca i64, align 8
  %_M_storage.i = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__node, i64 0, i32 1
  %first.i.i.i = bitcast %"struct.__gnu_cxx::__aligned_membuf"* %_M_storage.i to %"class.std::__cxx11::basic_string"*
  %0 = load i8*, i8** %__args, align 8, !tbaa !6
  %1 = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__node, i64 0, i32 1, i32 0, i64 16
  %2 = bitcast %"struct.__gnu_cxx::__aligned_membuf"* %_M_storage.i to i8**
  store i8* %1, i8** %2, align 8, !tbaa !11
  %tobool.i.i.i.i = icmp eq i8* %0, null
  br i1 %tobool.i.i.i.i, label %if.then.i.i.i.i.i.i.i, label %cond.end.thread.i.i.i.i

cond.end.thread.i.i.i.i:                          ; preds = %entry
  %call.i.i.i.i.i = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #17
  %3 = bitcast i64* %__dnew.i.i.i.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #17
  store i64 %call.i.i.i.i.i, i64* %__dnew.i.i.i.i.i.i.i, align 8, !tbaa !17
  %cmp3.i.i.i.i.i.i.i = icmp ugt i64 %call.i.i.i.i.i, 15
  br i1 %cmp3.i.i.i.i.i.i.i, label %if.then4.i.i.i.i.i.i.i, label %if.end6.i.i.i.i.i.i.i

if.then.i.i.i.i.i.i.i:                            ; preds = %entry
  invoke void @_ZSt19__throw_logic_errorPKc(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0)) #16
          to label %.noexc unwind label %lpad

.noexc:                                           ; preds = %if.then.i.i.i.i.i.i.i
  unreachable

if.then4.i.i.i.i.i.i.i:                           ; preds = %cond.end.thread.i.i.i.i
  %call5.i.i.i9.i4.i.i.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull %first.i.i.i, i64* nonnull dereferenceable(8) %__dnew.i.i.i.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i4.i.i.i.noexc unwind label %lpad

call5.i.i.i9.i4.i.i.i.noexc:                      ; preds = %if.then4.i.i.i.i.i.i.i
  store i8* %call5.i.i.i9.i4.i.i.i15, i8** %2, align 8, !tbaa !13
  %4 = load i64, i64* %__dnew.i.i.i.i.i.i.i, align 8, !tbaa !17
  %5 = bitcast i8* %1 to i64*
  store i64 %4, i64* %5, align 8, !tbaa !18
  br label %if.end6.i.i.i.i.i.i.i

if.end6.i.i.i.i.i.i.i:                            ; preds = %call5.i.i.i9.i4.i.i.i.noexc, %cond.end.thread.i.i.i.i
  %6 = phi i8* [ %call5.i.i.i9.i4.i.i.i15, %call5.i.i.i9.i4.i.i.i.noexc ], [ %1, %cond.end.thread.i.i.i.i ]
  switch i64 %call.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i.i.i [
    i64 1, label %if.then.i.i.i.i.i.i.i.i.i
    i64 0, label %try.cont
  ]

if.then.i.i.i.i.i.i.i.i.i:                        ; preds = %if.end6.i.i.i.i.i.i.i
  %7 = load i8, i8* %0, align 1, !tbaa !18
  store i8 %7, i8* %6, align 1, !tbaa !18
  br label %try.cont

if.end.i.i.i.i.i.i.i.i.i.i:                       ; preds = %if.end6.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* nonnull align 1 %0, i64 %call.i.i.i.i.i, i1 false) #17
  br label %try.cont

lpad:                                             ; preds = %if.then4.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i
  %8 = landingpad { i8*, i32 }
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = call i8* @__cxa_begin_catch(i8* %9) #17
  %11 = bitcast %"struct.std::_Rb_tree_node"* %__node to i8*
  call void @_ZdlPv(i8* %11) #17
  invoke void @__cxa_rethrow() #16
          to label %unreachable unwind label %lpad8

lpad8:                                            ; preds = %lpad
  %12 = landingpad { i8*, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad

try.cont:                                         ; preds = %if.end.i.i.i.i.i.i.i.i.i.i, %if.then.i.i.i.i.i.i.i.i.i, %if.end6.i.i.i.i.i.i.i
  %13 = load i64, i64* %__dnew.i.i.i.i.i.i.i, align 8, !tbaa !17
  %_M_string_length.i.i.i.i.i.i.i.i.i = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__node, i64 0, i32 1, i32 0, i64 8
  %14 = bitcast i8* %_M_string_length.i.i.i.i.i.i.i.i.i to i64*
  store i64 %13, i64* %14, align 8, !tbaa !16
  %15 = load i8*, i8** %2, align 8, !tbaa !13
  %arrayidx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, i8* %15, i64 %13
  store i8 0, i8* %arrayidx.i.i.i.i.i.i.i.i, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #17
  %second.i.i.i = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %__node, i64 0, i32 1, i32 0, i64 32
  %16 = bitcast i8* %second.i.i.i to double*
  %17 = load i32, i32* %__args1, align 4, !tbaa !37
  %conv.i.i.i = sitofp i32 %17 to double
  store double %conv.i.i.i, double* %16, align 8, !tbaa !39
  ret void

eh.resume:                                        ; preds = %lpad8
  resume { i8*, i32 } %12

terminate.lpad:                                   ; preds = %lpad8
  %18 = landingpad { i8*, i32 }
          catch i8* null
  %19 = extractvalue { i8*, i32 } %18, 0
  call void @__clang_call_terminate(i8* %19) #20
  unreachable

unreachable:                                      ; preds = %lpad
  unreachable
}

; Function Attrs: nounwind readonly
declare dso_local %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) local_unnamed_addr #13

; Function Attrs: nounwind
declare dso_local void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* dereferenceable(32)) local_unnamed_addr #5

attributes #0 = { nofree norecurse nounwind uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noinline noreturn nounwind }
attributes #13 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { noreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind readonly }
attributes #19 = { builtin }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"vtable pointer", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{i64 0, i64 8, !6}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !4, i64 0}
!9 = !{!10, !7, i64 0}
!10 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE", !7, i64 0}
!11 = !{!12, !7, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !7, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !15, i64 8, !8, i64 16}
!15 = !{!"long", !8, i64 0}
!16 = !{!14, !15, i64 8}
!17 = !{!15, !15, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"double", !8, i64 0}
!21 = !{!22, !20, i64 32}
!22 = !{!"_ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdE", !14, i64 0, !20, i64 32}
!23 = !{!24, !26, i64 0}
!24 = !{!"_ZTSSt15_Rb_tree_header", !25, i64 0, !15, i64 32}
!25 = !{!"_ZTSSt18_Rb_tree_node_base", !26, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!26 = !{!"_ZTSSt14_Rb_tree_color", !8, i64 0}
!27 = !{!24, !7, i64 8}
!28 = !{!24, !7, i64 16}
!29 = !{!24, !7, i64 24}
!30 = !{!24, !15, i64 32}
!31 = !{!32, !7, i64 56}
!32 = !{!"_ZTS14TimeKeeperImpl", !33, i64 8, !7, i64 56, !20, i64 64}
!33 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEE", !34, i64 0}
!34 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !35, i64 0}
!35 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE"}
!36 = !{!32, !20, i64 64}
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !8, i64 0}
!39 = !{!40, !20, i64 32}
!40 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdE", !14, i64 0, !20, i64 32}
!41 = !{!25, !7, i64 24}
!42 = !{!25, !7, i64 16}
