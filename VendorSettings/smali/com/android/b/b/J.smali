.class public final Lcom/android/b/b/J;
.super Ljava/lang/Object;
.source "CachedBluetoothDeviceManager.java"


# instance fields
.field private final aJE:Ljava/util/List;

.field private final aJF:Lcom/android/b/b/R;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/b/b/R;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/b/J;->aJE:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/android/b/b/J;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/b/b/J;->aJF:Lcom/android/b/b/R;

    .line 43
    return-void
.end method

.method public static h(Lcom/android/b/b/H;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/b/b/H;->setVisible(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/android/b/b/H;->getBondState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public a(Lcom/android/b/b/Q;Lcom/android/b/b/U;Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;
    .locals 3

    .prologue
    .line 89
    new-instance v0, Lcom/android/b/b/H;

    iget-object v1, p0, Lcom/android/b/b/J;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/b/b/H;-><init>(Landroid/content/Context;Lcom/android/b/b/Q;Lcom/android/b/b/U;Landroid/bluetooth/BluetoothDevice;)V

    .line 91
    iget-object v1, p0, Lcom/android/b/b/J;->aJE:Ljava/util/List;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/android/b/b/J;->aJE:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v2, p0, Lcom/android/b/b/J;->aJF:Lcom/android/b/b/R;

    invoke-virtual {v2}, Lcom/android/b/b/R;->Aj()Lcom/android/b/b/t;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/b/b/t;->f(Lcom/android/b/b/H;)V

    .line 94
    monitor-exit v1

    .line 95
    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized aB(Z)V
    .locals 3

    .prologue
    .line 137
    monitor-enter p0

    if-nez p1, :cond_1

    .line 145
    :cond_0
    monitor-exit p0

    return-void

    .line 141
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/b/b/J;->aJE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/b/b/J;->aJE:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/H;

    .line 143
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/b/b/H;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bj(I)V
    .locals 4

    .prologue
    .line 164
    monitor-enter p0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/android/b/b/J;->aJE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/b/b/J;->aJE:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/H;

    .line 167
    invoke-virtual {v0}, Lcom/android/b/b/H;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 168
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/b/b/H;->setVisible(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/b/b/J;->aJE:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 165
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v0}, Lcom/android/b/b/H;->zz()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 178
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public i(Lcom/android/b/b/H;)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/b/b/H;->setVisible(Z)V

    .line 101
    invoke-virtual {p1}, Lcom/android/b/b/H;->zD()S

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/b/b/J;->aJE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    return-void
.end method

.method public o(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/android/b/b/H;->zB()V

    .line 59
    :cond_0
    return-void
.end method

.method public p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/b/b/J;->aJE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/H;

    .line 73
    invoke-virtual {v0}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0}, Lcom/android/b/b/H;->getName()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_0
    :goto_0
    return-object v0

    .line 119
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    .line 120
    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized r(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/android/b/b/H;->zH()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized s(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/android/b/b/H;->zI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zY()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/b/b/J;->aJE:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zZ()V
    .locals 3

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/b/b/J;->aJE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/b/b/J;->aJE:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/H;

    .line 130
    invoke-virtual {v0}, Lcom/android/b/b/H;->getBondState()I

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/b/b/J;->aJE:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 134
    :cond_1
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
