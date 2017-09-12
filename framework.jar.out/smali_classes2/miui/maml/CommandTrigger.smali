.class public Lmiui/maml/CommandTrigger;
.super Ljava/lang/Object;
.source "CommandTrigger.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Trigger"


# instance fields
.field private mActionStrings:[Ljava/lang/String;

.field private mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ActionCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mCondition:Lmiui/maml/data/Expression;

.field private mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

.field private mScreenElement:Lmiui/maml/elements/ScreenElement;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .param p1, "ele"    # Lorg/w3c/dom/Element;
    .param p2, "parent"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 40
    if-eqz p1, :cond_0

    .line 41
    invoke-direct {p0, p1, p2}, Lmiui/maml/CommandTrigger;->load(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    .line 42
    :cond_0
    return-void
.end method

.method public static fromElement(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/CommandTrigger;
    .locals 1
    .param p0, "ele"    # Lorg/w3c/dom/Element;
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 49
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmiui/maml/CommandTrigger;

    invoke-direct {v0, p0, p1}, Lmiui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    goto :goto_0
.end method

.method public static fromParentElement(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/CommandTrigger;
    .locals 1
    .param p0, "parent"    # Lorg/w3c/dom/Element;
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 45
    const-string v0, "Trigger"

    invoke-static {p0, v0}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/maml/CommandTrigger;->fromElement(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    return-object v0
.end method

.method private load(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .locals 10
    .param p1, "ele"    # Lorg/w3c/dom/Element;
    .param p2, "screenElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 53
    iput-object p2, p0, Lmiui/maml/CommandTrigger;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    .line 55
    const-string v8, "target"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "target":Ljava/lang/String;
    const-string v8, "property"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "property":Ljava/lang/String;
    const-string/jumbo v8, "value"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 60
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p2, v8, v7}, Lmiui/maml/ActionCommand$PropertyCommand;->create(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand$PropertyCommand;

    move-result-object v8

    iput-object v8, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    .line 63
    :cond_0
    const-string v8, "action"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "action":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmiui/maml/CommandTrigger;->mActionStrings:[Ljava/lang/String;

    .line 67
    iget-object v8, p0, Lmiui/maml/CommandTrigger;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v8}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v8

    const-string v9, "condition"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v8

    iput-object v8, p0, Lmiui/maml/CommandTrigger;->mCondition:Lmiui/maml/data/Expression;

    .line 70
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 71
    .local v1, "children":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 72
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 73
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 74
    .local v4, "item":Lorg/w3c/dom/Element;
    invoke-static {v4, p2}, Lmiui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/ActionCommand;

    move-result-object v2

    .line 75
    .local v2, "command":Lmiui/maml/ActionCommand;
    if-eqz v2, :cond_1

    .line 76
    iget-object v8, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v2    # "command":Lmiui/maml/ActionCommand;
    .end local v4    # "item":Lorg/w3c/dom/Element;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_2
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 106
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$PropertyCommand;->finish()V

    .line 109
    :cond_0
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 110
    .local v0, "cmd":Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->finish()V

    goto :goto_0

    .line 112
    .end local v0    # "cmd":Lmiui/maml/ActionCommand;
    :cond_1
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 97
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$PropertyCommand;->init()V

    .line 100
    :cond_0
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 101
    .local v0, "cmd":Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->init()V

    goto :goto_0

    .line 103
    .end local v0    # "cmd":Lmiui/maml/ActionCommand;
    :cond_1
    return-void
.end method

.method public isAction(Ljava/lang/String;)Z
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lmiui/maml/CommandTrigger;->mActionStrings:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 139
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    const/4 v4, 0x1

    .line 143
    .end local v3    # "s":Ljava/lang/String;
    :goto_1
    return v4

    .line 138
    .restart local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lmiui/maml/CommandTrigger;->isAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lmiui/maml/CommandTrigger;->perform()V

    .line 135
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 115
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$PropertyCommand;->pause()V

    .line 118
    :cond_0
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 119
    .local v0, "cmd":Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->pause()V

    goto :goto_0

    .line 121
    .end local v0    # "cmd":Lmiui/maml/ActionCommand;
    :cond_1
    return-void
.end method

.method public perform()V
    .locals 6

    .prologue
    .line 83
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCondition:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCondition:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 94
    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    if-eqz v2, :cond_2

    .line 88
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$PropertyCommand;->perform()V

    .line 91
    :cond_2
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 92
    .local v0, "cmd":Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->perform()V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 124
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$PropertyCommand;->resume()V

    .line 127
    :cond_0
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 128
    .local v0, "cmd":Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->resume()V

    goto :goto_0

    .line 130
    .end local v0    # "cmd":Lmiui/maml/ActionCommand;
    :cond_1
    return-void
.end method
