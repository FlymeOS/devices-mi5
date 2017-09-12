.class public Lmiui/maml/data/IndexedVariable;
.super Ljava/lang/Object;
.source "IndexedVariable.java"


# instance fields
.field protected mIndex:I

.field private mIsNumber:Z

.field protected mVars:Lmiui/maml/data/Variables;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vars"    # Lmiui/maml/data/Variables;
    .param p3, "isNumber"    # Z

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p3, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    .line 13
    iget-boolean v0, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lmiui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    .line 14
    iput-object p2, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    .line 15
    return-void

    .line 13
    :cond_0
    invoke-virtual {p2, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getArr(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->getArr(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getArrDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->getArrDouble(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getArrString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->getArrString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDouble()D
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getIndex()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    return v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1}, Lmiui/maml/data/Variables;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVariables()Lmiui/maml/data/Variables;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    return-object v0
.end method

.method public final getVersion()I
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    iget-boolean v2, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/Variables;->getVer(IZ)I

    move-result v0

    return v0
.end method

.method public final isNull()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    iget-boolean v2, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v3, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v2, v3}, Lmiui/maml/data/Variables;->existsDouble(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v3, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v2, v3}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final isNull(I)Z
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    iget-boolean v2, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v3, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v2, v3, p1}, Lmiui/maml/data/Variables;->existsArrItem(II)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v3, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v2, v3, p1}, Lmiui/maml/data/Variables;->getArr(II)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final set(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 18
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lmiui/maml/data/Variables;->put(ID)V

    .line 19
    return-void
.end method

.method public final set(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 22
    iget-boolean v0, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->putDouble(ILjava/lang/Object;)Z

    move-result v0

    .line 27
    :goto_0
    return v0

    .line 25
    :cond_0
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V

    .line 27
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setArr(ID)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 31
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lmiui/maml/data/Variables;->putArr(IID)Z

    move-result v0

    return v0
.end method

.method public final setArr(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 35
    iget-boolean v0, p0, Lmiui/maml/data/IndexedVariable;->mIsNumber:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lmiui/maml/data/Variables;->putArrDouble(IILjava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/data/IndexedVariable;->mVars:Lmiui/maml/data/Variables;

    iget v1, p0, Lmiui/maml/data/IndexedVariable;->mIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lmiui/maml/data/Variables;->putArr(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
