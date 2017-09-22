.class public final Lcom/android/b/b/Q;
.super Ljava/lang/Object;
.source "LocalBluetoothAdapter.java"


# static fields
.field private static aJL:Lcom/android/b/b/Q;


# instance fields
.field private Rt:Lcom/android/b/b/U;

.field private aJM:J

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mState:I


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/b/b/Q;->mState:I

    .line 54
    iput-object p1, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 55
    return-void
.end method

.method static declared-synchronized Aa()Lcom/android/b/b/Q;
    .locals 3

    .prologue
    .line 68
    const-class v1, Lcom/android/b/b/Q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/b/b/Q;->aJL:Lcom/android/b/b/Q;

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    new-instance v2, Lcom/android/b/b/Q;

    invoke-direct {v2, v0}, Lcom/android/b/b/Q;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    sput-object v2, Lcom/android/b/b/Q;->aJL:Lcom/android/b/b/Q;

    .line 75
    :cond_0
    sget-object v0, Lcom/android/b/b/Q;->aJL:Lcom/android/b/b/Q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public Ab()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 82
    return-void
.end method

.method public Ac()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 176
    :cond_0
    return-void
.end method

.method public declared-synchronized Ad()I
    .locals 1

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/b/b/Q;->Ae()Z

    .line 181
    iget v0, p0, Lcom/android/b/b/Q;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method Ae()Z
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 199
    iget v1, p0, Lcom/android/b/b/Q;->mState:I

    if-eq v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/b/b/Q;->ea(I)V

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 95
    return-void
.end method

.method a(Lcom/android/b/b/U;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/b/b/Q;->Rt:Lcom/android/b/b/U;

    .line 59
    return-void
.end method

.method public bR(Z)V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    if-nez p1, :cond_3

    .line 151
    iget-wide v0, p0, Lcom/android/b/b/Q;->aJM:J

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/b/b/Q;->Rt:Lcom/android/b/b/U;

    invoke-virtual {v0}, Lcom/android/b/b/U;->Ap()Lcom/android/b/b/a;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/b/b/a;->zr()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/android/b/b/Q;->Rt:Lcom/android/b/b/U;

    invoke-virtual {v0}, Lcom/android/b/b/U;->Aq()Lcom/android/b/b/d;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/b/b/d;->zr()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/b/b/Q;->aJM:J

    goto :goto_0
.end method

.method public bS(Z)V
    .locals 1

    .prologue
    .line 207
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    .line 211
    :goto_0
    if-eqz v0, :cond_2

    .line 212
    if-eqz p1, :cond_1

    const/16 v0, 0xb

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/b/b/Q;->ea(I)V

    .line 223
    :goto_2
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    goto :goto_0

    .line 212
    :cond_1
    const/16 v0, 0xd

    goto :goto_1

    .line 221
    :cond_2
    invoke-virtual {p0}, Lcom/android/b/b/Q;->Ae()Z

    goto :goto_2
.end method

.method public dZ(I)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 139
    return-void
.end method

.method public disable()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method declared-synchronized ea(I)V
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/b/b/Q;->mState:I

    .line 187
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/b/b/Q;->Rt:Lcom/android/b/b/U;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/b/b/Q;->Rt:Lcom/android/b/b/U;

    invoke-virtual {v0}, Lcom/android/b/b/U;->Al()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enable()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScanMode()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    return v0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method public isDiscovering()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 135
    return-void
.end method

.method public setScanMode(II)Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/b/b/Q;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    return v0
.end method
