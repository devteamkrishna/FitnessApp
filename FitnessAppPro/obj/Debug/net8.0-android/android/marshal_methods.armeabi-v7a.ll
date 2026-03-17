; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [352 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [698 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 26230656, ; 3: Microsoft.Extensions.DependencyModel => 0x1903f80 => 195
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 272
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 306
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 145
	i32 65960268, ; 9: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 216
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 11: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 347
	i32 68219467, ; 12: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 13: Microsoft.Maui.Graphics.dll => 0x44bb714 => 214
	i32 82292897, ; 14: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 15: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 290
	i32 117431740, ; 16: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 17: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 290
	i32 122350210, ; 18: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 19: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 310
	i32 142721839, ; 20: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 21: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 22: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 23: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 246
	i32 176265551, ; 24: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 25: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 292
	i32 184328833, ; 26: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 27: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 344
	i32 199333315, ; 28: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 345
	i32 205061960, ; 29: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 30: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 244
	i32 220171995, ; 31: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 32: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 266
	i32 230752869, ; 33: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 34: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 35: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 36: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 37: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 179
	i32 261689757, ; 38: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 249
	i32 276479776, ; 39: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 40: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 268
	i32 280482487, ; 41: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 265
	i32 280992041, ; 42: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 316
	i32 291076382, ; 43: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 44: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 45: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 344
	i32 318968648, ; 46: Xamarin.AndroidX.Activity.dll => 0x13031348 => 235
	i32 321597661, ; 47: System.Numerics => 0x132b30dd => 83
	i32 330147069, ; 48: Microsoft.SqlServer.Server => 0x13ada4fd => 215
	i32 336156722, ; 49: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 329
	i32 342366114, ; 50: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 267
	i32 347068432, ; 51: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 220
	i32 356389973, ; 52: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 328
	i32 360082299, ; 53: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 54: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 55: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 56: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 57: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 58: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 59: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 60: _Microsoft.Android.Resource.Designer => 0x17969339 => 348
	i32 403441872, ; 61: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 62: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 340
	i32 441335492, ; 63: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 250
	i32 442565967, ; 64: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 65: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 263
	i32 451504562, ; 66: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 67: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 68: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 69: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 70: System.dll => 0x1bff388e => 164
	i32 476646585, ; 71: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 265
	i32 485463106, ; 72: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 203
	i32 486930444, ; 73: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 278
	i32 498788369, ; 74: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 75: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 327
	i32 503918385, ; 76: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 321
	i32 513247710, ; 77: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 200
	i32 525008092, ; 78: SkiaSharp.dll => 0x1f4afcdc => 217
	i32 526420162, ; 79: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 80: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 310
	i32 530272170, ; 81: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 82: Microsoft.Extensions.Logging => 0x20216150 => 196
	i32 540030774, ; 83: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 84: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 85: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 86: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 181
	i32 549171840, ; 87: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 88: Jsr305Binding => 0x213954e7 => 303
	i32 569601784, ; 89: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 301
	i32 577335427, ; 90: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 91: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 335
	i32 601371474, ; 92: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 93: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 94: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 95: Xamarin.AndroidX.CustomView => 0x2568904f => 255
	i32 627931235, ; 96: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 333
	i32 639843206, ; 97: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 261
	i32 643868501, ; 98: System.Net => 0x2660a755 => 81
	i32 662205335, ; 99: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 100: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 297
	i32 666292255, ; 101: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 242
	i32 672442732, ; 102: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 103: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 104: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 315
	i32 690569205, ; 105: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 106: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 312
	i32 693804605, ; 107: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 108: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 109: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 307
	i32 700358131, ; 110: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 111: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 330
	i32 709557578, ; 112: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 318
	i32 720511267, ; 113: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 311
	i32 722857257, ; 114: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 723796036, ; 115: System.ClientModel.dll => 0x2b244044 => 222
	i32 735137430, ; 116: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 748832960, ; 117: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 218
	i32 752232764, ; 118: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 119: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 232
	i32 759454413, ; 120: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 121: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 122: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 123: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 339
	i32 789151979, ; 124: Microsoft.Extensions.Options => 0x2f0980eb => 199
	i32 790371945, ; 125: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 256
	i32 804715423, ; 126: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 127: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 270
	i32 809851609, ; 128: System.Drawing.Common.dll => 0x30455ad9 => 224
	i32 823281589, ; 129: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 130: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 131: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 132: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 133: Xamarin.AndroidX.Print => 0x3246f6cd => 283
	i32 873119928, ; 134: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 135: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 136: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 137: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 138: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 139: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 342
	i32 928116545, ; 140: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 306
	i32 952186615, ; 141: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 142: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 311
	i32 966729478, ; 143: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 304
	i32 967690846, ; 144: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 267
	i32 975236339, ; 145: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 146: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 147: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 148: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 149: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 150: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 151: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 152: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 287
	i32 1019214401, ; 153: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 154: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 194
	i32 1029334545, ; 155: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 317
	i32 1031528504, ; 156: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 305
	i32 1035644815, ; 157: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 240
	i32 1036536393, ; 158: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 159: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 160: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 274
	i32 1062017875, ; 161: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 202
	i32 1067306892, ; 162: GoogleGson => 0x3f9dcf8c => 175
	i32 1082857460, ; 163: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 164: Xamarin.Kotlin.StdLib => 0x409e66d8 => 308
	i32 1098259244, ; 165: System => 0x41761b2c => 164
	i32 1118262833, ; 166: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 330
	i32 1121599056, ; 167: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 273
	i32 1127624469, ; 168: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 198
	i32 1138436374, ; 169: Microsoft.Data.SqlClient.dll => 0x43db2916 => 182
	i32 1145483052, ; 170: System.Windows.Extensions.dll => 0x4446af2c => 230
	i32 1149092582, ; 171: Xamarin.AndroidX.Window => 0x447dc2e6 => 300
	i32 1157931901, ; 172: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 185
	i32 1168523401, ; 173: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 336
	i32 1170634674, ; 174: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 175: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 296
	i32 1178241025, ; 176: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 281
	i32 1202000627, ; 177: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 185
	i32 1203215381, ; 178: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 334
	i32 1204270330, ; 179: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 242
	i32 1204575371, ; 180: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 190
	i32 1208641965, ; 181: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 182: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 183: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 332
	i32 1243150071, ; 184: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 301
	i32 1253011324, ; 185: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 186: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 316
	i32 1264511973, ; 187: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 291
	i32 1267360935, ; 188: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 295
	i32 1273260888, ; 189: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 247
	i32 1275534314, ; 190: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 312
	i32 1278448581, ; 191: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 239
	i32 1292207520, ; 192: SQLitePCLRaw.core.dll => 0x4d0585a0 => 219
	i32 1293217323, ; 193: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 258
	i32 1309188875, ; 194: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1320659616, ; 195: LinqKit.Microsoft.EntityFrameworkCore => 0x4eb7aaa0 => 177
	i32 1322716291, ; 196: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 300
	i32 1324164729, ; 197: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 198: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 199: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 200: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 346
	i32 1376866003, ; 201: Xamarin.AndroidX.SavedState => 0x52114ed3 => 287
	i32 1379779777, ; 202: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 203: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 204: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 251
	i32 1408764838, ; 205: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 206: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 207: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 208: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 314
	i32 1434145427, ; 209: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 210: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 304
	i32 1439761251, ; 211: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 212: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 213: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 214: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 215: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 216: System.IdentityModel.Tokens.Jwt => 0x57137723 => 225
	i32 1461004990, ; 217: es\Microsoft.Maui.Controls.resources => 0x57152abe => 320
	i32 1461234159, ; 218: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 219: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 220: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 221: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 241
	i32 1470490898, ; 222: Microsoft.Extensions.Primitives => 0x57a5e912 => 200
	i32 1479771757, ; 223: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 224: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 225: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 226: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 288
	i32 1490351284, ; 227: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 183
	i32 1493001747, ; 228: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 324
	i32 1498168481, ; 229: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 204
	i32 1514721132, ; 230: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 319
	i32 1536373174, ; 231: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 232: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 233: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 234: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 235: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 339
	i32 1565310744, ; 236: System.Runtime.Caching => 0x5d4cbf18 => 227
	i32 1565862583, ; 237: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 238: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 239: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 240: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582305585, ; 241: Azure.Identity => 0x5e501131 => 174
	i32 1582372066, ; 242: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 257
	i32 1592978981, ; 243: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 244: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 305
	i32 1601112923, ; 245: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 246: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 247: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 248: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 277
	i32 1622358360, ; 249: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 250: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 299
	i32 1628113371, ; 251: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 207
	i32 1635184631, ; 252: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 261
	i32 1636350590, ; 253: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 254
	i32 1639515021, ; 254: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 255: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 256: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 257: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 258: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 293
	i32 1658251792, ; 259: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 302
	i32 1670060433, ; 260: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 249
	i32 1675553242, ; 261: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 262: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 263: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 264: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1688112883, ; 265: Microsoft.Data.Sqlite => 0x649e8ef3 => 183
	i32 1689493916, ; 266: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 184
	i32 1691477237, ; 267: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 268: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 269: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 309
	i32 1701541528, ; 270: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 271: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 220
	i32 1720223769, ; 272: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 270
	i32 1726116996, ; 273: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 274: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 275: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 245
	i32 1736233607, ; 276: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 337
	i32 1743415430, ; 277: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 315
	i32 1744735666, ; 278: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 279: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 280: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 281: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 282: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 283: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 284: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 292
	i32 1770582343, ; 285: Microsoft.Extensions.Logging.dll => 0x6988f147 => 196
	i32 1776026572, ; 286: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 287: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 288: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 289: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 331
	i32 1788241197, ; 290: Xamarin.AndroidX.Fragment => 0x6a96652d => 263
	i32 1793755602, ; 291: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 323
	i32 1794500907, ; 292: Microsoft.Identity.Client.dll => 0x6af5e92b => 201
	i32 1796167890, ; 293: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 181
	i32 1808609942, ; 294: Xamarin.AndroidX.Loader => 0x6bcd3296 => 277
	i32 1813058853, ; 295: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 308
	i32 1813201214, ; 296: Xamarin.Google.Android.Material => 0x6c13413e => 302
	i32 1818569960, ; 297: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 282
	i32 1818787751, ; 298: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 299: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 300: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 301: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 197
	i32 1829150748, ; 302: System.Windows.Extensions => 0x6d06a01c => 230
	i32 1842015223, ; 303: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 343
	i32 1847515442, ; 304: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 232
	i32 1853025655, ; 305: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 340
	i32 1858542181, ; 306: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 307: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 308: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 207
	i32 1875935024, ; 309: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 322
	i32 1879696579, ; 310: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 311: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 243
	i32 1886040351, ; 312: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 187
	i32 1888955245, ; 313: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 314: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 315: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 316: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 317: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 318: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 319: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 320: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 289
	i32 1968388702, ; 321: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 191
	i32 1983156543, ; 322: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 309
	i32 1985761444, ; 323: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 234
	i32 1986222447, ; 324: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 208
	i32 2003115576, ; 325: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 319
	i32 2011961780, ; 326: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014489277, ; 327: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 187
	i32 2019465201, ; 328: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 274
	i32 2025202353, ; 329: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 314
	i32 2031763787, ; 330: Xamarin.Android.Glide => 0x791a414b => 231
	i32 2040764568, ; 331: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 202
	i32 2045470958, ; 332: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 333: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 269
	i32 2060060697, ; 334: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 335: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 318
	i32 2070888862, ; 336: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 337: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 338: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2103459038, ; 339: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 221
	i32 2127167465, ; 340: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 341: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 342: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 343: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 344: Microsoft.Maui => 0x80bd55ad => 212
	i32 2169148018, ; 345: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 326
	i32 2181898931, ; 346: Microsoft.Extensions.Options.dll => 0x820d22b3 => 199
	i32 2192057212, ; 347: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 197
	i32 2193016926, ; 348: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2197979891, ; 349: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 195
	i32 2201107256, ; 350: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 313
	i32 2201231467, ; 351: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 352: it\Microsoft.Maui.Controls.resources => 0x839595db => 328
	i32 2217644978, ; 353: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 296
	i32 2222056684, ; 354: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 355: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 278
	i32 2252106437, ; 356: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2252897993, ; 357: Microsoft.EntityFrameworkCore => 0x86487ec9 => 184
	i32 2253551641, ; 358: Microsoft.IdentityModel.Protocols => 0x86527819 => 206
	i32 2256313426, ; 359: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 360: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 361: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 192
	i32 2267999099, ; 362: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 233
	i32 2270573516, ; 363: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 322
	i32 2279755925, ; 364: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 285
	i32 2293034957, ; 365: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 366: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 367: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 368: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 332
	i32 2305521784, ; 369: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 370: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 237
	i32 2320631194, ; 371: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 372: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 373: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 374: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 375: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 376: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 205
	i32 2371007202, ; 377: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 191
	i32 2378619854, ; 378: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 379: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 380: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 327
	i32 2401565422, ; 381: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 382: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 260
	i32 2411328690, ; 383: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 179
	i32 2421380589, ; 384: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 385: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 247
	i32 2427813419, ; 386: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 324
	i32 2435356389, ; 387: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 388: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 389: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 390: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 391: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465273461, ; 392: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 218
	i32 2465532216, ; 393: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 250
	i32 2471841756, ; 394: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 395: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 396: Microsoft.Maui.Controls => 0x93dba8a1 => 210
	i32 2483903535, ; 397: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 398: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 399: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 400: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 401: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 272
	i32 2522472828, ; 402: Xamarin.Android.Glide.dll => 0x9659e17c => 231
	i32 2537015816, ; 403: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 178
	i32 2538310050, ; 404: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 405: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 325
	i32 2562349572, ; 406: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 407: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 408: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 273
	i32 2581819634, ; 409: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 295
	i32 2585220780, ; 410: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 411: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 412: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 413: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 334
	i32 2605712449, ; 414: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 313
	i32 2615233544, ; 415: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 264
	i32 2616218305, ; 416: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 198
	i32 2617129537, ; 417: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 418: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 419: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 254
	i32 2624644809, ; 420: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 259
	i32 2626831493, ; 421: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 329
	i32 2627185994, ; 422: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 423: System.Memory.Data => 0x9ca74fdc => 226
	i32 2629843544, ; 424: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 425: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 268
	i32 2634653062, ; 426: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 186
	i32 2640290731, ; 427: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 205
	i32 2640706905, ; 428: Azure.Core => 0x9d65fd59 => 173
	i32 2660759594, ; 429: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 228
	i32 2663391936, ; 430: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 233
	i32 2663698177, ; 431: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 432: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 433: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 434: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 435: Azure.Identity.dll => 0x9f9148fa => 174
	i32 2686887180, ; 436: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 437: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 438: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 293
	i32 2715334215, ; 439: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 440: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 441: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 442: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 443: Xamarin.AndroidX.Activity => 0xa2e0939b => 235
	i32 2735172069, ; 444: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 445: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 178
	i32 2737747696, ; 446: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 241
	i32 2740051746, ; 447: Microsoft.Identity.Client => 0xa351df22 => 201
	i32 2740948882, ; 448: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 449: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2750358126, ; 450: LinqKit.Core.dll => 0xa3ef226e => 176
	i32 2752995522, ; 451: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 335
	i32 2755098380, ; 452: Microsoft.SqlServer.Server.dll => 0xa437770c => 215
	i32 2755643133, ; 453: Microsoft.EntityFrameworkCore.SqlServer => 0xa43fc6fd => 188
	i32 2758225723, ; 454: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 211
	i32 2764765095, ; 455: Microsoft.Maui.dll => 0xa4caf7a7 => 212
	i32 2765824710, ; 456: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 457: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 307
	i32 2778768386, ; 458: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 298
	i32 2779977773, ; 459: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 286
	i32 2785988530, ; 460: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 341
	i32 2788224221, ; 461: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 264
	i32 2795666278, ; 462: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 216
	i32 2801831435, ; 463: Microsoft.Maui.Graphics => 0xa7008e0b => 214
	i32 2803228030, ; 464: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 465: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 320
	i32 2810250172, ; 466: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 251
	i32 2819470561, ; 467: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 468: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 469: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 286
	i32 2824502124, ; 470: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 471: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 333
	i32 2833784645, ; 472: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 180
	i32 2838993487, ; 473: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 275
	i32 2841355853, ; 474: System.Security.Permissions => 0xa95ba64d => 229
	i32 2847789619, ; 475: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 186
	i32 2849599387, ; 476: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 477: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 298
	i32 2855708567, ; 478: Xamarin.AndroidX.Transition => 0xaa36a797 => 294
	i32 2861098320, ; 479: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 480: Microsoft.Maui.Essentials => 0xaa8a4878 => 213
	i32 2867946736, ; 481: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 228
	i32 2870099610, ; 482: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 236
	i32 2875164099, ; 483: Jsr305Binding.dll => 0xab5f85c3 => 303
	i32 2875220617, ; 484: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 485: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 262
	i32 2887636118, ; 486: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 487: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 488: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 489: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 490: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 491: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 492: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 299
	i32 2919462931, ; 493: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 494: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 238
	i32 2936416060, ; 495: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 496: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 497: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944313911, ; 498: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 223
	i32 2959614098, ; 499: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 500: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 501: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 502: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 258
	i32 2987532451, ; 503: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 289
	i32 2996846495, ; 504: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 271
	i32 3012788804, ; 505: System.Configuration.ConfigurationManager => 0xb3938244 => 223
	i32 3016983068, ; 506: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 291
	i32 3023353419, ; 507: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 508: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 266
	i32 3033605958, ; 509: System.Memory.Data.dll => 0xb4d12746 => 226
	i32 3038032645, ; 510: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 348
	i32 3056245963, ; 511: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 288
	i32 3057625584, ; 512: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 279
	i32 3059408633, ; 513: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 514: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 515: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 189
	i32 3075834255, ; 516: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 517: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 326
	i32 3084678329, ; 518: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 208
	i32 3090735792, ; 519: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 520: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 521: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 522: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 523: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 524: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 525: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 526: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 527: GoogleGson.dll => 0xbba64c02 => 175
	i32 3159123045, ; 528: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 529: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 530: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 280
	i32 3192346100, ; 531: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 532: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 533: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 189
	i32 3204380047, ; 534: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 535: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 536: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 257
	i32 3213246214, ; 537: System.Security.Permissions.dll => 0xbf863f06 => 229
	i32 3216322904, ; 538: LinqKit.Microsoft.EntityFrameworkCore.dll => 0xbfb53158 => 177
	i32 3220365878, ; 539: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 540: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 541: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 542: Xamarin.AndroidX.CardView => 0xc235e84d => 245
	i32 3265493905, ; 543: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 544: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 545: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 546: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 547: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 548: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 549: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 550: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 551: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 321
	i32 3312457198, ; 552: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 204
	i32 3316684772, ; 553: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 554: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 255
	i32 3317144872, ; 555: System.Data => 0xc5b79d28 => 24
	i32 3340387945, ; 556: SkiaSharp => 0xc71a4669 => 217
	i32 3340431453, ; 557: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 243
	i32 3345895724, ; 558: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 284
	i32 3346324047, ; 559: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 281
	i32 3357674450, ; 560: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 338
	i32 3358260929, ; 561: System.Text.Json => 0xc82afec1 => 137
	i32 3360279109, ; 562: SQLitePCLRaw.core => 0xc849ca45 => 219
	i32 3362336904, ; 563: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 236
	i32 3362522851, ; 564: Xamarin.AndroidX.Core => 0xc86c06e3 => 252
	i32 3366347497, ; 565: Java.Interop => 0xc8a662e9 => 168
	i32 3374879918, ; 566: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 206
	i32 3374999561, ; 567: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 285
	i32 3381016424, ; 568: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 317
	i32 3395150330, ; 569: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 570: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 571: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 256
	i32 3428513518, ; 572: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 193
	i32 3429136800, ; 573: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 574: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 575: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 259
	i32 3445260447, ; 576: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 577: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 209
	i32 3463511458, ; 578: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 325
	i32 3471940407, ; 579: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 580: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 581: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 338
	i32 3484440000, ; 582: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 337
	i32 3485117614, ; 583: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 584: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 585: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 248
	i32 3509114376, ; 586: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 587: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 588: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 589: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3543559592, ; 590: FitnessAppPro.dll => 0xd3366da8 => 0
	i32 3545306353, ; 591: Microsoft.Data.SqlClient => 0xd35114f1 => 182
	i32 3558648585, ; 592: System.ClientModel => 0xd41cab09 => 222
	i32 3560100363, ; 593: System.Threading.Timer => 0xd432d20b => 147
	i32 3561949811, ; 594: Azure.Core.dll => 0xd44f0a73 => 173
	i32 3570554715, ; 595: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3570608287, ; 596: System.Runtime.Caching.dll => 0xd4d3289f => 227
	i32 3580758918, ; 597: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 345
	i32 3597029428, ; 598: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 234
	i32 3598340787, ; 599: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 600: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 601: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 602: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 283
	i32 3633644679, ; 603: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 238
	i32 3638274909, ; 604: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 605: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 269
	i32 3643446276, ; 606: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 342
	i32 3643854240, ; 607: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 280
	i32 3645089577, ; 608: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 609: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 192
	i32 3660523487, ; 610: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 611: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 612: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 244
	i32 3684561358, ; 613: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 248
	i32 3689375977, ; 614: System.Drawing.Common => 0xdbe768e9 => 224
	i32 3697841164, ; 615: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 347
	i32 3700591436, ; 616: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 203
	i32 3700866549, ; 617: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 618: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 253
	i32 3716563718, ; 619: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 620: Xamarin.AndroidX.Annotation => 0xdda814c6 => 237
	i32 3724971120, ; 621: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 279
	i32 3732100267, ; 622: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 623: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 180
	i32 3737834244, ; 624: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 625: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 626: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3754567612, ; 627: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 221
	i32 3786282454, ; 628: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 246
	i32 3786940611, ; 629: FitnessAppPro => 0xe1b820c3 => 0
	i32 3792276235, ; 630: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 631: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 209
	i32 3802395368, ; 632: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 633: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 634: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 635: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 636: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 194
	i32 3844307129, ; 637: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 638: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 639: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 640: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 641: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 642: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 643: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 294
	i32 3888767677, ; 644: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 284
	i32 3889960447, ; 645: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 346
	i32 3896106733, ; 646: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 647: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 252
	i32 3901907137, ; 648: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 649: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 650: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 297
	i32 3928044579, ; 651: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 652: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 653: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 282
	i32 3945713374, ; 654: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 655: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 656: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 240
	i32 3959773229, ; 657: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 271
	i32 3980434154, ; 658: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 341
	i32 3987592930, ; 659: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 323
	i32 4003436829, ; 660: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 661: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 239
	i32 4025784931, ; 662: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 663: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 211
	i32 4054681211, ; 664: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 665: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 666: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 667: Microsoft.Maui.Essentials.dll => 0xf40add04 => 213
	i32 4099507663, ; 668: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 669: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 670: Xamarin.AndroidX.Emoji2 => 0xf479582c => 260
	i32 4101842092, ; 671: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 190
	i32 4102112229, ; 672: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 336
	i32 4125707920, ; 673: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 331
	i32 4126470640, ; 674: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 193
	i32 4127667938, ; 675: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 676: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 677: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 678: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 343
	i32 4151237749, ; 679: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 680: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 681: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 682: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4175087453, ; 683: LinqKit.Core => 0xf8dac75d => 176
	i32 4181436372, ; 684: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 685: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 276
	i32 4185676441, ; 686: System.Security => 0xf97c5a99 => 130
	i32 4194278001, ; 687: Microsoft.EntityFrameworkCore.SqlServer.dll => 0xf9ff9a71 => 188
	i32 4196529839, ; 688: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 689: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 690: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 253
	i32 4258378803, ; 691: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 275
	i32 4260525087, ; 692: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 693: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 225
	i32 4271975918, ; 694: Microsoft.Maui.Controls.dll => 0xfea12dee => 210
	i32 4274976490, ; 695: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 696: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 276
	i32 4294763496 ; 697: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 262
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [698 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 195, ; 3
	i32 272, ; 4
	i32 306, ; 5
	i32 48, ; 6
	i32 80, ; 7
	i32 145, ; 8
	i32 216, ; 9
	i32 30, ; 10
	i32 347, ; 11
	i32 124, ; 12
	i32 214, ; 13
	i32 102, ; 14
	i32 290, ; 15
	i32 107, ; 16
	i32 290, ; 17
	i32 139, ; 18
	i32 310, ; 19
	i32 77, ; 20
	i32 124, ; 21
	i32 13, ; 22
	i32 246, ; 23
	i32 132, ; 24
	i32 292, ; 25
	i32 151, ; 26
	i32 344, ; 27
	i32 345, ; 28
	i32 18, ; 29
	i32 244, ; 30
	i32 26, ; 31
	i32 266, ; 32
	i32 1, ; 33
	i32 59, ; 34
	i32 42, ; 35
	i32 91, ; 36
	i32 179, ; 37
	i32 249, ; 38
	i32 147, ; 39
	i32 268, ; 40
	i32 265, ; 41
	i32 316, ; 42
	i32 54, ; 43
	i32 69, ; 44
	i32 344, ; 45
	i32 235, ; 46
	i32 83, ; 47
	i32 215, ; 48
	i32 329, ; 49
	i32 267, ; 50
	i32 220, ; 51
	i32 328, ; 52
	i32 131, ; 53
	i32 55, ; 54
	i32 149, ; 55
	i32 74, ; 56
	i32 145, ; 57
	i32 62, ; 58
	i32 146, ; 59
	i32 348, ; 60
	i32 165, ; 61
	i32 340, ; 62
	i32 250, ; 63
	i32 12, ; 64
	i32 263, ; 65
	i32 125, ; 66
	i32 152, ; 67
	i32 113, ; 68
	i32 166, ; 69
	i32 164, ; 70
	i32 265, ; 71
	i32 203, ; 72
	i32 278, ; 73
	i32 84, ; 74
	i32 327, ; 75
	i32 321, ; 76
	i32 200, ; 77
	i32 217, ; 78
	i32 150, ; 79
	i32 310, ; 80
	i32 60, ; 81
	i32 196, ; 82
	i32 51, ; 83
	i32 103, ; 84
	i32 114, ; 85
	i32 181, ; 86
	i32 40, ; 87
	i32 303, ; 88
	i32 301, ; 89
	i32 120, ; 90
	i32 335, ; 91
	i32 52, ; 92
	i32 44, ; 93
	i32 119, ; 94
	i32 255, ; 95
	i32 333, ; 96
	i32 261, ; 97
	i32 81, ; 98
	i32 136, ; 99
	i32 297, ; 100
	i32 242, ; 101
	i32 8, ; 102
	i32 73, ; 103
	i32 315, ; 104
	i32 155, ; 105
	i32 312, ; 106
	i32 154, ; 107
	i32 92, ; 108
	i32 307, ; 109
	i32 45, ; 110
	i32 330, ; 111
	i32 318, ; 112
	i32 311, ; 113
	i32 109, ; 114
	i32 222, ; 115
	i32 129, ; 116
	i32 218, ; 117
	i32 25, ; 118
	i32 232, ; 119
	i32 72, ; 120
	i32 55, ; 121
	i32 46, ; 122
	i32 339, ; 123
	i32 199, ; 124
	i32 256, ; 125
	i32 22, ; 126
	i32 270, ; 127
	i32 224, ; 128
	i32 86, ; 129
	i32 43, ; 130
	i32 160, ; 131
	i32 71, ; 132
	i32 283, ; 133
	i32 3, ; 134
	i32 42, ; 135
	i32 63, ; 136
	i32 16, ; 137
	i32 53, ; 138
	i32 342, ; 139
	i32 306, ; 140
	i32 105, ; 141
	i32 311, ; 142
	i32 304, ; 143
	i32 267, ; 144
	i32 34, ; 145
	i32 158, ; 146
	i32 85, ; 147
	i32 32, ; 148
	i32 12, ; 149
	i32 51, ; 150
	i32 56, ; 151
	i32 287, ; 152
	i32 36, ; 153
	i32 194, ; 154
	i32 317, ; 155
	i32 305, ; 156
	i32 240, ; 157
	i32 35, ; 158
	i32 58, ; 159
	i32 274, ; 160
	i32 202, ; 161
	i32 175, ; 162
	i32 17, ; 163
	i32 308, ; 164
	i32 164, ; 165
	i32 330, ; 166
	i32 273, ; 167
	i32 198, ; 168
	i32 182, ; 169
	i32 230, ; 170
	i32 300, ; 171
	i32 185, ; 172
	i32 336, ; 173
	i32 153, ; 174
	i32 296, ; 175
	i32 281, ; 176
	i32 185, ; 177
	i32 334, ; 178
	i32 242, ; 179
	i32 190, ; 180
	i32 29, ; 181
	i32 52, ; 182
	i32 332, ; 183
	i32 301, ; 184
	i32 5, ; 185
	i32 316, ; 186
	i32 291, ; 187
	i32 295, ; 188
	i32 247, ; 189
	i32 312, ; 190
	i32 239, ; 191
	i32 219, ; 192
	i32 258, ; 193
	i32 85, ; 194
	i32 177, ; 195
	i32 300, ; 196
	i32 61, ; 197
	i32 112, ; 198
	i32 57, ; 199
	i32 346, ; 200
	i32 287, ; 201
	i32 99, ; 202
	i32 19, ; 203
	i32 251, ; 204
	i32 111, ; 205
	i32 101, ; 206
	i32 102, ; 207
	i32 314, ; 208
	i32 104, ; 209
	i32 304, ; 210
	i32 71, ; 211
	i32 38, ; 212
	i32 32, ; 213
	i32 103, ; 214
	i32 73, ; 215
	i32 225, ; 216
	i32 320, ; 217
	i32 9, ; 218
	i32 123, ; 219
	i32 46, ; 220
	i32 241, ; 221
	i32 200, ; 222
	i32 9, ; 223
	i32 43, ; 224
	i32 4, ; 225
	i32 288, ; 226
	i32 183, ; 227
	i32 324, ; 228
	i32 204, ; 229
	i32 319, ; 230
	i32 31, ; 231
	i32 138, ; 232
	i32 92, ; 233
	i32 93, ; 234
	i32 339, ; 235
	i32 227, ; 236
	i32 49, ; 237
	i32 141, ; 238
	i32 112, ; 239
	i32 140, ; 240
	i32 174, ; 241
	i32 257, ; 242
	i32 115, ; 243
	i32 305, ; 244
	i32 157, ; 245
	i32 76, ; 246
	i32 79, ; 247
	i32 277, ; 248
	i32 37, ; 249
	i32 299, ; 250
	i32 207, ; 251
	i32 261, ; 252
	i32 254, ; 253
	i32 64, ; 254
	i32 138, ; 255
	i32 15, ; 256
	i32 116, ; 257
	i32 293, ; 258
	i32 302, ; 259
	i32 249, ; 260
	i32 48, ; 261
	i32 70, ; 262
	i32 80, ; 263
	i32 126, ; 264
	i32 183, ; 265
	i32 184, ; 266
	i32 94, ; 267
	i32 121, ; 268
	i32 309, ; 269
	i32 26, ; 270
	i32 220, ; 271
	i32 270, ; 272
	i32 97, ; 273
	i32 28, ; 274
	i32 245, ; 275
	i32 337, ; 276
	i32 315, ; 277
	i32 149, ; 278
	i32 169, ; 279
	i32 4, ; 280
	i32 98, ; 281
	i32 33, ; 282
	i32 93, ; 283
	i32 292, ; 284
	i32 196, ; 285
	i32 21, ; 286
	i32 41, ; 287
	i32 170, ; 288
	i32 331, ; 289
	i32 263, ; 290
	i32 323, ; 291
	i32 201, ; 292
	i32 181, ; 293
	i32 277, ; 294
	i32 308, ; 295
	i32 302, ; 296
	i32 282, ; 297
	i32 2, ; 298
	i32 134, ; 299
	i32 111, ; 300
	i32 197, ; 301
	i32 230, ; 302
	i32 343, ; 303
	i32 232, ; 304
	i32 340, ; 305
	i32 58, ; 306
	i32 95, ; 307
	i32 207, ; 308
	i32 322, ; 309
	i32 39, ; 310
	i32 243, ; 311
	i32 187, ; 312
	i32 25, ; 313
	i32 94, ; 314
	i32 89, ; 315
	i32 99, ; 316
	i32 10, ; 317
	i32 87, ; 318
	i32 100, ; 319
	i32 289, ; 320
	i32 191, ; 321
	i32 309, ; 322
	i32 234, ; 323
	i32 208, ; 324
	i32 319, ; 325
	i32 7, ; 326
	i32 187, ; 327
	i32 274, ; 328
	i32 314, ; 329
	i32 231, ; 330
	i32 202, ; 331
	i32 88, ; 332
	i32 269, ; 333
	i32 154, ; 334
	i32 318, ; 335
	i32 33, ; 336
	i32 116, ; 337
	i32 82, ; 338
	i32 221, ; 339
	i32 20, ; 340
	i32 11, ; 341
	i32 162, ; 342
	i32 3, ; 343
	i32 212, ; 344
	i32 326, ; 345
	i32 199, ; 346
	i32 197, ; 347
	i32 84, ; 348
	i32 195, ; 349
	i32 313, ; 350
	i32 64, ; 351
	i32 328, ; 352
	i32 296, ; 353
	i32 143, ; 354
	i32 278, ; 355
	i32 157, ; 356
	i32 184, ; 357
	i32 206, ; 358
	i32 41, ; 359
	i32 117, ; 360
	i32 192, ; 361
	i32 233, ; 362
	i32 322, ; 363
	i32 285, ; 364
	i32 131, ; 365
	i32 75, ; 366
	i32 66, ; 367
	i32 332, ; 368
	i32 172, ; 369
	i32 237, ; 370
	i32 143, ; 371
	i32 106, ; 372
	i32 151, ; 373
	i32 70, ; 374
	i32 156, ; 375
	i32 205, ; 376
	i32 191, ; 377
	i32 121, ; 378
	i32 127, ; 379
	i32 327, ; 380
	i32 152, ; 381
	i32 260, ; 382
	i32 179, ; 383
	i32 141, ; 384
	i32 247, ; 385
	i32 324, ; 386
	i32 20, ; 387
	i32 14, ; 388
	i32 135, ; 389
	i32 75, ; 390
	i32 59, ; 391
	i32 218, ; 392
	i32 250, ; 393
	i32 167, ; 394
	i32 168, ; 395
	i32 210, ; 396
	i32 15, ; 397
	i32 74, ; 398
	i32 6, ; 399
	i32 23, ; 400
	i32 272, ; 401
	i32 231, ; 402
	i32 178, ; 403
	i32 91, ; 404
	i32 325, ; 405
	i32 1, ; 406
	i32 136, ; 407
	i32 273, ; 408
	i32 295, ; 409
	i32 134, ; 410
	i32 69, ; 411
	i32 146, ; 412
	i32 334, ; 413
	i32 313, ; 414
	i32 264, ; 415
	i32 198, ; 416
	i32 88, ; 417
	i32 96, ; 418
	i32 254, ; 419
	i32 259, ; 420
	i32 329, ; 421
	i32 31, ; 422
	i32 226, ; 423
	i32 45, ; 424
	i32 268, ; 425
	i32 186, ; 426
	i32 205, ; 427
	i32 173, ; 428
	i32 228, ; 429
	i32 233, ; 430
	i32 109, ; 431
	i32 158, ; 432
	i32 35, ; 433
	i32 22, ; 434
	i32 174, ; 435
	i32 114, ; 436
	i32 57, ; 437
	i32 293, ; 438
	i32 144, ; 439
	i32 118, ; 440
	i32 120, ; 441
	i32 110, ; 442
	i32 235, ; 443
	i32 139, ; 444
	i32 178, ; 445
	i32 241, ; 446
	i32 201, ; 447
	i32 54, ; 448
	i32 105, ; 449
	i32 176, ; 450
	i32 335, ; 451
	i32 215, ; 452
	i32 188, ; 453
	i32 211, ; 454
	i32 212, ; 455
	i32 133, ; 456
	i32 307, ; 457
	i32 298, ; 458
	i32 286, ; 459
	i32 341, ; 460
	i32 264, ; 461
	i32 216, ; 462
	i32 214, ; 463
	i32 159, ; 464
	i32 320, ; 465
	i32 251, ; 466
	i32 163, ; 467
	i32 132, ; 468
	i32 286, ; 469
	i32 161, ; 470
	i32 333, ; 471
	i32 180, ; 472
	i32 275, ; 473
	i32 229, ; 474
	i32 186, ; 475
	i32 140, ; 476
	i32 298, ; 477
	i32 294, ; 478
	i32 169, ; 479
	i32 213, ; 480
	i32 228, ; 481
	i32 236, ; 482
	i32 303, ; 483
	i32 40, ; 484
	i32 262, ; 485
	i32 81, ; 486
	i32 56, ; 487
	i32 37, ; 488
	i32 97, ; 489
	i32 166, ; 490
	i32 172, ; 491
	i32 299, ; 492
	i32 82, ; 493
	i32 238, ; 494
	i32 98, ; 495
	i32 30, ; 496
	i32 159, ; 497
	i32 223, ; 498
	i32 18, ; 499
	i32 127, ; 500
	i32 119, ; 501
	i32 258, ; 502
	i32 289, ; 503
	i32 271, ; 504
	i32 223, ; 505
	i32 291, ; 506
	i32 165, ; 507
	i32 266, ; 508
	i32 226, ; 509
	i32 348, ; 510
	i32 288, ; 511
	i32 279, ; 512
	i32 170, ; 513
	i32 16, ; 514
	i32 189, ; 515
	i32 144, ; 516
	i32 326, ; 517
	i32 208, ; 518
	i32 125, ; 519
	i32 118, ; 520
	i32 38, ; 521
	i32 115, ; 522
	i32 47, ; 523
	i32 142, ; 524
	i32 117, ; 525
	i32 34, ; 526
	i32 175, ; 527
	i32 95, ; 528
	i32 53, ; 529
	i32 280, ; 530
	i32 129, ; 531
	i32 153, ; 532
	i32 189, ; 533
	i32 24, ; 534
	i32 161, ; 535
	i32 257, ; 536
	i32 229, ; 537
	i32 177, ; 538
	i32 148, ; 539
	i32 104, ; 540
	i32 89, ; 541
	i32 245, ; 542
	i32 60, ; 543
	i32 142, ; 544
	i32 100, ; 545
	i32 5, ; 546
	i32 13, ; 547
	i32 122, ; 548
	i32 135, ; 549
	i32 28, ; 550
	i32 321, ; 551
	i32 204, ; 552
	i32 72, ; 553
	i32 255, ; 554
	i32 24, ; 555
	i32 217, ; 556
	i32 243, ; 557
	i32 284, ; 558
	i32 281, ; 559
	i32 338, ; 560
	i32 137, ; 561
	i32 219, ; 562
	i32 236, ; 563
	i32 252, ; 564
	i32 168, ; 565
	i32 206, ; 566
	i32 285, ; 567
	i32 317, ; 568
	i32 101, ; 569
	i32 123, ; 570
	i32 256, ; 571
	i32 193, ; 572
	i32 163, ; 573
	i32 167, ; 574
	i32 259, ; 575
	i32 39, ; 576
	i32 209, ; 577
	i32 325, ; 578
	i32 17, ; 579
	i32 171, ; 580
	i32 338, ; 581
	i32 337, ; 582
	i32 137, ; 583
	i32 150, ; 584
	i32 248, ; 585
	i32 155, ; 586
	i32 130, ; 587
	i32 19, ; 588
	i32 65, ; 589
	i32 0, ; 590
	i32 182, ; 591
	i32 222, ; 592
	i32 147, ; 593
	i32 173, ; 594
	i32 47, ; 595
	i32 227, ; 596
	i32 345, ; 597
	i32 234, ; 598
	i32 79, ; 599
	i32 61, ; 600
	i32 106, ; 601
	i32 283, ; 602
	i32 238, ; 603
	i32 49, ; 604
	i32 269, ; 605
	i32 342, ; 606
	i32 280, ; 607
	i32 14, ; 608
	i32 192, ; 609
	i32 68, ; 610
	i32 171, ; 611
	i32 244, ; 612
	i32 248, ; 613
	i32 224, ; 614
	i32 347, ; 615
	i32 203, ; 616
	i32 78, ; 617
	i32 253, ; 618
	i32 108, ; 619
	i32 237, ; 620
	i32 279, ; 621
	i32 67, ; 622
	i32 180, ; 623
	i32 63, ; 624
	i32 27, ; 625
	i32 160, ; 626
	i32 221, ; 627
	i32 246, ; 628
	i32 0, ; 629
	i32 10, ; 630
	i32 209, ; 631
	i32 11, ; 632
	i32 78, ; 633
	i32 126, ; 634
	i32 83, ; 635
	i32 194, ; 636
	i32 66, ; 637
	i32 107, ; 638
	i32 65, ; 639
	i32 128, ; 640
	i32 122, ; 641
	i32 77, ; 642
	i32 294, ; 643
	i32 284, ; 644
	i32 346, ; 645
	i32 8, ; 646
	i32 252, ; 647
	i32 2, ; 648
	i32 44, ; 649
	i32 297, ; 650
	i32 156, ; 651
	i32 128, ; 652
	i32 282, ; 653
	i32 23, ; 654
	i32 133, ; 655
	i32 240, ; 656
	i32 271, ; 657
	i32 341, ; 658
	i32 323, ; 659
	i32 29, ; 660
	i32 239, ; 661
	i32 62, ; 662
	i32 211, ; 663
	i32 90, ; 664
	i32 87, ; 665
	i32 148, ; 666
	i32 213, ; 667
	i32 36, ; 668
	i32 86, ; 669
	i32 260, ; 670
	i32 190, ; 671
	i32 336, ; 672
	i32 331, ; 673
	i32 193, ; 674
	i32 50, ; 675
	i32 6, ; 676
	i32 90, ; 677
	i32 343, ; 678
	i32 21, ; 679
	i32 162, ; 680
	i32 96, ; 681
	i32 50, ; 682
	i32 176, ; 683
	i32 113, ; 684
	i32 276, ; 685
	i32 130, ; 686
	i32 188, ; 687
	i32 76, ; 688
	i32 27, ; 689
	i32 253, ; 690
	i32 275, ; 691
	i32 7, ; 692
	i32 225, ; 693
	i32 210, ; 694
	i32 110, ; 695
	i32 276, ; 696
	i32 262 ; 697
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 82d8938cf80f6d5fa6c28529ddfbdb753d805ab4"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
