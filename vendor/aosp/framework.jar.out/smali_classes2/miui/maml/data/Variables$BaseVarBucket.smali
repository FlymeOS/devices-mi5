.class abstract Lmiui/maml/data/Variables$BaseVarBucket;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseVarBucket"
.end annotation


# instance fields
.field private mIndices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNextIndex:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/Variables$BaseVarBucket;->mIndices:Ljava/util/HashMap;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/data/Variables$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/data/Variables$1;

    .prologue
    .line 32
    invoke-direct {p0}, Lmiui/maml/data/Variables$BaseVarBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public exists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lmiui/maml/data/Variables$BaseVarBucket;->mIndices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract onAddItem(I)V
.end method

.method public declared-synchronized registerVariable(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lmiui/maml/data/Variables$BaseVarBucket;->mIndices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 38
    .local v0, "index":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 39
    iget v1, p0, Lmiui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lmiui/maml/data/Variables$BaseVarBucket;->mIndices:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget v1, p0, Lmiui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    invoke-virtual {p0, v1}, Lmiui/maml/data/Variables$BaseVarBucket;->onAddItem(I)V

    .line 43
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lmiui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    if-ne v1, v2, :cond_1

    .line 44
    iget v1, p0, Lmiui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/maml/data/Variables$BaseVarBucket;->mNextIndex:I

    .line 45
    :cond_1
    # getter for: Lmiui/maml/data/Variables;->DBG:Z
    invoke-static {}, Lmiui/maml/data/Variables;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    const-string v1, "Variables"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerVariable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 37
    .end local v0    # "index":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
