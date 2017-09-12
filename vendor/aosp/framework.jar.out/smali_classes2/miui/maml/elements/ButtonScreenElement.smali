.class public Lmiui/maml/elements/ButtonScreenElement;
.super Lmiui/maml/elements/ElementGroup;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ButtonScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Button"


# instance fields
.field private mIsAlignChildren:Z

.field private mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

.field private mListenerName:Ljava/lang/String;

.field private mNormalElements:Lmiui/maml/elements/ElementGroup;

.field private mPressedElements:Lmiui/maml/elements/ElementGroup;

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 48
    invoke-direct {p0, p1}, Lmiui/maml/elements/ButtonScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 49
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v0, "alignChildren"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/ButtonScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mIsAlignChildren:Z

    .line 56
    const-string v0, "listener"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/ButtonScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mTouchable:Z

    goto :goto_0
.end method

.method private showNormalElements()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    .line 130
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    .line 133
    :cond_1
    return-void
.end method

.method private showPressedElements()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 136
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    .line 138
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 174
    iget-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mIsAlignChildren:Z

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->getLeft()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->getTop()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 177
    :cond_0
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 179
    return-void
.end method

.method protected getParentLeft()F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mIsAlignChildren:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->getLeft()F

    move-result v0

    :goto_0
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v2, :cond_1

    :goto_1
    add-float/2addr v0, v1

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/ButtonScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v1

    goto :goto_1
.end method

.method protected getParentTop()F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mIsAlignChildren:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->getTop()F

    move-result v0

    :goto_0
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v2, :cond_1

    :goto_1
    add-float/2addr v0, v1

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/ButtonScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getParentTop()F

    move-result v1

    goto :goto_1
.end method

.method public init()V
    .locals 5

    .prologue
    .line 148
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 150
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-nez v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v3, p0, Lmiui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    .line 153
    .local v1, "se":Lmiui/maml/elements/ScreenElement;
    :try_start_0
    check-cast v1, Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    .end local v1    # "se":Lmiui/maml/elements/ScreenElement;
    iput-object v1, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    invoke-direct {p0}, Lmiui/maml/elements/ButtonScreenElement;->showNormalElements()V

    .line 159
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v2, "ButtonScreenElement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "button listener designated by the name is not actually a listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onActionCancel()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->onActionCancel()V

    .line 117
    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->resetState()V

    .line 118
    return-void
.end method

.method protected onActionDown(FF)V
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;->onActionDown(FF)V

    .line 79
    iget-object v7, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v7, :cond_0

    .line 80
    iget-object v7, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v8, p0, Lmiui/maml/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v7, v8}, Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;->onButtonDown(Ljava/lang/String;)Z

    .line 83
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    sub-long v4, v8, v10

    .line 84
    .local v4, "duration":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v8, v7

    cmp-long v7, v4, v8

    if-gtz v7, :cond_2

    .line 85
    iget v7, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    sub-float v0, p1, v7

    .line 86
    .local v0, "deltaX":F
    iget v7, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    sub-float v1, p2, v7

    .line 87
    .local v1, "deltaY":F
    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float v2, v7, v8

    .line 88
    .local v2, "distanceSquared":F
    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v7

    iget-object v7, v7, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    .line 89
    .local v3, "doubleTapSlop":I
    mul-int v6, v3, v3

    .line 90
    .local v6, "slopSquared":I
    int-to-float v7, v6

    cmpg-float v7, v2, v7

    if-gez v7, :cond_2

    .line 91
    iget-object v7, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v7, :cond_1

    .line 92
    iget-object v7, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v8, p0, Lmiui/maml/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v7, v8}, Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;->onButtonDoubleClick(Ljava/lang/String;)Z

    .line 94
    :cond_1
    const-string v7, "double"

    invoke-virtual {p0, v7}, Lmiui/maml/elements/ButtonScreenElement;->performAction(Ljava/lang/String;)V

    .line 97
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v2    # "distanceSquared":F
    .end local v3    # "doubleTapSlop":I
    .end local v6    # "slopSquared":I
    :cond_2
    iput p1, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    .line 98
    iput p2, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    .line 99
    invoke-direct {p0}, Lmiui/maml/elements/ButtonScreenElement;->showPressedElements()V

    .line 100
    iget-object v7, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v7, :cond_3

    .line 101
    iget-object v7, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v7}, Lmiui/maml/elements/ElementGroup;->reset()V

    .line 102
    :cond_3
    return-void
.end method

.method protected onActionUp()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->onActionUp()V

    .line 107
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v1, p0, Lmiui/maml/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;->onButtonUp(Ljava/lang/String;)Z

    .line 110
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    .line 111
    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->resetState()V

    .line 112
    return-void
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .locals 3
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 67
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "tag":Ljava/lang/String;
    const-string v1, "Normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Lmiui/maml/elements/ElementGroup;

    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, p1, v2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    .line 73
    :goto_0
    return-object v1

    .line 70
    :cond_0
    const-string v1, "Pressed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    new-instance v1, Lmiui/maml/elements/ElementGroup;

    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, p1, v2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v1, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    goto :goto_0

    .line 73
    :cond_1
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    goto :goto_0
.end method

.method protected resetState()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lmiui/maml/elements/ButtonScreenElement;->showNormalElements()V

    .line 122
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->reset()V

    .line 124
    :cond_0
    return-void
.end method

.method public setListener(Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;)V
    .locals 0
    .param p1, "listener"    # Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    .prologue
    .line 62
    iput-object p1, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    .line 63
    return-void
.end method
