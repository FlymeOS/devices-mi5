.class Lmiui/maml/util/IntentInfo$Extra;
.super Ljava/lang/Object;
.source "IntentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/IntentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Extra"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Extra"


# instance fields
.field private mCondition:Lmiui/maml/data/Expression;

.field private mExpression:Lmiui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field protected mType:Lmiui/maml/util/IntentInfo$Type;

.field final synthetic this$0:Lmiui/maml/util/IntentInfo;


# direct methods
.method public constructor <init>(Lmiui/maml/util/IntentInfo;Lorg/w3c/dom/Element;)V
    .locals 1
    .param p2, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 53
    iput-object p1, p0, Lmiui/maml/util/IntentInfo$Extra;->this$0:Lmiui/maml/util/IntentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lmiui/maml/util/IntentInfo$Type;->DOUBLE:Lmiui/maml/util/IntentInfo$Type;

    iput-object v0, p0, Lmiui/maml/util/IntentInfo$Extra;->mType:Lmiui/maml/util/IntentInfo$Type;

    .line 54
    invoke-direct {p0, p2}, Lmiui/maml/util/IntentInfo$Extra;->load(Lorg/w3c/dom/Element;)V

    .line 55
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    const-string v1, "TaskVariable"

    const-string v2, "node is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mName:Ljava/lang/String;

    .line 65
    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "type":Ljava/lang/String;
    const-string v1, "string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->STRING:Lmiui/maml/util/IntentInfo$Type;

    iput-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mType:Lmiui/maml/util/IntentInfo$Type;

    .line 80
    :cond_1
    :goto_1
    iget-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->this$0:Lmiui/maml/util/IntentInfo;

    # getter for: Lmiui/maml/util/IntentInfo;->mVariables:Lmiui/maml/data/Variables;
    invoke-static {v1}, Lmiui/maml/util/IntentInfo;->access$000(Lmiui/maml/util/IntentInfo;)Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "expression"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mExpression:Lmiui/maml/data/Expression;

    .line 81
    iget-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mExpression:Lmiui/maml/data/Expression;

    if-nez v1, :cond_2

    .line 82
    const-string v1, "TaskVariable"

    const-string v2, "invalid expression in IntentCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_2
    iget-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->this$0:Lmiui/maml/util/IntentInfo;

    # getter for: Lmiui/maml/util/IntentInfo;->mVariables:Lmiui/maml/data/Variables;
    invoke-static {v1}, Lmiui/maml/util/IntentInfo;->access$000(Lmiui/maml/util/IntentInfo;)Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "condition"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mCondition:Lmiui/maml/data/Expression;

    goto :goto_0

    .line 68
    :cond_3
    const-string v1, "int"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "integer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 69
    :cond_4
    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->INT:Lmiui/maml/util/IntentInfo$Type;

    iput-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mType:Lmiui/maml/util/IntentInfo$Type;

    goto :goto_1

    .line 70
    :cond_5
    const-string v1, "long"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 71
    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->LONG:Lmiui/maml/util/IntentInfo$Type;

    iput-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mType:Lmiui/maml/util/IntentInfo$Type;

    goto :goto_1

    .line 72
    :cond_6
    const-string v1, "float"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 73
    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->FLOAT:Lmiui/maml/util/IntentInfo$Type;

    iput-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mType:Lmiui/maml/util/IntentInfo$Type;

    goto :goto_1

    .line 74
    :cond_7
    const-string v1, "double"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 75
    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->DOUBLE:Lmiui/maml/util/IntentInfo$Type;

    iput-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mType:Lmiui/maml/util/IntentInfo$Type;

    goto :goto_1

    .line 76
    :cond_8
    const-string v1, "boolean"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->BOOLEAN:Lmiui/maml/util/IntentInfo$Type;

    iput-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mType:Lmiui/maml/util/IntentInfo$Type;

    goto :goto_1
.end method


# virtual methods
.method public getDouble()D
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lmiui/maml/util/IntentInfo$Extra;->mExpression:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    .line 96
    const-wide/16 v0, 0x0

    .line 97
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/util/IntentInfo$Extra;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lmiui/maml/util/IntentInfo$Extra;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lmiui/maml/util/IntentInfo$Extra;->mExpression:Lmiui/maml/data/Expression;

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/util/IntentInfo$Extra;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isConditionTrue()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 105
    iget-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mCondition:Lmiui/maml/data/Expression;

    if-nez v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lmiui/maml/util/IntentInfo$Extra;->mCondition:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
