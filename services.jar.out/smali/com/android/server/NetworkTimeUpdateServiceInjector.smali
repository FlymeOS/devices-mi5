.class Lcom/android/server/NetworkTimeUpdateServiceInjector;
.super Ljava/lang/Object;
.source "NetworkTimeUpdateServiceInjector.java"


# static fields
.field private static final DBG:Z = true

.field private static final NTP_SERVERS_LIST:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NetworkTimeUpdateServiceInjector"

.field private static final hasServerField:Z = true

.field private static sConnManager:Landroid/net/ConnectivityManager;

.field private static sDefaultNtpServer:Ljava/lang/String;

.field private static sNtpServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sServerField:Ljava/lang/reflect/Field;

.field private static sTime:Landroid/util/TrustedTime;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "2.android.pool.ntp.org"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "time.nist.gov"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2.centos.pool.ntp.org"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Hshh.org"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "asia.pool.ntp.org"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cn.ntp.org.cn"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->NTP_SERVERS_LIST:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getReflectServerField(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "reflectInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static handleNetworkChanged(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "event"    # I

    .prologue
    .line 116
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sConnManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 117
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sConnManager:Landroid/net/ConnectivityManager;

    .line 121
    :cond_0
    invoke-static {}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const-string v0, "NetworkTimeUpdateServiceInjector"

    const-string v1, "network ok,send msg to sync time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {p1, p2}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sendHandlerMessage(Landroid/os/Handler;I)V

    .line 125
    :cond_1
    return-void
.end method

.method static initNtpServers(Landroid/content/Context;Landroid/util/TrustedTime;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trustedTime"    # Landroid/util/TrustedTime;

    .prologue
    .line 63
    sput-object p1, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    .line 64
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    sput-object v5, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sConnManager:Landroid/net/ConnectivityManager;

    .line 66
    sget-object v5, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    instance-of v5, v5, Landroid/util/NtpTrustedTime;

    if-eqz v5, :cond_0

    .line 68
    :try_start_0
    sget-object v5, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    const-string v6, "mServer"

    invoke-static {v5, v6}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->initReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v5, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-static {v5}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->getReflectServerField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sDefaultNtpServer:Ljava/lang/String;

    .line 70
    sget-object v5, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sDefaultNtpServer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->NTP_SERVERS_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 72
    .local v4, "ntpServer":Ljava/lang/String;
    sget-object v5, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "ntpServer":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method static initReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p0, "reflectInstance"    # Ljava/lang/Object;
    .param p1, "strField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    .line 37
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 38
    return-void
.end method

.method static isDataNetworkReady()Z
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static isNetChangedEvent(II)Z
    .locals 1
    .param p0, "event"    # I
    .param p1, "netEvent"    # I

    .prologue
    .line 81
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isNetworkConnected()Z
    .locals 3

    .prologue
    .line 97
    sget-object v1, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sConnManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 98
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const/4 v1, 0x1

    .line 103
    :goto_1
    return v1

    .line 97
    .end local v0    # "netInfo":Landroid/net/NetworkInfo;
    :cond_0
    sget-object v1, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0

    .line 102
    .restart local v0    # "netInfo":Landroid/net/NetworkInfo;
    :cond_1
    const-string v1, "NetworkTimeUpdateServiceInjector"

    const-string v2, "network isn\'t ok"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static refreshNtpServer(I)Z
    .locals 5
    .param p0, "tryCounter"    # I

    .prologue
    .line 50
    :try_start_0
    sget-object v2, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v1, p0, v2

    .line 51
    .local v1, "index":I
    sget-object v3, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    sget-object v2, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->setReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    const-string v2, "NetworkTimeUpdateServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryCounter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",ntpServers = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-static {v4}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->getReflectServerField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sget-object v2, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 54
    sget-object v2, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    sget-object v3, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sDefaultNtpServer:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->setReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v2, 0x1

    .line 58
    .end local v1    # "index":I
    :goto_0
    return v2

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static sendHandlerMessage(Landroid/os/Handler;I)V
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "event"    # I

    .prologue
    .line 108
    if-nez p0, :cond_0

    .line 109
    const-string v0, "NetworkTimeUpdateServiceInjector"

    const-string v1, "handler null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method static setReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "reflectInstance"    # Ljava/lang/Object;
    .param p1, "strField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method static switchNtpServer(I)V
    .locals 1
    .param p0, "tryCounter"    # I

    .prologue
    .line 85
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    instance-of v0, v0, Landroid/util/NtpTrustedTime;

    if-eqz v0, :cond_1

    .line 86
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->refreshNtpServer(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 90
    :cond_1
    return-void
.end method
