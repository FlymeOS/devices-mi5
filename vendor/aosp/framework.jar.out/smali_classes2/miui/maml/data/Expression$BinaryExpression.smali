.class Lmiui/maml/data/Expression$BinaryExpression;
.super Lmiui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryExpression"
.end annotation


# instance fields
.field private mExp1:Lmiui/maml/data/Expression;

.field private mExp2:Lmiui/maml/data/Expression;

.field private mOpe:Lmiui/maml/data/Expression$Ope;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V
    .locals 3
    .param p1, "exp1"    # Lmiui/maml/data/Expression;
    .param p2, "exp2"    # Lmiui/maml/data/Expression;
    .param p3, "op"    # Lmiui/maml/data/Expression$Ope;

    .prologue
    .line 566
    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    .line 564
    sget-object v0, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    iput-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    .line 567
    iput-object p1, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    .line 568
    iput-object p2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    .line 569
    iput-object p3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    .line 570
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    sget-object v1, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    if-ne v0, v1, :cond_0

    .line 571
    const-string v0, "Expression"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BinaryExpression: invalid operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .locals 1
    .param p1, "v"    # Lmiui/maml/data/ExpressionVisitor;

    .prologue
    .line 696
    invoke-virtual {p1, p0}, Lmiui/maml/data/ExpressionVisitor;->visit(Lmiui/maml/data/Expression;)V

    .line 697
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    .line 698
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    .line 699
    return-void
.end method

.method public evaluate()D
    .locals 8

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 577
    sget-object v4, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    iget-object v5, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v5}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 618
    :pswitch_0
    const-string v0, "Expression"

    const-string v1, "fail to evalute BinaryExpression, invalid operator"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v2

    .line 619
    :cond_0
    :goto_0
    return-wide v0

    .line 579
    :pswitch_1
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    .line 581
    :pswitch_2
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0

    .line 583
    :pswitch_3
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 585
    :pswitch_4
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    div-double/2addr v0, v2

    goto :goto_0

    .line 587
    :pswitch_5
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    rem-double/2addr v0, v2

    goto :goto_0

    .line 590
    :pswitch_6
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    and-long/2addr v0, v2

    long-to-double v0, v0

    goto :goto_0

    .line 592
    :pswitch_7
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    or-long/2addr v0, v2

    long-to-double v0, v0

    goto :goto_0

    .line 594
    :pswitch_8
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    xor-long/2addr v0, v2

    long-to-double v0, v0

    goto :goto_0

    .line 596
    :pswitch_9
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    long-to-int v2, v2

    shl-long/2addr v0, v2

    long-to-double v0, v0

    goto/16 :goto_0

    .line 598
    :pswitch_a
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    long-to-int v2, v2

    shr-long/2addr v0, v2

    long-to-double v0, v0

    goto/16 :goto_0

    .line 601
    :pswitch_b
    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    iget-object v6, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    move-wide v0, v2

    goto/16 :goto_0

    .line 603
    :pswitch_c
    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    iget-object v6, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    move-wide v0, v2

    goto/16 :goto_0

    .line 605
    :pswitch_d
    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    cmpl-double v4, v4, v2

    if-lez v4, :cond_1

    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    cmpl-double v4, v4, v2

    if-gtz v4, :cond_0

    :cond_1
    move-wide v0, v2

    goto/16 :goto_0

    .line 607
    :pswitch_e
    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    cmpl-double v4, v4, v2

    if-gtz v4, :cond_2

    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    cmpl-double v4, v4, v2

    if-lez v4, :cond_3

    :cond_2
    move-wide v2, v0

    :cond_3
    move-wide v0, v2

    goto/16 :goto_0

    .line 609
    :pswitch_f
    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    iget-object v6, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_0

    move-wide v0, v2

    goto/16 :goto_0

    .line 611
    :pswitch_10
    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    iget-object v6, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-gez v4, :cond_0

    move-wide v0, v2

    goto/16 :goto_0

    .line 613
    :pswitch_11
    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    iget-object v6, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_0

    move-wide v0, v2

    goto/16 :goto_0

    .line 615
    :pswitch_12
    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    iget-object v6, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-lez v4, :cond_0

    move-wide v0, v2

    goto/16 :goto_0

    .line 577
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 676
    iget-object v3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "str1":Ljava/lang/String;
    iget-object v3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, "str2":Ljava/lang/String;
    sget-object v3, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v4}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 690
    const-string v3, "Expression"

    const-string v4, "fail to evalute string BinaryExpression, invalid operator"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 691
    .end local v1    # "str2":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 680
    .restart local v1    # "str2":Ljava/lang/String;
    :pswitch_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    move-object v1, v2

    .line 681
    goto :goto_0

    .line 682
    :cond_1
    if-eqz v0, :cond_0

    .line 684
    if-nez v1, :cond_2

    move-object v1, v0

    .line 685
    goto :goto_0

    .line 687
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 678
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public isNull()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 657
    sget-object v2, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    iget-object v3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v3}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 671
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 660
    :pswitch_1
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 668
    :pswitch_2
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 657
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public preciseEvaluate()Ljava/math/BigDecimal;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 624
    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    sget-object v5, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    if-eq v4, v5, :cond_0

    .line 625
    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    move-result-object v1

    .line 626
    .local v1, "num1":Ljava/math/BigDecimal;
    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    move-result-object v2

    .line 627
    .local v2, "num2":Ljava/math/BigDecimal;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 628
    sget-object v4, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Ope:[I

    iget-object v5, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v5}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 651
    .end local v1    # "num1":Ljava/math/BigDecimal;
    .end local v2    # "num2":Ljava/math/BigDecimal;
    :cond_0
    :pswitch_0
    const-string v4, "Expression"

    const-string v5, "fail to PRECISE evalute BinaryExpression, invalid operator"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :goto_0
    return-object v3

    .line 630
    .restart local v1    # "num1":Ljava/math/BigDecimal;
    .restart local v2    # "num2":Ljava/math/BigDecimal;
    :pswitch_1
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    goto :goto_0

    .line 632
    :pswitch_2
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    goto :goto_0

    .line 634
    :pswitch_3
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    goto :goto_0

    .line 637
    :pswitch_4
    :try_start_0
    sget-object v4, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v1, v2, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 643
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_5
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 644
    :catch_1
    move-exception v0

    .line 645
    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 628
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
