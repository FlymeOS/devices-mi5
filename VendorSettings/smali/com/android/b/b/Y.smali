.class public final Lcom/android/b/b/Y;
.super Ljava/lang/Object;
.source "MapProfile.java"

# interfaces
.implements Lcom/android/b/b/T;


# static fields
.field static final aJH:[Landroid/os/ParcelUuid;

.field private static aJd:Z


# instance fields
.field private final Qu:Lcom/android/b/b/Q;

.field private final RG:Lcom/android/b/b/J;

.field private final Rt:Lcom/android/b/b/U;

.field private aJf:Z

.field private aKc:Landroid/bluetooth/BluetoothMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 39
    sput-boolean v3, Lcom/android/b/b/Y;->aJd:Z

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/b/b/Y;->aJH:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/b/b/Q;Lcom/android/b/b/J;Lcom/android/b/b/U;)V
    .locals 3

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/android/b/b/Y;->Qu:Lcom/android/b/b/Q;

    .line 100
    iput-object p3, p0, Lcom/android/b/b/Y;->RG:Lcom/android/b/b/J;

    .line 101
    iput-object p4, p0, Lcom/android/b/b/Y;->Rt:Lcom/android/b/b/U;

    .line 102
    iget-object v0, p0, Lcom/android/b/b/Y;->Qu:Lcom/android/b/b/Q;

    new-instance v1, Lcom/android/b/b/aa;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/b/b/aa;-><init>(Lcom/android/b/b/Y;Lcom/android/b/b/Z;)V

    const/16 v2, 0x9

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/b/b/Q;->a(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/android/b/b/Y;)Landroid/bluetooth/BluetoothMap;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    return-object v0
.end method

.method static synthetic a(Lcom/android/b/b/Y;Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothMap;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    return-object p1
.end method

.method static synthetic a(Lcom/android/b/b/Y;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/b/b/Y;->aJf:Z

    return p1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/b/b/Y;->aJd:Z

    return v0
.end method

.method static synthetic b(Lcom/android/b/b/Y;)Lcom/android/b/b/J;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/b/b/Y;->RG:Lcom/android/b/b/J;

    return-object v0
.end method

.method static synthetic c(Lcom/android/b/b/Y;)Lcom/android/b/b/Q;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/b/b/Y;->Qu:Lcom/android/b/b/Q;

    return-object v0
.end method

.method static synthetic d(Lcom/android/b/b/Y;)Lcom/android/b/b/U;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/b/b/Y;->Rt:Lcom/android/b/b/U;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .prologue
    .line 199
    sget v0, Lcom/android/b/d;->aGC:I

    return v0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 154
    iget-object v0, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    if-nez v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    if-eqz p2, :cond_2

    .line 156
    iget-object v0, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothMap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothMap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .prologue
    .line 115
    sget-boolean v0, Lcom/android/b/b/Y;->aJd:Z

    if-eqz v0, :cond_0

    const-string v0, "MapProfile"

    const-string v1, "connect() - should not get called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    if-nez v0, :cond_0

    move v0, v1

    .line 128
    :goto_0
    return v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothMap;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-le v0, v3, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, p1, v3}, Landroid/bluetooth/BluetoothMap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 203
    sget-boolean v0, Lcom/android/b/b/Y;->aJd:Z

    if-eqz v0, :cond_0

    const-string v0, "MapProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    if-eqz v0, :cond_1

    .line 206
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    const-string v1, "MapProfile"

    const-string v2, "Error cleaning up MAP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public g(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return v1

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothMap;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public h(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 144
    iget-object v1, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    if-nez v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public i(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/b/b/Y;->aKc:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public j(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 181
    sget v0, Lcom/android/b/e;->aHk:I

    return v0
.end method

.method public k(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/android/b/b/Y;->g(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 186
    packed-switch v0, :pswitch_data_0

    .line 194
    :pswitch_0
    invoke-static {v0}, Lcom/android/b/b/ai;->eb(I)I

    move-result v0

    :goto_0
    return v0

    .line 188
    :pswitch_1
    sget v0, Lcom/android/b/e;->aGY:I

    goto :goto_0

    .line 191
    :pswitch_2
    sget v0, Lcom/android/b/e;->aGX:I

    goto :goto_0

    .line 186
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
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public nU()Z
    .locals 3

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/b/b/Y;->aJd:Z

    if-eqz v0, :cond_0

    const-string v0, "MapProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isProfileReady(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/b/b/Y;->aJf:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/android/b/b/Y;->aJf:Z

    return v0
.end method

.method public nV()I
    .locals 1

    .prologue
    .line 177
    const/16 v0, 0x9

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const-string v0, "MAP"

    return-object v0
.end method
