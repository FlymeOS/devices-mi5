.class public Lcom/xiaomi/channel/commonutils/c/b;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# direct methods
.method public static e(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 60
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
