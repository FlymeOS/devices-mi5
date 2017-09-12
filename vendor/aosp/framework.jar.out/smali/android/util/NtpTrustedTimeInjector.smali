.class Landroid/util/NtpTrustedTimeInjector;
.super Ljava/lang/Object;
.source "NtpTrustedTimeInjector.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTimeInjector"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static requestTime(Landroid/net/SntpClient;Ljava/lang/String;I)Z
    .locals 10
    .param p0, "client"    # Landroid/net/SntpClient;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 12
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 13
    .local v1, "allByName":[Ljava/net/InetAddress;
    move-object v2, v1

    .local v2, "arr$":[Ljava/net/InetAddress;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v2, v5

    .line 14
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 15
    .local v4, "hostIpAddr":Ljava/lang/String;
    const-string v7, "NtpTrustedTimeInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "host "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", which address "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0, v4, p2}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 17
    const/4 v7, 0x1

    .line 24
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "allByName":[Ljava/net/InetAddress;
    .end local v2    # "arr$":[Ljava/net/InetAddress;
    .end local v4    # "hostIpAddr":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :goto_1
    return v7

    .line 13
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "allByName":[Ljava/net/InetAddress;
    .restart local v2    # "arr$":[Ljava/net/InetAddress;
    .restart local v4    # "hostIpAddr":Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 20
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "allByName":[Ljava/net/InetAddress;
    .end local v2    # "arr$":[Ljava/net/InetAddress;
    .end local v4    # "hostIpAddr":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v3

    .line 21
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "NtpTrustedTimeInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "requestTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method
