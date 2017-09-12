.class Lmiui/maml/data/Expression$NumberVariableExpression;
.super Lmiui/maml/data/Expression$VariableExpression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberVariableExpression"
.end annotation


# direct methods
.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V
    .locals 1
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "exp"    # Ljava/lang/String;

    .prologue
    .line 331
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/data/Expression$VariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Z)V

    .line 332
    return-void
.end method


# virtual methods
.method public evaluate()D
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lmiui/maml/data/Expression$NumberVariableExpression;->mIndexedVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 341
    invoke-virtual {p0}, Lmiui/maml/data/Expression$NumberVariableExpression;->evaluate()D

    move-result-wide v0

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lmiui/maml/data/Expression$NumberVariableExpression;->mIndexedVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->isNull()Z

    move-result v0

    return v0
.end method
