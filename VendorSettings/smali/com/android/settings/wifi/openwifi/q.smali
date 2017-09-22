.class public Lcom/android/settings/wifi/openwifi/q;
.super Lcom/android/settings/wifi/openwifi/p;
.source "WiWidePortalController.java"


# static fields
.field private static aFY:Ljava/util/HashMap;


# instance fields
.field private aFX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/openwifi/q;->aFY:Ljava/util/HashMap;

    .line 20
    sget-object v0, Lcom/android/settings/wifi/openwifi/q;->aFY:Ljava/util/HashMap;

    const-string v1, "airport-free-wifi"

    const-string v2, "106.120.238.122"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/android/settings/wifi/openwifi/q;->aFY:Ljava/util/HashMap;

    const-string v1, "free-airport-wifi"

    const-string v2, "172.21.163.22"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/android/settings/wifi/openwifi/q;->aFY:Ljava/util/HashMap;

    const-string v1, "airport-freewifi-hq"

    const-string v2, "1.1.1.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/android/settings/wifi/openwifi/q;->aFY:Ljava/util/HashMap;

    const-string v1, "airport-vipwifi-hq"

    const-string v2, "1.1.1.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/openwifi/p;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static cp(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/settings/wifi/openwifi/q;->aFY:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static cq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, ""

    .line 39
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/wifi/openwifi/q;->aFY:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public yY()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    const/4 v3, 0x0

    .line 56
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/q;->mContext:Landroid/content/Context;

    const-string v4, "http://clients3.google.com/generate_204"

    invoke-static {v0, v4}, Lcom/android/settings/wifi/j;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 59
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 61
    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 62
    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 63
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 68
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 72
    const-string v3, "WiWideController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fetch portal time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v4, v6, v4

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 76
    const/16 v4, 0xcc

    if-ne v3, v4, :cond_1

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move v0, v1

    .line 98
    :goto_0
    return v0

    .line 80
    :cond_1
    const/16 v4, 0x12e

    if-eq v3, v4, :cond_2

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 82
    :cond_2
    :try_start_2
    const-string v3, "Location"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/openwifi/q;->aFX:Ljava/lang/String;

    .line 83
    const-string v3, "WiWideController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetch portal time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/openwifi/q;->aFX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/openwifi/q;->aFO:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/openwifi/q;->cp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 86
    iget-object v3, p0, Lcom/android/settings/wifi/openwifi/q;->aFO:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/openwifi/q;->cq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    iget-object v4, p0, Lcom/android/settings/wifi/openwifi/q;->aFX:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/wifi/openwifi/q;->aFX:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-eqz v3, :cond_5

    .line 94
    if-eqz v0, :cond_4

    .line 95
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move v0, v1

    goto :goto_0

    .line 94
    :cond_5
    if-eqz v0, :cond_6

    .line 95
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    :goto_1
    move v0, v2

    .line 98
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 94
    :goto_2
    if-eqz v0, :cond_6

    .line 95
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 94
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v3, :cond_7

    .line 95
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v0

    .line 94
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_3

    .line 92
    :catch_1
    move-exception v1

    goto :goto_2
.end method
