.class public Landroid/widget/TouchPanelLayout;
.super Landroid/widget/LinearLayout;
.source "TouchPanelLayout.java"


# instance fields
.field private mTemRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TouchPanelLayout;->mTemRect:Landroid/graphics/Rect;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TouchPanelLayout;->mTemRect:Landroid/graphics/Rect;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TouchPanelLayout;->mTemRect:Landroid/graphics/Rect;

    .line 30
    return-void
.end method

.method private checkChildState(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/widget/TouchPanelLayout;->getChildCount()I

    move-result v1

    .line 67
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 68
    invoke-virtual {p0, v2}, Landroid/widget/TouchPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 70
    iget-object v3, p0, Landroid/widget/TouchPanelLayout;->mTemRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 71
    iget-object v3, p0, Landroid/widget/TouchPanelLayout;->mTemRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 67
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private resetChildState(Z)V
    .locals 4
    .param p1, "performClick"    # Z

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/widget/TouchPanelLayout;->getChildCount()I

    move-result v1

    .line 55
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 56
    invoke-virtual {p0, v2}, Landroid/widget/TouchPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "child":Landroid/view/View;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 60
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 35
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 36
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 37
    .local v3, "y":I
    const/4 v1, 0x0

    .line 38
    .local v1, "performClick":Z
    packed-switch v0, :pswitch_data_0

    .line 46
    :goto_0
    invoke-direct {p0, v1}, Landroid/widget/TouchPanelLayout;->resetChildState(Z)V

    .line 49
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 41
    :pswitch_0
    invoke-direct {p0, v2, v3}, Landroid/widget/TouchPanelLayout;->checkChildState(II)V

    goto :goto_1

    .line 44
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/TouchPanelLayout;->resetChildState(Z)V

    .line 80
    return-void
.end method
