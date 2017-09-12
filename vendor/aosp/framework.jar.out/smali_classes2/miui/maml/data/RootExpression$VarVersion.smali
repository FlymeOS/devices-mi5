.class public Lmiui/maml/data/RootExpression$VarVersion;
.super Ljava/lang/Object;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/RootExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VarVersion"
.end annotation


# instance fields
.field mIndex:I

.field private mIsNumber:Z

.field mVersion:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "version"    # I
    .param p3, "isNumber"    # Z

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    .line 16
    iput p2, p0, Lmiui/maml/data/RootExpression$VarVersion;->mVersion:I

    .line 17
    iput-boolean p3, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "version"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 25
    instance-of v2, p1, Lmiui/maml/data/RootExpression$VarVersion;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 26
    check-cast v0, Lmiui/maml/data/RootExpression$VarVersion;

    .line 27
    .local v0, "tempVersion":Lmiui/maml/data/RootExpression$VarVersion;
    iget-boolean v2, v0, Lmiui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    iget-boolean v3, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    if-ne v2, v3, :cond_0

    iget v2, v0, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    iget v3, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 29
    .end local v0    # "tempVersion":Lmiui/maml/data/RootExpression$VarVersion;
    :cond_0
    return v1
.end method

.method public getVer(Lmiui/maml/data/Variables;)I
    .locals 2
    .param p1, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    .line 33
    iget v0, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    iget-boolean v1, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    invoke-virtual {p1, v0, v1}, Lmiui/maml/data/Variables;->getVer(IZ)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIsNumber:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/maml/data/RootExpression$VarVersion;->mIndex:I

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
