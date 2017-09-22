.class public final Lcom/android/b/b/K;
.super Ljava/lang/Object;
.source "HeadsetProfile.java"

# interfaces
.implements Lcom/android/b/b/T;


# static fields
.field static final aJH:[Landroid/os/ParcelUuid;

.field private static aJd:Z


# instance fields
.field private final Qu:Lcom/android/b/b/Q;

.field private final RG:Lcom/android/b/b/J;

.field private final Rt:Lcom/android/b/b/U;

.field private aJG:Landroid/bluetooth/BluetoothHeadset;

.field private aJf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 39
    sput-boolean v3, Lcom/android/b/b/K;->aJd:Z

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/b/b/K;->aJH:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/b/b/Q;Lcom/android/b/b/J;Lcom/android/b/b/U;)V
    .locals 3

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/android/b/b/K;->Qu:Lcom/android/b/b/Q;

    .line 99
    iput-object p3, p0, Lcom/android/b/b/K;->RG:Lcom/android/b/b/J;

    .line 100
    iput-object p4, p0, Lcom/android/b/b/K;->Rt:Lcom/android/b/b/U;

    .line 101
    iget-object v0, p0, Lcom/android/b/b/K;->Qu:Lcom/android/b/b/Q;

    new-instance v1, Lcom/android/b/b/M;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/b/b/M;-><init>(Lcom/android/b/b/K;Lcom/android/b/b/L;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/b/b/Q;->a(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/android/b/b/K;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic a(Lcom/android/b/b/K;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic a(Lcom/android/b/b/K;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/b/b/K;->aJf:Z

    return p1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/b/b/K;->aJd:Z

    return v0
.end method

.method static synthetic b(Lcom/android/b/b/K;)Lcom/android/b/b/J;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/b/b/K;->RG:Lcom/android/b/b/J;

    return-object v0
.end method

.method static synthetic c(Lcom/android/b/b/K;)Lcom/android/b/b/Q;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/b/b/K;->Qu:Lcom/android/b/b/Q;

    return-object v0
.end method

.method static synthetic d(Lcom/android/b/b/K;)Lcom/android/b/b/U;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/b/b/K;->Rt:Lcom/android/b/b/U;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .prologue
    .line 212
    sget v0, Lcom/android/b/d;->aGE:I

    return v0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 167
    iget-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    if-eqz p2, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_1

    .line 117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 118
    const-string v2, "HeadsetProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not disconnecting device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    move v0, v1

    .line 140
    :goto_0
    return v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 128
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 129
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    sget-boolean v0, Lcom/android/b/b/K;->aJd:Z

    if-eqz v0, :cond_2

    const-string v0, "HeadsetProfile"

    const-string v1, "Downgrade priority as useris disconnecting the headset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-le v0, v3, :cond_3

    .line 134
    iget-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1, v3}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 140
    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 216
    sget-boolean v0, Lcom/android/b/b/K;->aJd:Z

    if-eqz v0, :cond_0

    const-string v0, "HeadsetProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 219
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string v1, "HeadsetProfile"

    const-string v2, "Error cleaning up HID proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public g(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    move v0, v1

    .line 153
    :goto_0
    return v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 147
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 148
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 153
    goto :goto_0
.end method

.method public h(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    if-nez v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public i(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/b/b/K;->aJG:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public j(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 194
    sget v0, Lcom/android/b/e;->aHi:I

    return v0
.end method

.method public k(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/android/b/b/K;->g(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 199
    packed-switch v0, :pswitch_data_0

    .line 207
    :pswitch_0
    invoke-static {v0}, Lcom/android/b/b/ai;->eb(I)I

    move-result v0

    :goto_0
    return v0

    .line 201
    :pswitch_1
    sget v0, Lcom/android/b/e;->aGU:I

    goto :goto_0

    .line 204
    :pswitch_2
    sget v0, Lcom/android/b/e;->aGT:I

    goto :goto_0

    .line 199
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
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public nU()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/b/b/K;->aJf:Z

    return v0
.end method

.method public nV()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, "HEADSET"

    return-object v0
.end method
