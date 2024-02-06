; ModuleID = 'obj\Debug\120\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\120\android\marshal_methods.x86.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [230 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 65
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 97
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 20
	i32 45848530, ; 3: Microsoft.VisualStudio.TestPlatform.TestFramework.Extensions => 0x2bb97d2 => 14
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 90
	i32 91866553, ; 5: MonkeyCache.dll => 0x579c5b9 => 15
	i32 101534019, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 79
	i32 120558881, ; 7: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 79
	i32 159306688, ; 8: System.ComponentModel.Annotations => 0x97ed3c0 => 2
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 46
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 80
	i32 209399409, ; 11: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 44
	i32 212497893, ; 12: Xamarin.Forms.Maps.Android => 0xcaa75e5 => 91
	i32 230216969, ; 13: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 60
	i32 230752869, ; 14: Microsoft.CSharp.dll => 0xdc10265 => 113
	i32 232815796, ; 15: System.Web.Services => 0xde07cb4 => 112
	i32 261689757, ; 16: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 49
	i32 278686392, ; 17: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 64
	i32 280482487, ; 18: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 58
	i32 284839033, ; 19: MainCapStone.Android.dll => 0x10fa4c79 => 1
	i32 318968648, ; 20: Xamarin.AndroidX.Activity.dll => 0x13031348 => 36
	i32 319314094, ; 21: Xamarin.Forms.Maps => 0x130858ae => 92
	i32 321597661, ; 22: System.Numerics => 0x132b30dd => 30
	i32 342366114, ; 23: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 62
	i32 347068432, ; 24: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 24
	i32 385762202, ; 25: System.Memory.dll => 0x16fe439a => 29
	i32 441335492, ; 26: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 48
	i32 442521989, ; 27: Xamarin.Essentials => 0x1a605985 => 89
	i32 450948140, ; 28: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 57
	i32 465846621, ; 29: mscorlib => 0x1bc4415d => 18
	i32 469710990, ; 30: System.dll => 0x1bff388e => 28
	i32 476646585, ; 31: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 58
	i32 486930444, ; 32: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 69
	i32 526420162, ; 33: System.Transactions.dll => 0x1f6088c2 => 106
	i32 549153152, ; 34: Microsoft.VisualStudio.TestPlatform.TestFramework.Extensions.dll => 0x20bb6980 => 14
	i32 605376203, ; 35: System.IO.Compression.FileSystem => 0x24154ecb => 110
	i32 627609679, ; 36: Xamarin.AndroidX.CustomView => 0x2568904f => 53
	i32 663517072, ; 37: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 85
	i32 666292255, ; 38: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 41
	i32 690569205, ; 39: System.Xml.Linq.dll => 0x29293ff5 => 35
	i32 738085319, ; 40: MainCapStone.Android => 0x2bfe49c7 => 1
	i32 748832960, ; 41: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 22
	i32 775507847, ; 42: System.IO.Compression => 0x2e394f87 => 109
	i32 809851609, ; 43: System.Drawing.Common.dll => 0x30455ad9 => 108
	i32 835661280, ; 44: MvvmHelpers.dll => 0x31cf2de0 => 19
	i32 843511501, ; 45: Xamarin.AndroidX.Print => 0x3246f6cd => 76
	i32 928116545, ; 46: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 97
	i32 955402788, ; 47: Newtonsoft.Json => 0x38f24a24 => 20
	i32 967690846, ; 48: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 62
	i32 974778368, ; 49: FormsViewGroup.dll => 0x3a19f000 => 10
	i32 1008022582, ; 50: MonkeyCache.FileStore => 0x3c153436 => 16
	i32 1012816738, ; 51: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 78
	i32 1035644815, ; 52: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 40
	i32 1042160112, ; 53: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 94
	i32 1052210849, ; 54: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 66
	i32 1098259244, ; 55: System => 0x41761b2c => 28
	i32 1139159932, ; 56: Accord.MachineLearning => 0x43e6337c => 6
	i32 1175144683, ; 57: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 83
	i32 1178241025, ; 58: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 73
	i32 1204270330, ; 59: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 41
	i32 1267360935, ; 60: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 84
	i32 1275269745, ; 61: Microsoft.VisualStudio.TestPlatform.TestFramework.resources => 0x4c031271 => 0
	i32 1292207520, ; 62: SQLitePCLRaw.core.dll => 0x4d0585a0 => 23
	i32 1293217323, ; 63: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 55
	i32 1365406463, ; 64: System.ServiceModel.Internals.dll => 0x516272ff => 103
	i32 1376866003, ; 65: Xamarin.AndroidX.SavedState => 0x52114ed3 => 78
	i32 1385471832, ; 66: Accord.Statistics => 0x52949f58 => 9
	i32 1395857551, ; 67: Xamarin.AndroidX.Media.dll => 0x5333188f => 70
	i32 1406073936, ; 68: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 50
	i32 1411638395, ; 69: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 32
	i32 1428822194, ; 70: Accord.Math.Core => 0x552a18b2 => 7
	i32 1460219004, ; 71: Xamarin.Forms.Xaml => 0x57092c7c => 95
	i32 1462112819, ; 72: System.IO.Compression.dll => 0x57261233 => 109
	i32 1469204771, ; 73: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 39
	i32 1530663695, ; 74: Xamarin.Forms.Maps.dll => 0x5b3c130f => 92
	i32 1582372066, ; 75: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 54
	i32 1592978981, ; 76: System.Runtime.Serialization.dll => 0x5ef2ee25 => 4
	i32 1622152042, ; 77: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 68
	i32 1624863272, ; 78: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 87
	i32 1636350590, ; 79: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 52
	i32 1639515021, ; 80: System.Net.Http.dll => 0x61b9038d => 3
	i32 1657153582, ; 81: System.Runtime => 0x62c6282e => 33
	i32 1658241508, ; 82: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 81
	i32 1658251792, ; 83: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 96
	i32 1670060433, ; 84: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 49
	i32 1711441057, ; 85: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 24
	i32 1729485958, ; 86: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 45
	i32 1766324549, ; 87: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 80
	i32 1776026572, ; 88: System.Core.dll => 0x69dc03cc => 27
	i32 1788241197, ; 89: Xamarin.AndroidX.Fragment => 0x6a96652d => 57
	i32 1808609942, ; 90: Xamarin.AndroidX.Loader => 0x6bcd3296 => 68
	i32 1813201214, ; 91: Xamarin.Google.Android.Material => 0x6c13413e => 96
	i32 1818569960, ; 92: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 74
	i32 1867746548, ; 93: Xamarin.Essentials.dll => 0x6f538cf4 => 89
	i32 1878053835, ; 94: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 95
	i32 1881862856, ; 95: Xamarin.Forms.Maps.Android.dll => 0x702af2c8 => 91
	i32 1885316902, ; 96: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 42
	i32 1908813208, ; 97: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 99
	i32 1919157823, ; 98: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 71
	i32 1945827410, ; 99: Microsoft.VisualStudio.TestPlatform.TestFramework.dll => 0x73faf852 => 13
	i32 1964994573, ; 100: Accord.MachineLearning.dll => 0x751f700d => 6
	i32 2011961780, ; 101: System.Buffers.dll => 0x77ec19b4 => 26
	i32 2019465201, ; 102: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 66
	i32 2055257422, ; 103: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 63
	i32 2079903147, ; 104: System.Runtime.dll => 0x7bf8cdab => 33
	i32 2090596640, ; 105: System.Numerics.Vectors => 0x7c9bf920 => 31
	i32 2097448633, ; 106: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 59
	i32 2103459038, ; 107: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 25
	i32 2126786730, ; 108: Xamarin.Forms.Platform.Android => 0x7ec430aa => 93
	i32 2129483829, ; 109: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 98
	i32 2201231467, ; 110: System.Net.Http => 0x8334206b => 3
	i32 2217644978, ; 111: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 83
	i32 2244775296, ; 112: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 69
	i32 2256548716, ; 113: Xamarin.AndroidX.MultiDex => 0x8680336c => 71
	i32 2261435625, ; 114: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 61
	i32 2268072489, ; 115: Accord => 0x87300a29 => 5
	i32 2279755925, ; 116: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 77
	i32 2315684594, ; 117: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 37
	i32 2409053734, ; 118: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 75
	i32 2435904999, ; 119: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 102
	i32 2465273461, ; 120: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 22
	i32 2465532216, ; 121: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 48
	i32 2471841756, ; 122: netstandard.dll => 0x93554fdc => 104
	i32 2475788418, ; 123: Java.Interop.dll => 0x93918882 => 11
	i32 2501346920, ; 124: System.Data.DataSetExtensions => 0x95178668 => 107
	i32 2505896520, ; 125: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 65
	i32 2562349572, ; 126: Microsoft.CSharp => 0x98ba5a04 => 113
	i32 2569711414, ; 127: MonkeyCache.FileStore.dll => 0x992aaf36 => 16
	i32 2581819634, ; 128: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 84
	i32 2620871830, ; 129: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 52
	i32 2624644809, ; 130: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 56
	i32 2633051222, ; 131: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 64
	i32 2655103248, ; 132: Accord.dll => 0x9e41a910 => 5
	i32 2701096212, ; 133: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 81
	i32 2732626843, ; 134: Xamarin.AndroidX.Activity => 0xa2e0939b => 36
	i32 2737747696, ; 135: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 39
	i32 2766581644, ; 136: Xamarin.Forms.Core => 0xa4e6af8c => 90
	i32 2778768386, ; 137: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 86
	i32 2810250172, ; 138: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 50
	i32 2819470561, ; 139: System.Xml.dll => 0xa80db4e1 => 34
	i32 2847418871, ; 140: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 98
	i32 2853208004, ; 141: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 86
	i32 2855708567, ; 142: Xamarin.AndroidX.Transition => 0xaa36a797 => 82
	i32 2903344695, ; 143: System.ComponentModel.Composition => 0xad0d8637 => 111
	i32 2905242038, ; 144: mscorlib.dll => 0xad2a79b6 => 18
	i32 2916838712, ; 145: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 87
	i32 2919462931, ; 146: System.Numerics.Vectors.dll => 0xae037813 => 31
	i32 2921128767, ; 147: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 38
	i32 2978675010, ; 148: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 55
	i32 3017076677, ; 149: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 100
	i32 3024354802, ; 150: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 60
	i32 3044182254, ; 151: FormsViewGroup => 0xb57288ee => 10
	i32 3057625584, ; 152: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 72
	i32 3058099980, ; 153: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 101
	i32 3092250273, ; 154: Accord.Math => 0xb84ffea1 => 8
	i32 3111772706, ; 155: System.Runtime.Serialization => 0xb979e222 => 4
	i32 3204380047, ; 156: System.Data.dll => 0xbefef58f => 105
	i32 3211777861, ; 157: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 54
	i32 3230466174, ; 158: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 99
	i32 3239802787, ; 159: Accord.Math.dll => 0xc11b77a3 => 8
	i32 3247949154, ; 160: Mono.Security => 0xc197c562 => 114
	i32 3257332390, ; 161: MvvmHelpers => 0xc226f2a6 => 19
	i32 3258312781, ; 162: Xamarin.AndroidX.CardView => 0xc235e84d => 45
	i32 3267021929, ; 163: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 43
	i32 3273503756, ; 164: MonkeyCache => 0xc31db40c => 15
	i32 3280506390, ; 165: System.ComponentModel.Annotations.dll => 0xc3888e16 => 2
	i32 3286872994, ; 166: SQLite-net.dll => 0xc3e9b3a2 => 21
	i32 3293959912, ; 167: Accord.Math.Core.dll => 0xc455d6e8 => 7
	i32 3317135071, ; 168: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 53
	i32 3317144872, ; 169: System.Data => 0xc5b79d28 => 105
	i32 3340431453, ; 170: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 42
	i32 3346324047, ; 171: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 73
	i32 3353484488, ; 172: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 59
	i32 3353544232, ; 173: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 88
	i32 3360279109, ; 174: SQLitePCLRaw.core => 0xc849ca45 => 23
	i32 3362522851, ; 175: Xamarin.AndroidX.Core => 0xc86c06e3 => 51
	i32 3366347497, ; 176: Java.Interop => 0xc8a662e9 => 11
	i32 3374999561, ; 177: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 77
	i32 3395150330, ; 178: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 32
	i32 3404865022, ; 179: System.ServiceModel.Internals => 0xcaf21dfe => 103
	i32 3407215217, ; 180: Xamarin.CommunityToolkit => 0xcb15fa71 => 88
	i32 3429136800, ; 181: System.Xml => 0xcc6479a0 => 34
	i32 3430777524, ; 182: netstandard => 0xcc7d82b4 => 104
	i32 3441283291, ; 183: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 56
	i32 3476120550, ; 184: Mono.Android => 0xcf3163e6 => 17
	i32 3486566296, ; 185: System.Transactions => 0xcfd0c798 => 106
	i32 3493954962, ; 186: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 47
	i32 3501239056, ; 187: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 43
	i32 3509114376, ; 188: System.Xml.Linq => 0xd128d608 => 35
	i32 3536029504, ; 189: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 93
	i32 3567349600, ; 190: System.ComponentModel.Composition.dll => 0xd4a16f60 => 111
	i32 3618140916, ; 191: Xamarin.AndroidX.Preference => 0xd7a872f4 => 75
	i32 3627220390, ; 192: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 76
	i32 3632359727, ; 193: Xamarin.Forms.Platform => 0xd881692f => 94
	i32 3633644679, ; 194: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 38
	i32 3641597786, ; 195: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 63
	i32 3645089577, ; 196: System.ComponentModel.DataAnnotations => 0xd943a729 => 102
	i32 3672681054, ; 197: Mono.Android.dll => 0xdae8aa5e => 17
	i32 3676310014, ; 198: System.Web.Services.dll => 0xdb2009fe => 112
	i32 3682565725, ; 199: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 44
	i32 3684561358, ; 200: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 47
	i32 3689375977, ; 201: System.Drawing.Common => 0xdbe768e9 => 108
	i32 3718780102, ; 202: Xamarin.AndroidX.Annotation => 0xdda814c6 => 37
	i32 3724971120, ; 203: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 72
	i32 3738858612, ; 204: MainCapStone.dll => 0xdeda7474 => 12
	i32 3754567612, ; 205: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 25
	i32 3758932259, ; 206: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 61
	i32 3786282454, ; 207: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 46
	i32 3819541726, ; 208: Accord.Statistics.dll => 0xe3a994de => 9
	i32 3822602673, ; 209: Xamarin.AndroidX.Media => 0xe3d849b1 => 70
	i32 3829621856, ; 210: System.Numerics.dll => 0xe4436460 => 30
	i32 3876362041, ; 211: SQLite-net => 0xe70c9739 => 21
	i32 3878461487, ; 212: MainCapStone => 0xe72ca02f => 12
	i32 3885922214, ; 213: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 82
	i32 3896760992, ; 214: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 51
	i32 3920810846, ; 215: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 110
	i32 3921031405, ; 216: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 85
	i32 3931092270, ; 217: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 74
	i32 3945713374, ; 218: System.Data.DataSetExtensions.dll => 0xeb2ecede => 107
	i32 3955647286, ; 219: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 40
	i32 3970018735, ; 220: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 101
	i32 3977513776, ; 221: Microsoft.VisualStudio.TestPlatform.TestFramework => 0xed140b30 => 13
	i32 3998184788, ; 222: Microsoft.VisualStudio.TestPlatform.TestFramework.resources.dll => 0xee4f7554 => 0
	i32 4025784931, ; 223: System.Memory => 0xeff49a63 => 29
	i32 4105002889, ; 224: Mono.Security.dll => 0xf4ad5f89 => 114
	i32 4151237749, ; 225: System.Core => 0xf76edc75 => 27
	i32 4182413190, ; 226: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 67
	i32 4260525087, ; 227: System.Buffers => 0xfdf2741f => 26
	i32 4278134329, ; 228: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 100
	i32 4292120959 ; 229: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 67
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [230 x i32] [
	i32 65, i32 97, i32 20, i32 14, i32 90, i32 15, i32 79, i32 79, ; 0..7
	i32 2, i32 46, i32 80, i32 44, i32 91, i32 60, i32 113, i32 112, ; 8..15
	i32 49, i32 64, i32 58, i32 1, i32 36, i32 92, i32 30, i32 62, ; 16..23
	i32 24, i32 29, i32 48, i32 89, i32 57, i32 18, i32 28, i32 58, ; 24..31
	i32 69, i32 106, i32 14, i32 110, i32 53, i32 85, i32 41, i32 35, ; 32..39
	i32 1, i32 22, i32 109, i32 108, i32 19, i32 76, i32 97, i32 20, ; 40..47
	i32 62, i32 10, i32 16, i32 78, i32 40, i32 94, i32 66, i32 28, ; 48..55
	i32 6, i32 83, i32 73, i32 41, i32 84, i32 0, i32 23, i32 55, ; 56..63
	i32 103, i32 78, i32 9, i32 70, i32 50, i32 32, i32 7, i32 95, ; 64..71
	i32 109, i32 39, i32 92, i32 54, i32 4, i32 68, i32 87, i32 52, ; 72..79
	i32 3, i32 33, i32 81, i32 96, i32 49, i32 24, i32 45, i32 80, ; 80..87
	i32 27, i32 57, i32 68, i32 96, i32 74, i32 89, i32 95, i32 91, ; 88..95
	i32 42, i32 99, i32 71, i32 13, i32 6, i32 26, i32 66, i32 63, ; 96..103
	i32 33, i32 31, i32 59, i32 25, i32 93, i32 98, i32 3, i32 83, ; 104..111
	i32 69, i32 71, i32 61, i32 5, i32 77, i32 37, i32 75, i32 102, ; 112..119
	i32 22, i32 48, i32 104, i32 11, i32 107, i32 65, i32 113, i32 16, ; 120..127
	i32 84, i32 52, i32 56, i32 64, i32 5, i32 81, i32 36, i32 39, ; 128..135
	i32 90, i32 86, i32 50, i32 34, i32 98, i32 86, i32 82, i32 111, ; 136..143
	i32 18, i32 87, i32 31, i32 38, i32 55, i32 100, i32 60, i32 10, ; 144..151
	i32 72, i32 101, i32 8, i32 4, i32 105, i32 54, i32 99, i32 8, ; 152..159
	i32 114, i32 19, i32 45, i32 43, i32 15, i32 2, i32 21, i32 7, ; 160..167
	i32 53, i32 105, i32 42, i32 73, i32 59, i32 88, i32 23, i32 51, ; 168..175
	i32 11, i32 77, i32 32, i32 103, i32 88, i32 34, i32 104, i32 56, ; 176..183
	i32 17, i32 106, i32 47, i32 43, i32 35, i32 93, i32 111, i32 75, ; 184..191
	i32 76, i32 94, i32 38, i32 63, i32 102, i32 17, i32 112, i32 44, ; 192..199
	i32 47, i32 108, i32 37, i32 72, i32 12, i32 25, i32 61, i32 46, ; 200..207
	i32 9, i32 70, i32 30, i32 21, i32 12, i32 82, i32 51, i32 110, ; 208..215
	i32 85, i32 74, i32 107, i32 40, i32 101, i32 13, i32 0, i32 29, ; 216..223
	i32 114, i32 27, i32 67, i32 26, i32 100, i32 67 ; 224..229
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
