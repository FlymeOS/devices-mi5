.class public Lmiui/maml/util/TextFormatter;
.super Ljava/lang/Object;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/TextFormatter$1;,
        Lmiui/maml/util/TextFormatter$StringVarPara;,
        Lmiui/maml/util/TextFormatter$ExpressioPara;,
        Lmiui/maml/util/TextFormatter$FormatPara;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextFormatter"


# instance fields
.field private mFormat:Ljava/lang/String;

.field private mFormatExpression:Lmiui/maml/data/Expression;

.field private mIndexedFormatVar:Lmiui/maml/data/IndexedVariable;

.field private mIndexedTextVar:Lmiui/maml/data/IndexedVariable;

.field private mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

.field private mParasValue:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;

.field private mTextExpression:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V
    .locals 2
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "paras"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2, p3}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "paras"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mIndexedTextVar:Lmiui/maml/data/IndexedVariable;

    .line 57
    :cond_0
    iput-object p3, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mIndexedFormatVar:Lmiui/maml/data/IndexedVariable;

    .line 65
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    invoke-static {p1, p4}, Lmiui/maml/util/TextFormatter$FormatPara;->buildArray(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/util/TextFormatter$FormatPara;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    .line 67
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    .line 71
    :cond_2
    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V
    .locals 0
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "paras"    # Ljava/lang/String;
    .param p5, "textExp"    # Lmiui/maml/data/Expression;
    .param p6, "formatExp"    # Lmiui/maml/data/Expression;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iput-object p5, p0, Lmiui/maml/util/TextFormatter;->mTextExpression:Lmiui/maml/data/Expression;

    .line 81
    iput-object p6, p0, Lmiui/maml/util/TextFormatter;->mFormatExpression:Lmiui/maml/data/Expression;

    .line 82
    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V
    .locals 7
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textExp"    # Lmiui/maml/data/Expression;

    .prologue
    .line 74
    const-string v3, ""

    const-string v4, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    .line 75
    return-void
.end method

.method public static fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/util/TextFormatter;
    .locals 7
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "e"    # Lorg/w3c/dom/Element;
    .param p2, "textAttr"    # Ljava/lang/String;
    .param p3, "formatAttr"    # Ljava/lang/String;
    .param p4, "parasAttr"    # Ljava/lang/String;
    .param p5, "textExpAttr"    # Ljava/lang/String;
    .param p6, "formatExpAttr"    # Ljava/lang/String;

    .prologue
    .line 235
    new-instance v0, Lmiui/maml/util/TextFormatter;

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, p5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v5

    invoke-interface {p1, p6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    return-object v0
.end method

.method public static fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Lmiui/maml/StylesManager$Style;)Lmiui/maml/util/TextFormatter;
    .locals 7
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "e"    # Lorg/w3c/dom/Element;
    .param p2, "style"    # Lmiui/maml/StylesManager$Style;

    .prologue
    .line 222
    const-string v0, "paras"

    invoke-static {p1, v0, p2}, Lmiui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "params":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "params"

    invoke-static {p1, v0, p2}, Lmiui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v4

    .line 226
    :cond_0
    new-instance v0, Lmiui/maml/util/TextFormatter;

    const-string v1, "text"

    invoke-static {p1, v1, p2}, Lmiui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "format"

    invoke-static {p1, v1, p2}, Lmiui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "textExp"

    invoke-static {p1, v1, p2}, Lmiui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v5

    const-string v1, "formatExp"

    invoke-static {p1, v1, p2}, Lmiui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    return-object v0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormatExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormatExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 108
    :cond_0
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mIndexedFormatVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mIndexedFormatVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 119
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mTextExpression:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_0

    .line 120
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mTextExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    .line 140
    :goto_0
    return-object v3

    .line 122
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/util/TextFormatter;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "format":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 124
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    if-eqz v3, :cond_1

    .line 125
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 126
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    iget-object v4, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lmiui/maml/util/TextFormatter$FormatPara;->evaluate()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    .end local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 131
    :try_start_0
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/util/IllegalFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Format error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 137
    .end local v0    # "e":Ljava/util/IllegalFormatException;
    :cond_2
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mIndexedTextVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_3

    .line 138
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mIndexedTextVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 140
    :cond_3
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasFormat()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 85
    if-eqz p1, :cond_2

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    .line 87
    array-length v0, p1

    .line 88
    .local v0, "parasLength":I
    iget-object v1, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 89
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    .line 91
    :cond_0
    iget-object v1, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 92
    iget-object v1, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    array-length v0, v1

    .line 94
    :cond_1
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    .line 96
    .end local v0    # "parasLength":I
    :cond_2
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    .line 102
    return-void
.end method
