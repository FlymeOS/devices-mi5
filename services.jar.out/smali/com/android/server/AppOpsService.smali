.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$Restriction;,
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$Callback;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Ops;,
        Lcom/android/server/AppOpsService$UidState;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final MIUI_VER:Ljava/lang/String; = "miui-ver"

.field static final TAG:Ljava/lang/String; = "AppOps"

.field private static final VERION_1:I = 0x1

.field static final WRITE_DELAY:J = 0x1b7740L

.field static final sOpInControl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$Restriction;",
            ">;>;"
        }
    .end annotation
.end field

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[Z>;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResetOp:Z

.field private mServiceState:Lcom/android/server/AppOpsServiceState;

.field final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    .line 100
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x271a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.READ_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.READ_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2714

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x271b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2716

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_MMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_MMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x271d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.READ_CALENDAR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x271f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ACCESS_XIAOMI_ACCOUNT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.USE_SIP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2713

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2711

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2712

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2720

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.NFC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2721

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.android.launcher.permission.INSTALL_SHORTCUT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.permission.BODY_SENSORS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    const/16 v1, 0x2718

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AUTO_START"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 1
    .param p1, "storagePath"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 159
    new-instance v0, Lcom/android/server/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 175
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 177
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    .line 229
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 231
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 233
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 235
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    .line 259
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    .line 301
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 302
    iput-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 303
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    .line 304
    new-instance v0, Lcom/android/server/AppOpsServiceState;

    invoke-direct {v0}, Lcom/android/server/AppOpsServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    .line 305
    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "op"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 723
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .local p3, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez p3, :cond_1

    .line 750
    :cond_0
    return-object p0

    .line 726
    :cond_1
    if-nez p0, :cond_2

    .line 727
    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 729
    .restart local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    :cond_2
    const/4 v1, 0x0

    .line 730
    .local v1, "duplicate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 731
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 732
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 733
    .local v6, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-nez v6, :cond_5

    .line 734
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .restart local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual {p0, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 747
    new-instance v7, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 737
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 738
    .local v5, "reportCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_3

    .line 739
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 740
    .local v4, "report":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p2, :cond_6

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 741
    const/4 v1, 0x1

    .line 742
    goto :goto_1

    .line 738
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 974
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 975
    .local v1, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-eqz v1, :cond_0

    .line 976
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Restriction;

    .line 977
    .local v0, "r":Lcom/android/server/AppOpsService$Restriction;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 978
    iget v2, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    .line 981
    .end local v0    # "r":Lcom/android/server/AppOpsService$Restriction;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 1939
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1940
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1941
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must by called by the system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1943
    :cond_0
    return-void
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .locals 13
    .param p1, "pkgOps"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    const/4 v12, 0x0

    .line 456
    .local v12, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez p2, :cond_0

    .line 457
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .restart local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v1

    if-ge v11, v1, :cond_3

    .line 459
    invoke-virtual {p1, v11}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 460
    .local v0, "curOp":Lcom/android/server/AppOpsService$Op;
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v9, v0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    iget-object v10, v0, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 465
    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v11    # "j":I
    :cond_0
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_1
    array-length v1, p2

    if-ge v11, v1, :cond_3

    .line 466
    aget v1, p2, v11

    invoke-virtual {p1, v1}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 467
    .restart local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    if-eqz v0, :cond_2

    .line 468
    if-nez v12, :cond_1

    .line 469
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .restart local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_1
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v9, v0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    iget-object v10, v0, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 477
    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_3
    return-object v12
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1717
    const-string v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1718
    const-string v0, "  [-h] [CMD]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1719
    const-string v0, "  -h: print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1720
    const-string v0, "Commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1721
    const-string v0, "  write-settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1722
    const-string v0, "    Immediately write pending changes to storage."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1723
    const-string v0, "  read-settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1724
    const-string v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1725
    return-void
.end method

.method private getDefaultMode(IILjava/lang/String;)I
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1959
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 1960
    .local v0, "mode":I
    return v0
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "edit"    # Z

    .prologue
    .line 1345
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 1346
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_0

    .line 1347
    const/4 v1, 0x0

    .line 1349
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    goto :goto_0
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .locals 6
    .param p1, "ops"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "code"    # I
    .param p3, "edit"    # Z

    .prologue
    .line 1354
    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$Op;

    .line 1355
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_2

    .line 1356
    if-nez p3, :cond_0

    .line 1357
    const/4 v3, 0x0

    .line 1368
    :goto_0
    return-object v3

    .line 1359
    :cond_0
    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v3, v3, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v4, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2, v3, v4}, Lcom/android/server/AppOpsService;->getDefaultMode(IILjava/lang/String;)I

    move-result v0

    .line 1360
    .local v0, "mode":I
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    iget-object v4, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v4, v4, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v5, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p2, v4, v5}, Lcom/android/server/AppOpsServiceState;->getSuggestMode(IILjava/lang/String;)I

    move-result v2

    .line 1361
    .local v2, "suggestMode":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move v0, v2

    .line 1362
    :cond_1
    new-instance v1, Lcom/android/server/AppOpsService$Op;

    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v3, v3, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v4, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v1, v3, v4, p2}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;I)V

    .line 1363
    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    invoke-virtual {p1, p2, v1}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 1365
    .end local v0    # "mode":I
    .end local v2    # "suggestMode":I
    :cond_2
    if-eqz p3, :cond_3

    .line 1366
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    :cond_3
    move-object v3, v1

    .line 1368
    goto :goto_0
.end method

.method private getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    .line 1262
    if-nez p1, :cond_1

    .line 1263
    const-string p2, "root"

    .line 1267
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    return-object v0

    .line 1264
    :cond_1
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    .line 1265
    const-string p2, "com.android.shell"

    goto :goto_0
.end method

.method private getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .locals 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    .line 1271
    invoke-direct {p0, p1, p3}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v7

    .line 1272
    .local v7, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v7, :cond_1

    .line 1273
    const/4 v5, 0x0

    .line 1325
    :cond_0
    :goto_0
    return-object v5

    .line 1276
    :cond_1
    iget-object v8, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v8, :cond_3

    .line 1277
    if-nez p3, :cond_2

    .line 1278
    const/4 v5, 0x0

    goto :goto_0

    .line 1280
    :cond_2
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    iput-object v8, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1283
    :cond_3
    iget-object v8, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v8, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Ops;

    .line 1284
    .local v5, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v5, :cond_0

    .line 1285
    if-nez p3, :cond_4

    .line 1286
    const/4 v5, 0x0

    goto :goto_0

    .line 1288
    :cond_4
    const/4 v4, 0x0

    .line 1291
    .local v4, "isPrivileged":Z
    if-eqz p1, :cond_9

    .line 1292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1294
    .local v2, "ident":J
    const/4 v6, -0x1

    .line 1296
    .local v6, "pkgUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-interface {v8, p2, v9, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1298
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_7

    .line 1299
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1300
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_6

    const/4 v4, 0x1

    .line 1311
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5
    :goto_1
    if-eq v6, p1, :cond_8

    .line 1314
    :try_start_1
    const-string v8, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad call: specified package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " under uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but it is really "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1316
    const/4 v5, 0x0

    .line 1319
    .end local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1300
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 1303
    :cond_7
    :try_start_2
    const-string v8, "media"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-eqz v8, :cond_5

    .line 1304
    const/16 v6, 0x3f5

    .line 1305
    const/4 v4, 0x0

    goto :goto_1

    .line 1308
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1309
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v8, "AppOps"

    const-string v9, "Could not contact PackageManager"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1319
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :cond_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1322
    .end local v2    # "ident":J
    .end local v6    # "pkgUid":I
    :cond_9
    new-instance v5, Lcom/android/server/AppOpsService$Ops;

    .end local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-direct {v5, p2, v7, v4}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    .line 1323
    .restart local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    iget-object v8, v7, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v8, p2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 1946
    const/4 v0, 0x0

    .line 1948
    .local v0, "packageNames":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1952
    :goto_0
    if-nez v0, :cond_0

    .line 1953
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 1955
    .end local v0    # "packageNames":[Ljava/lang/String;
    :cond_0
    return-object v0

    .line 1949
    .restart local v0    # "packageNames":[Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "edit"    # Z

    .prologue
    .line 1250
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    .line 1251
    .local v0, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v0, :cond_1

    .line 1252
    if-nez p2, :cond_0

    .line 1253
    const/4 v1, 0x0

    .line 1258
    :goto_0
    return-object v1

    .line 1255
    :cond_0
    new-instance v0, Lcom/android/server/AppOpsService$UidState;

    .end local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    invoke-direct {v0, p1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    .line 1256
    .restart local v0    # "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    move-object v1, v0

    .line 1258
    goto :goto_0
.end method

.method private isOpRestricted(IILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1372
    const/16 v5, 0x2710

    if-le p2, v5, :cond_1

    .line 1389
    :cond_0
    :goto_0
    return v3

    .line 1376
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1377
    .local v2, "userHandle":I
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 1378
    .local v0, "opRestrictions":[Z
    if-eqz v0, :cond_0

    aget-boolean v5, v0, p2

    if-eqz v5, :cond_0

    .line 1379
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1380
    monitor-enter p0

    .line 1381
    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, p1, p3, v5}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    .line 1382
    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v1, :cond_2

    iget-boolean v5, v1, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    if-eqz v5, :cond_2

    .line 1383
    monitor-exit p0

    goto :goto_0

    .line 1385
    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_3
    move v3, v4

    .line 1387
    goto :goto_0
.end method

.method private noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I
    .locals 19
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "proxyUid"    # I
    .param p5, "proxyPackageName"    # Ljava/lang/String;

    .prologue
    .line 1047
    const/16 v16, 0x0

    .line 1048
    .local v16, "ops":Lcom/android/server/AppOpsService$Ops;
    const/4 v15, 0x0

    .local v15, "op":Lcom/android/server/AppOpsService$Op;
    const/16 v17, 0x0

    .line 1050
    .local v17, "switchOp":Lcom/android/server/AppOpsService$Op;
    monitor-enter p0

    .line 1051
    const/4 v4, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v16

    .line 1052
    if-nez v16, :cond_0

    .line 1055
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v8, 0x2

    const/4 v9, 0x0

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    .line 1056
    const/4 v8, 0x2

    monitor-exit p0

    .line 1113
    :goto_0
    return v8

    .line 1058
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v15

    .line 1059
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->isOpRestricted(IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1060
    const/4 v8, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1081
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1062
    :cond_1
    :try_start_1
    iget v4, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1063
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Noting op not finished: uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v15, Lcom/android/server/AppOpsService$Op;->time:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_2
    const/4 v4, 0x0

    iput v4, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1067
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v12

    .line 1068
    .local v12, "switchCode":I
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    move-object/from16 v18, v0

    .line 1069
    .local v18, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v4, :cond_3

    .line 1070
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 1071
    .local v8, "uidMode":I
    if-eqz v8, :cond_3

    .line 1075
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1076
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v9, 0x0

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    .line 1077
    monitor-exit p0

    goto/16 :goto_0

    .line 1080
    .end local v8    # "uidMode":I
    :cond_3
    move/from16 v0, p1

    if-eq v12, v0, :cond_8

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v12, v4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v17

    .line 1081
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1082
    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1085
    .local v13, "resultMode":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/server/AppOpsServiceState;->isAppPermissionControlOpen(II)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1086
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/server/AppOpsServiceState;->isCtsIgnore(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1087
    const/4 v13, 0x0

    .line 1095
    :cond_4
    :goto_2
    const/4 v4, 0x4

    if-ne v13, v4, :cond_5

    .line 1098
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Lcom/android/server/AppOpsServiceState;->askOperationLocked(IILjava/lang/String;)I

    move-result v13

    .line 1100
    :cond_5
    const/4 v4, 0x1

    if-eq v13, v4, :cond_6

    const/4 v4, 0x2

    if-ne v13, v4, :cond_a

    .line 1103
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1112
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v14, 0x0

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    move v8, v13

    .line 1113
    goto/16 :goto_0

    .end local v13    # "resultMode":I
    :cond_8
    move-object/from16 v17, v15

    .line 1080
    goto :goto_1

    .line 1091
    .restart local v13    # "resultMode":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AppOpsServiceState;->isMiuiAllowed(IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1092
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AppOpsServiceState;->allowedToMode(IILjava/lang/String;)I

    move-result v13

    .line 1093
    move-object/from16 v0, v17

    iput v13, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    goto :goto_2

    .line 1104
    :cond_a
    if-nez v13, :cond_7

    .line 1107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v15, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1108
    const-wide/16 v4, 0x0

    iput-wide v4, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1109
    move/from16 v0, p4

    iput v0, v15, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 1110
    move-object/from16 v0, p5

    iput-object v0, v15, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    goto :goto_3
.end method

.method private printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "mode"    # I
    .param p3, "operation"    # Ljava/lang/String;

    .prologue
    .line 1964
    if-eqz p1, :cond_0

    .line 1965
    iget v1, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 1966
    .local v0, "switchCode":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 1976
    .end local v0    # "switchCode":I
    :cond_0
    :goto_0
    return-void

    .line 1970
    .restart local v0    # "switchCode":I
    :cond_1
    if-nez p2, :cond_0

    goto :goto_0
.end method

.method private pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .locals 8
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 534
    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->time:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 535
    const/4 v3, 0x0

    invoke-direct {p0, p2, p3, v3}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 536
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v0, :cond_1

    .line 537
    iget v3, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v3}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    .line 538
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 539
    iget-object v2, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 540
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v1, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 541
    .local v1, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v1, :cond_1

    .line 542
    iget-object v3, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 544
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 546
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 547
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 553
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_1
    return-void
.end method

.method private scheduleFastWriteLocked()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1336
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_0

    .line 1337
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 1338
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    .line 1339
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1340
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1342
    :cond_0
    return-void
.end method

.method private scheduleWriteLocked()V
    .locals 4

    .prologue
    .line 1329
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 1330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 1331
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1333
    :cond_0
    return-void
.end method

.method private verifyIncomingOp(I)V
    .locals 3
    .param p1, "op"    # I

    .prologue
    .line 1238
    if-ltz p1, :cond_1

    const/16 v0, 0x3f

    if-ge p1, v0, :cond_1

    .line 1243
    :cond_0
    return-void

    .line 1242
    :cond_1
    const/16 v0, 0x2710

    if-le p1, v0, :cond_2

    const/16 v0, 0x2726

    if-lt p1, v0, :cond_0

    .line 1246
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 1227
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1230
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 2
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 964
    monitor-enter p0

    .line 965
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->checkRestrictionLocked(IIILjava/lang/String;)I

    move-result v0

    .line 966
    .local v0, "mode":I
    if-eqz v0, :cond_0

    .line 967
    monitor-exit p0

    .line 970
    .end local v0    # "mode":I
    :goto_0
    return v0

    .line 969
    .restart local v0    # "mode":I
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 969
    .end local v0    # "mode":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public checkOperation(IILjava/lang/String;)I
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 930
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 931
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 932
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, p3}, Lcom/android/server/AppOpsServiceState;->isCtsIgnore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppOpsServiceState;->isAppPermissionControlOpen(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/AppOpsServiceState;->isMiuiAllowed(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move v1, p2

    move-object v2, p3

    move v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    .line 935
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/AppOpsServiceState;->allowedToMode(IILjava/lang/String;)I

    move-result v8

    .line 958
    :goto_0
    return v8

    .line 938
    :cond_1
    monitor-enter p0

    .line 939
    :try_start_0
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/AppOpsService;->isOpRestricted(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 940
    const/4 v8, 0x1

    monitor-exit p0

    goto :goto_0

    .line 959
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 942
    :cond_2
    :try_start_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 943
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v9

    .line 944
    .local v9, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-eqz v9, :cond_3

    iget-object v0, v9, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_3

    .line 945
    iget-object v0, v9, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 946
    .local v8, "uidMode":I
    if-eqz v8, :cond_3

    .line 947
    monitor-exit p0

    goto :goto_0

    .line 950
    .end local v8    # "uidMode":I
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v6

    .line 951
    .local v6, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v6, :cond_5

    .line 952
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/AppOpsServiceState;->getSuggestMode(IILjava/lang/String;)I

    move-result v7

    .line 953
    .local v7, "suggestMode":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_4

    .line 954
    monitor-exit p0

    move v8, v7

    goto :goto_0

    .line 956
    :cond_4
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v8

    monitor-exit p0

    goto :goto_0

    .line 958
    .end local v7    # "suggestMode":I
    :cond_5
    iget v8, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public checkOperationInternal(IILjava/lang/String;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1985
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1986
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1987
    monitor-enter p0

    .line 1988
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, p3, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v0

    .line 1989
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_0

    .line 1990
    const/4 v1, -0x1

    monitor-exit p0

    .line 1992
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto :goto_0

    .line 1993
    .end local v0    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkPackage(ILjava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1016
    monitor-enter p0

    .line 1017
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1018
    const/4 v0, 0x0

    monitor-exit p0

    .line 1020
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    goto :goto_0

    .line 1022
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 32
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "android.permission.DUMP"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_0

    .line 1731
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Permission Denial: can\'t dump ApOps service from from pid="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", uid="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1905
    :goto_0
    return-void

    .line 1737
    :cond_0
    if-eqz p3, :cond_6

    .line 1738
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v8, v0, :cond_6

    .line 1739
    aget-object v4, p3, v8

    .line 1740
    .local v4, "arg":Ljava/lang/String;
    const-string v28, "-h"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 1741
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 1743
    :cond_1
    const-string v28, "-a"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 1738
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1745
    :cond_2
    const-string v28, "write-settings"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 1746
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 1748
    .local v24, "token":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1749
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1750
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1751
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 1752
    const-string v28, "Current settings written."

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1754
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1750
    :catchall_0
    move-exception v28

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v28
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1754
    :catchall_1
    move-exception v28

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v28

    .line 1757
    .end local v24    # "token":J
    :cond_3
    const-string v28, "read-settings"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 1758
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 1760
    .restart local v24    # "token":J
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService;->readState()V

    .line 1761
    const-string v28, "Last settings read."

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1763
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catchall_2
    move-exception v28

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v28

    .line 1766
    .end local v24    # "token":J
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_5

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 1767
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Unknown option: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1770
    :cond_5
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Unknown command: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1776
    .end local v4    # "arg":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_6
    monitor-enter p0

    .line 1777
    :try_start_6
    const-string v28, "Current AppOps Service state:"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1779
    .local v14, "now":J
    const/4 v12, 0x0

    .line 1780
    .local v12, "needSep":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v28

    if-lez v28, :cond_8

    .line 1781
    const/4 v12, 0x1

    .line 1782
    const-string v28, "  Op mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1783
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_8

    .line 1784
    const-string v28, "    Op "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v28

    invoke-static/range {v28 .. v28}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1785
    const-string v28, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1787
    .local v5, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_7

    .line 1788
    const-string v28, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v28, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1789
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1787
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1783
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1793
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "i":I
    .end local v10    # "j":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v28

    if-lez v28, :cond_a

    .line 1794
    const/4 v12, 0x1

    .line 1795
    const-string v28, "  Package mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1796
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_a

    .line 1797
    const-string v28, "    Pkg "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1798
    const-string v28, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1800
    .restart local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_9

    .line 1801
    const-string v28, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v28, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1802
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1800
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1796
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1806
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "i":I
    .end local v10    # "j":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v28

    if-lez v28, :cond_b

    .line 1807
    const/4 v12, 0x1

    .line 1808
    const-string v28, "  All mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1809
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_b

    .line 1810
    const-string v28, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1811
    const-string v28, " -> "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1809
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1814
    .end local v8    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v28

    if-lez v28, :cond_d

    .line 1815
    const/4 v12, 0x1

    .line 1816
    const-string v28, "  Clients:"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1817
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_d

    .line 1818
    const-string v28, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v28, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$ClientState;

    .line 1820
    .local v7, "cs":Lcom/android/server/AppOpsService$ClientState;
    const-string v28, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1821
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_c

    .line 1822
    const-string v28, "      Started ops:"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1823
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_8
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_c

    .line 1824
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AppOpsService$Op;

    .line 1825
    .local v16, "op":Lcom/android/server/AppOpsService$Op;
    const-string v28, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v28, "uid="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->uid:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1826
    const-string v28, " pkg="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1827
    const-string v28, " op="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1823
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 1817
    .end local v10    # "j":I
    .end local v16    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7

    .line 1832
    .end local v7    # "cs":Lcom/android/server/AppOpsService$ClientState;
    .end local v8    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v28

    if-lez v28, :cond_11

    .line 1833
    const/16 v21, 0x0

    .line 1834
    .local v21, "printedHeader":Z
    const/4 v13, 0x0

    .local v13, "o":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v13, v0, :cond_11

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v28

    invoke-static/range {v28 .. v28}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v16

    .line 1836
    .local v16, "op":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    .line 1837
    .local v23, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_a
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_10

    .line 1838
    if-nez v21, :cond_e

    .line 1839
    const-string v28, "  Audio Restrictions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1840
    const/16 v21, 0x1

    .line 1841
    const/4 v12, 0x1

    .line 1843
    :cond_e
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v27

    .line 1844
    .local v27, "usage":I
    const-string v28, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1845
    const-string v28, " usage="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v27 .. v27}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1846
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/AppOpsService$Restriction;

    .line 1847
    .local v22, "r":Lcom/android/server/AppOpsService$Restriction;
    const-string v28, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1848
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_f

    .line 1849
    const-string v28, "      Exceptions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1850
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_b
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArraySet;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_f

    .line 1851
    const-string v28, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1850
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 1837
    .end local v10    # "j":I
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_a

    .line 1834
    .end local v22    # "r":Lcom/android/server/AppOpsService$Restriction;
    .end local v27    # "usage":I
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_9

    .line 1857
    .end local v8    # "i":I
    .end local v13    # "o":I
    .end local v16    # "op":Ljava/lang/String;
    .end local v21    # "printedHeader":Z
    .end local v23    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :cond_11
    if-eqz v12, :cond_12

    .line 1858
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1860
    :cond_12
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_1b

    .line 1861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/AppOpsService$UidState;

    .line 1863
    .local v26, "uidState":Lcom/android/server/AppOpsService$UidState;
    const-string v28, "  Uid "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v28, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1865
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    .line 1866
    .local v18, "opModes":Landroid/util/SparseIntArray;
    if-eqz v18, :cond_13

    .line 1867
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseIntArray;->size()I

    move-result v17

    .line 1868
    .local v17, "opModeCount":I
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_d
    move/from16 v0, v17

    if-ge v10, v0, :cond_13

    .line 1869
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 1870
    .local v6, "code":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    .line 1871
    .local v11, "mode":I
    const-string v28, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1872
    const-string v28, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 1868
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 1876
    .end local v6    # "code":I
    .end local v10    # "j":I
    .end local v11    # "mode":I
    .end local v17    # "opModeCount":I
    :cond_13
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    .line 1877
    .local v20, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v20, :cond_15

    .line 1860
    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_c

    .line 1881
    :cond_15
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/AppOpsService$Ops;

    .line 1882
    .local v19, "ops":Lcom/android/server/AppOpsService$Ops;
    const-string v28, "    Package "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v28, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1883
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_e
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_16

    .line 1884
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AppOpsService$Op;

    .line 1885
    .local v16, "op":Lcom/android/server/AppOpsService$Op;
    const-string v28, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1886
    const-string v28, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1887
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_17

    .line 1888
    const-string v28, "; time="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v28, v0

    sub-long v28, v14, v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1889
    const-string v28, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1891
    :cond_17
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_18

    .line 1892
    const-string v28, "; rejectTime="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v28, v0

    sub-long v28, v14, v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1893
    const-string v28, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1895
    :cond_18
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1a

    .line 1896
    const-string v28, " (running)"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1900
    :cond_19
    :goto_f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1883
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_e

    .line 1897
    :cond_1a
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v28, v0

    if-eqz v28, :cond_19

    .line 1898
    const-string v28, "; duration="

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    goto :goto_f

    .line 1904
    .end local v8    # "i":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "j":I
    .end local v12    # "needSep":Z
    .end local v14    # "now":J
    .end local v16    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v18    # "opModes":Landroid/util/SparseIntArray;
    .end local v19    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v20    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v26    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_3
    move-exception v28

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v28

    .restart local v8    # "i":I
    .restart local v12    # "needSep":Z
    .restart local v14    # "now":J
    :cond_1b
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_0
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1187
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1188
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    move-object v0, p1

    .line 1189
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 1190
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 1191
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p2, p3, p4, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    .line 1192
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_0

    .line 1193
    monitor-exit p0

    .line 1203
    :goto_0
    return-void

    .line 1195
    :cond_0
    iget-object v2, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1196
    iget-object v2, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1197
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operation not started: uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " op="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1202
    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1201
    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V

    .line 1202
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    .locals 4
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;

    .prologue
    const/4 v1, 0x1

    .line 1211
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-gt v0, v1, :cond_1

    .line 1212
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-ne v0, v1, :cond_0

    .line 1213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1214
    iget-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1220
    :goto_0
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1224
    :goto_1
    return-void

    .line 1216
    :cond_0
    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing op nesting under-run: uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1222
    :cond_1
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    goto :goto_1
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 514
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 516
    monitor-enter p0

    .line 517
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 518
    .local v0, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_0

    .line 519
    monitor-exit p0

    .line 529
    :goto_0
    return-object v1

    .line 521
    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v2

    .line 522
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_1

    .line 523
    monitor-exit p0

    goto :goto_0

    .line 530
    .end local v0    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 525
    .restart local v0    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .restart local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    iget-object v4, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v5, v5, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v3, v4, v5, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 528
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 18
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v14, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 484
    const/4 v7, 0x0

    .line 485
    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    .line 486
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 487
    .local v12, "uidStateCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v12, :cond_2

    .line 488
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$UidState;

    .line 489
    .local v11, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v13, :cond_0

    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 487
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    :cond_1
    iget-object v5, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 493
    .local v5, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 494
    .local v4, "packageCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    move-object v8, v7

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v8, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_2
    if-ge v3, v4, :cond_5

    .line 495
    :try_start_1
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;

    .line 496
    .local v6, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v9

    .line 497
    .local v9, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v9, :cond_4

    .line 498
    if-nez v8, :cond_3

    .line 499
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 501
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_3
    :try_start_2
    new-instance v10, Landroid/app/AppOpsManager$PackageOps;

    iget-object v13, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v14, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v14, v14, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-direct {v10, v13, v14, v9}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 503
    .local v10, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .end local v10    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object v8, v7

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_2

    .line 507
    .end local v3    # "j":I
    .end local v4    # "packageCount":I
    .end local v5    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_2
    monitor-exit p0

    .line 508
    return-object v7

    .line 507
    .end local v2    # "i":I
    .end local v12    # "uidStateCount":I
    :catchall_0
    move-exception v13

    :goto_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "packageCount":I
    .restart local v5    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v12    # "uidStateCount":I
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_5

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_3
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_3

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_4
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_4

    .end local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_5
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_1
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .prologue
    .line 918
    monitor-enter p0

    .line 919
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 920
    .local v0, "cs":Lcom/android/server/AppOpsService$ClientState;
    if-nez v0, :cond_0

    .line 921
    new-instance v0, Lcom/android/server/AppOpsService$ClientState;

    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    invoke-direct {v0, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    .line 922
    .restart local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    :cond_0
    monitor-exit p0

    return-object v0

    .line 925
    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isControlAllowed(ILjava/lang/String;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1997
    const/4 v0, 0x1

    return v0
.end method

.method public noteOperation(IILjava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1040
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1041
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1042
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    .locals 7
    .param p1, "code"    # I
    .param p2, "proxyPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1028
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1029
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v6

    .line 1031
    .local v6, "proxyMode":I
    if-nez v6, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 1034
    .end local v6    # "proxyMode":I
    :cond_0
    :goto_0
    return v6

    .restart local v6    # "proxyMode":I
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p3

    move-object v3, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v6

    goto :goto_0
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 406
    monitor-enter p0

    .line 407
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$UidState;

    .line 408
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v1, :cond_0

    .line 409
    monitor-exit p0

    .line 429
    :goto_0
    return-void

    .line 412
    :cond_0
    const/4 v0, 0x0

    .line 415
    .local v0, "changed":Z
    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 416
    const/4 v0, 0x1

    .line 420
    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_2

    .line 422
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 425
    :cond_2
    if-eqz v0, :cond_3

    .line 426
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 428
    :cond_3
    monitor-exit p0

    goto :goto_0

    .end local v0    # "changed":Z
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1207
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    .line 309
    const-string v0, "appops"

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 310
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsServiceState;->init(Landroid/content/Context;)V

    .line 311
    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1497
    const/4 v4, 0x0

    const-string v5, "n"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1498
    .local v1, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1501
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    if-ne v3, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_3

    .line 1502
    :cond_1
    if-eq v3, v7, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 1506
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1507
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1508
    invoke-virtual {p0, p1, v1}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_0

    .line 1510
    :cond_2
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1515
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method readState()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v10, 0x2

    const/4 v12, 0x1

    .line 1393
    iget-object v9, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v9

    .line 1394
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1397
    :try_start_1
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 1402
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1403
    .local v4, "success":Z
    :try_start_2
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1405
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1406
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1409
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v10, :cond_1

    if-ne v6, v12, :cond_0

    .line 1413
    :cond_1
    if-eq v6, v10, :cond_3

    .line 1414
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v10, "no start tag found"

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1442
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_0
    move-exception v0

    .line 1443
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v8, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1455
    if-nez v4, :cond_2

    .line 1456
    :try_start_5
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1459
    :cond_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1463
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1464
    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1465
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "success":Z
    :goto_1
    return-void

    .line 1398
    :catch_1
    move-exception v0

    .line 1399
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_9
    const-string v8, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No existing app ops "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; starting empty"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    monitor-exit v9

    goto :goto_1

    .line 1464
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v8

    .line 1418
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "success":Z
    .restart local v6    # "type":I
    :cond_3
    const/4 v8, 0x0

    :try_start_b
    const-string v10, "miui-ver"

    invoke-interface {v2, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1419
    .local v7, "value":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v12, :cond_5

    .line 1420
    :cond_4
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/AppOpsService;->mResetOp:Z

    .line 1423
    :cond_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1425
    .local v1, "outerDepth":I
    :cond_6
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v12, :cond_d

    if-ne v6, v13, :cond_7

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v1, :cond_d

    .line 1426
    :cond_7
    if-eq v6, v13, :cond_6

    const/4 v8, 0x4

    if-eq v6, v8, :cond_6

    .line 1430
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1431
    .local v5, "tagName":Ljava/lang/String;
    const-string v8, "pkg"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1432
    invoke-virtual {p0, v2}, Lcom/android/server/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    .line 1444
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v7    # "value":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 1445
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_c
    const-string v8, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1455
    if-nez v4, :cond_8

    .line 1456
    :try_start_d
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1459
    :cond_8
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_0

    .line 1460
    :catch_3
    move-exception v8

    goto/16 :goto_0

    .line 1433
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    .restart local v7    # "value":Ljava/lang/String;
    :cond_9
    :try_start_f
    const-string v8, "uid"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1434
    invoke-virtual {p0, v2}, Lcom/android/server/AppOpsService;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_2

    .line 1446
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v7    # "value":Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 1447
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_10
    const-string v8, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1455
    if-nez v4, :cond_a

    .line 1456
    :try_start_11
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 1459
    :cond_a
    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_0

    .line 1460
    :catch_5
    move-exception v8

    goto/16 :goto_0

    .line 1436
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    .restart local v7    # "value":Ljava/lang/String;
    :cond_b
    :try_start_13
    const-string v8, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <app-ops>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_2

    .line 1448
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v7    # "value":Ljava/lang/String;
    :catch_6
    move-exception v0

    .line 1449
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_14
    const-string v8, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 1455
    if-nez v4, :cond_c

    .line 1456
    :try_start_15
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 1459
    :cond_c
    :try_start_16
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto/16 :goto_0

    .line 1460
    :catch_7
    move-exception v8

    goto/16 :goto_0

    .line 1441
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    .restart local v7    # "value":Ljava/lang/String;
    :cond_d
    const/4 v4, 0x1

    .line 1455
    if-nez v4, :cond_e

    .line 1456
    :try_start_17
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 1459
    :cond_e
    :try_start_18
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto/16 :goto_0

    .line 1460
    :catch_8
    move-exception v8

    goto/16 :goto_0

    .line 1450
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    .end local v7    # "value":Ljava/lang/String;
    :catch_9
    move-exception v0

    .line 1451
    .local v0, "e":Ljava/io/IOException;
    :try_start_19
    const-string v8, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 1455
    if-nez v4, :cond_f

    .line 1456
    :try_start_1a
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 1459
    :cond_f
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_a
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto/16 :goto_0

    .line 1460
    :catch_a
    move-exception v8

    goto/16 :goto_0

    .line 1452
    .end local v0    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v0

    .line 1453
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_1c
    const-string v8, "AppOps"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 1455
    if-nez v4, :cond_10

    .line 1456
    :try_start_1d
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 1459
    :cond_10
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_c
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    goto/16 :goto_0

    .line 1460
    :catch_c
    move-exception v8

    goto/16 :goto_0

    .line 1455
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_1
    move-exception v8

    if-nez v4, :cond_11

    .line 1456
    :try_start_1f
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    .line 1459
    :cond_11
    :try_start_20
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_e
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .line 1461
    :goto_3
    :try_start_21
    throw v8

    .line 1463
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "success":Z
    :catchall_2
    move-exception v8

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    :try_start_22
    throw v8
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 1460
    .local v0, "e":Ljava/lang/IllegalStateException;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "success":Z
    :catch_d
    move-exception v8

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_e
    move-exception v10

    goto :goto_3
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 25
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1519
    const/16 v22, 0x0

    const-string v23, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1520
    .local v20, "uid":I
    const/16 v22, 0x0

    const-string v23, "p"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1521
    .local v8, "isPrivilegedString":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1522
    .local v7, "isPrivileged":Z
    if-nez v8, :cond_e

    .line 1524
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 1525
    .local v13, "packageManager":Landroid/content/pm/IPackageManager;
    if-eqz v13, :cond_d

    .line 1526
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v24

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1528
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_0

    .line 1529
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    move/from16 v22, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v22, v22, 0x8

    if-eqz v22, :cond_c

    const/4 v7, 0x1

    .line 1547
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .line 1550
    .local v12, "outerDepth":I
    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .local v19, "type":I
    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    const/16 v22, 0x3

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v12, :cond_10

    .line 1551
    :cond_2
    const/16 v22, 0x3

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    const/16 v22, 0x4

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 1555
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1556
    .local v17, "tagName":Ljava/lang/String;
    const-string v22, "op"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 1557
    const/16 v22, 0x0

    const-string v23, "n"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1558
    .local v14, "parseInt":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppOpsService;->mResetOp:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    const/16 v22, 0x2a

    move/from16 v0, v22

    if-gt v14, v0, :cond_1

    .line 1561
    :cond_3
    new-instance v10, Lcom/android/server/AppOpsService$Op;

    move/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v10, v0, v1, v14}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;I)V

    .line 1562
    .local v10, "op":Lcom/android/server/AppOpsService$Op;
    const/16 v22, 0x0

    const-string v23, "m"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1563
    .local v9, "mode":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 1564
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1566
    :cond_4
    const/16 v22, 0x0

    const-string v23, "t"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1567
    .local v18, "time":Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 1568
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v10, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1570
    :cond_5
    const/16 v22, 0x0

    const-string v23, "r"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1571
    if-eqz v18, :cond_6

    .line 1572
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v10, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1574
    :cond_6
    const/16 v22, 0x0

    const-string v23, "d"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1575
    .local v5, "dur":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 1576
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v10, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1578
    :cond_7
    const/16 v22, 0x0

    const-string v23, "pu"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1579
    .local v16, "proxyUid":Ljava/lang/String;
    if-eqz v16, :cond_8

    .line 1580
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v10, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 1582
    :cond_8
    const/16 v22, 0x0

    const-string v23, "pp"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1583
    .local v15, "proxyPackageName":Ljava/lang/String;
    if-eqz v15, :cond_9

    .line 1584
    iput-object v15, v10, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 1587
    :cond_9
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v21

    .line 1588
    .local v21, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v22, v0

    if-nez v22, :cond_a

    .line 1589
    new-instance v22, Landroid/util/ArrayMap;

    invoke-direct/range {v22 .. v22}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1592
    :cond_a
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$Ops;

    .line 1593
    .local v11, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v11, :cond_b

    .line 1594
    new-instance v11, Lcom/android/server/AppOpsService$Ops;

    .end local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-direct {v11, v0, v1, v7}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    .line 1595
    .restart local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    :cond_b
    iget v0, v10, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0, v10}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1529
    .end local v5    # "dur":Ljava/lang/String;
    .end local v9    # "mode":Ljava/lang/String;
    .end local v10    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v12    # "outerDepth":I
    .end local v14    # "parseInt":I
    .end local v15    # "proxyPackageName":Ljava/lang/String;
    .end local v16    # "proxyUid":Ljava/lang/String;
    .end local v17    # "tagName":Ljava/lang/String;
    .end local v18    # "time":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v21    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1534
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppOpsService;->mResetOp:Z

    move/from16 v22, v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v22, :cond_10

    .line 1535
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1541
    .end local v13    # "packageManager":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v6

    .line 1542
    .local v6, "e":Landroid/os/RemoteException;
    const-string v22, "AppOps"

    const-string v23, "Could not contact PackageManager"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1545
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_e
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_0

    .line 1599
    .restart local v12    # "outerDepth":I
    .restart local v17    # "tagName":Ljava/lang/String;
    .restart local v19    # "type":I
    :cond_f
    const-string v22, "AppOps"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unknown element under <pkg>: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1604
    .end local v12    # "outerDepth":I
    .end local v17    # "tagName":Ljava/lang/String;
    .end local v19    # "type":I
    :cond_10
    return-void
.end method

.method readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1469
    const-string v7, "n"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1470
    .local v5, "uid":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1473
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v11, :cond_4

    if-ne v4, v12, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_4

    .line 1474
    :cond_1
    if-eq v4, v12, :cond_0

    const/4 v7, 0x4

    if-eq v4, v7, :cond_0

    .line 1478
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1479
    .local v3, "tagName":Ljava/lang/String;
    const-string v7, "op"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1480
    const-string v7, "n"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1481
    .local v0, "code":I
    const-string v7, "m"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1482
    .local v1, "mode":I
    invoke-direct {p0, v5, v11}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v6

    .line 1483
    .local v6, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v7, :cond_2

    .line 1484
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1486
    :cond_2
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1488
    .end local v0    # "code":I
    .end local v1    # "mode":I
    .end local v6    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_3
    const-string v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown element under <uid-ops>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1493
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public registerCallback(Lcom/android/internal/app/IOpsCallback;)I
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/app/IOpsCallback;

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, p1}, Lcom/android/server/AppOpsServiceState;->registerCallback(Lcom/android/internal/app/IOpsCallback;)I

    move-result v0

    return v0
.end method

.method public removeUser(I)V
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1933
    const-string v0, "removeUser"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 1934
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1935
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v0, p1}, Lcom/android/server/AppOpsServiceState;->removeUser(I)V

    .line 1936
    return-void
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .locals 31
    .param p1, "reqUserId"    # I
    .param p2, "reqPackageName"    # Ljava/lang/String;

    .prologue
    .line 755
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 756
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 757
    .local v3, "callingUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 759
    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v7, "resetAllModes"

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 762
    const/16 v28, -0x1

    .line 763
    .local v28, "reqUid":I
    if-eqz p2, :cond_0

    .line 765
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-interface {v4, v0, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v28

    .line 772
    :cond_0
    :goto_0
    const/4 v10, 0x0

    .line 773
    .local v10, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    monitor-enter p0

    .line 774
    const/4 v12, 0x0

    .line 775
    .local v12, "changed":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    .local v17, "i":I
    :goto_1
    if-ltz v17, :cond_d

    .line 776
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/AppOpsService$UidState;

    .line 778
    .local v30, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    .line 779
    .local v22, "opModes":Landroid/util/SparseIntArray;
    if-eqz v22, :cond_4

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v0, v28

    if-eq v4, v0, :cond_1

    const/4 v4, -0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_4

    .line 780
    :cond_1
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseIntArray;->size()I

    move-result v29

    .line 781
    .local v29, "uidOpCount":I
    add-int/lit8 v20, v29, -0x1

    .local v20, "j":I
    :goto_2
    if-ltz v20, :cond_4

    .line 782
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    .line 783
    .local v13, "code":I
    invoke-static {v13}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 784
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 785
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 786
    const/4 v4, 0x0

    move-object/from16 v0, v30

    iput-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 788
    :cond_2
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .local v9, "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    aget-object v23, v9, v18

    .line 789
    .local v23, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-static {v10, v0, v13, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v10

    .line 791
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-static {v10, v0, v13, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v10

    .line 788
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 781
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v21    # "len$":I
    .end local v23    # "packageName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v20, v20, -0x1

    goto :goto_2

    .line 798
    .end local v13    # "code":I
    .end local v20    # "j":I
    .end local v29    # "uidOpCount":I
    :cond_4
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_6

    .line 775
    :cond_5
    :goto_4
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_1

    .line 802
    :cond_6
    const/4 v4, -0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_7

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 808
    :cond_7
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    .line 809
    .local v24, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 810
    .local v19, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    :cond_8
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 811
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 812
    .local v16, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 813
    .restart local v23    # "packageName":Ljava/lang/String;
    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 817
    :cond_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/AppOpsService$Ops;

    .line 818
    .local v25, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    add-int/lit8 v20, v4, -0x1

    .restart local v20    # "j":I
    :goto_6
    if-ltz v20, :cond_b

    .line 819
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AppOpsService$Op;

    .line 820
    .local v14, "curOp":Lcom/android/server/AppOpsService$Op;
    iget v4, v14, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, v14, Lcom/android/server/AppOpsService$Op;->mode:I

    iget v5, v14, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v5}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v5

    if-eq v4, v5, :cond_a

    .line 822
    iget v4, v14, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v4

    iput v4, v14, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 823
    const/4 v12, 0x1

    .line 824
    iget v5, v14, Lcom/android/server/AppOpsService$Op;->op:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    iget v6, v14, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-static {v10, v0, v5, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v10

    .line 826
    iget v5, v14, Lcom/android/server/AppOpsService$Op;->op:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-static {v10, v0, v5, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v10

    .line 828
    iget-wide v4, v14, Lcom/android/server/AppOpsService$Op;->time:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    iget-wide v4, v14, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    .line 829
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->removeAt(I)V

    .line 818
    :cond_a
    add-int/lit8 v20, v20, -0x1

    goto :goto_6

    .line 833
    .end local v14    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_b
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    if-nez v4, :cond_8

    .line 834
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_5

    .line 845
    .end local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v17    # "i":I
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v20    # "j":I
    .end local v22    # "opModes":Landroid/util/SparseIntArray;
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v24    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v25    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v30    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 837
    .restart local v17    # "i":I
    .restart local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .restart local v22    # "opModes":Landroid/util/SparseIntArray;
    .restart local v24    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v30    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_c
    :try_start_2
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 838
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_4

    .line 842
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v22    # "opModes":Landroid/util/SparseIntArray;
    .end local v24    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v30    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_d
    if-eqz v12, :cond_e

    .line 843
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 845
    :cond_e
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 846
    if-eqz v10, :cond_10

    .line 847
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 848
    .local v15, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$Callback;

    .line 849
    .local v11, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    .line 850
    .local v27, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/16 v17, 0x0

    :goto_7
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_f

    .line 851
    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/util/Pair;

    .line 853
    .local v26, "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_3
    iget-object v5, v11, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 850
    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 859
    .end local v11    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v26    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v27    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_10
    return-void

    .line 854
    .restart local v11    # "cb":Lcom/android/server/AppOpsService$Callback;
    .restart local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v26    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v27    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catch_0
    move-exception v4

    goto :goto_8

    .line 767
    .end local v10    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v11    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v12    # "changed":Z
    .end local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v17    # "i":I
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v26    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v27    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 987
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 988
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 989
    monitor-enter p0

    .line 990
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 991
    .local v4, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-nez v4, :cond_0

    .line 992
    new-instance v4, Landroid/util/SparseArray;

    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 993
    .restart local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 995
    :cond_0
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 996
    if-eqz p4, :cond_3

    .line 997
    new-instance v3, Lcom/android/server/AppOpsService$Restriction;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/server/AppOpsService$Restriction;-><init>(Lcom/android/server/AppOpsService$1;)V

    .line 998
    .local v3, "r":Lcom/android/server/AppOpsService$Restriction;
    iput p4, v3, Lcom/android/server/AppOpsService$Restriction;->mode:I

    .line 999
    if-eqz p5, :cond_2

    .line 1000
    array-length v0, p5

    .line 1001
    .local v0, "N":I
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 1002
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1003
    aget-object v2, p5, v1

    .line 1004
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1005
    iget-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1002
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1009
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1011
    .end local v3    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_3
    monitor-exit p0

    .line 1012
    return-void

    .line 1011
    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 17
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 666
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    if-eq v12, v13, :cond_0

    .line 667
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 670
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 671
    const/4 v9, 0x0

    .line 672
    .local v9, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 673
    monitor-enter p0

    .line 674
    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v12}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v11

    .line 675
    .local v11, "uidState":Lcom/android/server/AppOpsService$UidState;
    const/4 v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v8

    .line 676
    .local v8, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v8, :cond_4

    .line 677
    iget v12, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v0, p4

    if-eq v12, v0, :cond_4

    .line 678
    move/from16 v0, p4

    iput v0, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 679
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 680
    .local v4, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v4, :cond_2

    .line 681
    if-nez v9, :cond_1

    .line 682
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .end local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    move-object v9, v10

    .line 684
    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_1
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move-object v10, v9

    .line 686
    .end local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 687
    .restart local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v4, :cond_8

    .line 688
    if-nez v10, :cond_7

    .line 689
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 691
    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :goto_0
    :try_start_2
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 693
    :goto_1
    iget v12, v8, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v12}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v12

    move/from16 v0, p4

    if-ne v0, v12, :cond_3

    .line 696
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v8, v1, v2}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 698
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 701
    .end local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 702
    if-eqz v9, :cond_6

    .line 706
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 708
    .local v6, "identity":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    :try_start_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v12

    if-ge v5, v12, :cond_5

    .line 710
    :try_start_4
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppOpsService$Callback;

    iget-object v12, v12, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v12, v0, v1}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 708
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 701
    .end local v5    # "i":I
    .end local v6    # "identity":J
    .end local v8    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v12

    :goto_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v12

    .line 715
    .restart local v5    # "i":I
    .restart local v6    # "identity":J
    .restart local v8    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 718
    .end local v5    # "i":I
    .end local v6    # "identity":J
    :cond_6
    return-void

    .line 715
    .restart local v5    # "i":I
    .restart local v6    # "identity":J
    :catchall_1
    move-exception v12

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .line 711
    :catch_0
    move-exception v12

    goto :goto_3

    .line 701
    .end local v5    # "i":I
    .end local v6    # "identity":J
    .end local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_2
    move-exception v12

    move-object v9, v10

    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_4

    .end local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_7
    move-object v9, v10

    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_0

    .end local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_8
    move-object v9, v10

    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v9    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_1
.end method

.method public setUidMode(III)V
    .locals 29
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .prologue
    .line 557
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v24

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v26

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v27

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 561
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 562
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 564
    monitor-enter p0

    .line 565
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v10

    .line 567
    .local v10, "defaultMode":I
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v23

    .line 568
    .local v23, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v23, :cond_4

    .line 569
    move/from16 v0, p3

    if-ne v0, v10, :cond_2

    .line 570
    monitor-exit p0

    .line 662
    :cond_1
    :goto_0
    return-void

    .line 572
    :cond_2
    new-instance v23, Lcom/android/server/AppOpsService$UidState;

    .end local v23    # "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    .line 573
    .restart local v23    # "uidState":Lcom/android/server/AppOpsService$UidState;
    new-instance v24, Landroid/util/SparseIntArray;

    invoke-direct/range {v24 .. v24}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 574
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p2

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 576
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 597
    :cond_3
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    invoke-static/range {p2 .. p2}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v22

    .line 600
    .local v22, "uidPackageNames":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 602
    .local v7, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 603
    .local v8, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v8, :cond_9

    .line 604
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 605
    .local v6, "callbackCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v6, :cond_9

    .line 606
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Callback;

    .line 607
    .local v5, "callback":Lcom/android/server/AppOpsService$Callback;
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 608
    .local v9, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, v22

    invoke-static {v9, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 609
    new-instance v7, Landroid/util/ArrayMap;

    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 610
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {v7, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 577
    .end local v5    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v6    # "callbackCount":I
    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "i":I
    .end local v22    # "uidPackageNames":[Ljava/lang/String;
    :cond_4
    :try_start_1
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    .line 578
    move/from16 v0, p3

    if-eq v0, v10, :cond_3

    .line 579
    new-instance v24, Landroid/util/SparseIntArray;

    invoke-direct/range {v24 .. v24}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 580
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 581
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto :goto_1

    .line 597
    .end local v10    # "defaultMode":I
    .end local v23    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v24

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v24

    .line 584
    .restart local v10    # "defaultMode":I
    .restart local v23    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_5
    :try_start_2
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, p3

    if-ne v0, v1, :cond_6

    .line 585
    monitor-exit p0

    goto/16 :goto_0

    .line 587
    :cond_6
    move/from16 v0, p3

    if-ne v0, v10, :cond_8

    .line 588
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 589
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseIntArray;->size()I

    move-result v24

    if-gtz v24, :cond_7

    .line 590
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 595
    :cond_7
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto/16 :goto_1

    .line 593
    :cond_8
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 614
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v22    # "uidPackageNames":[Ljava/lang/String;
    :cond_9
    move-object/from16 v4, v22

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_4
    move/from16 v0, v17

    if-ge v13, v0, :cond_d

    aget-object v21, v4, v13

    .line 615
    .local v21, "uidPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v8, Ljava/util/ArrayList;

    .line 616
    .restart local v8    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v8, :cond_c

    .line 617
    if-nez v7, :cond_a

    .line 618
    new-instance v7, Landroid/util/ArrayMap;

    .end local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 620
    .restart local v7    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 621
    .restart local v6    # "callbackCount":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    if-ge v12, v6, :cond_c

    .line 622
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Callback;

    .line 623
    .restart local v5    # "callback":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 624
    .restart local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v9, :cond_b

    .line 625
    new-instance v9, Landroid/util/ArraySet;

    .end local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 626
    .restart local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v7, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    :cond_b
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 621
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 614
    .end local v5    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v6    # "callbackCount":I
    .end local v9    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "i":I
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 633
    .end local v21    # "uidPackageName":Ljava/lang/String;
    :cond_d
    if-eqz v7, :cond_1

    .line 640
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 642
    .local v14, "identity":J
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_6
    :try_start_3
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v12, v0, :cond_10

    .line 643
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Callback;

    .line 644
    .restart local v5    # "callback":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/ArraySet;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 646
    .local v20, "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v20, :cond_f

    .line 647
    :try_start_4
    iget-object v0, v5, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, p1

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V

    .line 642
    :cond_e
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 649
    :cond_f
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArraySet;->size()I

    move-result v18

    .line 650
    .local v18, "reportedPackageCount":I
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_8
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    .line 651
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 652
    .local v19, "reportedPackageName":Ljava/lang/String;
    iget-object v0, v5, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 650
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 655
    .end local v16    # "j":I
    .end local v18    # "reportedPackageCount":I
    .end local v19    # "reportedPackageName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 656
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v24, "AppOps"

    const-string v25, "Error dispatching op op change"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    .line 660
    .end local v5    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v20    # "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v24

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v24

    :cond_10
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0
.end method

.method public setUserRestrictions(Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1915
    const-string v3, "setUserRestrictions"

    invoke-direct {p0, v3}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 1916
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    .line 1917
    .local v1, "opRestrictions":[Z
    if-nez v1, :cond_0

    .line 1918
    const/16 v3, 0x3f

    new-array v1, v3, [Z

    .line 1919
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1921
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 1922
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v2

    .line 1923
    .local v2, "restriction":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1924
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v1, v0

    .line 1921
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1926
    :cond_1
    aput-boolean v4, v1, v0

    goto :goto_1

    .line 1929
    .end local v2    # "restriction":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 441
    const-string v1, "AppOps"

    const-string v2, "Writing app ops before shutdown..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, "doWrite":Z
    monitor-enter p0

    .line 444
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_0

    .line 445
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 446
    const/4 v0, 0x1

    .line 448
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 452
    :cond_1
    return-void

    .line 448
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    .locals 20
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1118
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1119
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    move-object/from16 v15, p1

    .line 1120
    check-cast v15, Lcom/android/server/AppOpsService$ClientState;

    .line 1122
    .local v15, "client":Lcom/android/server/AppOpsService$ClientState;
    const/16 v17, 0x0

    .line 1123
    .local v17, "ops":Lcom/android/server/AppOpsService$Ops;
    const/16 v16, 0x0

    .local v16, "op":Lcom/android/server/AppOpsService$Op;
    const/16 v18, 0x0

    .line 1125
    .local v18, "switchOp":Lcom/android/server/AppOpsService$Op;
    monitor-enter p0

    .line 1126
    const/4 v4, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v17

    .line 1127
    if-nez v17, :cond_0

    .line 1130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v8, 0x2

    const/4 v9, 0x1

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    .line 1131
    const/4 v8, 0x2

    monitor-exit p0

    .line 1182
    :goto_0
    return v8

    .line 1133
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v16

    .line 1134
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->isOpRestricted(IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1135
    const/4 v8, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1151
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1137
    :cond_1
    :try_start_1
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v12

    .line 1138
    .local v12, "switchCode":I
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    move-object/from16 v19, v0

    .line 1139
    .local v19, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v4, :cond_2

    .line 1140
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 1141
    .local v8, "uidMode":I
    if-eqz v8, :cond_2

    .line 1145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v9, 0x1

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    .line 1147
    monitor-exit p0

    goto :goto_0

    .line 1150
    .end local v8    # "uidMode":I
    :cond_2
    move/from16 v0, p2

    if-eq v12, v0, :cond_7

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v12, v4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v18

    .line 1151
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1152
    move-object/from16 v0, v18

    iget v13, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1153
    .local v13, "resultMode":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/android/server/AppOpsServiceState;->isAppPermissionControlOpen(II)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/android/server/AppOpsServiceState;->isCtsIgnore(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1155
    const/4 v13, 0x0

    .line 1161
    :cond_3
    :goto_2
    const/4 v4, 0x4

    if-ne v13, v4, :cond_4

    .line 1162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v4, v12, v0, v1}, Lcom/android/server/AppOpsServiceState;->askOperationLocked(IILjava/lang/String;)I

    move-result v13

    .line 1164
    :cond_4
    const/4 v4, 0x1

    if-eq v13, v4, :cond_5

    const/4 v4, 0x2

    if-ne v13, v4, :cond_9

    .line 1167
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1181
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    const/4 v14, 0x1

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/AppOpsServiceState;->onAppApplyOperation(ILjava/lang/String;IIZ)V

    move v8, v13

    .line 1182
    goto/16 :goto_0

    .end local v13    # "resultMode":I
    :cond_7
    move-object/from16 v18, v16

    .line 1150
    goto :goto_1

    .line 1157
    .restart local v13    # "resultMode":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AppOpsServiceState;->isMiuiAllowed(IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AppOpsServiceState;->allowedToMode(IILjava/lang/String;)I

    move-result v13

    .line 1159
    move-object/from16 v0, v18

    iput v13, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    goto :goto_2

    .line 1168
    :cond_9
    if-nez v13, :cond_6

    .line 1171
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v4, :cond_a

    .line 1172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1173
    const-wide/16 v4, 0x0

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1174
    const/4 v4, -0x1

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1176
    :cond_a
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1177
    iget-object v4, v15, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    .line 1178
    iget-object v4, v15, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 5
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    const/4 v4, -0x1

    .line 863
    const/16 v2, 0x3f

    if-le p1, v2, :cond_0

    .line 864
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad operation #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 866
    :cond_0
    monitor-enter p0

    .line 867
    if-eq p1, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 868
    :cond_1
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 869
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-nez v0, :cond_2

    .line 870
    new-instance v0, Lcom/android/server/AppOpsService$Callback;

    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-direct {v0, p0, p3}, Lcom/android/server/AppOpsService$Callback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 871
    .restart local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    :cond_2
    if-eq p1, v4, :cond_4

    .line 874
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 875
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_3

    .line 876
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 879
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_4
    if-eqz p2, :cond_6

    .line 882
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 883
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_5

    .line 884
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_6
    monitor-exit p0

    .line 890
    return-void

    .line 889
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    .line 894
    monitor-enter p0

    .line 895
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 896
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-eqz v0, :cond_3

    .line 897
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Callback;->unlinkToDeath()V

    .line 898
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 899
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 900
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 901
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 902
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 898
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 905
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 906
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 907
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 908
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 909
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 905
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 913
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v2    # "i":I
    :cond_3
    monitor-exit p0

    .line 914
    return-void

    .line 913
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public systemReady()V
    .locals 15

    .prologue
    .line 314
    iget-object v12, p0, Lcom/android/server/AppOpsService;->mServiceState:Lcom/android/server/AppOpsServiceState;

    invoke-virtual {v12}, Lcom/android/server/AppOpsServiceState;->systemReady()V

    .line 316
    monitor-enter p0

    .line 317
    const/4 v1, 0x0

    .line 318
    .local v1, "changed":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 319
    .local v8, "packageManager":Landroid/content/pm/IPackageManager;
    iget-object v12, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_6

    .line 320
    iget-object v12, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$UidState;

    .line 322
    .local v11, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget v12, v11, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v12}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 323
    .local v9, "packageNames":[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 324
    invoke-virtual {v11}, Lcom/android/server/AppOpsService$UidState;->clear()V

    .line 325
    iget-object v12, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->removeAt(I)V

    .line 326
    const/4 v1, 0x1

    .line 319
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 330
    :cond_1
    iget-object v10, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 331
    .local v10, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v10, :cond_0

    .line 335
    invoke-virtual {v10}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 336
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 337
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    :try_start_1
    iget-object v12, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iget-object v13, v7, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v14, v7, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v14, v14, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 345
    .local v2, "curUid":I
    :goto_3
    :try_start_2
    iget-object v12, v7, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v12, v12, Lcom/android/server/AppOpsService$UidState;->uid:I

    if-eq v2, v12, :cond_3

    .line 346
    const-string v12, "AppOps"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Pruning old package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v7, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v7, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": new uid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 349
    const/4 v1, 0x1

    goto :goto_2

    .line 342
    .end local v2    # "curUid":I
    :catch_0
    move-exception v3

    .line 343
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, -0x1

    .restart local v2    # "curUid":I
    goto :goto_3

    .line 350
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    iget-boolean v12, p0, Lcom/android/server/AppOpsService;->mResetOp:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_2

    if-eqz v8, :cond_2

    .line 353
    :try_start_3
    iget-object v12, v7, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    iget-object v14, v7, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v14, v14, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-interface {v8, v12, v13, v14}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 355
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 356
    iget v12, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    :goto_4
    iput-boolean v12, v7, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 358
    const/4 v1, 0x1

    goto :goto_2

    .line 356
    :cond_4
    const/4 v12, 0x0

    goto :goto_4

    .line 360
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v3

    .line 361
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v12, "AppOps"

    const-string v13, "Could not contact PackageManager"

    invoke-static {v12, v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 374
    .end local v2    # "curUid":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "i":I
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v9    # "packageNames":[Ljava/lang/String;
    .end local v10    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v12

    .line 366
    .restart local v4    # "i":I
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v8    # "packageManager":Landroid/content/pm/IPackageManager;
    .restart local v9    # "packageNames":[Ljava/lang/String;
    .restart local v10    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_5
    :try_start_5
    invoke-virtual {v11}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 367
    iget-object v12, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->removeAt(I)V

    goto/16 :goto_1

    .line 370
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .end local v9    # "packageNames":[Ljava/lang/String;
    .end local v10    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_6
    if-eqz v1, :cond_7

    .line 371
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 373
    :cond_7
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/AppOpsService;->mResetOp:Z

    .line 374
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 376
    const-class v12, Landroid/os/storage/MountServiceInternal;

    invoke-static {v12}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/MountServiceInternal;

    .line 378
    .local v6, "mountServiceInternal":Landroid/os/storage/MountServiceInternal;
    new-instance v12, Lcom/android/server/AppOpsService$2;

    invoke-direct {v12, p0}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;)V

    invoke-virtual {v6, v12}, Landroid/os/storage/MountServiceInternal;->addExternalStoragePolicy(Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;)V

    .line 403
    return-void
.end method

.method public uidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 432
    monitor-enter p0

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 435
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 437
    :cond_0
    monitor-exit p0

    .line 438
    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeState()V
    .locals 30

    .prologue
    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 1608
    const/16 v25, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 1612
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v19

    .line 1619
    .local v19, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v15, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v15}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1620
    .local v15, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v25, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v25 .. v25}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1621
    const/16 v25, 0x0

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1622
    const/16 v25, 0x0

    const-string v27, "app-ops"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1623
    const/16 v25, 0x0

    const-string v27, "miui-ver"

    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v24

    .line 1626
    .local v24, "uidStateCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move/from16 v0, v24

    if-ge v7, v0, :cond_2

    .line 1627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AppOpsService$UidState;

    .line 1628
    .local v23, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseIntArray;->size()I

    move-result v25

    if-lez v25, :cond_1

    .line 1629
    const/16 v25, 0x0

    const-string v27, "uid"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1630
    const/16 v25, 0x0

    const-string v27, "n"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1631
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v22, v0

    .line 1632
    .local v22, "uidOpModes":Landroid/util/SparseIntArray;
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 1633
    .local v12, "opCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v12, :cond_0

    .line 1634
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    .line 1635
    .local v11, "op":I
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 1636
    .local v10, "mode":I
    const/16 v25, 0x0

    const-string v27, "op"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1637
    const/16 v25, 0x0

    const-string v27, "n"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1638
    const/16 v25, 0x0

    const-string v27, "m"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1639
    const/16 v25, 0x0

    const-string v27, "op"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1633
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1613
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v10    # "mode":I
    .end local v11    # "op":I
    .end local v12    # "opCount":I
    .end local v15    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v19    # "stream":Ljava/io/FileOutputStream;
    .end local v22    # "uidOpModes":Landroid/util/SparseIntArray;
    .end local v23    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v24    # "uidStateCount":I
    :catch_0
    move-exception v6

    .line 1614
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    const-string v25, "AppOps"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Failed to write state: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    monitor-exit v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1714
    .end local v6    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 1641
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v12    # "opCount":I
    .restart local v15    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v19    # "stream":Ljava/io/FileOutputStream;
    .restart local v22    # "uidOpModes":Landroid/util/SparseIntArray;
    .restart local v23    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v24    # "uidStateCount":I
    :cond_0
    const/16 v25, 0x0

    :try_start_4
    const-string v27, "uid"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1626
    .end local v8    # "j":I
    .end local v12    # "opCount":I
    .end local v22    # "uidOpModes":Landroid/util/SparseIntArray;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1645
    .end local v23    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_2
    if-eqz v4, :cond_e

    .line 1646
    const/4 v9, 0x0

    .line 1647
    .local v9, "lastPkg":Ljava/lang/String;
    const/4 v7, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v7, v0, :cond_d

    .line 1648
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/AppOpsManager$PackageOps;

    .line 1649
    .local v16, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual/range {v16 .. v16}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 1650
    if-eqz v9, :cond_3

    .line 1651
    const/16 v25, 0x0

    const-string v27, "pkg"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1653
    :cond_3
    invoke-virtual/range {v16 .. v16}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1654
    const/16 v25, 0x0

    const-string v27, "pkg"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1655
    const/16 v25, 0x0

    const-string v27, "n"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v15, v0, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1657
    :cond_4
    const/16 v25, 0x0

    const-string v27, "uid"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1658
    const/16 v25, 0x0

    const-string v27, "n"

    invoke-virtual/range {v16 .. v16}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1659
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1660
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v25

    invoke-virtual/range {v16 .. v16}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v13

    .line 1663
    .local v13, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v13, :cond_b

    .line 1664
    const/16 v25, 0x0

    const-string v27, "p"

    iget-boolean v0, v13, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1668
    :goto_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1669
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v14

    .line 1670
    .local v14, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v8, v0, :cond_c

    .line 1671
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$OpEntry;

    .line 1672
    .local v11, "op":Landroid/app/AppOpsManager$OpEntry;
    const/16 v25, 0x0

    const-string v27, "op"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1673
    const/16 v25, 0x0

    const-string v27, "n"

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1674
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v25

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    .line 1675
    const/16 v25, 0x0

    const-string v27, "m"

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1677
    :cond_5
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v20

    .line 1678
    .local v20, "time":J
    const-wide/16 v28, 0x0

    cmp-long v25, v20, v28

    if-eqz v25, :cond_6

    .line 1679
    const/16 v25, 0x0

    const-string v27, "t"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1681
    :cond_6
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v20

    .line 1682
    const-wide/16 v28, 0x0

    cmp-long v25, v20, v28

    if-eqz v25, :cond_7

    .line 1683
    const/16 v25, 0x0

    const-string v27, "r"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1685
    :cond_7
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v5

    .line 1686
    .local v5, "dur":I
    if-eqz v5, :cond_8

    .line 1687
    const/16 v25, 0x0

    const-string v27, "d"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1689
    :cond_8
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid()I

    move-result v18

    .line 1690
    .local v18, "proxyUid":I
    const/16 v25, -0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 1691
    const/16 v25, 0x0

    const-string v27, "pu"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1693
    :cond_9
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName()Ljava/lang/String;

    move-result-object v17

    .line 1694
    .local v17, "proxyPackageName":Ljava/lang/String;
    if-eqz v17, :cond_a

    .line 1695
    const/16 v25, 0x0

    const-string v27, "pp"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1697
    :cond_a
    const/16 v25, 0x0

    const-string v27, "op"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1670
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 1666
    .end local v5    # "dur":I
    .end local v8    # "j":I
    .end local v11    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v14    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v17    # "proxyPackageName":Ljava/lang/String;
    .end local v18    # "proxyUid":I
    .end local v20    # "time":J
    :cond_b
    const/16 v25, 0x0

    :try_start_7
    const-string v27, "p"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_4

    .line 1668
    .end local v13    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_0
    move-exception v25

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v25
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1709
    .end local v7    # "i":I
    .end local v9    # "lastPkg":Ljava/lang/String;
    .end local v15    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v16    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v24    # "uidStateCount":I
    :catch_1
    move-exception v6

    .line 1710
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_9
    const-string v25, "AppOps"

    const-string v27, "Failed to write state, restoring backup."

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1713
    .end local v6    # "e":Ljava/io/IOException;
    :goto_6
    monitor-exit v26

    goto/16 :goto_2

    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v19    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v25

    monitor-exit v26
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v25

    .line 1699
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v9    # "lastPkg":Ljava/lang/String;
    .restart local v13    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v14    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v15    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v16    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v19    # "stream":Ljava/io/FileOutputStream;
    .restart local v24    # "uidStateCount":I
    :cond_c
    const/16 v25, 0x0

    :try_start_a
    const-string v27, "uid"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1647
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 1701
    .end local v8    # "j":I
    .end local v13    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v14    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v16    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_d
    if-eqz v9, :cond_e

    .line 1702
    const/16 v25, 0x0

    const-string v27, "pkg"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1706
    .end local v9    # "lastPkg":Ljava/lang/String;
    :cond_e
    const/16 v25, 0x0

    const-string v27, "app-ops"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1707
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6
.end method
