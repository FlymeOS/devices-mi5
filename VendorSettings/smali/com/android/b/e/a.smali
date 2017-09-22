.class public Lcom/android/b/e/a;
.super Ljava/lang/Object;
.source "AccessPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public aDo:Landroid/net/wifi/WifiConfiguration;

.field public aFZ:I

.field public aKF:Landroid/util/LruCache;

.field public aKG:I

.field private aKH:I

.field public aKI:Landroid/net/wifi/ScanResult;

.field private aKJ:J

.field protected aKK:Landroid/net/wifi/WifiInfo;

.field private aKL:Landroid/net/NetworkInfo;

.field public aKM:Lcom/android/b/e/b;

.field public aKN:Z

.field public bssid:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mTag:Ljava/lang/Object;

.field public networkId:I

.field public ssid:Ljava/lang/String;

.field private wapiPskType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 2

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/b/e/a;->aKF:Landroid/util/LruCache;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/b/e/a;->networkId:I

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/b/e/a;->aKH:I

    .line 141
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/b/e/a;->aFZ:I

    .line 142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/b/e/a;->aKJ:J

    .line 229
    iput-object p1, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    .line 231
    invoke-direct {p0, p2}, Lcom/android/b/e/a;->g(Landroid/net/wifi/ScanResult;)V

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/b/e/a;->aKF:Landroid/util/LruCache;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/b/e/a;->networkId:I

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/b/e/a;->aKH:I

    .line 141
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/b/e/a;->aFZ:I

    .line 142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/b/e/a;->aKJ:J

    .line 238
    iput-object p1, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {p0, p2}, Lcom/android/b/e/a;->k(Landroid/net/wifi/WifiConfiguration;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/b/e/a;->aKF:Landroid/util/LruCache;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/b/e/a;->networkId:I

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/b/e/a;->aKH:I

    .line 141
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/b/e/a;->aFZ:I

    .line 142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/b/e/a;->aKJ:J

    .line 158
    iput-object p1, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    .line 159
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    .line 160
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v0}, Lcom/android/b/e/a;->k(Landroid/net/wifi/WifiConfiguration;)V

    .line 164
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/b/e/a;->aKI:Landroid/net/wifi/ScanResult;

    .line 165
    const-string v0, "key_show_password"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/b/e/a;->aKN:Z

    .line 168
    const-string v0, "key_ssid"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const-string v0, "key_ssid"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    .line 171
    :cond_1
    const-string v0, "key_security"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    const-string v0, "key_security"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/b/e/a;->aKG:I

    .line 174
    :cond_2
    const-string v0, "key_psktype"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    const-string v0, "key_psktype"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/b/e/a;->aKH:I

    .line 177
    :cond_3
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    .line 178
    const-string v0, "key_networkinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    const-string v0, "key_networkinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    iput-object v0, p0, Lcom/android/b/e/a;->aKL:Landroid/net/NetworkInfo;

    .line 181
    :cond_4
    const-string v0, "key_scanresultcache"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 182
    const-string v0, "key_scanresultcache"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/android/b/e/a;->aKF:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 185
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 186
    iget-object v2, p0, Lcom/android/b/e/a;->aKF:Landroid/util/LruCache;

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 189
    :cond_5
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Lcom/android/b/e/a;->aKL:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/b/e/a;->a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 190
    invoke-virtual {p0}, Lcom/android/b/e/a;->getRssi()I

    move-result v0

    iput v0, p0, Lcom/android/b/e/a;->aFZ:I

    .line 191
    invoke-virtual {p0}, Lcom/android/b/e/a;->Ay()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/b/e/a;->aKJ:J

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/b/e/a;)V
    .locals 5

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/b/e/a;->aKF:Landroid/util/LruCache;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/b/e/a;->networkId:I

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/b/e/a;->aKH:I

    .line 141
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/b/e/a;->aFZ:I

    .line 142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/b/e/a;->aKJ:J

    .line 196
    iput-object p1, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    .line 197
    iget-object v0, p2, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p2, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/android/b/e/a;->k(Landroid/net/wifi/WifiConfiguration;)V

    .line 200
    :cond_0
    iget-object v0, p2, Lcom/android/b/e/a;->aKI:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 201
    new-instance v0, Landroid/net/wifi/ScanResult;

    iget-object v1, p2, Lcom/android/b/e/a;->aKI:Landroid/net/wifi/ScanResult;

    invoke-direct {v0, v1}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    iput-object v0, p0, Lcom/android/b/e/a;->aKI:Landroid/net/wifi/ScanResult;

    .line 203
    :cond_1
    invoke-virtual {p2}, Lcom/android/b/e/a;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 204
    invoke-virtual {p2}, Lcom/android/b/e/a;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/b/e/a;->setTag(Ljava/lang/Object;)V

    .line 206
    :cond_2
    iget-boolean v0, p2, Lcom/android/b/e/a;->aKN:Z

    iput-boolean v0, p0, Lcom/android/b/e/a;->aKN:Z

    .line 207
    iget-object v0, p2, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    .line 208
    iget v0, p2, Lcom/android/b/e/a;->aKG:I

    iput v0, p0, Lcom/android/b/e/a;->aKG:I

    .line 209
    iget v0, p2, Lcom/android/b/e/a;->aKH:I

    iput v0, p0, Lcom/android/b/e/a;->aKH:I

    .line 210
    iget-object v0, p2, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_3

    .line 211
    new-instance v0, Landroid/net/wifi/WifiInfo;

    iget-object v1, p2, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    iput-object v0, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    .line 213
    :cond_3
    iget-object v0, p2, Lcom/android/b/e/a;->aKL:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_4

    .line 214
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p2, Lcom/android/b/e/a;->aKL:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    iput-object v0, p0, Lcom/android/b/e/a;->aKL:Landroid/net/NetworkInfo;

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/android/b/e/a;->aKF:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 217
    iget-object v0, p2, Lcom/android/b/e/a;->aKF:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 218
    iget-object v2, p0, Lcom/android/b/e/a;->aKF:Landroid/util/LruCache;

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    new-instance v4, Landroid/net/wifi/ScanResult;

    invoke-direct {v4, v0}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 220
    :cond_5
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Lcom/android/b/e/a;->aKL:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/b/e/a;->a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 221
    iget v0, p2, Lcom/android/b/e/a;->aFZ:I

    iput v0, p0, Lcom/android/b/e/a;->aFZ:I

    .line 222
    iget-wide v0, p2, Lcom/android/b/e/a;->aKJ:J

    iput-wide v0, p0, Lcom/android/b/e/a;->aKJ:J

    .line 223
    return-void
.end method

.method private AG()Ljava/lang/String;
    .locals 23

    .prologue
    .line 569
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    const/4 v11, 0x0

    .line 571
    const/4 v10, 0x0

    .line 572
    const/4 v2, 0x0

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_17

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 578
    if-eqz v2, :cond_0

    .line 579
    const-string v3, " "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :cond_0
    const-string v3, " rssi="

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 582
    const-string v3, " "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const-string v3, " score="

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    iget v4, v4, Landroid/net/wifi/WifiInfo;->score:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 584
    const-string v3, " tx=%.1f,"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const-string v3, "%.1f,"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string v3, "%.1f "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiInfo;->txBadRate:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    const-string v3, "rx=%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v2

    .line 590
    :goto_0
    sget v9, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 591
    sget v8, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 592
    const/4 v7, 0x0

    .line 593
    const/4 v6, 0x0

    .line 594
    const/4 v2, 0x0

    .line 595
    const/4 v5, 0x0

    .line 596
    const/4 v4, 0x0

    .line 597
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/b/e/a;->aKF:Landroid/util/LruCache;

    invoke-virtual {v12}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v12

    .line 599
    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v12, v7

    move v7, v9

    move-object v9, v11

    move v11, v6

    move v6, v8

    move-object v8, v10

    move v10, v2

    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 600
    iget-wide v0, v2, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-eqz v17, :cond_1

    .line 603
    iget v0, v2, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v17, v0

    if-eqz v17, :cond_2

    add-int/lit8 v10, v10, 0x1

    .line 605
    :cond_2
    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    const/16 v18, 0x1324

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    const/16 v18, 0x170c

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_9

    .line 609
    add-int/lit8 v12, v12, 0x1

    .line 618
    :cond_3
    :goto_2
    iget-wide v0, v2, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v18, v0

    sub-long v18, v14, v18

    const-wide/16 v20, 0x4e20

    cmp-long v17, v18, v20

    if-gtz v17, :cond_1

    .line 620
    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    const/16 v18, 0x1324

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_a

    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    const/16 v18, 0x170c

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_a

    .line 622
    iget v0, v2, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v7, :cond_4

    .line 623
    iget v7, v2, Landroid/net/wifi/ScanResult;->level:I

    .line 625
    :cond_4
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v4, v0, :cond_16

    .line 626
    if-nez v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    :cond_5
    const-string v17, " \n{"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    if-eqz v3, :cond_6

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    const-string v17, "*"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_6
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v2, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 631
    iget v0, v2, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 632
    const-string v17, ",st="

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v2, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 634
    :cond_7
    iget v0, v2, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 635
    const-string v17, ",ipf="

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v2, v2, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 637
    :cond_8
    const-string v2, "}"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    add-int/lit8 v2, v4, 0x1

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    :goto_3
    move-object v9, v8

    move-object v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v2

    .line 661
    goto/16 :goto_1

    .line 610
    :cond_9
    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    const/16 v18, 0x960

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    const/16 v18, 0x9c4

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_3

    .line 614
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 640
    :cond_a
    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    const/16 v18, 0x960

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_16

    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    const/16 v18, 0x9c4

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_16

    .line 642
    iget v0, v2, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v6, :cond_b

    .line 643
    iget v6, v2, Landroid/net/wifi/ScanResult;->level:I

    .line 645
    :cond_b
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v5, v0, :cond_16

    .line 646
    if-nez v9, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 647
    :cond_c
    const-string v17, " \n{"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    if-eqz v3, :cond_d

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const-string v17, "*"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    :cond_d
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 650
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v2, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 651
    iget v0, v2, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v17, v0

    if-eqz v17, :cond_e

    .line 652
    const-string v17, ",st="

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v2, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 654
    :cond_e
    iget v0, v2, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 655
    const-string v17, ",ipf="

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v2, v2, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 657
    :cond_f
    const-string v2, "}"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    add-int/lit8 v2, v5, 0x1

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move/from16 v22, v4

    move v4, v2

    move/from16 v2, v22

    goto/16 :goto_3

    .line 662
    :cond_10
    const-string v2, " ["

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    if-lez v11, :cond_11

    .line 664
    const-string v2, "("

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    const/4 v2, 0x4

    if-gt v5, v2, :cond_14

    .line 666
    if-eqz v9, :cond_11

    .line 667
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    :cond_11
    :goto_4
    const-string v2, ";"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    if-lez v12, :cond_12

    .line 678
    const-string v2, "("

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    const/4 v2, 0x4

    if-gt v4, v2, :cond_15

    .line 680
    if-eqz v8, :cond_12

    .line 681
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    :cond_12
    :goto_5
    if-lez v10, :cond_13

    .line 691
    const-string v2, "!"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 692
    :cond_13
    const-string v2, "]"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 670
    :cond_14
    const-string v2, "max="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 671
    if-eqz v9, :cond_11

    .line 672
    const-string v2, ","

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 684
    :cond_15
    const-string v2, "max="

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 685
    if-eqz v8, :cond_12

    .line 686
    const-string v2, ","

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_16
    move v2, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    goto/16 :goto_3

    :cond_17
    move-object v3, v2

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 923
    invoke-static {p0, v0, p1, p2, v0}, Lcom/android/b/e/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 928
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/b/e/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 882
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_1

    if-nez p1, :cond_1

    .line 883
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 885
    sget v0, Lcom/android/b/e;->aHr:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 886
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 919
    :goto_0
    return-object v0

    .line 887
    :cond_0
    if-eqz p3, :cond_1

    .line 889
    sget v0, Lcom/android/b/e;->aHs:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 894
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 896
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v1, :cond_2

    .line 897
    const-string v1, "wifi"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v1

    .line 902
    :try_start_0
    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getCurrentNetwork()Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 906
    :goto_1
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 907
    if-eqz v0, :cond_2

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 908
    sget v0, Lcom/android/b/e;->aHv:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 903
    :catch_0
    move-exception v1

    .line 904
    const/4 v1, 0x0

    goto :goto_1

    .line 912
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez p1, :cond_4

    sget v0, Lcom/android/b/c;->aGA:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 914
    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    .line 916
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 917
    :cond_3
    const-string v0, ""

    goto :goto_0

    .line 912
    :cond_4
    sget v0, Lcom/android/b/c;->aGB:I

    goto :goto_2

    .line 919
    :cond_5
    aget-object v0, v0, v1

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 727
    invoke-virtual {p0}, Lcom/android/b/e/a;->isPasspoint()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/b/e/a;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 728
    iget v1, p0, Lcom/android/b/e/a;->networkId:I

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 732
    :cond_0
    :goto_0
    return v0

    .line 729
    :cond_1
    if-eqz p1, :cond_0

    .line 730
    invoke-virtual {p0, p1}, Lcom/android/b/e/a;->j(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    goto :goto_0
.end method

.method public static cu(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g(Landroid/net/wifi/ScanResult;)V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    .line 781
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/b/e/a;->bssid:Ljava/lang/String;

    .line 782
    invoke-static {p1}, Lcom/android/b/e/a;->j(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/b/e/a;->aKG:I

    .line 783
    iget v0, p0, Lcom/android/b/e/a;->aKG:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 784
    invoke-static {p1}, Lcom/android/b/e/a;->i(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/b/e/a;->aKH:I

    .line 785
    :cond_0
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/b/e/a;->aFZ:I

    .line 786
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    iput-wide v0, p0, Lcom/android/b/e/a;->aKJ:J

    .line 787
    return-void
.end method

.method private static i(Landroid/net/wifi/ScanResult;)I
    .locals 3

    .prologue
    .line 936
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPA-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 937
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WPA2-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 938
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 939
    const/4 v0, 0x3

    .line 946
    :goto_0
    return v0

    .line 940
    :cond_0
    if-eqz v1, :cond_1

    .line 941
    const/4 v0, 0x2

    goto :goto_0

    .line 942
    :cond_1
    if-eqz v0, :cond_2

    .line 943
    const/4 v0, 0x1

    goto :goto_0

    .line 945
    :cond_2
    const-string v0, "SettingsLib.AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received abnormal flag string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Landroid/net/wifi/ScanResult;)I
    .locals 2

    .prologue
    .line 952
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    :cond_0
    const/4 v0, 0x4

    .line 965
    :goto_0
    return v0

    .line 954
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 955
    const/4 v0, 0x5

    goto :goto_0

    .line 958
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 959
    const/4 v0, 0x1

    goto :goto_0

    .line 960
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 961
    const/4 v0, 0x2

    goto :goto_0

    .line 962
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 963
    const/4 v0, 0x3

    goto :goto_0

    .line 965
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 969
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    .line 984
    :cond_0
    :goto_0
    return v0

    .line 972
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v4

    .line 974
    goto :goto_0

    .line 977
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v3

    .line 978
    goto :goto_0

    .line 980
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 981
    const/4 v0, 0x5

    goto :goto_0

    .line 984
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 1006
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1007
    const-string p0, ""

    .line 1014
    :cond_0
    :goto_0
    return-object p0

    .line 1009
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1010
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1012
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static z(II)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 988
    if-ne p0, v0, :cond_0

    .line 989
    const-string v0, "WEP"

    .line 1002
    :goto_0
    return-object v0

    .line 990
    :cond_0
    if-ne p0, v1, :cond_4

    .line 991
    if-ne p1, v0, :cond_1

    .line 992
    const-string v0, "WPA"

    goto :goto_0

    .line 993
    :cond_1
    if-ne p1, v1, :cond_2

    .line 994
    const-string v0, "WPA2"

    goto :goto_0

    .line 995
    :cond_2
    if-ne p1, v2, :cond_3

    .line 996
    const-string v0, "WPA_WPA2"

    goto :goto_0

    .line 998
    :cond_3
    const-string v0, "PSK"

    goto :goto_0

    .line 999
    :cond_4
    if-ne p0, v2, :cond_5

    .line 1000
    const-string v0, "EAP"

    goto :goto_0

    .line 1002
    :cond_5
    const-string v0, "NONE"

    goto :goto_0
.end method


# virtual methods
.method public AA()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/android/b/e/a;->aKG:I

    return v0
.end method

.method public AB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public AC()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 422
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 423
    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    iget-object v2, p0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 425
    return-object v0
.end method

.method public AD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 432
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    goto :goto_0
.end method

.method public AE()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 441
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 443
    const/16 v0, 0x3e8

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 444
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 445
    const/4 v0, 0x0

    .line 446
    iget-object v4, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 455
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/b/e;->aHu:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/b/e;->aHq:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 459
    iget-object v2, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/b/e;->aHt:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 462
    :goto_1
    return-object v0

    .line 450
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 451
    iget-object v4, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 462
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 452
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public AF()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/16 v4, 0x80

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v8, 0x3c

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    invoke-virtual {p0}, Lcom/android/b/e/a;->isActive()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 475
    iget-object v0, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/b/e/a;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    iget-object v4, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4}, Lcom/android/b/e/a;->a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_0
    :goto_0
    sget v0, Lcom/android/b/e/c;->aKO:I

    if-lez v0, :cond_8

    .line 525
    iget-object v0, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/b/e/a;->aKL:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/b/e/a;->AG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-lez v0, :cond_4

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_3

    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 533
    iget-object v3, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-wide v4, v3, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 534
    rem-long v4, v0, v8

    .line 535
    div-long/2addr v0, v8

    rem-long/2addr v0, v8

    .line 536
    div-long v6, v0, v8

    rem-long/2addr v6, v8

    .line 537
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    cmp-long v3, v6, v10

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "h "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_3
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_4
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    if-lez v0, :cond_5

    .line 545
    const-string v0, " ipf="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 547
    :cond_5
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    if-lez v0, :cond_6

    .line 548
    const-string v0, " cf="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 550
    :cond_6
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    if-lez v0, :cond_7

    .line 551
    const-string v0, " authf="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 553
    :cond_7
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v0, :cond_8

    .line 554
    const-string v0, " noInt="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 557
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 477
    :cond_9
    invoke-virtual {p0}, Lcom/android/b/e/a;->isActive()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 479
    iget-object v3, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/b/e/a;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    iget-object v5, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_a

    :goto_1
    invoke-static {v3, v4, v0}, Lcom/android/b/e/a;->a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_1

    .line 481
    :cond_b
    iget-object v3, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 482
    iget-object v3, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/b/e;->aGJ:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 483
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 484
    :cond_c
    iget-object v1, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 485
    iget-object v0, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/b/e;->wifi_no_internet:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 486
    :cond_d
    iget-object v1, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v1, v0, :cond_e

    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-nez v0, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-lt v0, v4, :cond_13

    .line 490
    :cond_f
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-lt v0, v4, :cond_12

    .line 492
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 493
    iget-object v0, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/b/e;->aHx:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 494
    :cond_10
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 495
    iget-object v0, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/b/e;->aHy:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 497
    :cond_11
    iget-object v0, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/b/e;->aHz:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 500
    :cond_12
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 510
    :pswitch_0
    iget-object v0, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/b/e;->aHw:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 502
    :pswitch_1
    iget-object v0, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/b/e;->aHy:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 506
    :pswitch_2
    iget-object v0, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/b/e;->aHx:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 514
    :cond_13
    iget v0, p0, Lcom/android/b/e/a;->aFZ:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_14

    .line 515
    iget-object v0, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/b/e;->aHB:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 517
    :cond_14
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/b/e;->aHC:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 500
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public AH()Z
    .locals 2

    .prologue
    .line 736
    iget v0, p0, Lcom/android/b/e/a;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public AI()V
    .locals 2

    .prologue
    .line 752
    iget v0, p0, Lcom/android/b/e/a;->aKG:I

    if-eqz v0, :cond_0

    .line 753
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 759
    :goto_0
    return-void

    .line 756
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    .line 757
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/b/e/a;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 758
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public AJ()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1035
    invoke-virtual {p0}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1036
    if-nez v1, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return-object v0

    .line 1040
    :cond_1
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1041
    const-string v0, "WPA"

    goto :goto_0

    .line 1042
    :cond_2
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1047
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 1048
    const-string v0, "WEP"

    goto :goto_0
.end method

.method public Aw()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 321
    iput-object v1, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    .line 322
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/b/e/a;->networkId:I

    .line 324
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/b/e/a;->aFZ:I

    .line 325
    iput-object v1, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    .line 326
    iput-object v1, p0, Lcom/android/b/e/a;->aKL:Landroid/net/NetworkInfo;

    .line 328
    return-void
.end method

.method public Ax()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public Ay()J
    .locals 8

    .prologue
    .line 355
    const-wide/16 v0, 0x0

    .line 356
    iget-object v2, p0, Lcom/android/b/e/a;->aKF:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 357
    iget-wide v6, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    cmp-long v1, v6, v2

    if-lez v1, :cond_1

    .line 358
    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    :goto_1
    move-wide v2, v0

    .line 360
    goto :goto_0

    .line 362
    :cond_0
    return-wide v2

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method public Az()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/b/e/a;->aKL:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public a(Lcom/android/b/e/b;)V
    .locals 0

    .prologue
    .line 807
    iput-object p1, p0, Lcom/android/b/e/a;->aKM:Lcom/android/b/e/b;

    .line 808
    return-void
.end method

.method a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 846
    .line 847
    if-eqz p2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/b/e/a;->a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 848
    iget-object v2, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_2

    .line 849
    :goto_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/b/e/a;->aFZ:I

    .line 851
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/b/e/a;->bssid:Ljava/lang/String;

    .line 853
    iget v1, p0, Lcom/android/b/e/a;->aFZ:I

    const/16 v2, -0x64

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/b/e/a;->aKI:Landroid/net/wifi/ScanResult;

    if-eqz v1, :cond_0

    .line 854
    iget-object v1, p0, Lcom/android/b/e/a;->aKI:Landroid/net/wifi/ScanResult;

    iget v1, v1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/b/e/a;->aFZ:I

    .line 856
    :cond_0
    iput-object p2, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    .line 857
    iput-object p3, p0, Lcom/android/b/e/a;->aKL:Landroid/net/NetworkInfo;

    .line 858
    iget-object v1, p0, Lcom/android/b/e/a;->aKM:Lcom/android/b/e/b;

    if-eqz v1, :cond_1

    .line 859
    iget-object v1, p0, Lcom/android/b/e/a;->aKM:Lcom/android/b/e/b;

    invoke-interface {v1, p0}, Lcom/android/b/e/b;->c(Lcom/android/b/e/a;)V

    .line 869
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    .line 848
    goto :goto_0

    .line 861
    :cond_3
    iget-object v2, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_4

    .line 863
    iput-object v3, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    .line 864
    iput-object v3, p0, Lcom/android/b/e/a;->aKL:Landroid/net/NetworkInfo;

    .line 865
    iget-object v1, p0, Lcom/android/b/e/a;->aKM:Lcom/android/b/e/b;

    if-eqz v1, :cond_1

    .line 866
    iget-object v1, p0, Lcom/android/b/e/a;->aKM:Lcom/android/b/e/b;

    invoke-interface {v1, p0}, Lcom/android/b/e/b;->c(Lcom/android/b/e/a;)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public bT(Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/b/e/a;->mContext:Landroid/content/Context;

    .line 375
    iget-object v1, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    if-eqz p1, :cond_0

    sget v1, Lcom/android/b/e;->aHK:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 413
    :goto_0
    return-object v0

    .line 376
    :cond_0
    sget v1, Lcom/android/b/e;->aHF:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 379
    :cond_1
    iget v1, p0, Lcom/android/b/e/a;->aKG:I

    packed-switch v1, :pswitch_data_0

    .line 413
    if-eqz p1, :cond_a

    const-string v0, ""

    goto :goto_0

    .line 381
    :pswitch_0
    if-eqz p1, :cond_2

    sget v1, Lcom/android/b/e;->aHK:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget v1, Lcom/android/b/e;->aHF:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 384
    :pswitch_1
    iget v1, p0, Lcom/android/b/e/a;->aKH:I

    packed-switch v1, :pswitch_data_1

    .line 396
    if-eqz p1, :cond_6

    sget v1, Lcom/android/b/e;->aHL:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 386
    :pswitch_2
    if-eqz p1, :cond_3

    sget v1, Lcom/android/b/e;->aHN:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget v1, Lcom/android/b/e;->aHR:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 389
    :pswitch_3
    if-eqz p1, :cond_4

    sget v1, Lcom/android/b/e;->aHO:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget v1, Lcom/android/b/e;->aHS:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 392
    :pswitch_4
    if-eqz p1, :cond_5

    sget v1, Lcom/android/b/e;->aHP:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget v1, Lcom/android/b/e;->aHT:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 396
    :cond_6
    sget v1, Lcom/android/b/e;->aHH:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 400
    :pswitch_5
    if-eqz p1, :cond_7

    sget v1, Lcom/android/b/e;->aHM:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    sget v1, Lcom/android/b/e;->aHQ:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 404
    :pswitch_6
    if-eqz p1, :cond_8

    sget v1, Lcom/android/b/e;->aHJ:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    sget v1, Lcom/android/b/e;->aHE:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 408
    :pswitch_7
    if-eqz p1, :cond_9

    sget v1, Lcom/android/b/e;->aHI:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    sget v1, Lcom/android/b/e;->aHD:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 413
    :cond_a
    sget v1, Lcom/android/b/e;->aHG:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 384
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 54
    check-cast p1, Lcom/android/b/e/a;

    invoke-virtual {p0, p1}, Lcom/android/b/e/a;->g(Lcom/android/b/e/a;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 269
    instance-of v1, p1, Lcom/android/b/e/a;

    if-nez v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/android/b/e/a;

    invoke-virtual {p0, p1}, Lcom/android/b/e/a;->g(Lcom/android/b/e/a;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f(Landroid/net/wifi/ScanResult;)Z
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/b/e/a;->aKG:I

    invoke-static {p1}, Lcom/android/b/e/a;->j(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Lcom/android/b/e/a;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const v3, 0x7fffffff

    const/4 v0, -0x1

    .line 245
    invoke-virtual {p0}, Lcom/android/b/e/a;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/b/e/a;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/android/b/e/a;->isActive()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/b/e/a;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 249
    :cond_2
    iget v2, p0, Lcom/android/b/e/a;->aFZ:I

    if-eq v2, v3, :cond_3

    iget v2, p1, Lcom/android/b/e/a;->aFZ:I

    if-eq v2, v3, :cond_0

    .line 250
    :cond_3
    iget v2, p0, Lcom/android/b/e/a;->aFZ:I

    if-ne v2, v3, :cond_4

    iget v2, p1, Lcom/android/b/e/a;->aFZ:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 253
    :cond_4
    iget v2, p0, Lcom/android/b/e/a;->networkId:I

    if-eq v2, v0, :cond_5

    iget v2, p1, Lcom/android/b/e/a;->networkId:I

    if-eq v2, v0, :cond_0

    .line 255
    :cond_5
    iget v2, p0, Lcom/android/b/e/a;->networkId:I

    if-ne v2, v0, :cond_6

    iget v2, p1, Lcom/android/b/e/a;->networkId:I

    if-eq v2, v0, :cond_6

    move v0, v1

    .line 256
    goto :goto_0

    .line 259
    :cond_6
    iget v0, p1, Lcom/android/b/e/a;->aFZ:I

    iget v1, p0, Lcom/android/b/e/a;->aFZ:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 260
    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/b/e/a;->aKL:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/b/e/a;->aKL:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLevel()I
    .locals 2

    .prologue
    .line 335
    iget v0, p0, Lcom/android/b/e/a;->aFZ:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 336
    const/4 v0, -0x1

    .line 340
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/b/e/a;->aFZ:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/MiuiWifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public getRssi()I
    .locals 4

    .prologue
    .line 344
    const/high16 v0, -0x80000000

    .line 345
    iget-object v1, p0, Lcom/android/b/e/a;->aKF:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 346
    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    if-le v3, v1, :cond_1

    .line 347
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    :goto_1
    move v1, v0

    .line 349
    goto :goto_0

    .line 351
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/b/e/a;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public h(Landroid/net/wifi/ScanResult;)Z
    .locals 4

    .prologue
    .line 813
    invoke-virtual {p0, p1}, Lcom/android/b/e/a;->f(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 815
    iget-object v0, p0, Lcom/android/b/e/a;->aKF:Landroid/util/LruCache;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/b/e/a;->bssid:Ljava/lang/String;

    .line 819
    iget-object v0, p0, Lcom/android/b/e/a;->aKF:Landroid/util/LruCache;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    invoke-virtual {p0}, Lcom/android/b/e/a;->getLevel()I

    move-result v0

    .line 822
    invoke-virtual {p0}, Lcom/android/b/e/a;->getRssi()I

    move-result v1

    .line 823
    invoke-virtual {p0}, Lcom/android/b/e/a;->Ay()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/b/e/a;->aKJ:J

    .line 824
    invoke-virtual {p0}, Lcom/android/b/e/a;->getRssi()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/b/e/a;->aFZ:I

    .line 825
    invoke-virtual {p0}, Lcom/android/b/e/a;->getLevel()I

    move-result v1

    .line 827
    if-lez v1, :cond_0

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/b/e/a;->aKM:Lcom/android/b/e/b;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/android/b/e/a;->aKM:Lcom/android/b/e/b;

    invoke-interface {v0, p0}, Lcom/android/b/e/b;->d(Lcom/android/b/e/a;)V

    .line 831
    :cond_0
    iget v0, p0, Lcom/android/b/e/a;->aKG:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 832
    invoke-static {p1}, Lcom/android/b/e/a;->i(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/b/e/a;->aKH:I

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/android/b/e/a;->aKM:Lcom/android/b/e/b;

    if-eqz v0, :cond_2

    .line 836
    iget-object v0, p0, Lcom/android/b/e/a;->aKM:Lcom/android/b/e/b;

    invoke-interface {v0, p0}, Lcom/android/b/e/b;->c(Lcom/android/b/e/a;)V

    .line 839
    :cond_2
    iput-object p1, p0, Lcom/android/b/e/a;->aKI:Landroid/net/wifi/ScanResult;

    .line 840
    const/4 v0, 0x1

    .line 842
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 276
    iget-object v1, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 277
    :cond_0
    iget v1, p0, Lcom/android/b/e/a;->aFZ:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 278
    iget v1, p0, Lcom/android/b/e/a;->networkId:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    .line 279
    iget-object v1, p0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    .line 280
    return v0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/b/e/a;->aKL:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/b/e/a;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/b/e/a;->aKL:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectable()Z
    .locals 2

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/android/b/e/a;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/b/e/a;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1064
    .line 1065
    iget-object v1, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 1066
    iget-object v1, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    iget v2, p0, Lcom/android/b/e/a;->networkId:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1068
    :cond_0
    return v0
.end method

.method public isConnectedOrConnecting()Z
    .locals 2

    .prologue
    .line 1056
    invoke-virtual {p0}, Lcom/android/b/e/a;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 1057
    if-eqz v0, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$DetailedState;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$DetailedState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEphemeral()Z
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/b/e/a;->aKL:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/b/e/a;->aKL:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPasspoint()Z
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 313
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/b/e/a;->aKG:I

    invoke-static {p1}, Lcom/android/b/e/a;->m(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    .prologue
    .line 765
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/b/e/a;->bssid:Ljava/lang/String;

    .line 766
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    .line 771
    :goto_0
    invoke-static {p1}, Lcom/android/b/e/a;->m(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/b/e/a;->aKG:I

    .line 772
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/b/e/a;->networkId:I

    .line 773
    iput-object p1, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    .line 774
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    iput v0, p0, Lcom/android/b/e/a;->wapiPskType:I

    .line 775
    const-string v0, "SettingsLib.AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadConfig() ssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  WAPI PSK key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/b/e/a;->wapiPskType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    return-void

    .line 769
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/b/e/a;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public k(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "key_ssid"

    invoke-virtual {p0}, Lcom/android/b/e/a;->AB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    :cond_0
    const-string v0, "key_security"

    iget v1, p0, Lcom/android/b/e/a;->aKG:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 792
    const-string v0, "key_psktype"

    iget v1, p0, Lcom/android/b/e/a;->aKH:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 793
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 794
    :cond_1
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/b/e/a;->aKK:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 795
    const-string v0, "key_scanresultcache"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/b/e/a;->aKF:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 797
    iget-object v0, p0, Lcom/android/b/e/a;->aKL:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_2

    .line 798
    const-string v0, "key_networkinfo"

    iget-object v1, p0, Lcom/android/b/e/a;->aKL:Landroid/net/NetworkInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 801
    :cond_2
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/b/e/a;->aKI:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 802
    const-string v0, "key_show_password"

    iget-boolean v1, p0, Lcom/android/b/e/a;->aKN:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 804
    return-void
.end method

.method l(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .prologue
    .line 873
    iput-object p1, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    .line 874
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/b/e/a;->networkId:I

    .line 875
    iget-object v0, p0, Lcom/android/b/e/a;->aKM:Lcom/android/b/e/b;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/android/b/e/a;->aKM:Lcom/android/b/e/b;

    invoke-interface {v0, p0}, Lcom/android/b/e/b;->c(Lcom/android/b/e/a;)V

    .line 878
    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/b/e/a;->mTag:Ljava/lang/Object;

    .line 745
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2c

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessPoint("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 287
    invoke-virtual {p0}, Lcom/android/b/e/a;->AH()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "saved"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/android/b/e/a;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/android/b/e/a;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ephemeral"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_2
    invoke-virtual {p0}, Lcom/android/b/e/a;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 297
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connectable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_3
    iget v1, p0, Lcom/android/b/e/a;->aKG:I

    if-eqz v1, :cond_4

    .line 300
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/b/e/a;->aKG:I

    iget v3, p0, Lcom/android/b/e/a;->aKH:I

    invoke-static {v2, v3}, Lcom/android/b/e/a;->z(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_4
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wX()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/b/e/a;->aDo:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method
