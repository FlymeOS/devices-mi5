.class public abstract Lcom/xiaomi/channel/commonutils/b/c;
.super Ljava/lang/Object;
.source "MyLog.java"


# static fields
.field private static aXt:I

.field private static aXu:Lcom/xiaomi/channel/commonutils/b/b;

.field private static final aXv:Ljava/util/HashMap;

.field private static final aXw:Ljava/util/HashMap;

.field private static final aXx:Ljava/lang/Integer;

.field private static aXy:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x2

    sput v0, Lcom/xiaomi/channel/commonutils/b/c;->aXt:I

    .line 46
    new-instance v0, Lcom/xiaomi/channel/commonutils/b/a;

    invoke-direct {v0}, Lcom/xiaomi/channel/commonutils/b/a;-><init>()V

    sput-object v0, Lcom/xiaomi/channel/commonutils/b/c;->aXu:Lcom/xiaomi/channel/commonutils/b/b;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/channel/commonutils/b/c;->aXv:Ljava/util/HashMap;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/channel/commonutils/b/c;->aXw:Ljava/util/HashMap;

    .line 126
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/commonutils/b/c;->aXx:Ljava/lang/Integer;

    .line 128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/b/c;->aXy:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static Fr()I
    .locals 1

    .prologue
    .line 192
    sget v0, Lcom/xiaomi/channel/commonutils/b/c;->aXt:I

    return v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 179
    sget v0, Lcom/xiaomi/channel/commonutils/b/c;->aXt:I

    if-lt p0, v0, :cond_0

    .line 180
    sget-object v0, Lcom/xiaomi/channel/commonutils/b/c;->aXu:Lcom/xiaomi/channel/commonutils/b/b;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/channel/commonutils/b/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    :cond_0
    return-void
.end method

.method public static a(ILjava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 173
    sget v0, Lcom/xiaomi/channel/commonutils/b/c;->aXt:I

    if-lt p0, v0, :cond_0

    .line 174
    sget-object v0, Lcom/xiaomi/channel/commonutils/b/c;->aXu:Lcom/xiaomi/channel/commonutils/b/b;

    const-string v1, ""

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/channel/commonutils/b/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/xiaomi/channel/commonutils/b/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method public static c(Ljava/lang/Integer;)V
    .locals 6

    .prologue
    .line 155
    sget v0, Lcom/xiaomi/channel/commonutils/b/c;->aXt:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 156
    sget-object v0, Lcom/xiaomi/channel/commonutils/b/c;->aXv:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    sget-object v0, Lcom/xiaomi/channel/commonutils/b/c;->aXv:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 160
    sget-object v0, Lcom/xiaomi/channel/commonutils/b/c;->aXw:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 162
    sget-object v1, Lcom/xiaomi/channel/commonutils/b/c;->aXu:Lcom/xiaomi/channel/commonutils/b/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ends in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/xiaomi/channel/commonutils/b/b;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static cM(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/xiaomi/channel/commonutils/b/c;->k(ILjava/lang/String;)V

    .line 69
    return-void
.end method

.method public static cN(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 137
    sget v0, Lcom/xiaomi/channel/commonutils/b/c;->aXt:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 138
    sget-object v0, Lcom/xiaomi/channel/commonutils/b/c;->aXy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 139
    sget-object v1, Lcom/xiaomi/channel/commonutils/b/c;->aXv:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lcom/xiaomi/channel/commonutils/b/c;->aXw:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lcom/xiaomi/channel/commonutils/b/c;->aXu:Lcom/xiaomi/channel/commonutils/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " starts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaomi/channel/commonutils/b/b;->log(Ljava/lang/String;)V

    .line 145
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/channel/commonutils/b/c;->aXx:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static d(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/xiaomi/channel/commonutils/b/c;->a(ILjava/lang/Throwable;)V

    .line 100
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/xiaomi/channel/commonutils/b/c;->k(ILjava/lang/String;)V

    .line 107
    return-void
.end method

.method public static k(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 167
    sget v0, Lcom/xiaomi/channel/commonutils/b/c;->aXt:I

    if-lt p0, v0, :cond_0

    .line 168
    sget-object v0, Lcom/xiaomi/channel/commonutils/b/c;->aXu:Lcom/xiaomi/channel/commonutils/b/b;

    invoke-interface {v0, p1}, Lcom/xiaomi/channel/commonutils/b/b;->log(Ljava/lang/String;)V

    .line 170
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 77
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v0, v1}, Lcom/xiaomi/channel/commonutils/b/c;->k(ILjava/lang/String;)V

    .line 79
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 58
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lcom/xiaomi/channel/commonutils/b/c;->k(ILjava/lang/String;)V

    .line 60
    return-void
.end method
