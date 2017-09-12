.class public Lmiui/maml/animation/SourcesAnimation;
.super Lmiui/maml/animation/PositionAnimation;
.source "SourcesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/animation/SourcesAnimation$Source;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SourcesAnimation"


# instance fields
.field private mCurrentSrc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "screenElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 25
    const-string v0, "Source"

    invoke-direct {p0, p1, v0, p2}, Lmiui/maml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lmiui/maml/animation/SourcesAnimation;->mCurrentSrc:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreateItem(Lmiui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .locals 1
    .param p1, "ani"    # Lmiui/maml/animation/BaseAnimation;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 33
    new-instance v0, Lmiui/maml/animation/SourcesAnimation$Source;

    invoke-direct {v0, p1, p2}, Lmiui/maml/animation/SourcesAnimation$Source;-><init>(Lmiui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method protected onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V
    .locals 4
    .param p1, "item1"    # Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .param p2, "item2"    # Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .param p3, "ratio"    # F

    .prologue
    const-wide/16 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    if-nez p2, :cond_0

    .line 40
    invoke-virtual {p0, v2, v0, v1}, Lmiui/maml/animation/SourcesAnimation;->setCurValue(ID)V

    .line 41
    invoke-virtual {p0, v3, v0, v1}, Lmiui/maml/animation/SourcesAnimation;->setCurValue(ID)V

    .line 48
    .end local p2    # "item2":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    :goto_0
    return-void

    .line 45
    .restart local p2    # "item2":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    :cond_0
    invoke-virtual {p2, v2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lmiui/maml/animation/SourcesAnimation;->setCurValue(ID)V

    .line 46
    invoke-virtual {p2, v3}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    invoke-virtual {p0, v3, v0, v1}, Lmiui/maml/animation/SourcesAnimation;->setCurValue(ID)V

    .line 47
    check-cast p2, Lmiui/maml/animation/SourcesAnimation$Source;

    .end local p2    # "item2":Lmiui/maml/animation/BaseAnimation$AnimationItem;
    iget-object v0, p2, Lmiui/maml/animation/SourcesAnimation$Source;->mSrc:Ljava/lang/String;

    iput-object v0, p0, Lmiui/maml/animation/SourcesAnimation;->mCurrentSrc:Ljava/lang/String;

    goto :goto_0
.end method
