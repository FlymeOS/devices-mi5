.class abstract Lmiui/maml/ActionCommand$BaseMethodCommand;
.super Lmiui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseMethodCommand"
.end annotation


# static fields
.field protected static final ERROR_EXCEPTION:I = -0x2

.field protected static final ERROR_NO_METHOD:I = -0x1

.field protected static final ERROR_SUCCESS:I = 0x1


# instance fields
.field protected mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

.field private mParamObjVars:[Lmiui/maml/ActionCommand$ObjVar;

.field protected mParamTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected mParamValues:[Ljava/lang/Object;

.field private mParams:[Lmiui/maml/data/Expression;

.field protected mReturnVar:Lmiui/maml/data/IndexedVariable;

.field protected mTargetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected mTargetClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 11
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v10, 0x0

    .line 1558
    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$TargetCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 1559
    const-string v7, "class"

    invoke-interface {p2, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    .line 1560
    iget-object v7, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1561
    iput-object v10, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    .line 1565
    :cond_0
    const-string v7, "params"

    invoke-interface {p2, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1566
    .local v4, "params":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$BaseMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v7

    invoke-static {v7, v4}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v7

    iput-object v7, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    .line 1567
    const-string v7, "paramTypes"

    invoke-interface {p2, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1568
    .local v2, "paramTypes":Ljava/lang/String;
    iget-object v7, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    if-eqz v7, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1569
    const-string v7, ","

    invoke-static {v2, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1571
    .local v3, "paramTypesArr":[Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Lmiui/maml/util/ReflectionHelper;->strTypesToClass([Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v7

    iput-object v7, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    .line 1572
    iget-object v7, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    array-length v7, v7

    iget-object v8, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    array-length v8, v8

    if-eq v7, v8, :cond_1

    .line 1573
    const-string v7, "ActionCommand"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "different length of params and paramTypes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    const/4 v7, 0x0

    iput-object v7, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    .line 1575
    const/4 v7, 0x0

    iput-object v7, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1584
    .end local v3    # "paramTypesArr":[Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v7, "return"

    invoke-interface {p2, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1585
    .local v5, "returnVar":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1586
    const-string v7, "returnType"

    invoke-interface {p2, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lmiui/maml/data/VariableType;

    move-result-object v6

    .line 1587
    .local v6, "type":Lmiui/maml/data/VariableType;
    new-instance v7, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$BaseMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v8

    invoke-virtual {v6}, Lmiui/maml/data/VariableType;->isNumber()Z

    move-result v9

    invoke-direct {v7, v5, v8, v9}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v7, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mReturnVar:Lmiui/maml/data/IndexedVariable;

    .line 1589
    .end local v6    # "type":Lmiui/maml/data/VariableType;
    :cond_2
    const-string v7, "errorVar"

    invoke-interface {p2, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1590
    .local v1, "errorVar":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1591
    new-instance v7, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$BaseMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v7, v1, v8, v9}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v7, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    .line 1594
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", class="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v8}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mLogStr:Ljava/lang/String;

    .line 1595
    return-void

    .line 1577
    .end local v1    # "errorVar":Ljava/lang/String;
    .end local v5    # "returnVar":Ljava/lang/String;
    .restart local v3    # "paramTypesArr":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1578
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v7, "ActionCommand"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "invalid method paramTypes. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iput-object v10, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    .line 1580
    iput-object v10, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    goto/16 :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 1632
    invoke-super {p0}, Lmiui/maml/ActionCommand$TargetCommand;->finish()V

    .line 1633
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    .line 1634
    return-void
.end method

.method public init()V
    .locals 8

    .prologue
    .line 1599
    invoke-super {p0}, Lmiui/maml/ActionCommand$TargetCommand;->init()V

    .line 1601
    iget-object v5, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    if-eqz v5, :cond_4

    .line 1602
    iget-object v5, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lmiui/maml/ActionCommand$ObjVar;

    if-nez v5, :cond_0

    .line 1603
    iget-object v5, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    array-length v5, v5

    new-array v5, v5, [Lmiui/maml/ActionCommand$ObjVar;

    iput-object v5, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lmiui/maml/ActionCommand$ObjVar;

    .line 1605
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    .line 1606
    iget-object v5, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lmiui/maml/ActionCommand$ObjVar;

    const/4 v6, 0x0

    aput-object v6, v5, v3

    .line 1607
    iget-object v5, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    aget-object v0, v5, v3

    .line 1608
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-class v5, Ljava/lang/String;

    if-ne v0, v5, :cond_3

    .line 1605
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1611
    :cond_3
    iget-object v5, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v2, v5, v3

    .line 1612
    .local v2, "exp":Lmiui/maml/data/Expression;
    if-eqz v2, :cond_2

    .line 1613
    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v4

    .line 1614
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1615
    iget-object v5, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lmiui/maml/ActionCommand$ObjVar;

    new-instance v6, Lmiui/maml/ActionCommand$ObjVar;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$BaseMethodCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Lmiui/maml/ActionCommand$ObjVar;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    aput-object v6, v5, v3

    goto :goto_1

    .line 1621
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "exp":Lmiui/maml/data/Expression;
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 1623
    :try_start_0
    iget-object v5, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1628
    :cond_5
    :goto_2
    return-void

    .line 1624
    :catch_0
    move-exception v1

    .line 1625
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "ActionCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "target class not found, name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mTargetClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected prepareParams()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 1637
    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    if-eqz v4, :cond_d

    .line 1638
    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 1639
    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    .line 1641
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    array-length v4, v4

    if-ge v1, v4, :cond_d

    .line 1642
    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    aput-object v5, v4, v1

    .line 1643
    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamTypes:[Ljava/lang/Class;

    aget-object v3, v4, v1

    .line 1644
    .local v3, "paraClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParams:[Lmiui/maml/data/Expression;

    aget-object v0, v4, v1

    .line 1645
    .local v0, "expression":Lmiui/maml/data/Expression;
    if-nez v0, :cond_1

    .line 1641
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1647
    :cond_1
    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_2

    .line 1648
    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    goto :goto_1

    .line 1649
    :cond_2
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_3

    .line 1650
    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-long v6, v6

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    goto :goto_1

    .line 1651
    :cond_3
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_4

    .line 1652
    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v1

    goto :goto_1

    .line 1653
    :cond_4
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_6

    .line 1654
    iget-object v6, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v4, v8, v10

    if-lez v4, :cond_5

    const/4 v4, 0x1

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v6, v1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 1655
    :cond_6
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_7

    .line 1656
    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v1

    goto :goto_1

    .line 1657
    :cond_7
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_8

    .line 1658
    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v1

    goto :goto_1

    .line 1659
    :cond_8
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_9

    .line 1660
    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-long v6, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v1

    goto/16 :goto_1

    .line 1661
    :cond_9
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_a

    .line 1662
    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-long v6, v6

    long-to-int v6, v6

    int-to-short v6, v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v4, v1

    goto/16 :goto_1

    .line 1663
    :cond_a
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_b

    .line 1664
    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-long v6, v6

    long-to-int v6, v6

    int-to-char v6, v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v4, v1

    goto/16 :goto_1

    .line 1666
    :cond_b
    iget-object v4, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamObjVars:[Lmiui/maml/ActionCommand$ObjVar;

    aget-object v2, v4, v1

    .line 1667
    .local v2, "objVar":Lmiui/maml/ActionCommand$ObjVar;
    iget-object v6, p0, Lmiui/maml/ActionCommand$BaseMethodCommand;->mParamValues:[Ljava/lang/Object;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$ObjVar;->get()Ljava/lang/Object;

    move-result-object v4

    :goto_3
    aput-object v4, v6, v1

    goto/16 :goto_1

    :cond_c
    move-object v4, v5

    goto :goto_3

    .line 1671
    .end local v0    # "expression":Lmiui/maml/data/Expression;
    .end local v1    # "i":I
    .end local v2    # "objVar":Lmiui/maml/ActionCommand$ObjVar;
    .end local v3    # "paraClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d
    return-void
.end method
