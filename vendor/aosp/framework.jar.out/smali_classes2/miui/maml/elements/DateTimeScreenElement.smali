.class public Lmiui/maml/elements/DateTimeScreenElement;
.super Lmiui/maml/elements/TextScreenElement;
.source "DateTimeScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "DateTime"


# instance fields
.field private mDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

.field private mDescriptionDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 9
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 87
    invoke-virtual {p0}, Lmiui/maml/elements/DateTimeScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "value"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v8

    .line 88
    .local v8, "valueExp":Lmiui/maml/data/Expression;
    new-instance v0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    iget-object v1, p0, Lmiui/maml/elements/DateTimeScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    invoke-direct {v0, p0, v1, v8}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;-><init>(Lmiui/maml/elements/DateTimeScreenElement;Lmiui/maml/util/TextFormatter;Lmiui/maml/data/Expression;)V

    iput-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 89
    const-string v0, "contentDescriptionFormat"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mHasContentDescription:Z

    .line 91
    invoke-virtual {p0}, Lmiui/maml/elements/DateTimeScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v3, "contentDescriptionFormat"

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lmiui/maml/util/TextFormatter;->fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/util/TextFormatter;

    move-result-object v7

    .line 92
    .local v7, "descriptionFormatter":Lmiui/maml/util/TextFormatter;
    new-instance v0, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    invoke-direct {v0, p0, v7, v8}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;-><init>(Lmiui/maml/elements/DateTimeScreenElement;Lmiui/maml/util/TextFormatter;Lmiui/maml/data/Expression;)V

    iput-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 94
    .end local v7    # "descriptionFormatter":Lmiui/maml/util/TextFormatter;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getContentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    invoke-virtual {v0}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lmiui/maml/elements/TextScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    invoke-virtual {v0}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lmiui/maml/elements/TextScreenElement;->resume()V

    .line 99
    iget-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    invoke-virtual {v0}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->resetCalendar()V

    .line 100
    iget-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lmiui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;

    invoke-virtual {v0}, Lmiui/maml/elements/DateTimeScreenElement$DateFormatter;->resetCalendar()V

    .line 103
    :cond_0
    return-void
.end method
