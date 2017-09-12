.class public Lcom/miui/whetstone/component/ComponentHelper$WtLinkedRingbuffer;
.super Ljava/lang/Object;
.source "ComponentHelper.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/component/ComponentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WtLinkedRingbuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mMaxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "sz"    # I

    .prologue
    .line 98
    .local p0, "this":Lcom/miui/whetstone/component/ComponentHelper$WtLinkedRingbuffer;, "Lcom/miui/whetstone/component/ComponentHelper$WtLinkedRingbuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/component/ComponentHelper$WtLinkedRingbuffer;->mList:Ljava/util/LinkedList;

    .line 100
    iput p1, p0, Lcom/miui/whetstone/component/ComponentHelper$WtLinkedRingbuffer;->mMaxSize:I

    .line 101
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/miui/whetstone/component/ComponentHelper$WtLinkedRingbuffer;, "Lcom/miui/whetstone/component/ComponentHelper$WtLinkedRingbuffer<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/component/ComponentHelper$WtLinkedRingbuffer;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/miui/whetstone/component/ComponentHelper$WtLinkedRingbuffer;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/whetstone/component/ComponentHelper$WtLinkedRingbuffer;->mMaxSize:I

    if-le v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/miui/whetstone/component/ComponentHelper$WtLinkedRingbuffer;->mList:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 108
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/miui/whetstone/component/ComponentHelper$WtLinkedRingbuffer;, "Lcom/miui/whetstone/component/ComponentHelper$WtLinkedRingbuffer<TT;>;"
    iget-object v0, p0, Lcom/miui/whetstone/component/ComponentHelper$WtLinkedRingbuffer;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 117
    .local p0, "this":Lcom/miui/whetstone/component/ComponentHelper$WtLinkedRingbuffer;, "Lcom/miui/whetstone/component/ComponentHelper$WtLinkedRingbuffer<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/miui/whetstone/component/ComponentHelper$WtLinkedRingbuffer;->mList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 119
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 117
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 121
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3
.end method
