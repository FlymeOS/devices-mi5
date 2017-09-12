.class public Lmiui/maml/data/VariableBinder$Variable;
.super Lmiui/maml/data/VariableBinder$TypedValue;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/VariableBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Variable"


# instance fields
.field private mArrayIndex:Lmiui/maml/data/Expression;

.field protected mDefNumberValue:D

.field protected mDefStringValue:Ljava/lang/String;

.field protected mVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$TypedValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v2

    invoke-direct {v0, v1, p3, v2}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    .line 179
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lmiui/maml/data/VariableBinder$TypedValue;-><init>(Lorg/w3c/dom/Element;)V

    .line 183
    const-string v1, "arrIndex"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    .line 184
    new-instance v2, Lmiui/maml/data/IndexedVariable;

    iget-object v3, p0, Lmiui/maml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v2, v3, p2, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    .line 185
    const-string v1, "default"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    :try_start_0
    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefNumberValue:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_1
    return-void

    .line 184
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    .line 191
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    goto :goto_1
.end method


# virtual methods
.method public set(D)V
    .locals 5
    .param p1, "value"    # D

    .prologue
    .line 197
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, v1, p1, p2}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 205
    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder$Variable;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    const-wide/16 v0, 0x0

    .line 207
    .local v0, "d":D
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 209
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lmiui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 216
    :cond_0
    :goto_0
    iget-object v2, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_2

    .line 217
    iget-object v2, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v3, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    .line 231
    .end local v0    # "d":D
    :goto_1
    return-void

    .line 212
    .restart local v0    # "d":D
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    .line 213
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 219
    :cond_2
    iget-object v2, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2, v0, v1}, Lmiui/maml/data/IndexedVariable;->set(D)V

    goto :goto_1

    .line 222
    .end local v0    # "d":D
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_4

    .line 223
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lmiui/maml/util/Utils;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    .line 225
    :cond_4
    iget-object v2, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_5

    .line 226
    iget-object v2, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v3, p0, Lmiui/maml/data/VariableBinder$Variable;->mArrayIndex:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v2, v3, p1}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto :goto_1

    .line 228
    :cond_5
    iget-object v2, p0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    .restart local v0    # "d":D
    :catch_0
    move-exception v2

    goto :goto_0
.end method
