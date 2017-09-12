.class public Lmiui/maml/animation/SizeAnimation;
.super Lmiui/maml/animation/BaseAnimation;
.source "SizeAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Size"

.field public static final TAG_NAME:Ljava/lang/String; = "SizeAnimation"


# instance fields
.field private mMaxH:D

.field private mMaxW:D


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .locals 8
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "screenElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 17
    const-string v2, "Size"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "w"

    aput-object v4, v3, v6

    const-string v4, "h"

    aput-object v4, v3, v7

    invoke-direct {p0, p1, v2, v3, p2}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    .line 23
    iget-object v2, p0, Lmiui/maml/animation/SizeAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    .line 24
    .local v0, "ai":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    invoke-virtual {v0, v6}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iget-wide v4, p0, Lmiui/maml/animation/SizeAnimation;->mMaxW:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 25
    invoke-virtual {v0, v6}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/SizeAnimation;->mMaxW:D

    .line 26
    :cond_1
    invoke-virtual {v0, v7}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iget-wide v4, p0, Lmiui/maml/animation/SizeAnimation;->mMaxH:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 27
    invoke-virtual {v0, v7}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/SizeAnimation;->mMaxH:D

    goto :goto_0

    .line 29
    .end local v0    # "ai":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    :cond_2
    return-void
.end method


# virtual methods
.method public final getHeight()D
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/maml/animation/SizeAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getMaxHeight()D
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lmiui/maml/animation/SizeAnimation;->mMaxH:D

    return-wide v0
.end method

.method public final getMaxWidth()D
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lmiui/maml/animation/SizeAnimation;->mMaxW:D

    return-wide v0
.end method

.method public final getWidth()D
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/animation/SizeAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method
