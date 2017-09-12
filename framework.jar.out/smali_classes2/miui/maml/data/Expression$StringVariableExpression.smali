.class Lmiui/maml/data/Expression$StringVariableExpression;
.super Lmiui/maml/data/Expression$VariableExpression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringVariableExpression"
.end annotation


# direct methods
.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V
    .locals 1
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "exp"    # Ljava/lang/String;

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/data/Expression$VariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Z)V

    .line 354
    return-void
.end method


# virtual methods
.method public evaluate()D
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 358
    invoke-virtual {p0}, Lmiui/maml/data/Expression$StringVariableExpression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "str":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 364
    :goto_0
    return-wide v2

    .line 362
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lmiui/maml/data/Expression$StringVariableExpression;->mIndexedVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lmiui/maml/data/Expression$StringVariableExpression;->mIndexedVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->isNull()Z

    move-result v0

    return v0
.end method
