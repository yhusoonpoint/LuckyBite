; ModuleID = 'obj\Release\120\android\marshal_methods.x86.ll'
source_filename = "obj\Release\120\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [144 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 60
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 19
	i32 45848530, ; 2: Microsoft.VisualStudio.TestPlatform.TestFramework.Extensions => 0x2bb97d2 => 13
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 53
	i32 91866553, ; 4: MonkeyCache.dll => 0x579c5b9 => 14
	i32 182336117, ; 5: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 49
	i32 212497893, ; 6: Xamarin.Forms.Maps.Android => 0xcaa75e5 => 54
	i32 230752869, ; 7: Microsoft.CSharp.dll => 0xdc10265 => 70
	i32 284839033, ; 8: MainCapStone.Android.dll => 0x10fa4c79 => 1
	i32 318968648, ; 9: Xamarin.AndroidX.Activity.dll => 0x13031348 => 32
	i32 319314094, ; 10: Xamarin.Forms.Maps => 0x130858ae => 55
	i32 321597661, ; 11: System.Numerics => 0x132b30dd => 28
	i32 342366114, ; 12: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 43
	i32 347068432, ; 13: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 23
	i32 442521989, ; 14: Xamarin.Essentials => 0x1a605985 => 52
	i32 450948140, ; 15: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 41
	i32 465846621, ; 16: mscorlib => 0x1bc4415d => 17
	i32 469710990, ; 17: System.dll => 0x1bff388e => 27
	i32 549153152, ; 18: Microsoft.VisualStudio.TestPlatform.TestFramework.Extensions.dll => 0x20bb6980 => 13
	i32 627609679, ; 19: Xamarin.AndroidX.CustomView => 0x2568904f => 39
	i32 690569205, ; 20: System.Xml.Linq.dll => 0x29293ff5 => 31
	i32 738085319, ; 21: MainCapStone.Android => 0x2bfe49c7 => 1
	i32 748832960, ; 22: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 21
	i32 775507847, ; 23: System.IO.Compression => 0x2e394f87 => 69
	i32 809851609, ; 24: System.Drawing.Common.dll => 0x30455ad9 => 68
	i32 835661280, ; 25: MvvmHelpers.dll => 0x31cf2de0 => 18
	i32 928116545, ; 26: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 60
	i32 955402788, ; 27: Newtonsoft.Json => 0x38f24a24 => 19
	i32 967690846, ; 28: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 43
	i32 974778368, ; 29: FormsViewGroup.dll => 0x3a19f000 => 9
	i32 1008022582, ; 30: MonkeyCache.FileStore => 0x3c153436 => 15
	i32 1012816738, ; 31: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 48
	i32 1035644815, ; 32: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 34
	i32 1042160112, ; 33: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 57
	i32 1052210849, ; 34: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 45
	i32 1098259244, ; 35: System => 0x41761b2c => 27
	i32 1139159932, ; 36: Accord.MachineLearning => 0x43e6337c => 5
	i32 1275269745, ; 37: Microsoft.VisualStudio.TestPlatform.TestFramework.resources => 0x4c031271 => 0
	i32 1292207520, ; 38: SQLitePCLRaw.core.dll => 0x4d0585a0 => 22
	i32 1293217323, ; 39: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 40
	i32 1365406463, ; 40: System.ServiceModel.Internals.dll => 0x516272ff => 66
	i32 1376866003, ; 41: Xamarin.AndroidX.SavedState => 0x52114ed3 => 48
	i32 1385471832, ; 42: Accord.Statistics => 0x52949f58 => 8
	i32 1406073936, ; 43: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 36
	i32 1411638395, ; 44: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 29
	i32 1428822194, ; 45: Accord.Math.Core => 0x552a18b2 => 6
	i32 1460219004, ; 46: Xamarin.Forms.Xaml => 0x57092c7c => 58
	i32 1462112819, ; 47: System.IO.Compression.dll => 0x57261233 => 69
	i32 1469204771, ; 48: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 33
	i32 1530663695, ; 49: Xamarin.Forms.Maps.dll => 0x5b3c130f => 55
	i32 1592978981, ; 50: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 51: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 46
	i32 1636350590, ; 52: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 38
	i32 1639515021, ; 53: System.Net.Http.dll => 0x61b9038d => 2
	i32 1658251792, ; 54: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 59
	i32 1711441057, ; 55: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 23
	i32 1729485958, ; 56: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 35
	i32 1766324549, ; 57: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 49
	i32 1776026572, ; 58: System.Core.dll => 0x69dc03cc => 26
	i32 1788241197, ; 59: Xamarin.AndroidX.Fragment => 0x6a96652d => 41
	i32 1808609942, ; 60: Xamarin.AndroidX.Loader => 0x6bcd3296 => 46
	i32 1813201214, ; 61: Xamarin.Google.Android.Material => 0x6c13413e => 59
	i32 1867746548, ; 62: Xamarin.Essentials.dll => 0x6f538cf4 => 52
	i32 1878053835, ; 63: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 58
	i32 1881862856, ; 64: Xamarin.Forms.Maps.Android.dll => 0x702af2c8 => 54
	i32 1908813208, ; 65: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 62
	i32 1945827410, ; 66: Microsoft.VisualStudio.TestPlatform.TestFramework.dll => 0x73faf852 => 12
	i32 1964994573, ; 67: Accord.MachineLearning.dll => 0x751f700d => 5
	i32 2011961780, ; 68: System.Buffers.dll => 0x77ec19b4 => 25
	i32 2019465201, ; 69: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 45
	i32 2055257422, ; 70: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 44
	i32 2097448633, ; 71: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 42
	i32 2103459038, ; 72: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 24
	i32 2126786730, ; 73: Xamarin.Forms.Platform.Android => 0x7ec430aa => 56
	i32 2129483829, ; 74: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 61
	i32 2201231467, ; 75: System.Net.Http => 0x8334206b => 2
	i32 2268072489, ; 76: Accord => 0x87300a29 => 4
	i32 2279755925, ; 77: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 47
	i32 2435904999, ; 78: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 65
	i32 2465273461, ; 79: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 21
	i32 2475788418, ; 80: Java.Interop.dll => 0x93918882 => 10
	i32 2562349572, ; 81: Microsoft.CSharp => 0x98ba5a04 => 70
	i32 2569711414, ; 82: MonkeyCache.FileStore.dll => 0x992aaf36 => 15
	i32 2620871830, ; 83: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 38
	i32 2655103248, ; 84: Accord.dll => 0x9e41a910 => 4
	i32 2732626843, ; 85: Xamarin.AndroidX.Activity => 0xa2e0939b => 32
	i32 2737747696, ; 86: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 33
	i32 2766581644, ; 87: Xamarin.Forms.Core => 0xa4e6af8c => 53
	i32 2778768386, ; 88: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 50
	i32 2810250172, ; 89: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 36
	i32 2819470561, ; 90: System.Xml.dll => 0xa80db4e1 => 30
	i32 2847418871, ; 91: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 61
	i32 2853208004, ; 92: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 50
	i32 2905242038, ; 93: mscorlib.dll => 0xad2a79b6 => 17
	i32 2978675010, ; 94: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 40
	i32 3017076677, ; 95: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 63
	i32 3044182254, ; 96: FormsViewGroup => 0xb57288ee => 9
	i32 3058099980, ; 97: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 64
	i32 3092250273, ; 98: Accord.Math => 0xb84ffea1 => 7
	i32 3111772706, ; 99: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3204380047, ; 100: System.Data.dll => 0xbefef58f => 67
	i32 3230466174, ; 101: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 62
	i32 3239802787, ; 102: Accord.Math.dll => 0xc11b77a3 => 7
	i32 3247949154, ; 103: Mono.Security => 0xc197c562 => 71
	i32 3257332390, ; 104: MvvmHelpers => 0xc226f2a6 => 18
	i32 3258312781, ; 105: Xamarin.AndroidX.CardView => 0xc235e84d => 35
	i32 3273503756, ; 106: MonkeyCache => 0xc31db40c => 14
	i32 3286872994, ; 107: SQLite-net.dll => 0xc3e9b3a2 => 20
	i32 3293959912, ; 108: Accord.Math.Core.dll => 0xc455d6e8 => 6
	i32 3317135071, ; 109: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 39
	i32 3317144872, ; 110: System.Data => 0xc5b79d28 => 67
	i32 3353484488, ; 111: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 42
	i32 3353544232, ; 112: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 51
	i32 3360279109, ; 113: SQLitePCLRaw.core => 0xc849ca45 => 22
	i32 3362522851, ; 114: Xamarin.AndroidX.Core => 0xc86c06e3 => 37
	i32 3366347497, ; 115: Java.Interop => 0xc8a662e9 => 10
	i32 3374999561, ; 116: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 47
	i32 3395150330, ; 117: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 29
	i32 3404865022, ; 118: System.ServiceModel.Internals => 0xcaf21dfe => 66
	i32 3407215217, ; 119: Xamarin.CommunityToolkit => 0xcb15fa71 => 51
	i32 3429136800, ; 120: System.Xml => 0xcc6479a0 => 30
	i32 3476120550, ; 121: Mono.Android => 0xcf3163e6 => 16
	i32 3509114376, ; 122: System.Xml.Linq => 0xd128d608 => 31
	i32 3536029504, ; 123: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 56
	i32 3632359727, ; 124: Xamarin.Forms.Platform => 0xd881692f => 57
	i32 3641597786, ; 125: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 44
	i32 3645089577, ; 126: System.ComponentModel.DataAnnotations => 0xd943a729 => 65
	i32 3672681054, ; 127: Mono.Android.dll => 0xdae8aa5e => 16
	i32 3689375977, ; 128: System.Drawing.Common => 0xdbe768e9 => 68
	i32 3738858612, ; 129: MainCapStone.dll => 0xdeda7474 => 11
	i32 3754567612, ; 130: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 24
	i32 3819541726, ; 131: Accord.Statistics.dll => 0xe3a994de => 8
	i32 3829621856, ; 132: System.Numerics.dll => 0xe4436460 => 28
	i32 3876362041, ; 133: SQLite-net => 0xe70c9739 => 20
	i32 3878461487, ; 134: MainCapStone => 0xe72ca02f => 11
	i32 3896760992, ; 135: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 37
	i32 3955647286, ; 136: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 34
	i32 3970018735, ; 137: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 64
	i32 3977513776, ; 138: Microsoft.VisualStudio.TestPlatform.TestFramework => 0xed140b30 => 12
	i32 3998184788, ; 139: Microsoft.VisualStudio.TestPlatform.TestFramework.resources.dll => 0xee4f7554 => 0
	i32 4105002889, ; 140: Mono.Security.dll => 0xf4ad5f89 => 71
	i32 4151237749, ; 141: System.Core => 0xf76edc75 => 26
	i32 4260525087, ; 142: System.Buffers => 0xfdf2741f => 25
	i32 4278134329 ; 143: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 63
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [144 x i32] [
	i32 60, i32 19, i32 13, i32 53, i32 14, i32 49, i32 54, i32 70, ; 0..7
	i32 1, i32 32, i32 55, i32 28, i32 43, i32 23, i32 52, i32 41, ; 8..15
	i32 17, i32 27, i32 13, i32 39, i32 31, i32 1, i32 21, i32 69, ; 16..23
	i32 68, i32 18, i32 60, i32 19, i32 43, i32 9, i32 15, i32 48, ; 24..31
	i32 34, i32 57, i32 45, i32 27, i32 5, i32 0, i32 22, i32 40, ; 32..39
	i32 66, i32 48, i32 8, i32 36, i32 29, i32 6, i32 58, i32 69, ; 40..47
	i32 33, i32 55, i32 3, i32 46, i32 38, i32 2, i32 59, i32 23, ; 48..55
	i32 35, i32 49, i32 26, i32 41, i32 46, i32 59, i32 52, i32 58, ; 56..63
	i32 54, i32 62, i32 12, i32 5, i32 25, i32 45, i32 44, i32 42, ; 64..71
	i32 24, i32 56, i32 61, i32 2, i32 4, i32 47, i32 65, i32 21, ; 72..79
	i32 10, i32 70, i32 15, i32 38, i32 4, i32 32, i32 33, i32 53, ; 80..87
	i32 50, i32 36, i32 30, i32 61, i32 50, i32 17, i32 40, i32 63, ; 88..95
	i32 9, i32 64, i32 7, i32 3, i32 67, i32 62, i32 7, i32 71, ; 96..103
	i32 18, i32 35, i32 14, i32 20, i32 6, i32 39, i32 67, i32 42, ; 104..111
	i32 51, i32 22, i32 37, i32 10, i32 47, i32 29, i32 66, i32 51, ; 112..119
	i32 30, i32 16, i32 31, i32 56, i32 57, i32 44, i32 65, i32 16, ; 120..127
	i32 68, i32 11, i32 24, i32 8, i32 28, i32 20, i32 11, i32 37, ; 128..135
	i32 34, i32 64, i32 12, i32 0, i32 71, i32 26, i32 25, i32 63 ; 144..143
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
