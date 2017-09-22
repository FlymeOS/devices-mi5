.class public Lcom/xiaomi/b/a;
.super Ljava/lang/Object;
.source "AccessHistory.java"


# instance fields
.field private aZT:J

.field private aZU:Ljava/lang/String;

.field private size:J

.field private ts:J

.field private weight:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 38
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/b/a;-><init>(IJJLjava/lang/Exception;)V

    .line 39
    return-void
.end method

.method public constructor <init>(IJJLjava/lang/Exception;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/xiaomi/b/a;->weight:I

    .line 52
    iput-wide p2, p0, Lcom/xiaomi/b/a;->aZT:J

    .line 53
    iput-wide p4, p0, Lcom/xiaomi/b/a;->size:J

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/b/a;->ts:J

    .line 55
    if-eqz p6, :cond_0

    .line 56
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a;->aZU:Ljava/lang/String;

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public Gp()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/xiaomi/b/a;->weight:I

    return v0
.end method

.method public l(Lorg/json/JSONObject;)Lcom/xiaomi/b/a;
    .locals 2

    .prologue
    .line 96
    const-string v0, "cost"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/b/a;->aZT:J

    .line 97
    const-string v0, "size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/b/a;->size:J

    .line 98
    const-string v0, "ts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/b/a;->ts:J

    .line 99
    const-string v0, "wt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/b/a;->weight:I

    .line 100
    const-string v0, "expt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a;->aZU:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 87
    const-string v1, "cost"

    iget-wide v2, p0, Lcom/xiaomi/b/a;->aZT:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 88
    const-string v1, "size"

    iget-wide v2, p0, Lcom/xiaomi/b/a;->size:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 89
    const-string v1, "ts"

    iget-wide v2, p0, Lcom/xiaomi/b/a;->ts:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 90
    const-string v1, "wt"

    iget v2, p0, Lcom/xiaomi/b/a;->weight:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string v1, "expt"

    iget-object v2, p0, Lcom/xiaomi/b/a;->aZU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    return-object v0
.end method
