.class final Lcom/xiaomi/d/d;
.super Ljava/lang/Object;
.source "StatsAnalyser.java"


# direct methods
.method private static f(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27
    :cond_0
    return-void
.end method

.method static g(Ljava/lang/Exception;)Lcom/xiaomi/d/e;
    .locals 4

    .prologue
    .line 31
    invoke-static {p0}, Lcom/xiaomi/d/d;->f(Ljava/lang/Exception;)V

    .line 34
    instance-of v0, p0, Lcom/xiaomi/smack/XMPPException;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 35
    check-cast v0, Lcom/xiaomi/smack/XMPPException;

    invoke-virtual {v0}, Lcom/xiaomi/smack/XMPPException;->Kc()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    check-cast p0, Lcom/xiaomi/smack/XMPPException;

    invoke-virtual {p0}, Lcom/xiaomi/smack/XMPPException;->Kc()Ljava/lang/Throwable;

    move-result-object p0

    .line 40
    :cond_0
    new-instance v1, Lcom/xiaomi/d/e;

    invoke-direct {v1}, Lcom/xiaomi/d/e;-><init>()V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {p0}, Lcom/xiaomi/smack/d;->e(Ljava/lang/Throwable;)I

    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    sget-object v3, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfv:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v3}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 51
    invoke-static {v2}, Lcom/xiaomi/push/thrift/ChannelStatsType;->fj(I)Lcom/xiaomi/push/thrift/ChannelStatsType;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    .line 53
    :cond_2
    iget-object v2, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-nez v2, :cond_3

    .line 54
    sget-object v2, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfD:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v2, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    .line 57
    :cond_3
    iget-object v2, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v3, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfD:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-ne v2, v3, :cond_4

    .line 58
    iput-object v0, v1, Lcom/xiaomi/d/e;->annotation:Ljava/lang/String;

    .line 60
    :cond_4
    return-object v1
.end method

.method static h(Ljava/lang/Exception;)Lcom/xiaomi/d/e;
    .locals 5

    .prologue
    .line 65
    invoke-static {p0}, Lcom/xiaomi/d/d;->f(Ljava/lang/Exception;)V

    .line 68
    instance-of v0, p0, Lcom/xiaomi/smack/XMPPException;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 69
    check-cast v0, Lcom/xiaomi/smack/XMPPException;

    invoke-virtual {v0}, Lcom/xiaomi/smack/XMPPException;->Kc()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    check-cast p0, Lcom/xiaomi/smack/XMPPException;

    invoke-virtual {p0}, Lcom/xiaomi/smack/XMPPException;->Kc()Ljava/lang/Throwable;

    move-result-object p0

    .line 74
    :cond_0
    new-instance v1, Lcom/xiaomi/d/e;

    invoke-direct {v1}, Lcom/xiaomi/d/e;-><init>()V

    .line 75
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/smack/d;->e(Ljava/lang/Throwable;)I

    move-result v2

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    if-eqz v2, :cond_5

    .line 84
    sget-object v3, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfF:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v3}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 85
    invoke-static {v2}, Lcom/xiaomi/push/thrift/ChannelStatsType;->fj(I)Lcom/xiaomi/push/thrift/ChannelStatsType;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    .line 87
    iget-object v2, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v3, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfQ:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-ne v2, v3, :cond_2

    .line 88
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 89
    if-eqz v2, :cond_2

    .line 90
    instance-of v2, v2, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_2

    .line 91
    sget-object v2, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfP:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v2, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    .line 99
    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v3, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfN:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-eq v2, v3, :cond_3

    iget-object v2, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v3, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfO:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-eq v2, v3, :cond_3

    iget-object v2, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v3, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfQ:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-ne v2, v3, :cond_4

    .line 102
    :cond_3
    iput-object v0, v1, Lcom/xiaomi/d/e;->annotation:Ljava/lang/String;

    .line 104
    :cond_4
    return-object v1

    .line 96
    :cond_5
    sget-object v2, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfO:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v2, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0
.end method

.method static i(Ljava/lang/Exception;)Lcom/xiaomi/d/e;
    .locals 5

    .prologue
    .line 109
    invoke-static {p0}, Lcom/xiaomi/d/d;->f(Ljava/lang/Exception;)V

    .line 112
    instance-of v0, p0, Lcom/xiaomi/smack/XMPPException;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 113
    check-cast v0, Lcom/xiaomi/smack/XMPPException;

    invoke-virtual {v0}, Lcom/xiaomi/smack/XMPPException;->Kc()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    check-cast p0, Lcom/xiaomi/smack/XMPPException;

    invoke-virtual {p0}, Lcom/xiaomi/smack/XMPPException;->Kc()Ljava/lang/Throwable;

    move-result-object p0

    .line 118
    :cond_0
    new-instance v1, Lcom/xiaomi/d/e;

    invoke-direct {v1}, Lcom/xiaomi/d/e;-><init>()V

    .line 119
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 121
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/smack/d;->e(Ljava/lang/Throwable;)I

    move-result v2

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    sparse-switch v2, :sswitch_data_0

    .line 147
    sget-object v0, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfZ:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v0, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    .line 150
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v2, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfY:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-eq v0, v2, :cond_3

    iget-object v0, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v2, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfZ:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-eq v0, v2, :cond_3

    iget-object v0, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v2, Lcom/xiaomi/push/thrift/ChannelStatsType;->bgb:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-ne v0, v2, :cond_4

    .line 153
    :cond_3
    iput-object v3, v1, Lcom/xiaomi/d/e;->annotation:Ljava/lang/String;

    .line 156
    :cond_4
    return-object v1

    .line 129
    :sswitch_0
    sget-object v0, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfV:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v0, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 132
    :sswitch_1
    sget-object v0, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfW:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v0, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 135
    :sswitch_2
    sget-object v0, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfX:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v0, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 138
    :sswitch_3
    sget-object v0, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfY:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v0, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 141
    :sswitch_4
    sget-object v2, Lcom/xiaomi/push/thrift/ChannelStatsType;->bgb:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v2, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    .line 142
    const-string v2, "Terminal binding condition encountered: item-not-found"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    sget-object v0, Lcom/xiaomi/push/thrift/ChannelStatsType;->bga:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v0, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 127
    nop

    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_0
        0x6d -> :sswitch_1
        0x6e -> :sswitch_2
        0xc7 -> :sswitch_3
        0x1f3 -> :sswitch_4
    .end sparse-switch
.end method

.method static j(Ljava/lang/Exception;)Lcom/xiaomi/d/e;
    .locals 5

    .prologue
    .line 161
    invoke-static {p0}, Lcom/xiaomi/d/d;->f(Ljava/lang/Exception;)V

    .line 164
    instance-of v0, p0, Lcom/xiaomi/smack/XMPPException;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 165
    check-cast v0, Lcom/xiaomi/smack/XMPPException;

    invoke-virtual {v0}, Lcom/xiaomi/smack/XMPPException;->Kc()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    check-cast p0, Lcom/xiaomi/smack/XMPPException;

    invoke-virtual {p0}, Lcom/xiaomi/smack/XMPPException;->Kc()Ljava/lang/Throwable;

    move-result-object p0

    .line 170
    :cond_0
    new-instance v0, Lcom/xiaomi/d/e;

    invoke-direct {v0}, Lcom/xiaomi/d/e;-><init>()V

    .line 171
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {p0}, Lcom/xiaomi/smack/d;->e(Ljava/lang/Throwable;)I

    move-result v2

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    sparse-switch v2, :sswitch_data_0

    .line 195
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->bgl:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v1, v0, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    .line 198
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v2, Lcom/xiaomi/push/thrift/ChannelStatsType;->bgk:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v2, Lcom/xiaomi/push/thrift/ChannelStatsType;->bgl:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    sget-object v2, Lcom/xiaomi/push/thrift/ChannelStatsType;->bgn:Lcom/xiaomi/push/thrift/ChannelStatsType;

    if-ne v1, v2, :cond_3

    .line 201
    :cond_2
    iput-object v3, v0, Lcom/xiaomi/d/e;->annotation:Ljava/lang/String;

    .line 204
    :cond_3
    return-object v0

    .line 177
    :sswitch_0
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->bgh:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v1, v0, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 180
    :sswitch_1
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->bgi:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v1, v0, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 183
    :sswitch_2
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->bgj:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v1, v0, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 186
    :sswitch_3
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->bgk:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v1, v0, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 189
    :sswitch_4
    sget-object v2, Lcom/xiaomi/push/thrift/ChannelStatsType;->bgn:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v2, v0, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    .line 190
    const-string v2, "Terminal binding condition encountered: item-not-found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->bgm:Lcom/xiaomi/push/thrift/ChannelStatsType;

    iput-object v1, v0, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    goto :goto_0

    .line 175
    nop

    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_0
        0x6d -> :sswitch_1
        0x6e -> :sswitch_2
        0xc7 -> :sswitch_3
        0x1f3 -> :sswitch_4
    .end sparse-switch
.end method
