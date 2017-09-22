.class public final Lcom/android/b/b/U;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# instance fields
.field private final Qu:Lcom/android/b/b/Q;

.field private final RG:Lcom/android/b/b/J;

.field private final aJP:Lcom/android/b/b/t;

.field private aJQ:Lcom/android/b/b/a;

.field private aJR:Lcom/android/b/b/d;

.field private aJS:Lcom/android/b/b/K;

.field private aJT:Lcom/android/b/b/Y;

.field private final aJU:Lcom/android/b/b/N;

.field private aJV:Lcom/android/b/b/ab;

.field private final aJW:Lcom/android/b/b/ac;

.field private final aJX:Lcom/android/b/b/af;

.field private final aJY:Ljava/util/Map;

.field private final aJZ:Ljava/util/Collection;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/b/b/Q;Lcom/android/b/b/J;Lcom/android/b/b/t;)V
    .locals 4

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/b/b/U;->aJY:Ljava/util/Map;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/b/U;->aJZ:Ljava/util/Collection;

    .line 98
    iput-object p1, p0, Lcom/android/b/b/U;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/b/b/U;->Qu:Lcom/android/b/b/Q;

    .line 101
    iput-object p3, p0, Lcom/android/b/b/U;->RG:Lcom/android/b/b/J;

    .line 102
    iput-object p4, p0, Lcom/android/b/b/U;->aJP:Lcom/android/b/b/t;

    .line 104
    iget-object v0, p0, Lcom/android/b/b/U;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0, p0}, Lcom/android/b/b/Q;->a(Lcom/android/b/b/U;)V

    .line 105
    iget-object v0, p0, Lcom/android/b/b/U;->aJP:Lcom/android/b/b/t;

    invoke-virtual {v0, p0}, Lcom/android/b/b/t;->a(Lcom/android/b/b/U;)V

    .line 107
    invoke-virtual {p2}, Lcom/android/b/b/Q;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/b/b/U;->a([Landroid/os/ParcelUuid;)V

    .line 115
    :cond_0
    new-instance v0, Lcom/android/b/b/N;

    iget-object v1, p0, Lcom/android/b/b/U;->Qu:Lcom/android/b/b/Q;

    iget-object v2, p0, Lcom/android/b/b/U;->RG:Lcom/android/b/b/J;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/b/b/N;-><init>(Landroid/content/Context;Lcom/android/b/b/Q;Lcom/android/b/b/J;Lcom/android/b/b/U;)V

    iput-object v0, p0, Lcom/android/b/b/U;->aJU:Lcom/android/b/b/N;

    .line 116
    iget-object v0, p0, Lcom/android/b/b/U;->aJU:Lcom/android/b/b/N;

    const-string v1, "HID"

    const-string v2, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/b/b/U;->a(Lcom/android/b/b/T;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/android/b/b/ac;

    invoke-direct {v0, p1}, Lcom/android/b/b/ac;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/b/b/U;->aJW:Lcom/android/b/b/ac;

    .line 120
    iget-object v0, p0, Lcom/android/b/b/U;->aJW:Lcom/android/b/b/ac;

    const-string v1, "PAN"

    const-string v2, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/b/b/U;->b(Lcom/android/b/b/T;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local MAP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Lcom/android/b/b/Y;

    iget-object v1, p0, Lcom/android/b/b/U;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/b/b/U;->Qu:Lcom/android/b/b/Q;

    iget-object v3, p0, Lcom/android/b/b/U;->RG:Lcom/android/b/b/J;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/b/b/Y;-><init>(Landroid/content/Context;Lcom/android/b/b/Q;Lcom/android/b/b/J;Lcom/android/b/b/U;)V

    iput-object v0, p0, Lcom/android/b/b/U;->aJT:Lcom/android/b/b/Y;

    .line 126
    iget-object v0, p0, Lcom/android/b/b/U;->aJT:Lcom/android/b/b/Y;

    const-string v1, "MAP"

    const-string v2, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/b/b/U;->a(Lcom/android/b/b/T;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/android/b/b/af;

    invoke-direct {v0, p1}, Lcom/android/b/b/af;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/b/b/U;->aJX:Lcom/android/b/b/af;

    .line 142
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "LocalBluetoothProfileManager construction complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method private a(Lcom/android/b/b/T;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/b/b/U;->aJP:Lcom/android/b/b/t;

    new-instance v1, Lcom/android/b/b/X;

    invoke-direct {v1, p0, p1}, Lcom/android/b/b/X;-><init>(Lcom/android/b/b/U;Lcom/android/b/b/T;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/b/b/t;->b(Ljava/lang/String;Lcom/android/b/b/C;)V

    .line 212
    iget-object v0, p0, Lcom/android/b/b/U;->aJY:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method static synthetic b(Lcom/android/b/b/U;)Lcom/android/b/b/J;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/b/b/U;->RG:Lcom/android/b/b/J;

    return-object v0
.end method

.method private b(Lcom/android/b/b/T;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/b/b/U;->aJP:Lcom/android/b/b/t;

    new-instance v1, Lcom/android/b/b/V;

    invoke-direct {v1, p0, p1}, Lcom/android/b/b/V;-><init>(Lcom/android/b/b/U;Lcom/android/b/b/T;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/b/b/t;->b(Ljava/lang/String;Lcom/android/b/b/C;)V

    .line 219
    iget-object v0, p0, Lcom/android/b/b/U;->aJY:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method static synthetic c(Lcom/android/b/b/U;)Lcom/android/b/b/Q;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/b/b/U;->Qu:Lcom/android/b/b/Q;

    return-object v0
.end method


# virtual methods
.method Al()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/b/b/U;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/b/b/U;->a([Landroid/os/ParcelUuid;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/U;->aJP:Lcom/android/b/b/t;

    invoke-virtual {v0}, Lcom/android/b/b/t;->zt()Z

    .line 233
    return-void
.end method

.method Am()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/b/b/U;->aJZ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/W;

    .line 293
    invoke-interface {v0}, Lcom/android/b/b/W;->onServiceConnected()V

    goto :goto_0

    .line 295
    :cond_0
    return-void
.end method

.method An()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/b/b/U;->aJZ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/W;

    .line 300
    invoke-interface {v0}, Lcom/android/b/b/W;->onServiceDisconnected()V

    goto :goto_0

    .line 302
    :cond_0
    return-void
.end method

.method public declared-synchronized Ao()Z
    .locals 1

    .prologue
    .line 308
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/b/b/U;->aJS:Lcom/android/b/b/K;

    .line 309
    if-eqz v0, :cond_0

    .line 310
    invoke-interface {v0}, Lcom/android/b/b/T;->nU()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 320
    :goto_0
    monitor-exit p0

    return v0

    .line 312
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/b/b/U;->aJQ:Lcom/android/b/b/a;

    .line 313
    if-eqz v0, :cond_1

    .line 314
    invoke-interface {v0}, Lcom/android/b/b/T;->nU()Z

    move-result v0

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/b/b/U;->aJR:Lcom/android/b/b/d;

    .line 317
    if-eqz v0, :cond_2

    .line 318
    invoke-interface {v0}, Lcom/android/b/b/T;->nU()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 320
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Ap()Lcom/android/b/b/a;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/b/b/U;->aJQ:Lcom/android/b/b/a;

    return-object v0
.end method

.method Aq()Lcom/android/b/b/d;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/b/b/U;->aJR:Lcom/android/b/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/b/b/U;->aJR:Lcom/android/b/b/d;

    invoke-virtual {v0}, Lcom/android/b/b/d;->nU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/b/b/U;->aJR:Lcom/android/b/b/d;

    .line 331
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ar()Lcom/android/b/b/K;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/b/b/U;->aJS:Lcom/android/b/b/K;

    return-object v0
.end method

.method public As()Lcom/android/b/b/af;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/b/b/U;->aJX:Lcom/android/b/b/af;

    return-object v0
.end method

.method public At()Lcom/android/b/b/Y;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/b/b/U;->aJT:Lcom/android/b/b/Y;

    return-object v0
.end method

.method public a(Lcom/android/b/b/W;)V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/b/b/U;->aJZ:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method a([Landroid/os/ParcelUuid;)V
    .locals 4

    .prologue
    .line 154
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 155
    iget-object v0, p0, Lcom/android/b/b/U;->aJQ:Lcom/android/b/b/a;

    if-nez v0, :cond_0

    .line 156
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP SRC profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Lcom/android/b/b/a;

    iget-object v1, p0, Lcom/android/b/b/U;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/b/b/U;->Qu:Lcom/android/b/b/Q;

    iget-object v3, p0, Lcom/android/b/b/U;->RG:Lcom/android/b/b/J;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/b/b/a;-><init>(Landroid/content/Context;Lcom/android/b/b/Q;Lcom/android/b/b/J;Lcom/android/b/b/U;)V

    iput-object v0, p0, Lcom/android/b/b/U;->aJQ:Lcom/android/b/b/a;

    .line 158
    iget-object v0, p0, Lcom/android/b/b/U;->aJQ:Lcom/android/b/b/a;

    const-string v1, "A2DP"

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/b/b/U;->a(Lcom/android/b/b/T;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    :goto_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 166
    iget-object v0, p0, Lcom/android/b/b/U;->aJR:Lcom/android/b/b/d;

    if-nez v0, :cond_1

    .line 167
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP Sink profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Lcom/android/b/b/d;

    iget-object v1, p0, Lcom/android/b/b/U;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/b/b/U;->Qu:Lcom/android/b/b/Q;

    iget-object v3, p0, Lcom/android/b/b/U;->RG:Lcom/android/b/b/J;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/b/b/d;-><init>(Landroid/content/Context;Lcom/android/b/b/Q;Lcom/android/b/b/J;Lcom/android/b/b/U;)V

    iput-object v0, p0, Lcom/android/b/b/U;->aJR:Lcom/android/b/b/d;

    .line 169
    iget-object v0, p0, Lcom/android/b/b/U;->aJR:Lcom/android/b/b/d;

    const-string v1, "A2DPSink"

    const-string v2, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/b/b/U;->a(Lcom/android/b/b/T;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_1
    :goto_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/android/b/b/U;->aJS:Lcom/android/b/b/K;

    if-nez v0, :cond_3

    .line 180
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local HEADSET profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Lcom/android/b/b/K;

    iget-object v1, p0, Lcom/android/b/b/U;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/b/b/U;->Qu:Lcom/android/b/b/Q;

    iget-object v3, p0, Lcom/android/b/b/U;->RG:Lcom/android/b/b/J;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/b/b/K;-><init>(Landroid/content/Context;Lcom/android/b/b/Q;Lcom/android/b/b/J;Lcom/android/b/b/U;)V

    iput-object v0, p0, Lcom/android/b/b/U;->aJS:Lcom/android/b/b/K;

    .line 183
    iget-object v0, p0, Lcom/android/b/b/U;->aJS:Lcom/android/b/b/K;

    const-string v1, "HEADSET"

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/b/b/U;->a(Lcom/android/b/b/T;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_3
    :goto_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 192
    iget-object v0, p0, Lcom/android/b/b/U;->aJV:Lcom/android/b/b/ab;

    if-nez v0, :cond_4

    .line 193
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local OPP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Lcom/android/b/b/ab;

    invoke-direct {v0}, Lcom/android/b/b/ab;-><init>()V

    iput-object v0, p0, Lcom/android/b/b/U;->aJV:Lcom/android/b/b/ab;

    .line 196
    iget-object v0, p0, Lcom/android/b/b/U;->aJY:Ljava/util/Map;

    const-string v1, "OPP"

    iget-object v2, p0, Lcom/android/b/b/U;->aJV:Lcom/android/b/b/ab;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/b/b/U;->aJP:Lcom/android/b/b/t;

    invoke-virtual {v0}, Lcom/android/b/b/t;->zs()V

    .line 204
    return-void

    .line 161
    :cond_5
    iget-object v0, p0, Lcom/android/b/b/U;->aJQ:Lcom/android/b/b/a;

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 172
    :cond_6
    iget-object v0, p0, Lcom/android/b/b/U;->aJR:Lcom/android/b/b/d;

    if-eqz v0, :cond_1

    .line 173
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP Sink profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    :cond_7
    iget-object v0, p0, Lcom/android/b/b/U;->aJS:Lcom/android/b/b/K;

    if-eqz v0, :cond_3

    .line 187
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: HEADSET profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 198
    :cond_8
    iget-object v0, p0, Lcom/android/b/b/U;->aJV:Lcom/android/b/b/ab;

    if-eqz v0, :cond_4

    .line 199
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: OPP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method declared-synchronized a([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    .line 361
    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 362
    invoke-interface {p3}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    if-nez p1, :cond_1

    .line 417
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 368
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/b/b/U;->aJS:Lcom/android/b/b/K;

    if-eqz v0, :cond_4

    .line 369
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/android/b/b/U;->aJS:Lcom/android/b/b/K;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v0, p0, Lcom/android/b/b/U;->aJS:Lcom/android/b/b/K;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 378
    :cond_4
    sget-object v0, Lcom/android/b/b/a;->aJg:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/b/b/U;->aJQ:Lcom/android/b/b/a;

    if-eqz v0, :cond_5

    .line 380
    iget-object v0, p0, Lcom/android/b/b/U;->aJQ:Lcom/android/b/b/a;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v0, p0, Lcom/android/b/b/U;->aJQ:Lcom/android/b/b/a;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 384
    :cond_5
    sget-object v0, Lcom/android/b/b/d;->aJj:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/b/b/U;->aJR:Lcom/android/b/b/d;

    if-eqz v0, :cond_6

    .line 386
    iget-object v0, p0, Lcom/android/b/b/U;->aJR:Lcom/android/b/b/d;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/android/b/b/U;->aJR:Lcom/android/b/b/d;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 390
    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/b/b/U;->aJV:Lcom/android/b/b/ab;

    if-eqz v0, :cond_7

    .line 392
    iget-object v0, p0, Lcom/android/b/b/U;->aJV:Lcom/android/b/b/ab;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/android/b/b/U;->aJV:Lcom/android/b/b/ab;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 396
    :cond_7
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/b/b/U;->aJU:Lcom/android/b/b/N;

    if-eqz v0, :cond_9

    .line 399
    iget-object v0, p0, Lcom/android/b/b/U;->aJU:Lcom/android/b/b/N;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v0, p0, Lcom/android/b/b/U;->aJU:Lcom/android/b/b/N;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 403
    :cond_9
    if-eqz p5, :cond_a

    .line 404
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Valid PAN-NAP connection exists."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_a
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/b/b/U;->aJW:Lcom/android/b/b/ac;

    if-nez v0, :cond_c

    :cond_b
    if-eqz p5, :cond_d

    .line 407
    :cond_c
    iget-object v0, p0, Lcom/android/b/b/U;->aJW:Lcom/android/b/b/ac;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Lcom/android/b/b/U;->aJW:Lcom/android/b/b/ac;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 411
    :cond_d
    iget-object v0, p0, Lcom/android/b/b/U;->aJT:Lcom/android/b/b/Y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/b/b/U;->aJT:Lcom/android/b/b/Y;

    invoke-virtual {v0, p6}, Lcom/android/b/b/Y;->g(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/b/b/U;->aJT:Lcom/android/b/b/Y;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Lcom/android/b/b/U;->aJT:Lcom/android/b/b/Y;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 415
    iget-object v0, p0, Lcom/android/b/b/U;->aJT:Lcom/android/b/b/Y;

    const/4 v1, 0x1

    invoke-virtual {v0, p6, v1}, Lcom/android/b/b/Y;->a(Landroid/bluetooth/BluetoothDevice;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/android/b/b/W;)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/b/b/U;->aJZ:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method public ct(Ljava/lang/String;)Lcom/android/b/b/T;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/b/b/U;->aJY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/T;

    return-object v0
.end method
