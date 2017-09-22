.class final Lcom/android/b/b/d;
.super Ljava/lang/Object;
.source "A2dpSinkProfile.java"

# interfaces
.implements Lcom/android/b/b/T;


# static fields
.field private static aJd:Z

.field static final aJj:[Landroid/os/ParcelUuid;


# instance fields
.field private final Qu:Lcom/android/b/b/Q;

.field private final RG:Lcom/android/b/b/J;

.field private final Rt:Lcom/android/b/b/U;

.field private aJf:Z

.field private aJi:Landroid/bluetooth/BluetoothA2dpSink;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 36
    sput-boolean v3, Lcom/android/b/b/d;->aJd:Z

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/b/b/d;->aJj:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/b/b/Q;Lcom/android/b/b/J;Lcom/android/b/b/U;)V
    .locals 3

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/android/b/b/d;->Qu:Lcom/android/b/b/Q;

    .line 92
    iput-object p3, p0, Lcom/android/b/b/d;->RG:Lcom/android/b/b/J;

    .line 93
    iput-object p4, p0, Lcom/android/b/b/d;->Rt:Lcom/android/b/b/U;

    .line 94
    iget-object v0, p0, Lcom/android/b/b/d;->Qu:Lcom/android/b/b/Q;

    new-instance v1, Lcom/android/b/b/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/b/b/f;-><init>(Lcom/android/b/b/d;Lcom/android/b/b/e;)V

    const/16 v2, 0xb

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/b/b/Q;->a(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/android/b/b/d;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/b/b/d;->aJi:Landroid/bluetooth/BluetoothA2dpSink;

    return-object v0
.end method

.method static synthetic a(Lcom/android/b/b/d;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/b/b/d;->aJi:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p1
.end method

.method static synthetic a(Lcom/android/b/b/d;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/b/b/d;->aJf:Z

    return p1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/b/b/d;->aJd:Z

    return v0
.end method

.method static synthetic b(Lcom/android/b/b/d;)Lcom/android/b/b/J;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/b/b/d;->RG:Lcom/android/b/b/J;

    return-object v0
.end method

.method static synthetic c(Lcom/android/b/b/d;)Lcom/android/b/b/Q;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/b/b/d;->Qu:Lcom/android/b/b/Q;

    return-object v0
.end method

.method static synthetic d(Lcom/android/b/b/d;)Lcom/android/b/b/U;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/b/b/d;->Rt:Lcom/android/b/b/U;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .prologue
    .line 220
    sget v0, Lcom/android/b/d;->aGD:I

    return v0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/b/b/d;->aJi:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    .line 177
    :cond_0
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/b/b/d;->aJi:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/b/b/d;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_3

    .line 118
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 119
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    const-string v0, "A2dpSinkProfile"

    const-string v1, "Ignoring Connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 126
    iget-object v2, p0, Lcom/android/b/b/d;->aJi:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/android/b/b/d;->aJi:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/b/b/d;->aJi:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/b/b/d;->aJi:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 224
    sget-boolean v0, Lcom/android/b/b/d;->aJd:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpSinkProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/d;->aJi:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v0, :cond_1

    .line 227
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/b/b/d;->aJi:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/b/d;->aJi:Landroid/bluetooth/BluetoothA2dpSink;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_1
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    const-string v1, "A2dpSinkProfile"

    const-string v2, "Error cleaning up A2DP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public g(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/b/b/d;->aJi:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/b/b/d;->aJi:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/b/b/d;->aJi:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/b/b/d;->aJi:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dpSink;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

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
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public i(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
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
    .line 202
    sget v0, Lcom/android/b/e;->aHh:I

    return v0
.end method

.method public k(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/android/b/b/d;->g(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 207
    packed-switch v0, :pswitch_data_0

    .line 215
    :pswitch_0
    invoke-static {v0}, Lcom/android/b/b/ai;->eb(I)I

    move-result v0

    :goto_0
    return v0

    .line 209
    :pswitch_1
    sget v0, Lcom/android/b/e;->aGL:I

    goto :goto_0

    .line 212
    :pswitch_2
    sget v0, Lcom/android/b/e;->aGK:I

    goto :goto_0

    .line 207
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
    iget-boolean v0, p0, Lcom/android/b/b/d;->aJf:Z

    return v0
.end method

.method public nV()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x5

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const-string v0, "A2DPSink"

    return-object v0
.end method

.method zr()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method
