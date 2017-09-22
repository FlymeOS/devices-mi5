.class Lcom/xiaomi/d/a;
.super Ljava/lang/Object;
.source "BindTracker.java"

# interfaces
.implements Lcom/xiaomi/push/service/L;


# instance fields
.field private aYj:Lcom/xiaomi/smack/a;

.field private bcS:Lcom/xiaomi/push/service/XMPushService;

.field private bdV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

.field private bka:Lcom/xiaomi/push/service/J;

.field private bkb:Z

.field private reason:I


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/J;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/d/a;->bkb:Z

    .line 27
    iput-object p1, p0, Lcom/xiaomi/d/a;->bcS:Lcom/xiaomi/push/service/XMPushService;

    .line 28
    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bec:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    iput-object v0, p0, Lcom/xiaomi/d/a;->bdV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 29
    iput-object p2, p0, Lcom/xiaomi/d/a;->bka:Lcom/xiaomi/push/service/J;

    .line 30
    return-void
.end method

.method private Ki()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xiaomi/d/a;->bka:Lcom/xiaomi/push/service/J;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/J;->b(Lcom/xiaomi/push/service/L;)V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/d/a;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/xiaomi/d/a;->done()V

    return-void
.end method

.method private done()V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/xiaomi/d/a;->Ki()V

    .line 66
    iget-boolean v0, p0, Lcom/xiaomi/d/a;->bkb:Z

    if-nez v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget v0, p0, Lcom/xiaomi/d/a;->reason:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 75
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/d/g;->Kt()Lcom/xiaomi/push/thrift/StatsEvent;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/xiaomi/d/c;->bkd:[I

    iget-object v2, p0, Lcom/xiaomi/d/a;->bdV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 103
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/xiaomi/d/a;->aYj:Lcom/xiaomi/smack/a;

    invoke-virtual {v1}, Lcom/xiaomi/smack/a;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->el(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 105
    iget-object v1, p0, Lcom/xiaomi/d/a;->bka:Lcom/xiaomi/push/service/J;

    iget-object v1, v1, Lcom/xiaomi/push/service/J;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->en(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;

    .line 106
    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaomi/push/thrift/StatsEvent;->value:I

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/d/a;->bka:Lcom/xiaomi/push/service/J;

    iget-object v1, v1, Lcom/xiaomi/push/service/J;->bdT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->c(B)Lcom/xiaomi/push/thrift/StatsEvent;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :goto_2
    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/d/g;->c(Lcom/xiaomi/push/thrift/StatsEvent;)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget v1, p0, Lcom/xiaomi/d/a;->reason:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    .line 81
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfV:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    goto :goto_1

    .line 82
    :cond_2
    iget v1, p0, Lcom/xiaomi/d/a;->reason:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_3

    .line 83
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->bgc:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    goto :goto_1

    .line 86
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/xiaomi/d/g;->Ko()Lcom/xiaomi/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/d/f;->Kj()Ljava/lang/Exception;

    move-result-object v1

    .line 87
    invoke-static {v1}, Lcom/xiaomi/d/d;->i(Ljava/lang/Exception;)Lcom/xiaomi/d/e;

    move-result-object v1

    .line 88
    iget-object v2, v1, Lcom/xiaomi/d/e;->bke:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v2}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v2

    iput v2, v0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    .line 89
    iget-object v1, v1, Lcom/xiaomi/d/e;->annotation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/StatsEvent;->em(Ljava/lang/String;)Lcom/xiaomi/push/thrift/StatsEvent;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const/4 v0, 0x0

    .line 94
    goto :goto_1

    .line 99
    :pswitch_2
    sget-object v1, Lcom/xiaomi/push/thrift/ChannelStatsType;->bfR:Lcom/xiaomi/push/thrift/ChannelStatsType;

    invoke-virtual {v1}, Lcom/xiaomi/push/thrift/ChannelStatsType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/push/thrift/StatsEvent;->type:I

    goto :goto_1

    .line 111
    :catch_1
    move-exception v1

    goto :goto_2

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method Kh()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xiaomi/d/a;->bka:Lcom/xiaomi/push/service/J;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/J;->a(Lcom/xiaomi/push/service/L;)V

    .line 34
    iget-object v0, p0, Lcom/xiaomi/d/a;->bcS:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->IY()Lcom/xiaomi/smack/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/d/a;->aYj:Lcom/xiaomi/smack/a;

    .line 35
    return-void
.end method

.method public a(Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;I)V
    .locals 3

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/xiaomi/d/a;->bkb:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;->bec:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    if-ne p1, v0, :cond_0

    .line 41
    iput-object p2, p0, Lcom/xiaomi/d/a;->bdV:Lcom/xiaomi/push/service/PushClientsManager$ClientStatus;

    .line 42
    iput p3, p0, Lcom/xiaomi/d/a;->reason:I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/d/a;->bkb:Z

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/d/a;->bcS:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/d/b;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/d/b;-><init>(Lcom/xiaomi/d/a;I)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/at;)V

    .line 58
    return-void
.end method
