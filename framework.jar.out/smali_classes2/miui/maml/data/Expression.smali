.class public abstract Lmiui/maml/data/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Expression$1;,
        Lmiui/maml/data/Expression$FunctionExpression;,
        Lmiui/maml/data/Expression$FunctionImpl;,
        Lmiui/maml/data/Expression$BinaryExpression;,
        Lmiui/maml/data/Expression$UnaryExpression;,
        Lmiui/maml/data/Expression$StringExpression;,
        Lmiui/maml/data/Expression$NumberExpression;,
        Lmiui/maml/data/Expression$StringArrayVariableExpression;,
        Lmiui/maml/data/Expression$NumberArrayVariableExpression;,
        Lmiui/maml/data/Expression$ArrayVariableExpression;,
        Lmiui/maml/data/Expression$StringVariableExpression;,
        Lmiui/maml/data/Expression$NumberVariableExpression;,
        Lmiui/maml/data/Expression$VariableExpression;,
        Lmiui/maml/data/Expression$Tokenizer;,
        Lmiui/maml/data/Expression$Ope;,
        Lmiui/maml/data/Expression$OpeInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    return-void
.end method

.method static synthetic access$200(C)Z
    .locals 1
    .param p0, "x0"    # C

    .prologue
    .line 20
    invoke-static {p0}, Lmiui/maml/data/Expression;->isVariableChar(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(C)Z
    .locals 1
    .param p0, "x0"    # C

    .prologue
    .line 20
    invoke-static {p0}, Lmiui/maml/data/Expression;->isDigitCharStart(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(C)Z
    .locals 1
    .param p0, "x0"    # C

    .prologue
    .line 20
    invoke-static {p0}, Lmiui/maml/data/Expression;->isDigitCharRest(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(C)Z
    .locals 1
    .param p0, "x0"    # C

    .prologue
    .line 20
    invoke-static {p0}, Lmiui/maml/data/Expression;->isFunctionCharStart(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(C)Z
    .locals 1
    .param p0, "x0"    # C

    .prologue
    .line 20
    invoke-static {p0}, Lmiui/maml/data/Expression;->isFunctionCharRest(C)Z

    move-result v0

    return v0
.end method

.method public static build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;
    .locals 2
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "exp"    # Ljava/lang/String;

    .prologue
    .line 844
    invoke-static {p0, p1}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .line 845
    .local v0, "ex":Lmiui/maml/data/Expression;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lmiui/maml/data/RootExpression;

    invoke-direct {v1, p0, v0}, Lmiui/maml/data/RootExpression;-><init>(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;)V

    goto :goto_0
.end method

.method private static buildBracket(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/maml/data/Expression;
    .locals 6
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "token"    # Lmiui/maml/data/Expression$Tokenizer$Token;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/maml/data/Variables;",
            "Lmiui/maml/data/Expression$Tokenizer$Token;",
            "Ljava/util/Stack",
            "<",
            "Lmiui/maml/data/Expression$Tokenizer$Token;",
            ">;)",
            "Lmiui/maml/data/Expression;"
        }
    .end annotation

    .prologue
    .local p2, "opeStack":Ljava/util/Stack;, "Ljava/util/Stack<Lmiui/maml/data/Expression$Tokenizer$Token;>;"
    const/4 v3, 0x0

    .line 970
    iget-object v2, p1, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-static {p0, v2}, Lmiui/maml/data/Expression;->buildMultipleInner(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    .line 971
    .local v1, "newExps":[Lmiui/maml/data/Expression;
    invoke-static {v1}, Lmiui/maml/data/Expression;->checkParams([Lmiui/maml/data/Expression;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 972
    const-string v2, "Expression"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid expressions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 988
    :goto_0
    return-object v2

    .line 977
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v2, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v4, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    if-ne v2, v4, :cond_1

    .line 978
    new-instance v4, Lmiui/maml/data/Expression$FunctionExpression;

    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v2, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v4, p0, v1, v2}, Lmiui/maml/data/Expression$FunctionExpression;-><init>(Lmiui/maml/data/Variables;[Lmiui/maml/data/Expression;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    .line 979
    :cond_1
    array-length v2, v1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 980
    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 984
    const-string v2, "Expression"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v2, "Expression"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to buid: multiple expressions in brackets, but seems no function presents:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 988
    goto :goto_0
.end method

.method private static buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;
    .locals 19
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "exp"    # Ljava/lang/String;

    .prologue
    .line 849
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 850
    const/4 v3, 0x0

    .line 966
    :cond_0
    :goto_0
    return-object v3

    .line 856
    :cond_1
    new-instance v13, Lmiui/maml/data/Expression$Tokenizer;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lmiui/maml/data/Expression$Tokenizer;-><init>(Ljava/lang/String;)V

    .line 857
    .local v13, "tk":Lmiui/maml/data/Expression$Tokenizer;
    const/4 v14, 0x0

    .line 858
    .local v14, "token":Lmiui/maml/data/Expression$Tokenizer$Token;
    const/4 v12, 0x0

    .line 859
    .local v12, "preToken":Lmiui/maml/data/Expression$Tokenizer$Token;
    new-instance v11, Ljava/util/Stack;

    invoke-direct {v11}, Ljava/util/Stack;-><init>()V

    .line 860
    .local v11, "opeStack":Ljava/util/Stack;, "Ljava/util/Stack<Lmiui/maml/data/Expression$Tokenizer$Token;>;"
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 861
    .local v5, "expStack":Ljava/util/Stack;, "Ljava/util/Stack<Lmiui/maml/data/Expression;>;"
    :goto_1
    invoke-virtual {v13}, Lmiui/maml/data/Expression$Tokenizer;->getToken()Lmiui/maml/data/Expression$Tokenizer$Token;

    move-result-object v14

    if-eqz v14, :cond_f

    .line 865
    sget-object v16, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 953
    :goto_2
    move-object v12, v14

    goto :goto_1

    .line 872
    :pswitch_0
    const/4 v9, 0x0

    .line 873
    .local v9, "newExp":Lmiui/maml/data/Expression;
    sget-object v16, Lmiui/maml/data/Expression$1;->$SwitchMap$miui$maml$data$Expression$Tokenizer$TokenType:[I

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_1

    .line 924
    :cond_2
    :goto_3
    invoke-virtual {v11}, Ljava/util/Stack;->empty()Z

    move-result v16

    if-nez v16, :cond_a

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lmiui/maml/data/Expression$OpeInfo;->unary:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 925
    new-instance v10, Lmiui/maml/data/Expression$UnaryExpression;

    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v10, v9, v0}, Lmiui/maml/data/Expression$UnaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    .local v10, "newExp":Lmiui/maml/data/Expression;
    move-object v9, v10

    .end local v10    # "newExp":Lmiui/maml/data/Expression;
    .restart local v9    # "newExp":Lmiui/maml/data/Expression;
    goto :goto_3

    .line 875
    :pswitch_1
    new-instance v9, Lmiui/maml/data/Expression$NumberVariableExpression;

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v9, v0, v1}, Lmiui/maml/data/Expression$NumberVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 876
    .restart local v9    # "newExp":Lmiui/maml/data/Expression;
    goto :goto_3

    .line 878
    :pswitch_2
    new-instance v9, Lmiui/maml/data/Expression$StringVariableExpression;

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v9, v0, v1}, Lmiui/maml/data/Expression$StringVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 879
    .restart local v9    # "newExp":Lmiui/maml/data/Expression;
    goto :goto_3

    .line 881
    :pswitch_3
    invoke-virtual {v11}, Ljava/util/Stack;->empty()Z

    move-result v16

    if-nez v16, :cond_3

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v16, v0

    sget-object v17, Lmiui/maml/data/Expression$Ope;->MIN:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lmiui/maml/data/Expression$OpeInfo;->unary:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    const/4 v8, 0x1

    .line 883
    .local v8, "minus":Z
    :goto_4
    new-instance v9, Lmiui/maml/data/Expression$NumberExpression;

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_4

    const-string v16, "-"

    :goto_5
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Lmiui/maml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    .line 884
    .restart local v9    # "newExp":Lmiui/maml/data/Expression;
    if-eqz v8, :cond_2

    .line 885
    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_3

    .line 881
    .end local v8    # "minus":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_4

    .line 883
    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    .restart local v8    # "minus":Z
    :cond_4
    const-string v16, ""

    goto :goto_5

    .line 890
    .end local v8    # "minus":Z
    .restart local v9    # "newExp":Lmiui/maml/data/Expression;
    :pswitch_4
    new-instance v9, Lmiui/maml/data/Expression$StringExpression;

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Lmiui/maml/data/Expression$StringExpression;-><init>(Ljava/lang/String;)V

    .line 891
    .restart local v9    # "newExp":Lmiui/maml/data/Expression;
    goto/16 :goto_3

    .line 893
    :pswitch_5
    move-object/from16 v0, p0

    invoke-static {v0, v14, v11}, Lmiui/maml/data/Expression;->buildBracket(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/maml/data/Expression;

    move-result-object v9

    .line 894
    if-nez v9, :cond_2

    .line 895
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 898
    :pswitch_6
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 899
    const-string v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fail to buid: no array name before []:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 902
    :cond_5
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/data/Expression;

    .line 903
    .local v7, "lastExp":Lmiui/maml/data/Expression;
    instance-of v0, v7, Lmiui/maml/data/Expression$VariableExpression;

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 904
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    .line 905
    .local v6, "indexExp":Lmiui/maml/data/Expression;
    if-nez v6, :cond_6

    .line 906
    const-string v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fail to buid: no index expression in []:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v16, v7

    .line 909
    check-cast v16, Lmiui/maml/data/Expression$VariableExpression;

    invoke-virtual/range {v16 .. v16}, Lmiui/maml/data/Expression$VariableExpression;->getName()Ljava/lang/String;

    move-result-object v15

    .line 910
    .local v15, "varName":Ljava/lang/String;
    instance-of v0, v7, Lmiui/maml/data/Expression$NumberVariableExpression;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 911
    new-instance v9, Lmiui/maml/data/Expression$NumberArrayVariableExpression;

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    move-object/from16 v0, p0

    invoke-direct {v9, v0, v15, v6}, Lmiui/maml/data/Expression$NumberArrayVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V

    .line 918
    .end local v6    # "indexExp":Lmiui/maml/data/Expression;
    .end local v15    # "varName":Ljava/lang/String;
    .restart local v9    # "newExp":Lmiui/maml/data/Expression;
    :cond_7
    :goto_6
    if-nez v9, :cond_2

    .line 919
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 912
    .restart local v6    # "indexExp":Lmiui/maml/data/Expression;
    .restart local v15    # "varName":Ljava/lang/String;
    :cond_8
    instance-of v0, v7, Lmiui/maml/data/Expression$StringVariableExpression;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 913
    new-instance v9, Lmiui/maml/data/Expression$StringArrayVariableExpression;

    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    move-object/from16 v0, p0

    invoke-direct {v9, v0, v15, v6}, Lmiui/maml/data/Expression$StringArrayVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V

    .restart local v9    # "newExp":Lmiui/maml/data/Expression;
    goto :goto_6

    .line 916
    .end local v6    # "indexExp":Lmiui/maml/data/Expression;
    .end local v15    # "varName":Ljava/lang/String;
    :cond_9
    const-string v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fail to buid: the expression before [] is not a variable:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 927
    .end local v7    # "lastExp":Lmiui/maml/data/Expression;
    :cond_a
    invoke-virtual {v5, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 930
    .end local v9    # "newExp":Lmiui/maml/data/Expression;
    :pswitch_7
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lmiui/maml/data/Expression$OpeInfo;->participants:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    if-eqz v12, :cond_b

    iget-object v0, v12, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v16, v0

    sget-object v17, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 932
    :cond_b
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lmiui/maml/data/Expression$OpeInfo;->unary:Z

    .line 933
    invoke-virtual {v11, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 942
    :cond_c
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/data/Expression;

    .line 943
    .local v3, "exp2":Lmiui/maml/data/Expression;
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression;

    .line 944
    .local v2, "exp1":Lmiui/maml/data/Expression;
    new-instance v17, Lmiui/maml/data/Expression$BinaryExpression;

    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v16, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v3, v1}, Lmiui/maml/data/Expression$BinaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    .end local v2    # "exp1":Lmiui/maml/data/Expression;
    .end local v3    # "exp2":Lmiui/maml/data/Expression;
    :cond_d
    invoke-virtual {v11}, Ljava/util/Stack;->size()I

    move-result v16

    if-lez v16, :cond_e

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v16, v0

    sget-object v17, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_e

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lmiui/maml/data/Expression$OpeInfo;->priority:I

    move/from16 v16, v0

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmiui/maml/data/Expression$OpeInfo;->priority:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    if-gtz v16, :cond_e

    .line 938
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    .line 939
    const-string v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fail to buid: invalid operator position:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 946
    :cond_e
    invoke-virtual {v11, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 950
    :pswitch_8
    invoke-virtual {v11, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 956
    :cond_f
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v16

    invoke-virtual {v11}, Ljava/util/Stack;->size()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_10

    .line 957
    const-string v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fail to buid: invalid expression:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 961
    :cond_10
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/data/Expression;

    .line 962
    .restart local v3    # "exp2":Lmiui/maml/data/Expression;
    :goto_7
    invoke-virtual {v11}, Ljava/util/Stack;->size()I

    move-result v16

    if-lez v16, :cond_0

    .line 963
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression;

    .line 964
    .restart local v2    # "exp1":Lmiui/maml/data/Expression;
    new-instance v4, Lmiui/maml/data/Expression$BinaryExpression;

    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v2, v3, v0}, Lmiui/maml/data/Expression$BinaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V

    .end local v3    # "exp2":Lmiui/maml/data/Expression;
    .local v4, "exp2":Lmiui/maml/data/Expression;
    move-object v3, v4

    .line 965
    .end local v4    # "exp2":Lmiui/maml/data/Expression;
    .restart local v3    # "exp2":Lmiui/maml/data/Expression;
    goto :goto_7

    .line 865
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 873
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;
    .locals 5
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "exp"    # Ljava/lang/String;

    .prologue
    .line 799
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 800
    const/4 v3, 0x0

    .line 812
    :cond_0
    return-object v3

    .line 802
    :cond_1
    invoke-static {p0, p1}, Lmiui/maml/data/Expression;->buildMultipleInner(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    .line 803
    .local v1, "exps":[Lmiui/maml/data/Expression;
    array-length v4, v1

    new-array v3, v4, [Lmiui/maml/data/Expression;

    .line 804
    .local v3, "roots":[Lmiui/maml/data/Expression;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 805
    aget-object v0, v1, v2

    .line 806
    .local v0, "expression":Lmiui/maml/data/Expression;
    if-eqz v0, :cond_2

    instance-of v4, v0, Lmiui/maml/data/Expression$NumberExpression;

    if-nez v4, :cond_2

    instance-of v4, v0, Lmiui/maml/data/Expression$StringExpression;

    if-eqz v4, :cond_3

    .line 807
    :cond_2
    aput-object v0, v3, v2

    .line 804
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 809
    :cond_3
    new-instance v4, Lmiui/maml/data/RootExpression;

    invoke-direct {v4, p0, v0}, Lmiui/maml/data/RootExpression;-><init>(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;)V

    aput-object v4, v3, v2

    goto :goto_1
.end method

.method private static buildMultipleInner(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;
    .locals 8
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "exp"    # Ljava/lang/String;

    .prologue
    .line 816
    const/4 v0, 0x0

    .line 817
    .local v0, "bracketCount":I
    const/4 v4, 0x0

    .line 818
    .local v4, "inApostrophe":Z
    const/4 v6, 0x0

    .line 819
    .local v6, "start":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .local v2, "exps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/data/Expression;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 821
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 822
    .local v1, "c":C
    if-nez v4, :cond_0

    .line 823
    const/16 v7, 0x2c

    if-ne v1, v7, :cond_2

    if-nez v0, :cond_2

    .line 824
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    add-int/lit8 v6, v3, 0x1

    .line 832
    :cond_0
    :goto_1
    const/16 v7, 0x27

    if-ne v1, v7, :cond_1

    .line 833
    if-nez v4, :cond_4

    const/4 v4, 0x1

    .line 820
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 826
    :cond_2
    const/16 v7, 0x28

    if-ne v1, v7, :cond_3

    .line 827
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 828
    :cond_3
    const/16 v7, 0x29

    if-ne v1, v7, :cond_0

    .line 829
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 833
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 836
    .end local v1    # "c":C
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 837
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Lmiui/maml/data/Expression;

    .line 840
    .local v5, "ret":[Lmiui/maml/data/Expression;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lmiui/maml/data/Expression;

    return-object v7
.end method

.method private static checkParams([Lmiui/maml/data/Expression;)Z
    .locals 2
    .param p0, "params"    # [Lmiui/maml/data/Expression;

    .prologue
    .line 992
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 993
    aget-object v1, p0, v0

    if-nez v1, :cond_0

    .line 994
    const/4 v1, 0x0

    .line 996
    :goto_1
    return v1

    .line 992
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 996
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isDigitCharRest(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 786
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-le p0, v0, :cond_3

    :cond_2
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDigitCharStart(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 782
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFunctionCharRest(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 794
    invoke-static {p0}, Lmiui/maml/data/Expression;->isFunctionCharStart(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x30

    if-lt p0, v0, :cond_1

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFunctionCharStart(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 790
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVariableChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 778
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .locals 0
    .param p1, "v"    # Lmiui/maml/data/ExpressionVisitor;

    .prologue
    .line 1019
    invoke-virtual {p1, p0}, Lmiui/maml/data/ExpressionVisitor;->visit(Lmiui/maml/data/Expression;)V

    .line 1020
    return-void
.end method

.method public abstract evaluate()D
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1015
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 1011
    const/4 v0, 0x0

    return v0
.end method

.method public preciseEvaluate()Ljava/math/BigDecimal;
    .locals 4

    .prologue
    .line 1002
    invoke-virtual {p0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    .line 1004
    .local v2, "value":D
    :try_start_0
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1006
    :goto_0
    return-object v1

    .line 1005
    :catch_0
    move-exception v0

    .line 1006
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method
