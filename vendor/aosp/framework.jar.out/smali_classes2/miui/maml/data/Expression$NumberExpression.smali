.class public Lmiui/maml/data/Expression$NumberExpression;
.super Lmiui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberExpression"
.end annotation


# instance fields
.field private mString:Ljava/lang/String;

.field private mValue:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "num"    # D

    .prologue
    .line 453
    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    .line 454
    iput-wide p1, p0, Lmiui/maml/data/Expression$NumberExpression;->mValue:D

    .line 455
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 457
    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    .line 458
    if-nez p1, :cond_0

    .line 459
    const-string v1, "Expression"

    const-string v2, "invalid NumberExpression: null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :goto_0
    return-void

    .line 463
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    const-string v1, "0x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 464
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-double v2, v2

    iput-wide v2, p0, Lmiui/maml/data/Expression$NumberExpression;->mValue:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "Expression"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid NumberExpression:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :try_start_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/data/Expression$NumberExpression;->mValue:D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public evaluate()D
    .locals 2

    .prologue
    .line 479
    iget-wide v0, p0, Lmiui/maml/data/Expression$NumberExpression;->mValue:D

    return-wide v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lmiui/maml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 485
    iget-wide v0, p0, Lmiui/maml/data/Expression$NumberExpression;->mValue:D

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    .line 486
    :cond_0
    iget-object v0, p0, Lmiui/maml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 474
    iput-wide p1, p0, Lmiui/maml/data/Expression$NumberExpression;->mValue:D

    .line 475
    return-void
.end method
