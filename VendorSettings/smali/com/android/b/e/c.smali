.class public Lcom/android/b/e/c;
.super Ljava/lang/Object;
.source "WifiTracker.java"


# static fields
.field public static aKO:I


# instance fields
.field private final aAQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aEj:Landroid/net/wifi/WifiInfo;

.field private final aKP:Lcom/android/b/e/h;

.field private final aKQ:Z

.field private final aKR:Z

.field private final aKS:Z

.field private final aKT:Lcom/android/b/e/e;

.field private final aKU:Lcom/android/b/e/i;

.field private aKV:Z

.field private aKW:Ljava/util/ArrayList;

.field private aKX:Ljava/util/HashMap;

.field private aKY:Ljava/util/HashMap;

.field private aKZ:Ljava/lang/Integer;

.field private aLa:Landroid/net/NetworkInfo;

.field aLb:Lcom/android/b/e/g;

.field private final je:Landroid/net/wifi/WifiManager;

.field public final mContext:Landroid/content/Context;

.field private final mG:Landroid/content/IntentFilter;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/android/b/e/c;->aKO:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/b/e/h;Landroid/os/Looper;ZZZ)V
    .locals 9

    .prologue
    .line 108
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/b/e/c;-><init>(Landroid/content/Context;Lcom/android/b/e/h;Landroid/os/Looper;ZZZLandroid/net/wifi/WifiManager;Landroid/os/Looper;)V

    .line 110
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/b/e/h;Landroid/os/Looper;ZZZLandroid/net/wifi/WifiManager;Landroid/os/Looper;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/b/e/c;->aAQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/b/e/c;->aKW:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/b/e/c;->aKX:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/b/e/c;->aKY:Ljava/util/HashMap;

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/e/c;->aKZ:Ljava/lang/Integer;

    .line 519
    new-instance v0, Lcom/android/b/e/d;

    invoke-direct {v0, p0}, Lcom/android/b/e/d;-><init>(Lcom/android/b/e/c;)V

    iput-object v0, p0, Lcom/android/b/e/c;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include either saved or scans"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/android/b/e/c;->mContext:Landroid/content/Context;

    .line 120
    if-nez p8, :cond_1

    .line 122
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p8

    .line 124
    :cond_1
    new-instance v0, Lcom/android/b/e/e;

    invoke-direct {v0, p0, p8}, Lcom/android/b/e/e;-><init>(Lcom/android/b/e/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/b/e/c;->aKT:Lcom/android/b/e/e;

    .line 125
    new-instance v0, Lcom/android/b/e/i;

    if-eqz p3, :cond_2

    :goto_0
    invoke-direct {v0, p0, p3}, Lcom/android/b/e/i;-><init>(Lcom/android/b/e/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/b/e/c;->aKU:Lcom/android/b/e/i;

    .line 127
    iput-object p7, p0, Lcom/android/b/e/c;->je:Landroid/net/wifi/WifiManager;

    .line 128
    iput-boolean p4, p0, Lcom/android/b/e/c;->aKQ:Z

    .line 129
    iput-boolean p5, p0, Lcom/android/b/e/c;->aKR:Z

    .line 130
    iput-boolean p6, p0, Lcom/android/b/e/c;->aKS:Z

    .line 131
    iput-object p2, p0, Lcom/android/b/e/c;->aKP:Lcom/android/b/e/h;

    .line 134
    iget-object v0, p0, Lcom/android/b/e/c;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v0

    sput v0, Lcom/android/b/e/c;->aKO:I

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/b/e/c;->mG:Landroid/content/IntentFilter;

    .line 137
    iget-object v0, p0, Lcom/android/b/e/c;->mG:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/b/e/c;->mG:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/b/e/c;->mG:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/b/e/c;->mG:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/b/e/c;->mG:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/b/e/c;->mG:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/b/e/c;->mG:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/b/e/c;->mG:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    return-void

    :cond_2
    move-object p3, p8

    .line 125
    goto :goto_0
.end method

.method private AS()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/b/e/c;->aKY:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 267
    iget-object v0, p0, Lcom/android/b/e/c;->aKX:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 268
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/e/c;->aKZ:Ljava/lang/Integer;

    .line 269
    return-void
.end method

.method private AT()Ljava/util/Collection;
    .locals 5

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/b/e/c;->aKZ:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/b/e/c;->aKZ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/e/c;->aKZ:Ljava/lang/Integer;

    .line 273
    iget-object v0, p0, Lcom/android/b/e/c;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 274
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 275
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/android/b/e/c;->aKY:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v2, p0, Lcom/android/b/e/c;->aKX:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/b/e/c;->aKZ:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/android/b/e/c;->aKZ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 283
    iget-object v0, p0, Lcom/android/b/e/c;->aKZ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 284
    iget-object v0, p0, Lcom/android/b/e/c;->aKX:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 285
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 287
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 288
    iget-object v1, p0, Lcom/android/b/e/c;->aKY:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 290
    iget-object v1, p0, Lcom/android/b/e/c;->aKY:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/android/b/e/c;->aKY:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private AU()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 317
    invoke-virtual {p0}, Lcom/android/b/e/c;->AP()Ljava/util/List;

    move-result-object v5

    .line 318
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 321
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/e/a;

    .line 322
    invoke-virtual {v0}, Lcom/android/b/e/a;->Aw()V

    goto :goto_0

    .line 327
    :cond_0
    new-instance v7, Lcom/android/b/e/f;

    invoke-direct {v7, v1}, Lcom/android/b/e/f;-><init>(Lcom/android/b/e/d;)V

    .line 329
    iget-object v0, p0, Lcom/android/b/e/c;->aEj:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_14

    .line 330
    iget-object v0, p0, Lcom/android/b/e/c;->aEj:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/b/e/c;->ec(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v2, v0

    .line 333
    :goto_1
    iget-object v0, p0, Lcom/android/b/e/c;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 334
    if-eqz v1, :cond_8

    .line 335
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/android/b/e/c;->aKV:Z

    .line 336
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 337
    iget-boolean v8, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v8, :cond_2

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eqz v8, :cond_1

    .line 340
    :cond_2
    invoke-virtual {p0, v0, v5}, Lcom/android/b/e/c;->a(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/android/b/e/a;

    move-result-object v8

    .line 341
    iget-object v9, p0, Lcom/android/b/e/c;->aEj:Landroid/net/wifi/WifiInfo;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/b/e/c;->aLa:Landroid/net/NetworkInfo;

    if-eqz v9, :cond_3

    .line 342
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v9

    if-nez v9, :cond_3

    .line 343
    iget-object v9, p0, Lcom/android/b/e/c;->aEj:Landroid/net/wifi/WifiInfo;

    iget-object v10, p0, Lcom/android/b/e/c;->aLa:Landroid/net/NetworkInfo;

    invoke-virtual {v8, v2, v9, v10}, Lcom/android/b/e/a;->a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 346
    :cond_3
    iget-boolean v9, p0, Lcom/android/b/e/c;->aKQ:Z

    if-eqz v9, :cond_7

    .line 347
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-boolean v9, p0, Lcom/android/b/e/c;->aKS:Z

    if-eqz v9, :cond_5

    .line 348
    :cond_4
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_5
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    invoke-virtual {v8}, Lcom/android/b/e/a;->AB()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v8}, Lcom/android/b/e/f;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    move v0, v4

    .line 335
    goto :goto_2

    .line 356
    :cond_7
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 361
    :cond_8
    invoke-direct {p0}, Lcom/android/b/e/c;->AT()Ljava/util/Collection;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_e

    .line 363
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 365
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v9, "[IBSS]"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 371
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/android/b/e/f;->r(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/b/e/a;

    .line 372
    invoke-virtual {v1, v0}, Lcom/android/b/e/a;->h(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v3

    .line 377
    :goto_5
    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/android/b/e/c;->aKR:Z

    if-eqz v1, :cond_9

    .line 378
    invoke-virtual {p0, v0, v5}, Lcom/android/b/e/c;->a(Landroid/net/wifi/ScanResult;Ljava/util/List;)Lcom/android/b/e/a;

    move-result-object v1

    .line 379
    iget-object v9, p0, Lcom/android/b/e/c;->aEj:Landroid/net/wifi/WifiInfo;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/b/e/c;->aLa:Landroid/net/NetworkInfo;

    if-eqz v9, :cond_b

    .line 380
    iget-object v9, p0, Lcom/android/b/e/c;->aEj:Landroid/net/wifi/WifiInfo;

    iget-object v10, p0, Lcom/android/b/e/c;->aLa:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v9, v10}, Lcom/android/b/e/a;->a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 383
    :cond_b
    invoke-virtual {v0}, Landroid/net/wifi/ScanResult;->isPasspointNetwork()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 384
    iget-object v9, p0, Lcom/android/b/e/c;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v0}, Landroid/net/wifi/WifiManager;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 385
    if-eqz v9, :cond_c

    .line 386
    invoke-virtual {v1, v9}, Lcom/android/b/e/a;->l(Landroid/net/wifi/WifiConfiguration;)V

    .line 390
    :cond_c
    iget-object v9, p0, Lcom/android/b/e/c;->aEj:Landroid/net/wifi/WifiInfo;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/b/e/c;->aEj:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/b/e/c;->aEj:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v9

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 395
    invoke-virtual {v1, v2}, Lcom/android/b/e/a;->l(Landroid/net/wifi/WifiConfiguration;)V

    .line 398
    :cond_d
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {v1}, Lcom/android/b/e/a;->AB()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v1}, Lcom/android/b/e/f;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 405
    :cond_e
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 409
    iget-object v0, p0, Lcom/android/b/e/c;->aKW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/e/a;

    .line 410
    invoke-virtual {v0}, Lcom/android/b/e/a;->AC()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 411
    invoke-virtual {v0}, Lcom/android/b/e/a;->AB()Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/e/a;

    .line 414
    invoke-virtual {v0}, Lcom/android/b/e/a;->AC()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-virtual {v0}, Lcom/android/b/e/a;->AC()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v3

    .line 419
    :goto_7
    if-nez v0, :cond_f

    goto :goto_6

    .line 424
    :cond_11
    iput-object v6, p0, Lcom/android/b/e/c;->aKW:Ljava/util/ArrayList;

    .line 425
    iget-object v0, p0, Lcom/android/b/e/c;->aKT:Lcom/android/b/e/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/b/e/e;->sendEmptyMessage(I)Z

    .line 426
    return-void

    :cond_12
    move v0, v4

    goto :goto_7

    :cond_13
    move v1, v4

    goto/16 :goto_5

    :cond_14
    move-object v2, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/android/b/e/c;)Lcom/android/b/e/i;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/b/e/c;->aKU:Lcom/android/b/e/i;

    return-object v0
.end method

.method public static a(Landroid/content/Context;ZZZ)Ljava/util/List;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 513
    new-instance v0, Lcom/android/b/e/c;

    move-object v1, p0

    move-object v3, v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/b/e/c;-><init>(Landroid/content/Context;Lcom/android/b/e/h;Landroid/os/Looper;ZZZ)V

    .line 515
    invoke-virtual {v0}, Lcom/android/b/e/c;->forceUpdate()V

    .line 516
    invoke-virtual {v0}, Lcom/android/b/e/c;->AO()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/b/e/c;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/b/e/c;->dM(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/b/e/c;Landroid/net/NetworkInfo;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/b/e/c;->b(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic b(Lcom/android/b/e/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/b/e/c;->aAQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private b(Landroid/net/NetworkInfo;)V
    .locals 6

    .prologue
    const/4 v2, 0x4

    .line 458
    iget-object v0, p0, Lcom/android/b/e/c;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/b/e/c;->aKT:Lcom/android/b/e/e;

    invoke-virtual {v0, v2}, Lcom/android/b/e/e;->sendEmptyMessage(I)Z

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_3

    .line 465
    iget-object v0, p0, Lcom/android/b/e/c;->aKT:Lcom/android/b/e/e;

    invoke-virtual {v0, v2}, Lcom/android/b/e/e;->sendEmptyMessage(I)Z

    .line 470
    :goto_1
    iget-object v0, p0, Lcom/android/b/e/c;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/e/c;->aEj:Landroid/net/wifi/WifiInfo;

    .line 471
    if-eqz p1, :cond_2

    .line 472
    iput-object p1, p0, Lcom/android/b/e/c;->aLa:Landroid/net/NetworkInfo;

    .line 475
    :cond_2
    const/4 v0, 0x0

    .line 476
    iget-object v1, p0, Lcom/android/b/e/c;->aEj:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_6

    .line 477
    iget-object v0, p0, Lcom/android/b/e/c;->aEj:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/b/e/c;->ec(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 480
    :goto_2
    const/4 v2, 0x0

    .line 481
    iget-object v0, p0, Lcom/android/b/e/c;->aKW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_3
    if-ltz v3, :cond_4

    .line 482
    iget-object v0, p0, Lcom/android/b/e/c;->aKW:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/e/a;

    iget-object v4, p0, Lcom/android/b/e/c;->aEj:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/b/e/c;->aLa:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/b/e/a;->a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 483
    const/4 v0, 0x1

    .line 481
    :goto_4
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move v2, v0

    goto :goto_3

    .line 467
    :cond_3
    iget-object v0, p0, Lcom/android/b/e/c;->aKT:Lcom/android/b/e/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/b/e/e;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 486
    :cond_4
    if-eqz v2, :cond_0

    .line 487
    iget-object v1, p0, Lcom/android/b/e/c;->aKW:Ljava/util/ArrayList;

    monitor-enter v1

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/android/b/e/c;->aKW:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 489
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    iget-object v0, p0, Lcom/android/b/e/c;->aKT:Lcom/android/b/e/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/b/e/e;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 489
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    move-object v1, v0

    goto :goto_2
.end method

.method static synthetic c(Lcom/android/b/e/c;)Lcom/android/b/e/e;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/b/e/c;->aKT:Lcom/android/b/e/e;

    return-object v0
.end method

.method static synthetic d(Lcom/android/b/e/c;)Lcom/android/b/e/h;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/b/e/c;->aKP:Lcom/android/b/e/h;

    return-object v0
.end method

.method private dM(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 495
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/android/b/e/c;->aLb:Lcom/android/b/e/g;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/b/e/c;->aLb:Lcom/android/b/e/g;

    invoke-virtual {v0}, Lcom/android/b/e/g;->resume()V

    .line 508
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/b/e/c;->aKT:Lcom/android/b/e/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/b/e/e;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 509
    return-void

    .line 502
    :cond_1
    iput-object v1, p0, Lcom/android/b/e/c;->aEj:Landroid/net/wifi/WifiInfo;

    .line 503
    iput-object v1, p0, Lcom/android/b/e/c;->aLa:Landroid/net/NetworkInfo;

    .line 504
    iget-object v0, p0, Lcom/android/b/e/c;->aLb:Lcom/android/b/e/g;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/b/e/c;->aLb:Lcom/android/b/e/g;

    invoke-virtual {v0}, Lcom/android/b/e/g;->pause()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/android/b/e/c;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/b/e/c;->AU()V

    return-void
.end method

.method private ec(I)Landroid/net/wifi/WifiConfiguration;
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/b/e/c;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_2

    .line 303
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 304
    iget-object v2, p0, Lcom/android/b/e/c;->aEj:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v2, :cond_0

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eqz v2, :cond_0

    .line 310
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/android/b/e/c;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/b/e/c;->AS()V

    return-void
.end method

.method static synthetic g(Lcom/android/b/e/c;)Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/b/e/c;->je:Landroid/net/wifi/WifiManager;

    return-object v0
.end method


# virtual methods
.method public AK()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/b/e/c;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/b/e/c;->aLb:Lcom/android/b/e/g;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/b/e/c;->aLb:Lcom/android/b/e/g;

    invoke-virtual {v0}, Lcom/android/b/e/g;->AK()V

    .line 161
    :cond_0
    return-void
.end method

.method public AL()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/b/e/c;->aLb:Lcom/android/b/e/g;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/b/e/c;->aLb:Lcom/android/b/e/g;

    invoke-virtual {v0}, Lcom/android/b/e/g;->pause()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/b/e/c;->aLb:Lcom/android/b/e/g;

    .line 171
    :cond_0
    return-void
.end method

.method public AM()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/b/e/c;->aLb:Lcom/android/b/e/g;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/android/b/e/g;

    invoke-direct {v0, p0}, Lcom/android/b/e/g;-><init>(Lcom/android/b/e/c;)V

    iput-object v0, p0, Lcom/android/b/e/c;->aLb:Lcom/android/b/e/g;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/b/e/c;->aKU:Lcom/android/b/e/i;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/b/e/i;->sendEmptyMessage(I)Z

    .line 182
    iget-object v0, p0, Lcom/android/b/e/c;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/b/e/c;->aLb:Lcom/android/b/e/g;

    invoke-virtual {v0}, Lcom/android/b/e/g;->resume()V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/b/e/c;->aKU:Lcom/android/b/e/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/b/e/i;->sendEmptyMessage(I)Z

    .line 186
    return-void
.end method

.method public AN()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-boolean v0, p0, Lcom/android/b/e/c;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/b/e/c;->aKU:Lcom/android/b/e/i;

    invoke-virtual {v0, v2}, Lcom/android/b/e/i;->removeMessages(I)V

    .line 210
    iget-object v0, p0, Lcom/android/b/e/c;->aKU:Lcom/android/b/e/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/b/e/i;->removeMessages(I)V

    .line 211
    iget-object v0, p0, Lcom/android/b/e/c;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/b/e/c;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    iput-boolean v2, p0, Lcom/android/b/e/c;->mRegistered:Z

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/android/b/e/c;->AL()V

    .line 215
    return-void
.end method

.method public AO()Ljava/util/List;
    .locals 3

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/b/e/c;->aKW:Ljava/util/ArrayList;

    monitor-enter v1

    .line 222
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/b/e/c;->aKW:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public AP()Ljava/util/List;
    .locals 6

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/b/e/c;->aKW:Ljava/util/ArrayList;

    monitor-enter v1

    .line 229
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    iget-object v0, p0, Lcom/android/b/e/c;->aKW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/e/a;

    .line 231
    new-instance v4, Lcom/android/b/e/a;

    iget-object v5, p0, Lcom/android/b/e/c;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lcom/android/b/e/a;-><init>(Landroid/content/Context;Lcom/android/b/e/a;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 233
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public AQ()Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/b/e/c;->je:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public AR()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/b/e/c;->aKV:Z

    return v0
.end method

.method public a(Landroid/net/wifi/ScanResult;Ljava/util/List;)Lcom/android/b/e/a;
    .locals 3

    .prologue
    .line 431
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 432
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 433
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/e/a;

    invoke-virtual {v0, p1}, Lcom/android/b/e/a;->f(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/e/a;

    .line 435
    invoke-virtual {v0, p1}, Lcom/android/b/e/a;->h(Landroid/net/wifi/ScanResult;)Z

    .line 439
    :goto_1
    return-object v0

    .line 432
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 439
    :cond_1
    new-instance v0, Lcom/android/b/e/a;

    iget-object v1, p0, Lcom/android/b/e/c;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/b/e/a;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    goto :goto_1
.end method

.method public a(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/android/b/e/a;
    .locals 3

    .prologue
    .line 445
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 446
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 447
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/e/a;

    invoke-virtual {v0, p1}, Lcom/android/b/e/a;->j(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/e/a;

    .line 449
    invoke-virtual {v0, p1}, Lcom/android/b/e/a;->k(Landroid/net/wifi/WifiConfiguration;)V

    .line 453
    :goto_1
    return-object v0

    .line 446
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 453
    :cond_1
    new-instance v0, Lcom/android/b/e/a;

    iget-object v1, p0, Lcom/android/b/e/c;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/b/e/a;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1
.end method

.method public forceUpdate()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/b/e/c;->AU()V

    .line 152
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/b/e/c;->aAQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isWifiEnabled()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/b/e/c;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public startTracking()V
    .locals 3

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/b/e/c;->AM()V

    .line 195
    iget-boolean v0, p0, Lcom/android/b/e/c;->mRegistered:Z

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/b/e/c;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/b/e/c;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/b/e/c;->mG:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/b/e/c;->mRegistered:Z

    .line 199
    :cond_0
    return-void
.end method
