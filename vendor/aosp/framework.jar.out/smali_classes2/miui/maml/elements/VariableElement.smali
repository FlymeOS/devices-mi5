.class public Lmiui/maml/elements/VariableElement;
.super Lmiui/maml/elements/ScreenElement;
.source "VariableElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/VariableElement$1;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VariableElement"

.field private static final OLD_VALUE:Ljava/lang/String; = "old_value"

.field public static final TAG_NAME:Ljava/lang/String; = "Var"


# instance fields
.field private mAnimation:Lmiui/maml/animation/VariableAnimation;

.field private mArraySize:I

.field private mArrayValues:[Lmiui/maml/data/Expression;

.field private mConst:Z

.field private mExpression:Lmiui/maml/data/Expression;

.field private mIndexExpression:Lmiui/maml/data/Expression;

.field private mInited:Z

.field private mOldValue:D

.field private mOldVar:Lmiui/maml/data/IndexedVariable;

.field private mThreshold:D

.field private mTrigger:Lmiui/maml/CommandTrigger;

.field private mType:Lmiui/maml/data/VariableType;

.field private mVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 6
    .param p1, "ele"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 59
    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p0}, Lmiui/maml/elements/VariableElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const-string v4, "expression"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    .line 62
    invoke-virtual {p0}, Lmiui/maml/elements/VariableElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const-string v4, "index"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    .line 63
    const-string v3, "threshold"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p1, v3, v4}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lmiui/maml/elements/VariableElement;->mThreshold:D

    .line 64
    const-string v3, "type"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lmiui/maml/data/VariableType;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    .line 65
    const-string v3, "const"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/maml/elements/VariableElement;->mConst:Z

    .line 66
    const-string v3, "size"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    .line 68
    invoke-virtual {p0}, Lmiui/maml/elements/VariableElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    .line 69
    .local v2, "variables":Lmiui/maml/data/Variables;
    new-instance v3, Lmiui/maml/data/IndexedVariable;

    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    iget-object v5, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v5}, Lmiui/maml/data/VariableType;->isNumber()Z

    move-result v5

    invoke-direct {v3, v4, v2, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    .line 70
    new-instance v3, Lmiui/maml/data/IndexedVariable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "old_value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v5}, Lmiui/maml/data/VariableType;->isNumber()Z

    move-result v5

    invoke-direct {v3, v4, v2, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    .line 73
    invoke-static {p1, p2}, Lmiui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    .line 75
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v3}, Lmiui/maml/data/VariableType;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    const-string/jumbo v3, "values"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "val":Ljava/lang/String;
    invoke-static {v2, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    .line 78
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    array-length v3, v3

    iput v3, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    .line 81
    :cond_0
    iget v3, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    if-lez v3, :cond_2

    .line 82
    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    iget v4, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    iget-object v5, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    iget-object v5, v5, Lmiui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4, v5}, Lmiui/maml/data/Variables;->createArray(Ljava/lang/String;ILjava/lang/Class;)Z

    move-result v0

    .line 83
    .local v0, "ret":Z
    if-nez v0, :cond_1

    .line 84
    const-string v3, "VariableElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to create array:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0    # "ret":Z
    .end local v1    # "val":Ljava/lang/String;
    .end local v2    # "variables":Lmiui/maml/data/Variables;
    :cond_1
    :goto_0
    return-void

    .line 87
    .restart local v1    # "val":Ljava/lang/String;
    .restart local v2    # "variables":Lmiui/maml/data/Variables;
    :cond_2
    const-string v3, "VariableElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "array size is 0:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDouble(ZI)D
    .locals 2
    .param p1, "isArray"    # Z
    .param p2, "index"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/VariableAnimation;->getValue()D

    move-result-wide v0

    .line 256
    :goto_0
    return-wide v0

    .line 253
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_0

    .line 256
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p2}, Lmiui/maml/data/IndexedVariable;->getArrDouble(I)D

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method private onValueChange(D)V
    .locals 5
    .param p1, "value"    # D

    .prologue
    .line 261
    iget-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mInited:Z

    if-nez v0, :cond_0

    .line 262
    iput-wide p1, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    .line 264
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lmiui/maml/elements/VariableElement;->mThreshold:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 265
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    iget-wide v2, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 266
    iput-wide p1, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    .line 267
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    .line 269
    :cond_1
    return-void
.end method

.method private update()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 187
    sget-object v8, Lmiui/maml/elements/VariableElement$1;->$SwitchMap$miui$maml$data$VariableType:[I

    iget-object v9, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v9}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 232
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v8}, Lmiui/maml/data/VariableType;->isNumberArray()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 233
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v8, :cond_3

    .line 234
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    double-to-int v3, v8

    .line 235
    .local v3, "index":I
    const/4 v8, 0x1

    invoke-direct {p0, v8, v3}, Lmiui/maml/elements/VariableElement;->getDouble(ZI)D

    move-result-wide v6

    .line 236
    .local v6, "value":D
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v3, v6, v7}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    .line 237
    invoke-direct {p0, v6, v7}, Lmiui/maml/elements/VariableElement;->onValueChange(D)V

    .line 248
    .end local v3    # "index":I
    .end local v6    # "value":D
    :cond_0
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v8, :cond_0

    .line 190
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "str":Ljava/lang/String;
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "oldStr":Ljava/lang/String;
    invoke-static {v5, v4}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 193
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 194
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v5}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 195
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v8, :cond_0

    .line 196
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v8}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_0

    .line 202
    .end local v4    # "oldStr":Ljava/lang/String;
    .end local v5    # "str":Ljava/lang/String;
    :pswitch_1
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v8, :cond_0

    .line 203
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v8, :cond_1

    .line 204
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v5

    .line 205
    .restart local v5    # "str":Ljava/lang/String;
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    double-to-int v3, v8

    .line 206
    .restart local v3    # "index":I
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v3}, Lmiui/maml/data/IndexedVariable;->getArrString(I)Ljava/lang/String;

    move-result-object v4

    .line 207
    .restart local v4    # "oldStr":Ljava/lang/String;
    invoke-static {v5, v4}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 208
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 209
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v3, v5}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    .line 210
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v8, :cond_0

    .line 211
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v8}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_0

    .line 214
    .end local v3    # "index":I
    .end local v4    # "oldStr":Ljava/lang/String;
    .end local v5    # "str":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    if-eqz v8, :cond_0

    .line 215
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    array-length v0, v8

    .line 216
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 217
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    aget-object v1, v8, v2

    .line 218
    .local v1, "ex":Lmiui/maml/data/Expression;
    iget-object v9, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    if-nez v1, :cond_2

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v9, v2, v8}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 218
    :cond_2
    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 225
    .end local v0    # "N":I
    .end local v1    # "ex":Lmiui/maml/data/Expression;
    .end local v2    # "i":I
    :pswitch_2
    invoke-direct {p0, v10, v10}, Lmiui/maml/elements/VariableElement;->getDouble(ZI)D

    move-result-wide v6

    .line 226
    .restart local v6    # "value":D
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 227
    invoke-direct {p0, v6, v7}, Lmiui/maml/elements/VariableElement;->onValueChange(D)V

    goto/16 :goto_0

    .line 238
    .end local v6    # "value":D
    :cond_3
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    if-eqz v8, :cond_0

    .line 239
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    array-length v0, v8

    .line 240
    .restart local v0    # "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_0

    .line 241
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    aget-object v1, v8, v2

    .line 242
    .restart local v1    # "ex":Lmiui/maml/data/Expression;
    iget-object v10, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    if-nez v1, :cond_4

    const-wide/16 v8, 0x0

    :goto_4
    invoke-virtual {v10, v2, v8, v9}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 242
    :cond_4
    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    goto :goto_4

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 105
    return-void
.end method

.method protected doTick(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 109
    iget-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mConst:Z

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    .line 113
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->finish()V

    .line 180
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    .line 182
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mInited:Z

    .line 183
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    .line 119
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->init()V

    .line 122
    :cond_0
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mInited:Z

    .line 125
    return-void
.end method

.method protected onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 95
    const-string v0, "VariableAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lmiui/maml/animation/VariableAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/VariableAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    .line 99
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;

    move-result-object v0

    goto :goto_0
.end method

.method protected onSetAnimBefore()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    .line 130
    return-void
.end method

.method protected onSetAnimEnable(Lmiui/maml/animation/BaseAnimation;)V
    .locals 1
    .param p1, "ani"    # Lmiui/maml/animation/BaseAnimation;

    .prologue
    .line 134
    instance-of v0, p1, Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_0

    .line 135
    check-cast p1, Lmiui/maml/animation/VariableAnimation;

    .end local p1    # "ani":Lmiui/maml/animation/BaseAnimation;
    iput-object p1, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    .line 137
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    .line 166
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    .line 168
    :cond_0
    return-void
.end method

.method protected pauseAnim(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 148
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 149
    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "isLoop"    # Z
    .param p8, "isDelay"    # Z

    .prologue
    .line 141
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 142
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 143
    return-void
.end method

.method public reset(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 160
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 161
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->resume()V

    .line 173
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    .line 175
    :cond_0
    return-void
.end method

.method protected resumeAnim(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 154
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    .line 155
    return-void
.end method
