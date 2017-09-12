.class Lmiui/maml/data/Expression$StringArrayVariableExpression;
.super Lmiui/maml/data/Expression$ArrayVariableExpression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringArrayVariableExpression"
.end annotation


# direct methods
.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V
    .locals 0
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "indexExp"    # Lmiui/maml/data/Expression;

    .prologue
    .line 421
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/data/Expression$ArrayVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V

    .line 422
    return-void
.end method


# virtual methods
.method public evaluate()D
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 426
    invoke-virtual {p0}, Lmiui/maml/data/Expression$StringArrayVariableExpression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "str":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 432
    :goto_0
    return-wide v2

    .line 430
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 438
    iget-object v0, p0, Lmiui/maml/data/Expression$StringArrayVariableExpression;->mIndexedVar:Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/data/Expression$StringArrayVariableExpression;->mIndexExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->getArrString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull()Z
    .locals 4

    .prologue
    .line 443
    iget-object v0, p0, Lmiui/maml/data/Expression$StringArrayVariableExpression;->mIndexedVar:Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/data/Expression$StringArrayVariableExpression;->mIndexExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->isNull(I)Z

    move-result v0

    return v0
.end method
