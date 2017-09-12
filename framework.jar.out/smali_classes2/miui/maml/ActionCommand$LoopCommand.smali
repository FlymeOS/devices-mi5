.class Lmiui/maml/ActionCommand$LoopCommand;
.super Lmiui/maml/ActionCommand$MultiCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoopCommand"
.end annotation


# static fields
.field private static final COUNT_WARNING:J = 0x2710L

.field public static final TAG_NAME:Ljava/lang/String; = "LoopCommand"


# instance fields
.field private mBeginExp:Lmiui/maml/data/Expression;

.field private mConditionExp:Lmiui/maml/data/Expression;

.field private mCountExp:Lmiui/maml/data/Expression;

.field private mEndExp:Lmiui/maml/data/Expression;

.field private mIndexVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 4
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 1948
    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$MultiCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 1950
    const-string v2, "indexName"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1951
    .local v0, "indexName":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$LoopCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    .line 1952
    .local v1, "variables":Lmiui/maml/data/Variables;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1953
    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    .line 1955
    :cond_0
    const-string v2, "begin"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mBeginExp:Lmiui/maml/data/Expression;

    .line 1956
    const-string v2, "count"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCountExp:Lmiui/maml/data/Expression;

    .line 1957
    iget-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCountExp:Lmiui/maml/data/Expression;

    if-nez v2, :cond_1

    .line 1958
    const-string v2, "end"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mEndExp:Lmiui/maml/data/Expression;

    .line 1960
    :cond_1
    const-string v2, "loopCondition"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$LoopCommand;->mConditionExp:Lmiui/maml/data/Expression;

    .line 1961
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x2710

    const/4 v5, 0x0

    .line 1965
    iget-object v6, p0, Lmiui/maml/ActionCommand$LoopCommand;->mBeginExp:Lmiui/maml/data/Expression;

    if-nez v6, :cond_2

    move v1, v5

    .line 1966
    .local v1, "begin":I
    :goto_0
    iget-object v6, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCountExp:Lmiui/maml/data/Expression;

    if-eqz v6, :cond_3

    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCountExp:Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v5, v6

    add-int/2addr v5, v1

    add-int/lit8 v2, v5, -0x1

    .line 1968
    .local v2, "end":I
    :goto_1
    sub-int v5, v2, v1

    int-to-long v6, v5

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 1969
    const-string v5, "ActionCommand"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "count is too large: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v7, v2, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", exceeds WARNING "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    :cond_0
    move v4, v1

    .local v4, "idx":I
    :goto_2
    if-gt v4, v2, :cond_1

    .line 1972
    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mConditionExp:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mConditionExp:Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_5

    .line 1983
    :cond_1
    return-void

    .line 1965
    .end local v1    # "begin":I
    .end local v2    # "end":I
    .end local v4    # "idx":I
    :cond_2
    iget-object v6, p0, Lmiui/maml/ActionCommand$LoopCommand;->mBeginExp:Lmiui/maml/data/Expression;

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v1, v6

    goto :goto_0

    .line 1966
    .restart local v1    # "begin":I
    :cond_3
    iget-object v6, p0, Lmiui/maml/ActionCommand$LoopCommand;->mEndExp:Lmiui/maml/data/Expression;

    if-nez v6, :cond_4

    move v2, v5

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mEndExp:Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v2, v6

    goto :goto_1

    .line 1975
    .restart local v2    # "end":I
    .restart local v4    # "idx":I
    :cond_5
    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v5, :cond_6

    .line 1976
    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v6, v4

    invoke-virtual {v5, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 1978
    :cond_6
    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1979
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v0, :cond_7

    .line 1980
    iget-object v5, p0, Lmiui/maml/ActionCommand$LoopCommand;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/ActionCommand;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand;->perform()V

    .line 1979
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1971
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
