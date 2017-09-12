.class public Lmiui/maml/animation/ScaleAnimation;
.super Lmiui/maml/animation/BaseAnimation;
.source "ScaleAnimation.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ScaleAnimation"


# instance fields
.field private mDelayValueX:D

.field private mDelayValueY:D


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "screenElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    const/4 v5, 0x0

    .line 14
    const-string v1, "Item"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "value"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    invoke-direct {p0, p1, v1, v2, p2}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    .line 19
    invoke-virtual {p0, v5}, Lmiui/maml/animation/ScaleAnimation;->getItem(I)Lmiui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object v0

    .line 20
    .local v0, "ai":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    invoke-direct {p0, v0}, Lmiui/maml/animation/ScaleAnimation;->getItemX(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/ScaleAnimation;->mDelayValueX:D

    .line 21
    invoke-direct {p0, v0}, Lmiui/maml/animation/ScaleAnimation;->getItemY(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/ScaleAnimation;->mDelayValueY:D

    .line 22
    return-void
.end method

.method private getItemX(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D
    .locals 2
    .param p1, "item"    # Lmiui/maml/animation/BaseAnimation$AnimationItem;

    .prologue
    const/4 v1, 0x0

    .line 46
    if-nez p1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1, v1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->attrExists(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    goto :goto_0
.end method

.method private getItemY(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D
    .locals 2
    .param p1, "item"    # Lmiui/maml/animation/BaseAnimation$AnimationItem;

    .prologue
    const/4 v1, 0x0

    .line 50
    if-nez p1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1, v1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->attrExists(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method protected getDelayValue(I)D
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 55
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lmiui/maml/animation/ScaleAnimation;->mDelayValueX:D

    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lmiui/maml/animation/ScaleAnimation;->mDelayValueY:D

    goto :goto_0
.end method

.method public final getScaleX()D
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/maml/animation/ScaleAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getScaleY()D
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmiui/maml/animation/ScaleAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method protected onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V
    .locals 10
    .param p1, "item1"    # Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .param p2, "item2"    # Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .param p3, "ratio"    # F

    .prologue
    .line 34
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 43
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-direct {p0, p1}, Lmiui/maml/animation/ScaleAnimation;->getItemX(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v0

    .line 39
    .local v0, "x":D
    const/4 v4, 0x1

    invoke-direct {p0, p2}, Lmiui/maml/animation/ScaleAnimation;->getItemX(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v6

    sub-double/2addr v6, v0

    float-to-double v8, p3

    mul-double/2addr v6, v8

    add-double/2addr v6, v0

    invoke-virtual {p0, v4, v6, v7}, Lmiui/maml/animation/ScaleAnimation;->setCurValue(ID)V

    .line 41
    invoke-direct {p0, p1}, Lmiui/maml/animation/ScaleAnimation;->getItemY(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v2

    .line 42
    .local v2, "y":D
    const/4 v4, 0x2

    invoke-direct {p0, p2}, Lmiui/maml/animation/ScaleAnimation;->getItemY(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v6

    sub-double/2addr v6, v2

    float-to-double v8, p3

    mul-double/2addr v6, v8

    add-double/2addr v6, v2

    invoke-virtual {p0, v4, v6, v7}, Lmiui/maml/animation/ScaleAnimation;->setCurValue(ID)V

    goto :goto_0
.end method
