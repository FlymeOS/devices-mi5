.class public final Lcom/android/b/b/t;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"


# instance fields
.field private final Qu:Lcom/android/b/b/Q;

.field private final RG:Lcom/android/b/b/J;

.field private Rt:Lcom/android/b/b/U;

.field private final aJp:Landroid/content/IntentFilter;

.field private final aJq:Landroid/content/IntentFilter;

.field private final aJr:Ljava/util/Map;

.field private final aJs:Ljava/util/Collection;

.field private aJt:Landroid/os/Handler;

.field private final ll:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/b/b/Q;Lcom/android/b/b/J;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/b/t;->aJs:Ljava/util/Collection;

    .line 137
    new-instance v0, Lcom/android/b/b/u;

    invoke-direct {v0, p0}, Lcom/android/b/b/u;-><init>(Lcom/android/b/b/t;)V

    iput-object v0, p0, Lcom/android/b/b/t;->ll:Landroid/content/BroadcastReceiver;

    .line 77
    iput-object p1, p0, Lcom/android/b/b/t;->Qu:Lcom/android/b/b/Q;

    .line 78
    iput-object p2, p0, Lcom/android/b/b/t;->RG:Lcom/android/b/b/J;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/b/b/t;->aJp:Landroid/content/IntentFilter;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/b/b/t;->aJq:Landroid/content/IntentFilter;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/b/b/t;->aJr:Ljava/util/Map;

    .line 82
    iput-object p3, p0, Lcom/android/b/b/t;->mContext:Landroid/content/Context;

    .line 85
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance v1, Lcom/android/b/b/v;

    invoke-direct {v1, p0, v4}, Lcom/android/b/b/v;-><init>(Lcom/android/b/b/t;Lcom/android/b/b/u;)V

    invoke-direct {p0, v0, v1}, Lcom/android/b/b/t;->a(Ljava/lang/String;Lcom/android/b/b/C;)V

    .line 87
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    new-instance v1, Lcom/android/b/b/y;

    invoke-direct {v1, p0, v4}, Lcom/android/b/b/y;-><init>(Lcom/android/b/b/t;Lcom/android/b/b/u;)V

    invoke-direct {p0, v0, v1}, Lcom/android/b/b/t;->a(Ljava/lang/String;Lcom/android/b/b/C;)V

    .line 91
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    new-instance v1, Lcom/android/b/b/F;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/b/b/F;-><init>(Lcom/android/b/b/t;Z)V

    invoke-direct {p0, v0, v1}, Lcom/android/b/b/t;->a(Ljava/lang/String;Lcom/android/b/b/C;)V

    .line 92
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    new-instance v1, Lcom/android/b/b/F;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/b/b/F;-><init>(Lcom/android/b/b/t;Z)V

    invoke-direct {p0, v0, v1}, Lcom/android/b/b/t;->a(Ljava/lang/String;Lcom/android/b/b/C;)V

    .line 93
    const-string v0, "android.bluetooth.device.action.FOUND"

    new-instance v1, Lcom/android/b/b/A;

    invoke-direct {v1, p0, v4}, Lcom/android/b/b/A;-><init>(Lcom/android/b/b/t;Lcom/android/b/b/u;)V

    invoke-direct {p0, v0, v1}, Lcom/android/b/b/t;->a(Ljava/lang/String;Lcom/android/b/b/C;)V

    .line 94
    const-string v0, "android.bluetooth.device.action.DISAPPEARED"

    new-instance v1, Lcom/android/b/b/z;

    invoke-direct {v1, p0, v4}, Lcom/android/b/b/z;-><init>(Lcom/android/b/b/t;Lcom/android/b/b/u;)V

    invoke-direct {p0, v0, v1}, Lcom/android/b/b/t;->a(Ljava/lang/String;Lcom/android/b/b/C;)V

    .line 95
    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    new-instance v1, Lcom/android/b/b/D;

    invoke-direct {v1, p0, v4}, Lcom/android/b/b/D;-><init>(Lcom/android/b/b/t;Lcom/android/b/b/u;)V

    invoke-direct {p0, v0, v1}, Lcom/android/b/b/t;->a(Ljava/lang/String;Lcom/android/b/b/C;)V

    .line 96
    const-string v0, "android.bluetooth.device.action.ALIAS_CHANGED"

    new-instance v1, Lcom/android/b/b/D;

    invoke-direct {v1, p0, v4}, Lcom/android/b/b/D;-><init>(Lcom/android/b/b/t;Lcom/android/b/b/u;)V

    invoke-direct {p0, v0, v1}, Lcom/android/b/b/t;->a(Ljava/lang/String;Lcom/android/b/b/C;)V

    .line 99
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    new-instance v1, Lcom/android/b/b/w;

    invoke-direct {v1, p0, v4}, Lcom/android/b/b/w;-><init>(Lcom/android/b/b/t;Lcom/android/b/b/u;)V

    invoke-direct {p0, v0, v1}, Lcom/android/b/b/t;->a(Ljava/lang/String;Lcom/android/b/b/C;)V

    .line 100
    const-string v0, "android.bluetooth.device.action.PAIRING_CANCEL"

    new-instance v1, Lcom/android/b/b/E;

    invoke-direct {v1, p0, v4}, Lcom/android/b/b/E;-><init>(Lcom/android/b/b/t;Lcom/android/b/b/u;)V

    invoke-direct {p0, v0, v1}, Lcom/android/b/b/t;->a(Ljava/lang/String;Lcom/android/b/b/C;)V

    .line 103
    const-string v0, "android.bluetooth.device.action.CLASS_CHANGED"

    new-instance v1, Lcom/android/b/b/x;

    invoke-direct {v1, p0, v4}, Lcom/android/b/b/x;-><init>(Lcom/android/b/b/t;Lcom/android/b/b/u;)V

    invoke-direct {p0, v0, v1}, Lcom/android/b/b/t;->a(Ljava/lang/String;Lcom/android/b/b/C;)V

    .line 104
    const-string v0, "android.bluetooth.device.action.UUID"

    new-instance v1, Lcom/android/b/b/G;

    invoke-direct {v1, p0, v4}, Lcom/android/b/b/G;-><init>(Lcom/android/b/b/t;Lcom/android/b/b/u;)V

    invoke-direct {p0, v0, v1}, Lcom/android/b/b/t;->a(Ljava/lang/String;Lcom/android/b/b/C;)V

    .line 107
    const-string v0, "android.intent.action.DOCK_EVENT"

    new-instance v1, Lcom/android/b/b/B;

    invoke-direct {v1, p0, v4}, Lcom/android/b/b/B;-><init>(Lcom/android/b/b/t;Lcom/android/b/b/u;)V

    invoke-direct {p0, v0, v1}, Lcom/android/b/b/t;->a(Ljava/lang/String;Lcom/android/b/b/C;)V

    .line 109
    iget-object v0, p0, Lcom/android/b/b/t;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/b/b/t;->ll:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/b/b/t;->aJp:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/b/b/t;->aJt:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/android/b/b/t;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/b/b/t;->aJr:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/android/b/b/t;Lcom/android/b/b/H;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/b/b/t;->c(Lcom/android/b/b/H;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/android/b/b/C;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/b/b/t;->aJr:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/android/b/b/t;->aJp:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method static synthetic b(Lcom/android/b/b/t;)Lcom/android/b/b/Q;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/b/b/t;->Qu:Lcom/android/b/b/Q;

    return-object v0
.end method

.method static synthetic c(Lcom/android/b/b/t;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/b/b/t;->aJs:Ljava/util/Collection;

    return-object v0
.end method

.method private c(Lcom/android/b/b/H;I)V
    .locals 3

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/b/b/t;->aJs:Ljava/util/Collection;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/android/b/b/t;->aJs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/g;

    .line 220
    invoke-interface {v0, p1, p2}, Lcom/android/b/b/g;->b(Lcom/android/b/b/H;I)V

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    return-void
.end method

.method static synthetic d(Lcom/android/b/b/t;)Lcom/android/b/b/J;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/b/b/t;->RG:Lcom/android/b/b/J;

    return-object v0
.end method

.method static synthetic e(Lcom/android/b/b/t;)Lcom/android/b/b/U;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/b/b/t;->Rt:Lcom/android/b/b/U;

    return-object v0
.end method


# virtual methods
.method a(Lcom/android/b/b/U;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/b/b/t;->Rt:Lcom/android/b/b/U;

    .line 73
    return-void
.end method

.method public a(Lcom/android/b/b/g;)V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/b/b/t;->aJs:Ljava/util/Collection;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/android/b/b/t;->aJs:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 127
    monitor-exit v1

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/android/b/b/g;)V
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/b/b/t;->aJs:Ljava/util/Collection;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/b/b/t;->aJs:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v1

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Ljava/lang/String;Lcom/android/b/b/C;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/b/b/t;->aJr:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/android/b/b/t;->aJq:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method f(Lcom/android/b/b/H;)V
    .locals 3

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/b/b/t;->aJs:Ljava/util/Collection;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/android/b/b/t;->aJs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/g;

    .line 228
    invoke-interface {v0, p1}, Lcom/android/b/b/g;->b(Lcom/android/b/b/H;)V

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    return-void
.end method

.method zs()V
    .locals 5

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/b/b/t;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/b/b/t;->ll:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/b/b/t;->aJq:Landroid/content/IntentFilter;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/b/b/t;->aJt:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 114
    return-void
.end method

.method zt()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 380
    iget-object v1, p0, Lcom/android/b/b/t;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v1}, Lcom/android/b/b/Q;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 381
    if-nez v1, :cond_0

    .line 395
    :goto_0
    return v0

    .line 386
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 387
    iget-object v3, p0, Lcom/android/b/b/t;->RG:Lcom/android/b/b/J;

    invoke-virtual {v3, v0}, Lcom/android/b/b/J;->p(Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v3

    .line 388
    if-nez v3, :cond_2

    .line 389
    iget-object v1, p0, Lcom/android/b/b/t;->RG:Lcom/android/b/b/J;

    iget-object v3, p0, Lcom/android/b/b/t;->Qu:Lcom/android/b/b/Q;

    iget-object v4, p0, Lcom/android/b/b/t;->Rt:Lcom/android/b/b/U;

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/b/b/J;->a(Lcom/android/b/b/Q;Lcom/android/b/b/U;Landroid/bluetooth/BluetoothDevice;)Lcom/android/b/b/H;

    move-result-object v0

    .line 390
    invoke-virtual {p0, v0}, Lcom/android/b/b/t;->f(Lcom/android/b/b/H;)V

    .line 391
    const/4 v0, 0x1

    :goto_2
    move v1, v0

    .line 393
    goto :goto_1

    :cond_1
    move v0, v1

    .line 395
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method
