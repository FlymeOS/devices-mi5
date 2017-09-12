.class Lmiui/maml/ActionCommand$VariableAssignmentCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableAssignmentCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VariableCommand"


# instance fields
.field private mArrayValues:[Lmiui/maml/data/Expression;

.field private mExpression:Lmiui/maml/data/Expression;

.field private mIndexExpression:Lmiui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field private mPersist:Z

.field private mRequestUpdate:Z

.field private mType:Lmiui/maml/data/VariableType;

.field private mVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 5
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 758
    const-string v1, "name"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    .line 759
    const-string v1, "persist"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    .line 760
    const-string v1, "requestUpdate"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    .line 762
    const-string v1, "type"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lmiui/maml/data/VariableType;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    .line 763
    iget-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 764
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    iget-object v2, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v4}, Lmiui/maml/data/VariableType;->isNumber()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    .line 768
    :goto_0
    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    .line 769
    .local v0, "variables":Lmiui/maml/data/Variables;
    const-string v1, "expression"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    .line 771
    iget-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    const-string v1, "index"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    .line 773
    const-string/jumbo v1, "values"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    .line 775
    :cond_0
    return-void

    .line 766
    .end local v0    # "variables":Lmiui/maml/data/Variables;
    :cond_1
    const-string v1, "ActionCommand"

    const-string v2, "empty name in VariableAssignmentCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected doPerform()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x2

    .line 779
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v5

    .line 780
    .local v5, "root":Lmiui/maml/ScreenElementRoot;
    sget-object v10, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$data$VariableType:[I

    iget-object v12, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v12}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v12

    aget v10, v10, v12

    packed-switch v10, :pswitch_data_0

    .line 820
    const/4 v4, 0x0

    .line 821
    .local v4, "obj":Ljava/lang/Object;
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v10}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    .line 822
    .local v3, "name":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v7

    .line 823
    .local v7, "vars":Lmiui/maml/data/Variables;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v7, v3}, Lmiui/maml/data/Variables;->existsObj(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 824
    invoke-virtual {v7, v3}, Lmiui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 826
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    if-nez v10, :cond_8

    .line 827
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v10, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 834
    .end local v3    # "name":Ljava/lang/String;
    .end local v7    # "vars":Lmiui/maml/data/Variables;
    :cond_1
    :goto_1
    iget-boolean v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    if-eqz v10, :cond_2

    .line 835
    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 837
    :cond_2
    return-void

    .line 782
    :pswitch_0
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_1

    .line 783
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v10}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    .line 784
    .local v8, "v":D
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v10, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 785
    iget-boolean v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v10, :cond_1

    invoke-virtual {v5, v13}, Lmiui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 786
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lmiui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 790
    .end local v8    # "v":D
    :pswitch_1
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_3

    .line 791
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v11, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    double-to-int v11, v12

    iget-object v12, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    invoke-virtual {v10, v11, v12, v13}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    goto :goto_1

    .line 792
    :cond_3
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    if-eqz v10, :cond_1

    .line 793
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    array-length v0, v10

    .line 794
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_1

    .line 795
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    aget-object v1, v10, v2

    .line 796
    .local v1, "ex":Lmiui/maml/data/Expression;
    iget-object v12, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    if-nez v1, :cond_4

    const-wide/16 v10, 0x0

    :goto_3
    invoke-virtual {v12, v2, v10, v11}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    .line 794
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 796
    :cond_4
    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v10

    goto :goto_3

    .line 801
    .end local v0    # "N":I
    .end local v1    # "ex":Lmiui/maml/data/Expression;
    .end local v2    # "i":I
    :pswitch_2
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v10}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v6

    .line 802
    .local v6, "str":Ljava/lang/String;
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v10, v6}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 803
    iget-boolean v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v10, :cond_1

    invoke-virtual {v5, v13}, Lmiui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 804
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v5, v10, v6}, Lmiui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 808
    .end local v6    # "str":Ljava/lang/String;
    :pswitch_3
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_5

    .line 809
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v11, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    double-to-int v11, v12

    iget-object v12, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto/16 :goto_1

    .line 810
    :cond_5
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    if-eqz v10, :cond_1

    .line 811
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    array-length v0, v10

    .line 812
    .restart local v0    # "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v0, :cond_1

    .line 813
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    aget-object v1, v10, v2

    .line 814
    .restart local v1    # "ex":Lmiui/maml/data/Expression;
    iget-object v12, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    if-nez v1, :cond_6

    move-object v10, v11

    :goto_5
    invoke-virtual {v12, v2, v10}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    .line 812
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 814
    :cond_6
    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    .end local v0    # "N":I
    .end local v1    # "ex":Lmiui/maml/data/Expression;
    .end local v2    # "i":I
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_7
    move-object v3, v11

    .line 821
    goto/16 :goto_0

    .line 829
    .end local v4    # "obj":Ljava/lang/Object;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v7    # "vars":Lmiui/maml/data/Variables;
    :cond_8
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v11, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    double-to-int v11, v12

    invoke-virtual {v10, v11, v4}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto/16 :goto_1

    .line 780
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
