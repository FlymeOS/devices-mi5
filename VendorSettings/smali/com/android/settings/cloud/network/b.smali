.class public Lcom/android/vendorsettings/cloud/network/b;
.super Ljava/lang/Object;
.source "Connection.java"


# instance fields
.field private Ud:Ljava/util/TreeMap;

.field final synthetic this$0:Lcom/android/vendorsettings/cloud/network/Connection;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/cloud/network/Connection;)V
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/cloud/network/b;-><init>(Lcom/android/vendorsettings/cloud/network/Connection;Z)V

    .line 381
    return-void
.end method

.method public constructor <init>(Lcom/android/vendorsettings/cloud/network/Connection;Z)V
    .locals 1

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/vendorsettings/cloud/network/b;->this$0:Lcom/android/vendorsettings/cloud/network/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/cloud/network/b;->Ud:Ljava/util/TreeMap;

    .line 385
    if-eqz p2, :cond_0

    .line 387
    iput-object p0, p1, Lcom/android/vendorsettings/cloud/network/Connection;->TP:Lcom/android/vendorsettings/cloud/network/b;

    .line 389
    :cond_0
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/vendorsettings/cloud/network/b;->Ud:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected oF()V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/vendorsettings/cloud/network/b;->this$0:Lcom/android/vendorsettings/cloud/network/Connection;

    iget-object v0, v0, Lcom/android/vendorsettings/cloud/network/Connection;->TP:Lcom/android/vendorsettings/cloud/network/b;

    const-string v1, "sdk"

    sget v2, Lcom/android/vendorsettings/cloud/a/a;->Up:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/cloud/network/b;->s(Ljava/lang/String;Ljava/lang/String;)Lcom/android/vendorsettings/cloud/network/b;

    .line 393
    iget-object v0, p0, Lcom/android/vendorsettings/cloud/network/b;->this$0:Lcom/android/vendorsettings/cloud/network/Connection;

    iget-object v0, v0, Lcom/android/vendorsettings/cloud/network/Connection;->TP:Lcom/android/vendorsettings/cloud/network/b;

    const-string v1, "os"

    sget-object v2, Lcom/android/vendorsettings/cloud/a/a;->Uq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/cloud/network/b;->s(Ljava/lang/String;Ljava/lang/String;)Lcom/android/vendorsettings/cloud/network/b;

    .line 394
    iget-object v0, p0, Lcom/android/vendorsettings/cloud/network/b;->this$0:Lcom/android/vendorsettings/cloud/network/Connection;

    iget-object v0, v0, Lcom/android/vendorsettings/cloud/network/Connection;->TP:Lcom/android/vendorsettings/cloud/network/b;

    const-string v1, "la"

    sget-object v2, Lcom/android/vendorsettings/cloud/a/a;->LANGUAGE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/cloud/network/b;->s(Ljava/lang/String;Ljava/lang/String;)Lcom/android/vendorsettings/cloud/network/b;

    .line 395
    iget-object v0, p0, Lcom/android/vendorsettings/cloud/network/b;->this$0:Lcom/android/vendorsettings/cloud/network/Connection;

    iget-object v0, v0, Lcom/android/vendorsettings/cloud/network/Connection;->TP:Lcom/android/vendorsettings/cloud/network/b;

    const-string v1, "co"

    sget-object v2, Lcom/android/vendorsettings/cloud/a/a;->COUNTRY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/cloud/network/b;->s(Ljava/lang/String;Ljava/lang/String;)Lcom/android/vendorsettings/cloud/network/b;

    .line 396
    iget-object v0, p0, Lcom/android/vendorsettings/cloud/network/b;->this$0:Lcom/android/vendorsettings/cloud/network/Connection;

    iget-object v0, v0, Lcom/android/vendorsettings/cloud/network/Connection;->TP:Lcom/android/vendorsettings/cloud/network/b;

    const-string v1, "ro"

    sget-object v2, Lcom/android/vendorsettings/cloud/a/a;->Uo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/cloud/network/b;->s(Ljava/lang/String;Ljava/lang/String;)Lcom/android/vendorsettings/cloud/network/b;

    .line 397
    return-void
.end method

.method public oG()Ljava/util/TreeMap;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/vendorsettings/cloud/network/b;->Ud:Ljava/util/TreeMap;

    return-object v0
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;)Lcom/android/vendorsettings/cloud/network/b;
    .locals 1

    .prologue
    .line 400
    if-nez p2, :cond_0

    .line 401
    const-string p2, ""

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/cloud/network/b;->Ud:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/vendorsettings/cloud/network/b;->Ud:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const-string v0, ""

    .line 438
    :goto_0
    return-object v0

    .line 428
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    iget-object v0, p0, Lcom/android/vendorsettings/cloud/network/b;->Ud:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 430
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :try_start_0
    iget-object v3, p0, Lcom/android/vendorsettings/cloud/network/b;->Ud:Ljava/util/TreeMap;

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_2
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 438
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    goto :goto_2
.end method
