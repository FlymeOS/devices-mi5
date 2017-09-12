.class Lmiui/maml/elements/AdvancedSlider$SliderPoint;
.super Lmiui/maml/elements/ElementGroup;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderPoint"
.end annotation


# instance fields
.field private mCurrentStateElements:Lmiui/maml/elements/ScreenElement;

.field protected mIsAlignChildren:Z

.field protected mName:Ljava/lang/String;

.field protected mNormalSound:Ljava/lang/String;

.field protected mNormalStateElements:Lmiui/maml/elements/ElementGroup;

.field private mNormalStateTrigger:Lmiui/maml/CommandTrigger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mPointStateVar:Lmiui/maml/data/IndexedVariable;

.field protected mPressedSound:Ljava/lang/String;

.field protected mPressedStateElements:Lmiui/maml/elements/ElementGroup;

.field private mPressedStateTrigger:Lmiui/maml/CommandTrigger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected mReachedSound:Ljava/lang/String;

.field private mReachedStateElements:Lmiui/maml/elements/ElementGroup;

.field private mReachedStateTrigger:Lmiui/maml/CommandTrigger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mState:Lmiui/maml/elements/AdvancedSlider$State;

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V
    .locals 1
    .param p2, "node"    # Lorg/w3c/dom/Element;
    .param p3, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 421
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    .line 422
    invoke-direct {p0, p2, p3}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 405
    sget-object v0, Lmiui/maml/elements/AdvancedSlider$State;->Invalid:Lmiui/maml/elements/AdvancedSlider$State;

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/maml/elements/AdvancedSlider$State;

    .line 423
    invoke-direct {p0, p2, p4}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 440
    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    .line 441
    const-string v0, "normalSound"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalSound:Ljava/lang/String;

    .line 442
    const-string v0, "pressedSound"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedSound:Ljava/lang/String;

    .line 443
    const-string v0, "reachedSound"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedSound:Ljava/lang/String;

    .line 445
    const-string v0, "NormalState"

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateTrigger:Lmiui/maml/CommandTrigger;

    .line 446
    const-string v0, "PressedState"

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateTrigger:Lmiui/maml/CommandTrigger;

    .line 447
    const-string v0, "ReachedState"

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Lmiui/maml/CommandTrigger;

    .line 449
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPointStateVar:Lmiui/maml/data/IndexedVariable;

    .line 453
    :cond_0
    const-string v0, "alignChildren"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mIsAlignChildren:Z

    .line 454
    return-void
.end method

.method private loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/maml/CommandTrigger;
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 457
    invoke-static {p1, p2}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 458
    .local v0, "ele":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 459
    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {v0, v1}, Lmiui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v1

    .line 461
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 491
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 492
    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mIsAlignChildren:Z

    if-nez v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->getLeft()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->getTop()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 495
    :cond_0
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    .line 496
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 497
    return-void
.end method

.method protected getParentLeft()F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 501
    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mIsAlignChildren:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->getLeft()F

    move-result v0

    :goto_0
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v2, :cond_1

    :goto_1
    add-float/2addr v0, v1

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v1

    goto :goto_1
.end method

.method protected getParentTop()F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 506
    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mIsAlignChildren:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->getTop()F

    move-result v0

    :goto_0
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v2, :cond_1

    :goto_1
    add-float/2addr v0, v1

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getParentTop()F

    move-result v1

    goto :goto_1
.end method

.method public getState()Lmiui/maml/elements/AdvancedSlider$State;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/maml/elements/AdvancedSlider$State;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 466
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 467
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    .line 470
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, v2}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    .line 473
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, v2}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    .line 476
    :cond_2
    sget-object v0, Lmiui/maml/elements/AdvancedSlider$State;->Normal:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {p0, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    .line 478
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_3

    .line 479
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->init()V

    .line 481
    :cond_3
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_4

    .line 482
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->init()V

    .line 484
    :cond_4
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_5

    .line 485
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->init()V

    .line 487
    :cond_5
    return-void
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .locals 3
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 428
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "tag":Ljava/lang/String;
    const-string v1, "NormalState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    new-instance v1, Lmiui/maml/elements/ElementGroup;

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, p1, v2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    .line 436
    :goto_0
    return-object v1

    .line 431
    :cond_0
    const-string v1, "PressedState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    new-instance v1, Lmiui/maml/elements/ElementGroup;

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, p1, v2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    goto :goto_0

    .line 433
    :cond_1
    const-string v1, "ReachedState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    new-instance v1, Lmiui/maml/elements/ElementGroup;

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, p1, v2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    goto :goto_0

    .line 436
    :cond_2
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    goto :goto_0
.end method

.method protected onStateChange(Lmiui/maml/elements/AdvancedSlider$State;Lmiui/maml/elements/AdvancedSlider$State;)V
    .locals 2
    .param p1, "pre"    # Lmiui/maml/elements/AdvancedSlider$State;
    .param p2, "s"    # Lmiui/maml/elements/AdvancedSlider$State;

    .prologue
    .line 562
    sget-object v0, Lmiui/maml/elements/AdvancedSlider$1;->$SwitchMap$miui$maml$elements$AdvancedSlider$State:[I

    invoke-virtual {p2}, Lmiui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 591
    :goto_0
    return-void

    .line 564
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    .line 566
    :cond_0
    const-string v0, "normal"

    invoke-virtual {p0, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->performAction(Ljava/lang/String;)V

    goto :goto_0

    .line 569
    :pswitch_1
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    .line 571
    :cond_1
    const-string v0, "pressed"

    invoke-virtual {p0, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->performAction(Ljava/lang/String;)V

    .line 572
    sget-object v0, Lmiui/maml/elements/AdvancedSlider$1;->$SwitchMap$miui$maml$elements$AdvancedSlider$State:[I

    invoke-virtual {p1}, Lmiui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 575
    :pswitch_3
    const-string v0, "pressed_normal"

    invoke-virtual {p0, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->performAction(Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :pswitch_4
    const-string v0, "pressed_reached"

    invoke-virtual {p0, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->performAction(Ljava/lang/String;)V

    goto :goto_0

    .line 584
    :pswitch_5
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    .line 586
    :cond_2
    const-string v0, "reached"

    invoke-virtual {p0, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->performAction(Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 572
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setState(Lmiui/maml/elements/AdvancedSlider$State;)V
    .locals 8
    .param p1, "s"    # Lmiui/maml/elements/AdvancedSlider$State;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 510
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/maml/elements/AdvancedSlider$State;

    if-ne v6, p1, :cond_0

    .line 555
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/maml/elements/AdvancedSlider$State;

    .line 513
    .local v1, "preState":Lmiui/maml/elements/AdvancedSlider$State;
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/maml/elements/AdvancedSlider$State;

    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, "ele":Lmiui/maml/elements/ScreenElement;
    const/4 v2, 0x0

    .line 516
    .local v2, "reset":Z
    const/4 v3, 0x0

    .line 517
    .local v3, "state":I
    sget-object v6, Lmiui/maml/elements/AdvancedSlider$1;->$SwitchMap$miui$maml$elements$AdvancedSlider$State:[I

    invoke-virtual {p1}, Lmiui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 540
    :goto_1
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/maml/elements/ScreenElement;

    if-eq v6, v0, :cond_3

    .line 541
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/maml/elements/ScreenElement;

    if-eqz v6, :cond_1

    .line 542
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v6, v5}, Lmiui/maml/elements/ScreenElement;->show(Z)V

    .line 543
    :cond_1
    if-eqz v0, :cond_2

    .line 544
    invoke-virtual {v0, v4}, Lmiui/maml/elements/ScreenElement;->show(Z)V

    .line 545
    :cond_2
    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/maml/elements/ScreenElement;

    .line 548
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 549
    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->reset()V

    .line 551
    :cond_4
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPointStateVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v4, :cond_5

    .line 552
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPointStateVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v6, v3

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 554
    :cond_5
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {p0, v1, v4}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->onStateChange(Lmiui/maml/elements/AdvancedSlider$State;Lmiui/maml/elements/AdvancedSlider$State;)V

    goto :goto_0

    .line 519
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    .line 521
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v6, :cond_6

    move v2, v4

    .line 522
    :goto_2
    goto :goto_1

    :cond_6
    move v2, v5

    .line 521
    goto :goto_2

    .line 524
    :pswitch_1
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v6, :cond_7

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    .line 527
    :goto_3
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    # getter for: Lmiui/maml/elements/AdvancedSlider;->mStartPointPressed:Z
    invoke-static {v6}, Lmiui/maml/elements/AdvancedSlider;->access$500(Lmiui/maml/elements/AdvancedSlider;)Z

    move-result v6

    if-nez v6, :cond_8

    move v2, v4

    .line 528
    :goto_4
    const/4 v3, 0x1

    .line 529
    goto :goto_1

    .line 524
    :cond_7
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    goto :goto_3

    :cond_8
    move v2, v5

    .line 527
    goto :goto_4

    .line 531
    :pswitch_2
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v6, :cond_9

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    .line 534
    :goto_5
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v6, :cond_b

    move v2, v4

    .line 535
    :goto_6
    const/4 v3, 0x2

    .line 536
    goto :goto_1

    .line 531
    :cond_9
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v6, :cond_a

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    goto :goto_5

    :cond_b
    move v2, v5

    .line 534
    goto :goto_6

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
