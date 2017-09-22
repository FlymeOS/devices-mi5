.class Lcom/xiaomi/b/o;
.super Ljava/lang/Object;
.source "WeightedHost.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final baB:Ljava/util/LinkedList;

.field private baC:J

.field host:Ljava/lang/String;

.field protected weight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/b/o;-><init>(Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/b/o;->baB:Ljava/util/LinkedList;

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/b/o;->baC:J

    .line 42
    iput-object p1, p0, Lcom/xiaomi/b/o;->host:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/xiaomi/b/o;->weight:I

    .line 44
    return-void
.end method


# virtual methods
.method protected declared-synchronized a(Lcom/xiaomi/b/a;)V
    .locals 4

    .prologue
    .line 56
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/b/o;->baB:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p1}, Lcom/xiaomi/b/a;->Gp()I

    move-result v3

    .line 60
    if-lez v3, :cond_1

    .line 61
    iget v0, p0, Lcom/xiaomi/b/o;->weight:I

    invoke-virtual {p1}, Lcom/xiaomi/b/a;->Gp()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/b/o;->weight:I

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/b/o;->baB:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xiaomi/b/o;->baB:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/b/a;

    .line 76
    iget v1, p0, Lcom/xiaomi/b/o;->weight:I

    invoke-virtual {v0}, Lcom/xiaomi/b/a;->Gp()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/xiaomi/b/o;->weight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    .line 63
    :cond_1
    const/4 v1, 0x0

    .line 64
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/b/o;->baB:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 65
    iget-object v0, p0, Lcom/xiaomi/b/o;->baB:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/b/a;

    invoke-virtual {v0}, Lcom/xiaomi/b/a;->Gp()I

    move-result v0

    if-gez v0, :cond_2

    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 64
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 71
    :cond_2
    iget v0, p0, Lcom/xiaomi/b/o;->weight:I

    mul-int v1, v3, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/b/o;->weight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/xiaomi/b/o;)I
    .locals 2

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/xiaomi/b/o;->weight:I

    iget v1, p0, Lcom/xiaomi/b/o;->weight:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/xiaomi/b/o;

    invoke-virtual {p0, p1}, Lcom/xiaomi/b/o;->b(Lcom/xiaomi/b/o;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized o(Lorg/json/JSONObject;)Lcom/xiaomi/b/o;
    .locals 5

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    const-string v0, "tt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/b/o;->baC:J

    .line 129
    const-string v0, "wt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/b/o;->weight:I

    .line 130
    const-string v0, "host"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/o;->host:Ljava/lang/String;

    .line 131
    const-string v0, "ah"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 132
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 133
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 134
    iget-object v3, p0, Lcom/xiaomi/b/o;->baB:Ljava/util/LinkedList;

    new-instance v4, Lcom/xiaomi/b/a;

    invoke-direct {v4}, Lcom/xiaomi/b/a;-><init>()V

    invoke-virtual {v4, v2}, Lcom/xiaomi/b/a;->l(Lorg/json/JSONObject;)Lcom/xiaomi/b/a;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    monitor-exit p0

    return-object p0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 116
    const-string v0, "tt"

    iget-wide v2, p0, Lcom/xiaomi/b/o;->baC:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 117
    const-string v0, "wt"

    iget v2, p0, Lcom/xiaomi/b/o;->weight:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string v0, "host"

    iget-object v2, p0, Lcom/xiaomi/b/o;->host:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 120
    iget-object v0, p0, Lcom/xiaomi/b/o;->baB:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/b/a;

    .line 121
    invoke-virtual {v0}, Lcom/xiaomi/b/a;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 123
    :cond_0
    :try_start_1
    const-string v0, "ah"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    monitor-exit p0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/b/o;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/b/o;->weight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
