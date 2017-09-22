.class Lcom/xiaomi/push/service/T;
.super Ljava/lang/Object;
.source "ReconnectionManager.java"


# static fields
.field private static bex:I


# instance fields
.field private bdY:Lcom/xiaomi/push/service/XMPushService;

.field private beu:I

.field private bev:J

.field private bew:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const v0, 0x493e0

    sput v0, Lcom/xiaomi/push/service/T;->bex:I

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/T;->bew:I

    .line 30
    iput-object p1, p0, Lcom/xiaomi/push/service/T;->bdY:Lcom/xiaomi/push/service/XMPushService;

    .line 31
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/xiaomi/push/service/T;->beu:I

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/T;->bev:J

    .line 33
    return-void
.end method

.method private II()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 85
    iget v1, p0, Lcom/xiaomi/push/service/T;->bew:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    .line 86
    const v0, 0x493e0

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    iget v1, p0, Lcom/xiaomi/push/service/T;->bew:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    .line 89
    const v0, 0xea60

    goto :goto_0

    .line 91
    :cond_2
    iget v1, p0, Lcom/xiaomi/push/service/T;->bew:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 92
    const/16 v0, 0x2710

    goto :goto_0

    .line 95
    :cond_3
    iget-wide v2, p0, Lcom/xiaomi/push/service/T;->bev:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 99
    iget-wide v4, p0, Lcom/xiaomi/push/service/T;->bev:J

    sub-long/2addr v2, v4

    .line 100
    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-gez v1, :cond_5

    .line 103
    iget v0, p0, Lcom/xiaomi/push/service/T;->beu:I

    sget v1, Lcom/xiaomi/push/service/T;->bex:I

    if-lt v0, v1, :cond_4

    .line 104
    iget v0, p0, Lcom/xiaomi/push/service/T;->beu:I

    goto :goto_0

    .line 106
    :cond_4
    iget v0, p0, Lcom/xiaomi/push/service/T;->beu:I

    .line 107
    iget v1, p0, Lcom/xiaomi/push/service/T;->beu:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/xiaomi/push/service/T;->beu:I

    goto :goto_0

    .line 111
    :cond_5
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/xiaomi/push/service/T;->beu:I

    goto :goto_0
.end method


# virtual methods
.method public IH()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/service/T;->bev:J

    .line 38
    iget-object v0, p0, Lcom/xiaomi/push/service/T;->bdY:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->fe(I)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/T;->bew:I

    .line 40
    return-void
.end method

.method public ci(Z)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 43
    iget-object v0, p0, Lcom/xiaomi/push/service/T;->bdY:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->IR()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 44
    if-eqz p1, :cond_2

    .line 45
    iget-object v0, p0, Lcom/xiaomi/push/service/T;->bdY:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/XMPushService;->fd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget v0, p0, Lcom/xiaomi/push/service/T;->bew:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/push/service/T;->bew:I

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/T;->bdY:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/XMPushService;->fe(I)V

    .line 49
    iget-object v0, p0, Lcom/xiaomi/push/service/T;->bdY:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/ap;

    iget-object v2, p0, Lcom/xiaomi/push/service/T;->bdY:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/xiaomi/push/service/ap;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/at;)V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/service/T;->bdY:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/XMPushService;->fd(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/xiaomi/push/service/T;->II()I

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/xiaomi/push/service/T;->bdY:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/service/XMPushService;->fd(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 57
    iget v1, p0, Lcom/xiaomi/push/service/T;->bew:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/push/service/T;->bew:I

    .line 59
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "schedule reconnect in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/b/c;->w(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/xiaomi/push/service/T;->bdY:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/push/service/ap;

    iget-object v3, p0, Lcom/xiaomi/push/service/T;->bdY:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/xiaomi/push/service/ap;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/at;J)V

    .line 63
    iget v0, p0, Lcom/xiaomi/push/service/T;->bew:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/xiaomi/d/g;->Kn()Lcom/xiaomi/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/d/g;->Kp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    invoke-static {}, Lcom/xiaomi/push/service/D;->Iw()V

    .line 66
    :cond_4
    iget v0, p0, Lcom/xiaomi/push/service/T;->bew:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 67
    invoke-static {}, Lcom/xiaomi/push/service/D;->Iv()V

    goto :goto_0

    .line 71
    :cond_5
    const-string v0, "should not reconnect as no client or network."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/b/c;->v(Ljava/lang/String;)V

    goto :goto_0
.end method
