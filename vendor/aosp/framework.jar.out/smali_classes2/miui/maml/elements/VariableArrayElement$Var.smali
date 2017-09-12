.class Lmiui/maml/elements/VariableArrayElement$Var;
.super Ljava/lang/Object;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/VariableArrayElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Var"
.end annotation


# instance fields
.field private mConst:Z

.field private mCurrentItemIsExpression:Z

.field private mIndex:I

.field private mIndexExpression:Lmiui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field private mVar:Lmiui/maml/data/IndexedVariable;

.field final synthetic this$0:Lmiui/maml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/VariableArrayElement;Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;)V
    .locals 5
    .param p2, "vars"    # Lmiui/maml/data/Variables;
    .param p3, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 68
    iput-object p1, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 69
    if-eqz p3, :cond_0

    .line 70
    const-string v0, "name"

    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    .line 71
    const-string v0, "index"

    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndexExpression:Lmiui/maml/data/Expression;

    .line 72
    const-string v0, "const"

    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mConst:Z

    .line 73
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lmiui/maml/elements/VariableArrayElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    iget-object v0, p1, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    sget-object v4, Lmiui/maml/elements/VariableArrayElement$Type;->STRING:Lmiui/maml/elements/VariableArrayElement$Type;

    if-eq v0, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v3, v0}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mVar:Lmiui/maml/data/IndexedVariable;

    .line 75
    :cond_0
    return-void

    .line 73
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private update()V
    .locals 6

    .prologue
    .line 88
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndexExpression:Lmiui/maml/data/Expression;

    if-nez v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v0, v2

    .line 92
    .local v0, "index":I
    if-ltz v0, :cond_2

    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    # getter for: Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/maml/elements/VariableArrayElement;->access$000(Lmiui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 94
    :cond_2
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    iget-object v2, v2, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    sget-object v3, Lmiui/maml/elements/VariableArrayElement$Type;->STRING:Lmiui/maml/elements/VariableArrayElement$Type;

    if-ne v2, v3, :cond_3

    .line 95
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mVar:Lmiui/maml/data/IndexedVariable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_3
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    iget-object v2, v2, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    sget-object v3, Lmiui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lmiui/maml/elements/VariableArrayElement$Type;

    if-ne v2, v3, :cond_0

    .line 97
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mVar:Lmiui/maml/data/IndexedVariable;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    goto :goto_0

    .line 102
    :cond_4
    iget v2, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndex:I

    if-ne v2, v0, :cond_5

    iget-boolean v2, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    if-eqz v2, :cond_0

    .line 107
    :cond_5
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    # getter for: Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/maml/elements/VariableArrayElement;->access$000(Lmiui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/VariableArrayElement$Item;

    .line 108
    .local v1, "item":Lmiui/maml/elements/VariableArrayElement$Item;
    iget v2, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndex:I

    if-eq v2, v0, :cond_6

    .line 109
    iput v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 110
    invoke-virtual {v1}, Lmiui/maml/elements/VariableArrayElement$Item;->isExpression()Z

    move-result v2

    iput-boolean v2, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mCurrentItemIsExpression:Z

    .line 113
    :cond_6
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    iget-object v2, v2, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    sget-object v3, Lmiui/maml/elements/VariableArrayElement$Type;->STRING:Lmiui/maml/elements/VariableArrayElement$Type;

    if-ne v2, v3, :cond_7

    .line 114
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1}, Lmiui/maml/elements/VariableArrayElement$Item;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_7
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement$Var;->this$0:Lmiui/maml/elements/VariableArrayElement;

    iget-object v2, v2, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    sget-object v3, Lmiui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lmiui/maml/elements/VariableArrayElement$Type;

    if-ne v2, v3, :cond_0

    .line 116
    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1}, Lmiui/maml/elements/VariableArrayElement$Item;->evaluate()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mIndex:I

    .line 84
    invoke-direct {p0}, Lmiui/maml/elements/VariableArrayElement$Var;->update()V

    .line 85
    return-void
.end method

.method public tick()V
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lmiui/maml/elements/VariableArrayElement$Var;->mConst:Z

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lmiui/maml/elements/VariableArrayElement$Var;->update()V

    .line 80
    :cond_0
    return-void
.end method
