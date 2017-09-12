.class public Lmiui/push/ServiceClient;
.super Ljava/lang/Object;
.source "ServiceClient.java"


# static fields
.field private static sInstance:Lmiui/push/ServiceClient;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private createServiceIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 285
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 286
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v2, "com.xiaomi.xmsf"

    const-string v3, "com.xiaomi.xmsf.push.service.XMPushService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    iget-object v2, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "pkgName":Ljava/lang/String;
    sget-object v2, Lmiui/push/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lmiui/push/ServiceClient;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Lmiui/push/ServiceClient;->sInstance:Lmiui/push/ServiceClient;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lmiui/push/ServiceClient;

    invoke-direct {v0, p0}, Lmiui/push/ServiceClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/push/ServiceClient;->sInstance:Lmiui/push/ServiceClient;

    .line 30
    :cond_0
    sget-object v0, Lmiui/push/ServiceClient;->sInstance:Lmiui/push/ServiceClient;

    return-object v0
.end method

.method private hasNetwork()Z
    .locals 5

    .prologue
    .line 258
    const/4 v2, -0x1

    .line 259
    .local v2, "type":I
    iget-object v3, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 261
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 263
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 267
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    if-ltz v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private serviceInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 271
    iget-object v4, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 273
    .local v1, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.xiaomi.xmsf"

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 275
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_0

    .line 281
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 281
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public batchSendMessage([Lmiui/push/Message;)Z
    .locals 5
    .param p1, "messages"    # [Lmiui/push/Message;

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v4

    if-nez v4, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v3

    .line 127
    :cond_1
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v1

    .line 128
    .local v1, "intent":Landroid/content/Intent;
    array-length v4, p1

    new-array v2, v4, [Landroid/os/Bundle;

    .line 129
    .local v2, "messageBundles":[Landroid/os/Bundle;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 130
    aget-object v4, p1, v0

    invoke-virtual {v4}, Lmiui/push/Message;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    aput-object v4, v2, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_2
    array-length v4, v2

    if-lez v4, :cond_0

    .line 134
    sget-object v3, Lmiui/push/PushConstants;->ACTION_BATCH_SEND_MESSAGE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v3, "ext_packets"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    iget-object v3, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 137
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public closeChannel()Z
    .locals 2

    .prologue
    .line 186
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    const/4 v1, 0x0

    .line 192
    :goto_0
    return v1

    .line 189
    :cond_0
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 190
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lmiui/push/PushConstants;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 192
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public closeChannel(Ljava/lang/String;)Z
    .locals 2
    .param p1, "chid"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    const/4 v1, 0x0

    .line 208
    :goto_0
    return v1

    .line 204
    :cond_0
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lmiui/push/PushConstants;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    sget-object v1, Lmiui/push/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 208
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public closeChannel(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "chid"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    const/4 v1, 0x0

    .line 226
    :goto_0
    return v1

    .line 221
    :cond_0
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lmiui/push/PushConstants;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    sget-object v1, Lmiui/push/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    sget-object v1, Lmiui/push/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 226
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public forceReconnection()Z
    .locals 2

    .prologue
    .line 235
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    :cond_0
    const/4 v1, 0x0

    .line 241
    :goto_0
    return v1

    .line 238
    :cond_1
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lmiui/push/PushConstants;->ACTION_FORCE_RECONNECT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 241
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public openChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)I
    .locals 7
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "chid"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "authMethod"    # Ljava/lang/String;
    .param p5, "security"    # Ljava/lang/String;
    .param p6, "kick"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 52
    .local p7, "clientExtras":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p8, "cloudExtras":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 53
    const/4 v5, 0x1

    .line 94
    :goto_0
    return v5

    .line 56
    :cond_0
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v3

    .line 57
    .local v3, "intent":Landroid/content/Intent;
    sget-object v5, Lmiui/push/PushConstants;->ACTION_OPEN_CHANNEL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    sget-object v5, Lmiui/push/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    sget-object v5, Lmiui/push/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    sget-object v5, Lmiui/push/PushConstants;->EXTRA_TOKEN:Ljava/lang/String;

    invoke-virtual {v3, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    sget-object v5, Lmiui/push/PushConstants;->EXTRA_SECURITY:Ljava/lang/String;

    invoke-virtual {v3, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    sget-object v5, Lmiui/push/PushConstants;->EXTRA_AUTH_METHOD:Ljava/lang/String;

    invoke-virtual {v3, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    sget-object v5, Lmiui/push/PushConstants;->EXTRA_KICK:Ljava/lang/String;

    invoke-virtual {v3, v5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    if-eqz p7, :cond_3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 67
    .local v1, "i":I
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/NameValuePair;

    .line 68
    .local v4, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 70
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 73
    goto :goto_1

    .line 74
    .end local v4    # "pair":Lorg/apache/http/NameValuePair;
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 75
    sget-object v5, Lmiui/push/PushConstants;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    if-eqz p8, :cond_6

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 82
    .restart local v1    # "i":I
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/NameValuePair;

    .line 83
    .restart local v4    # "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 85
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 88
    goto :goto_2

    .line 89
    .end local v4    # "pair":Lorg/apache/http/NameValuePair;
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 90
    sget-object v5, Lmiui/push/PushConstants;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v5, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public resetConnection()V
    .locals 2

    .prologue
    .line 249
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 253
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lmiui/push/PushConstants;->ACTION_RESET_CONNECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public sendIQ(Lmiui/push/IQ;)Z
    .locals 4
    .param p1, "iq"    # Lmiui/push/IQ;

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v3

    if-nez v3, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v2

    .line 151
    :cond_1
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lmiui/push/IQ;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 153
    .local v1, "iqBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 154
    sget-object v2, Lmiui/push/PushConstants;->ACTION_SEND_IQ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v2, "ext_packet"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 156
    iget-object v2, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 157
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public sendMessage(Lmiui/push/Message;)Z
    .locals 4
    .param p1, "message"    # Lmiui/push/Message;

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v2

    .line 106
    :cond_1
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lmiui/push/Message;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 108
    .local v1, "messageBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 109
    sget-object v2, Lmiui/push/PushConstants;->ACTION_SEND_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v2, "ext_packet"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 111
    iget-object v2, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 112
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public sendPresence(Lmiui/push/Presence;)Z
    .locals 4
    .param p1, "presence"    # Lmiui/push/Presence;

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v3

    if-nez v3, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v2

    .line 171
    :cond_1
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lmiui/push/Presence;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 173
    .local v1, "presBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 174
    sget-object v2, Lmiui/push/PushConstants;->ACTION_SEND_PRESENCE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v2, "ext_packet"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 176
    iget-object v2, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 177
    const/4 v2, 0x1

    goto :goto_0
.end method
