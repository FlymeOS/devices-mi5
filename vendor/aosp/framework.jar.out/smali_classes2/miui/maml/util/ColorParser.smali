.class public Lmiui/maml/util/ColorParser;
.super Ljava/lang/Object;
.source "ColorParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/ColorParser$1;,
        Lmiui/maml/util/ColorParser$ExpressionType;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLOR:I = -0x1000000

.field private static final LOG_TAG:Ljava/lang/String; = "ColorParser"


# instance fields
.field private mColor:I

.field private mColorExpression:Ljava/lang/String;

.field private mCurColorString:Ljava/lang/String;

.field private mIndexedColorVar:Lmiui/maml/data/IndexedVariable;

.field private mRGBExpression:[Lmiui/maml/data/Expression;

.field private mType:Lmiui/maml/util/ColorParser$ExpressionType;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V
    .locals 4
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "expression"    # Ljava/lang/String;

    .prologue
    const/high16 v3, -0x1000000

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v3, p0, Lmiui/maml/util/ColorParser;->mColor:I

    .line 39
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->CONST:Lmiui/maml/util/ColorParser$ExpressionType;

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mType:Lmiui/maml/util/ColorParser$ExpressionType;

    .line 43
    :try_start_0
    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lmiui/maml/util/ColorParser;->mColor:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iput v3, p0, Lmiui/maml/util/ColorParser;->mColor:I

    goto :goto_0

    .line 47
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->VARIABLE:Lmiui/maml/util/ColorParser$ExpressionType;

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mType:Lmiui/maml/util/ColorParser$ExpressionType;

    .line 49
    new-instance v1, Lmiui/maml/data/IndexedVariable;

    iget-object v2, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mIndexedColorVar:Lmiui/maml/data/IndexedVariable;

    goto :goto_0

    .line 50
    :cond_2
    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const-string v2, "argb("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->ARGB:Lmiui/maml/util/ColorParser$ExpressionType;

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mType:Lmiui/maml/util/ColorParser$ExpressionType;

    .line 52
    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const/4 v2, 0x5

    iget-object v3, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    .line 53
    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    array-length v1, v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 54
    const-string v1, "ColorParser"

    const-string v2, "bad expression format"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bad expression format."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_3
    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->INVALID:Lmiui/maml/util/ColorParser$ExpressionType;

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mType:Lmiui/maml/util/ColorParser$ExpressionType;

    goto :goto_0
.end method

.method public static fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;)Lmiui/maml/util/ColorParser;
    .locals 2
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "e"    # Lorg/w3c/dom/Element;

    .prologue
    .line 89
    new-instance v0, Lmiui/maml/util/ColorParser;

    const-string v1, "color"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/maml/util/ColorParser;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Lmiui/maml/util/ColorParser;
    .locals 2
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "e"    # Lorg/w3c/dom/Element;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "style"    # Lmiui/maml/StylesManager$Style;

    .prologue
    .line 97
    new-instance v0, Lmiui/maml/util/ColorParser;

    invoke-static {p1, p2, p3}, Lmiui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/maml/util/ColorParser;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Lmiui/maml/StylesManager$Style;)Lmiui/maml/util/ColorParser;
    .locals 2
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "e"    # Lorg/w3c/dom/Element;
    .param p2, "style"    # Lmiui/maml/StylesManager$Style;

    .prologue
    .line 93
    new-instance v0, Lmiui/maml/util/ColorParser;

    const-string v1, "color"

    invoke-static {p1, v1, p2}, Lmiui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/maml/util/ColorParser;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getColor()I
    .locals 8

    .prologue
    const/high16 v5, -0x1000000

    .line 63
    sget-object v6, Lmiui/maml/util/ColorParser$1;->$SwitchMap$miui$maml$util$ColorParser$ExpressionType:[I

    iget-object v7, p0, Lmiui/maml/util/ColorParser;->mType:Lmiui/maml/util/ColorParser$ExpressionType;

    invoke-virtual {v7}, Lmiui/maml/util/ColorParser$ExpressionType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 81
    iput v5, p0, Lmiui/maml/util/ColorParser;->mColor:I

    .line 85
    :cond_0
    :goto_0
    :pswitch_0
    iget v5, p0, Lmiui/maml/util/ColorParser;->mColor:I

    return v5

    .line 67
    :pswitch_1
    iget-object v6, p0, Lmiui/maml/util/ColorParser;->mIndexedColorVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v6}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "colorString":Ljava/lang/String;
    iget-object v6, p0, Lmiui/maml/util/ColorParser;->mCurColorString:Ljava/lang/String;

    invoke-static {v2, v6}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 69
    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    :cond_1
    iput v5, p0, Lmiui/maml/util/ColorParser;->mColor:I

    .line 70
    iput-object v2, p0, Lmiui/maml/util/ColorParser;->mCurColorString:Ljava/lang/String;

    goto :goto_0

    .line 74
    .end local v2    # "colorString":Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v0, v6

    .line 75
    .local v0, "a":I
    iget-object v5, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v4, v6

    .line 76
    .local v4, "r":I
    iget-object v5, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v3, v6

    .line 77
    .local v3, "g":I
    iget-object v5, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v1, v6

    .line 78
    .local v1, "b":I
    invoke-static {v0, v4, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    iput v5, p0, Lmiui/maml/util/ColorParser;->mColor:I

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
