.class public final Lcom/android/b/b/a;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Lcom/android/b/b/T;


# static fields
.field private static aJd:Z

.field static final aJg:[Landroid/os/ParcelUuid;


# instance fields
.field private final Qu:Lcom/android/b/b/Q;

.field private final RG:Lcom/android/b/b/J;

.field private final Rt:Lcom/android/b/b/U;

.field private aJe:Landroid/bluetooth/BluetoothA2dp;

.field private aJf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    sput-boolean v2, Lcom/android/b/b/a;->aJd:Z

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/b/b/a;->aJg:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/b/b/Q;Lcom/android/b/b/J;Lcom/android/b/b/U;)V
    .locals 3

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/android/b/b/a;->Qu:Lcom/android/b/b/Q;

    .line 92
    iput-object p3, p0, Lcom/android/b/b/a;->RG:Lcom/android/b/b/J;

    .line 93
    iput-object p4, p0, Lcom/android/b/b/a;->Rt:Lcom/android/b/b/U;

    .line 94
    iget-object v0, p0, Lcom/android/b/b/a;->Qu:Lcom/android/b/b/Q;

    new-instance v1, Lcom/android/b/b/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/b/b/c;-><init>(Lcom/android/b/b/a;Lcom/android/b/b/b;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/b/b/Q;->a(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/android/b/b/a;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic a(Lcom/android/b/b/a;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic a(Lcom/android/b/b/a;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/b/b/a;->aJf:Z

    return p1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/b/b/a;->aJd:Z

    return v0
.end method

.method static synthetic b(Lcom/android/b/b/a;)Lcom/android/b/b/J;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/b/b/a;->RG:Lcom/android/b/b/J;

    return-object v0
.end method

.method static synthetic c(Lcom/android/b/b/a;)Lcom/android/b/b/Q;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/b/b/a;->Qu:Lcom/android/b/b/Q;

    return-object v0
.end method

.method static synthetic d(Lcom/android/b/b/a;)Lcom/android/b/b/U;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/b/b/a;->Rt:Lcom/android/b/b/U;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .prologue
    .line 221
    sget v0, Lcom/android/b/d;->aGD:I

    return v0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 174
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    if-eqz p2, :cond_2

    .line 176
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/b/b/a;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 119
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    const-string v1, "A2dpProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not disconnecting device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, 0x1

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    move v0, v1

    .line 145
    :goto_0
    return v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 134
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    sget-boolean v0, Lcom/android/b/b/a;->aJd:Z

    if-eqz v0, :cond_2

    const-string v0, "A2dpProfile"

    const-string v1, "Downgrade priority as useris disconnecting the headset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-le v0, v3, :cond_3

    .line 139
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v3}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 145
    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 225
    sget-boolean v0, Lcom/android/b/b/a;->aJd:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    .line 228
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_1
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    const-string v1, "A2dpProfile"

    const-string v2, "Error cleaning up A2DP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public g(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    move v0, v1

    .line 160
    :goto_0
    return v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 155
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 160
    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public h(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public i(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public j(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 203
    sget v0, Lcom/android/b/e;->aHh:I

    return v0
.end method

.method public k(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/android/b/b/a;->g(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 208
    packed-switch v0, :pswitch_data_0

    .line 216
    :pswitch_0
    invoke-static {v0}, Lcom/android/b/b/ai;->eb(I)I

    move-result v0

    :goto_0
    return v0

    .line 210
    :pswitch_1
    sget v0, Lcom/android/b/e;->aGL:I

    goto :goto_0

    .line 213
    :pswitch_2
    sget v0, Lcom/android/b/e;->aGK:I

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public nT()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public nU()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/b/b/a;->aJf:Z

    return v0
.end method

.method public nV()I
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "A2DP"

    return-object v0
.end method

.method zr()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    move v0, v1

    .line 191
    :goto_0
    return v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/android/b/b/a;->aJe:Landroid/bluetooth/BluetoothA2dp;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 191
    goto :goto_0
.end method
