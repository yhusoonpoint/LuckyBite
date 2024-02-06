; ModuleID = 'obj\Release\120\android\marshal_methods.x86_64.ll'
source_filename = "obj\Release\120\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [144 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 16
	i64 232391251801502327, ; 1: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 48
	i64 522715349220615607, ; 2: Accord.Math.Core.dll => 0x7410ed734f065b7 => 6
	i64 687654259221141486, ; 3: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 61
	i64 702024105029695270, ; 4: System.Drawing.Common => 0x9be17343c0e7726 => 68
	i64 720058930071658100, ; 5: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 42
	i64 870603111519317375, ; 6: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 23
	i64 872800313462103108, ; 7: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 40
	i64 996343623809489702, ; 8: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 57
	i64 1000557547492888992, ; 9: Mono.Security.dll => 0xde2b1c9cba651a0 => 71
	i64 1120440138749646132, ; 10: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 59
	i64 1301485588176585670, ; 11: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 22
	i64 1425944114962822056, ; 12: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 3
	i64 1518315023656898250, ; 13: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 24
	i64 1624659445732251991, ; 14: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 33
	i64 1731380447121279447, ; 15: Newtonsoft.Json => 0x18071957e9b889d7 => 19
	i64 1795316252682057001, ; 16: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 34
	i64 1836611346387731153, ; 17: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 48
	i64 1981742497975770890, ; 18: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 45
	i64 1986553961460820075, ; 19: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 51
	i64 2133195048986300728, ; 20: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 19
	i64 2262844636196693701, ; 21: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 40
	i64 2287887973817120656, ; 22: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 65
	i64 2329709569556905518, ; 23: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 44
	i64 2337758774805907496, ; 24: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 29
	i64 2470498323731680442, ; 25: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 36
	i64 2535279602198559162, ; 26: Accord.MachineLearning => 0x232f1f5d9f56b9ba => 5
	i64 2547086958574651984, ; 27: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 32
	i64 2592350477072141967, ; 28: System.Xml.dll => 0x23f9e10627330e8f => 30
	i64 2624866290265602282, ; 29: mscorlib.dll => 0x246d65fbde2db8ea => 17
	i64 2668049510182046531, ; 30: MvvmHelpers => 0x2506d0e4c18e4b43 => 18
	i64 2777781391761225392, ; 31: Accord.Math.dll => 0x268ca9755f9e36b0 => 7
	i64 2783046991838674048, ; 32: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 29
	i64 2960931600190307745, ; 33: Xamarin.Forms.Core => 0x2917579a49927da1 => 53
	i64 3017704767998173186, ; 34: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 59
	i64 3289520064315143713, ; 35: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 43
	i64 3411255996856937470, ; 36: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 62
	i64 3522470458906976663, ; 37: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 49
	i64 3531994851595924923, ; 38: System.Numerics => 0x31042a9aade235bb => 28
	i64 3727469159507183293, ; 39: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 47
	i64 3981249791383275266, ; 40: Microsoft.VisualStudio.TestPlatform.TestFramework.resources => 0x37403d97797f8702 => 0
	i64 4247996603072512073, ; 41: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 64
	i64 4337444564132831293, ; 42: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 21
	i64 4380320375504656594, ; 43: MainCapStone => 0x3cca062c705c58d2 => 11
	i64 4523676002271688167, ; 44: MvvmHelpers.dll => 0x3ec7535b4a5cf5e7 => 18
	i64 4525561845656915374, ; 45: System.ServiceModel.Internals => 0x3ece06856b710dae => 66
	i64 4794310189461587505, ; 46: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 32
	i64 4795410492532947900, ; 47: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 49
	i64 5142919913060024034, ; 48: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 56
	i64 5203618020066742981, ; 49: Xamarin.Essentials => 0x4836f704f0e652c5 => 52
	i64 5256995213548036366, ; 50: Xamarin.Forms.Maps.Android.dll => 0x48f4994b4175a10e => 54
	i64 5472995253980196983, ; 51: Microsoft.VisualStudio.TestPlatform.TestFramework.dll => 0x4bf3fc2fb2e37077 => 12
	i64 5507995362134886206, ; 52: System.Core.dll => 0x4c705499688c873e => 26
	i64 5721888118700618020, ; 53: Accord.Statistics.dll => 0x4f683aed97adb124 => 8
	i64 5899415231269382174, ; 54: Microsoft.VisualStudio.TestPlatform.TestFramework.Extensions.dll => 0x51deeee57a57281e => 13
	i64 6085203216496545422, ; 55: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 57
	i64 6086316965293125504, ; 56: FormsViewGroup.dll => 0x5476f10882baef80 => 9
	i64 6183170893902868313, ; 57: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 21
	i64 6401687960814735282, ; 58: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 44
	i64 6548213210057960872, ; 59: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 39
	i64 6659513131007730089, ; 60: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 42
	i64 6675094859166406924, ; 61: MonkeyCache.dll => 0x5ca2b36882a6590c => 14
	i64 6769285576658098206, ; 62: Accord.dll => 0x5df1555de3e1981e => 4
	i64 6839882421490341490, ; 63: MainCapStone.dll => 0x5eec24d2b65ed672 => 11
	i64 6876862101832370452, ; 64: System.Xml.Linq => 0x5f6f85a57d108914 => 31
	i64 7113145827192496138, ; 65: Accord.Math.Core => 0x62b6f871595c600a => 6
	i64 7141281584637745974, ; 66: Xamarin.GooglePlayServices.Maps.dll => 0x631aedc3dd5f1b36 => 63
	i64 7488575175965059935, ; 67: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 31
	i64 7635363394907363464, ; 68: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 53
	i64 7637365915383206639, ; 69: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 52
	i64 7654504624184590948, ; 70: System.Net.Http => 0x6a3a4366801b8264 => 2
	i64 7735176074855944702, ; 71: Microsoft.CSharp => 0x6b58dda848e391fe => 70
	i64 7820441508502274321, ; 72: System.Data => 0x6c87ca1e14ff8111 => 67
	i64 7836164640616011524, ; 73: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 33
	i64 7996576649711363446, ; 74: Accord.MachineLearning.dll => 0x6ef98c18613aa576 => 5
	i64 8083354569033831015, ; 75: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 43
	i64 8167236081217502503, ; 76: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 10
	i64 8318905602908530212, ; 77: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 65
	i64 8515352015586114595, ; 78: Microsoft.VisualStudio.TestPlatform.TestFramework.Extensions => 0x762c9b8aba6abc23 => 13
	i64 8626175481042262068, ; 79: Java.Interop => 0x77b654e585b55834 => 10
	i64 8638972117149407195, ; 80: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 70
	i64 9324707631942237306, ; 81: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 34
	i64 9613446758609767366, ; 82: MainCapStone.Android.dll => 0x8569d2e48a10cbc6 => 1
	i64 9662334977499516867, ; 83: System.Numerics.dll => 0x8617827802b0cfc3 => 28
	i64 9678050649315576968, ; 84: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 36
	i64 9808709177481450983, ; 85: Mono.Android.dll => 0x881f890734e555e7 => 16
	i64 9875200773399460291, ; 86: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 61
	i64 9998632235833408227, ; 87: Mono.Security => 0x8ac2470b209ebae3 => 71
	i64 10038780035334861115, ; 88: System.Net.Http.dll => 0x8b50e941206af13b => 2
	i64 10229024438826829339, ; 89: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 39
	i64 10430153318873392755, ; 90: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 37
	i64 10775409704848971057, ; 91: Xamarin.Forms.Maps => 0x9589f20936d1d531 => 55
	i64 11023048688141570732, ; 92: System.Core => 0x98f9bc61168392ac => 26
	i64 11037814507248023548, ; 93: System.Xml => 0x992e31d0412bf7fc => 30
	i64 11122995063473561350, ; 94: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 51
	i64 11162124722117608902, ; 95: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 50
	i64 11340910727871153756, ; 96: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 38
	i64 11444370155346000636, ; 97: Xamarin.Forms.Maps.Android => 0x9ed292057b7afafc => 54
	i64 11529969570048099689, ; 98: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 50
	i64 11739066727115742305, ; 99: SQLite-net.dll => 0xa2e98afdf8575c61 => 20
	i64 11806260347154423189, ; 100: SQLite-net => 0xa3d8433bc5eb5d95 => 20
	i64 12102847907131387746, ; 101: System.Buffers => 0xa7f5f40c43256f62 => 25
	i64 12279246230491828964, ; 102: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 24
	i64 12451044538927396471, ; 103: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 41
	i64 12466513435562512481, ; 104: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 46
	i64 12538491095302438457, ; 105: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 35
	i64 12550732019250633519, ; 106: System.IO.Compression => 0xae2d28465e8e1b2f => 69
	i64 12746965083068134964, ; 107: Accord.Statistics => 0xb0e65134ec957634 => 8
	i64 12963446364377008305, ; 108: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 68
	i64 13236143910255865156, ; 109: Accord => 0xb7b03ac21ec02d44 => 4
	i64 13365000417223080511, ; 110: MonkeyCache.FileStore.dll => 0xb97a051193877a3f => 15
	i64 13370592475155966277, ; 111: System.Runtime.Serialization => 0xb98de304062ea945 => 3
	i64 13454009404024712428, ; 112: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 60
	i64 13572454107664307259, ; 113: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 47
	i64 13647894001087880694, ; 114: System.Data.dll => 0xbd670f48cb071df6 => 67
	i64 13959074834287824816, ; 115: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 41
	i64 13967638549803255703, ; 116: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 56
	i64 14124974489674258913, ; 117: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 35
	i64 14792063746108907174, ; 118: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 60
	i64 14842909060174498709, ; 119: Microsoft.VisualStudio.TestPlatform.TestFramework.resources.dll => 0xcdfc9b262d20cb95 => 0
	i64 14852515768018889994, ; 120: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 38
	i64 14987728460634540364, ; 121: System.IO.Compression.dll => 0xcfff1ba06622494c => 69
	i64 15174084466008759911, ; 122: MainCapStone.Android => 0xd2952d6d14399e67 => 1
	i64 15370334346939861994, ; 123: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 37
	i64 15609085926864131306, ; 124: System.dll => 0xd89e9cf3334914ea => 27
	i64 15810740023422282496, ; 125: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 58
	i64 15930129725311349754, ; 126: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 64
	i64 16031591121047165949, ; 127: MonkeyCache.FileStore => 0xde7ba72f82529bfd => 15
	i64 16154507427712707110, ; 128: System => 0xe03056ea4e39aa26 => 27
	i64 16555546463085770706, ; 129: Accord.Math => 0xe5c11dcb0ab3b7d2 => 7
	i64 16563155925867085767, ; 130: MonkeyCache => 0xe5dc268f28b6bfc7 => 14
	i64 16755018182064898362, ; 131: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 22
	i64 16833383113903931215, ; 132: mscorlib => 0xe99c30c1484d7f4f => 17
	i64 17704177640604968747, ; 133: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 46
	i64 17710060891934109755, ; 134: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 45
	i64 17816041456001989629, ; 135: Xamarin.Forms.Maps.dll => 0xf73f4b4f90a1bbfd => 55
	i64 17838668724098252521, ; 136: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 25
	i64 17882897186074144999, ; 137: FormsViewGroup => 0xf82cd03e3ac830e7 => 9
	i64 17892495832318972303, ; 138: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 58
	i64 17969331831154222830, ; 139: Xamarin.GooglePlayServices.Maps => 0xf95fe418471126ee => 63
	i64 17986907704309214542, ; 140: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 62
	i64 18022841807003255098, ; 141: Microsoft.VisualStudio.TestPlatform.TestFramework => 0xfa1dff22657d013a => 12
	i64 18129453464017766560, ; 142: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 66
	i64 18370042311372477656 ; 143: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 23
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [144 x i32] [
	i32 16, i32 48, i32 6, i32 61, i32 68, i32 42, i32 23, i32 40, ; 0..7
	i32 57, i32 71, i32 59, i32 22, i32 3, i32 24, i32 33, i32 19, ; 8..15
	i32 34, i32 48, i32 45, i32 51, i32 19, i32 40, i32 65, i32 44, ; 16..23
	i32 29, i32 36, i32 5, i32 32, i32 30, i32 17, i32 18, i32 7, ; 24..31
	i32 29, i32 53, i32 59, i32 43, i32 62, i32 49, i32 28, i32 47, ; 32..39
	i32 0, i32 64, i32 21, i32 11, i32 18, i32 66, i32 32, i32 49, ; 40..47
	i32 56, i32 52, i32 54, i32 12, i32 26, i32 8, i32 13, i32 57, ; 48..55
	i32 9, i32 21, i32 44, i32 39, i32 42, i32 14, i32 4, i32 11, ; 56..63
	i32 31, i32 6, i32 63, i32 31, i32 53, i32 52, i32 2, i32 70, ; 64..71
	i32 67, i32 33, i32 5, i32 43, i32 10, i32 65, i32 13, i32 10, ; 72..79
	i32 70, i32 34, i32 1, i32 28, i32 36, i32 16, i32 61, i32 71, ; 80..87
	i32 2, i32 39, i32 37, i32 55, i32 26, i32 30, i32 51, i32 50, ; 88..95
	i32 38, i32 54, i32 50, i32 20, i32 20, i32 25, i32 24, i32 41, ; 96..103
	i32 46, i32 35, i32 69, i32 8, i32 68, i32 4, i32 15, i32 3, ; 104..111
	i32 60, i32 47, i32 67, i32 41, i32 56, i32 35, i32 60, i32 0, ; 112..119
	i32 38, i32 69, i32 1, i32 37, i32 27, i32 58, i32 64, i32 15, ; 120..127
	i32 27, i32 7, i32 14, i32 22, i32 17, i32 46, i32 45, i32 55, ; 128..135
	i32 25, i32 9, i32 58, i32 63, i32 62, i32 12, i32 66, i32 23 ; 144..143
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
