.class public Lcom/xiaomi/smack/d;
.super Ljava/lang/Object;
.source "ConnectionHelper.java"


# direct methods
.method public static e(Ljava/lang/Throwable;)I
    .locals 5

    .prologue
    const/16 v2, 0x69

    const/4 v4, -0x1

    .line 9
    .line 10
    instance-of v0, p0, Lcom/xiaomi/smack/XMPPException;

    if-eqz v0, :cond_d

    move-object v0, p0

    .line 11
    check-cast v0, Lcom/xiaomi/smack/XMPPException;

    invoke-virtual {v0}, Lcom/xiaomi/smack/XMPPException;->Kc()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_d

    move-object v0, p0

    .line 12
    check-cast v0, Lcom/xiaomi/smack/XMPPException;

    invoke-virtual {v0}, Lcom/xiaomi/smack/XMPPException;->Kc()Ljava/lang/Throwable;

    move-result-object v0

    .line 16
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 21
    :cond_0
    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_1

    move v0, v2

    .line 49
    :goto_1
    return v0

    .line 23
    :cond_1
    instance-of v3, v0, Ljava/net/SocketException;

    if-eqz v3, :cond_a

    .line 24
    const-string v0, "Network is unreachable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 25
    const/16 v0, 0x66

    goto :goto_1

    .line 26
    :cond_2
    const-string v0, "Connection refused"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 27
    const/16 v0, 0x67

    goto :goto_1

    .line 28
    :cond_3
    const-string v0, "Connection timed out"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_4

    move v0, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_4
    const-string v0, "EACCES (Permission denied)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 31
    const/16 v0, 0x65

    goto :goto_1

    .line 32
    :cond_5
    const-string v0, "Connection reset by peer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_6

    .line 33
    const/16 v0, 0x6d

    goto :goto_1

    .line 34
    :cond_6
    const-string v0, "Broken pipe"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_7

    .line 35
    const/16 v0, 0x6e

    goto :goto_1

    .line 36
    :cond_7
    const-string v0, "No route to host"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_8

    .line 37
    const/16 v0, 0x68

    goto :goto_1

    .line 38
    :cond_8
    const-string v0, "EINVAL (Invalid argument)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 39
    const/16 v0, 0x6a

    goto :goto_1

    .line 41
    :cond_9
    const/16 v0, 0xc7

    goto :goto_1

    .line 43
    :cond_a
    instance-of v0, v0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_b

    .line 44
    const/16 v0, 0x6b

    goto :goto_1

    .line 45
    :cond_b
    instance-of v0, p0, Lcom/xiaomi/smack/XMPPException;

    if-eqz v0, :cond_c

    .line 46
    const/16 v0, 0x18f

    goto :goto_1

    .line 49
    :cond_c
    const/4 v0, 0x0

    goto :goto_1

    :cond_d
    move-object v0, p0

    goto/16 :goto_0
.end method
