.class public Lmiui/maml/data/ContextVariables;
.super Ljava/lang/Object;
.source "ContextVariables.java"


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 72
    return-void
.end method

.method public getBmp(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v2, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 67
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 64
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, v0, Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 65
    goto :goto_0

    .line 67
    :cond_1
    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 31
    iget-object v2, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 37
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 34
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, v0, Ljava/lang/Double;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    check-cast v0, Ljava/lang/Double;

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v2, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 47
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 44
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v2, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 57
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 54
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 55
    goto :goto_0

    .line 57
    :cond_1
    check-cast v0, Ljava/lang/Long;

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    iget-object v1, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 27
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 24
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 25
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getVar(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    iget-object v0, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setVar(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 13
    iget-object v0, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-void
.end method
