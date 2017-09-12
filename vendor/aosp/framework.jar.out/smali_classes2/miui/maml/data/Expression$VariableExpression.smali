.class abstract Lmiui/maml/data/Expression$VariableExpression;
.super Lmiui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "VariableExpression"
.end annotation


# instance fields
.field protected mIndexedVar:Lmiui/maml/data/IndexedVariable;

.field protected mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "exp"    # Ljava/lang/String;
    .param p3, "isNumber"    # Z

    .prologue
    .line 307
    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    .line 308
    iput-object p2, p0, Lmiui/maml/data/Expression$VariableExpression;->mName:Ljava/lang/String;

    .line 309
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/data/Expression$VariableExpression;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/Expression$VariableExpression;->mIndexedVar:Lmiui/maml/data/IndexedVariable;

    .line 313
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lmiui/maml/data/Expression$VariableExpression;->mIndexedVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getIndex()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lmiui/maml/data/Expression$VariableExpression;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lmiui/maml/data/Expression$VariableExpression;->mIndexedVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getVersion()I

    move-result v0

    return v0
.end method
