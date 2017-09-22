.class public abstract Lcom/miui/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/miui/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/menu/ActionMenuView$a;,
        Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;,
        Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# instance fields
.field private mK:Lcom/miui/internal/view/menu/ActionMenuPresenter;

.field private mL:Lcom/miui/internal/view/menu/ActionMenuView$a;

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private ml:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 36
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuView$a;

    invoke-direct {v0, p0}, Lcom/miui/internal/view/menu/ActionMenuView$a;-><init>(Lcom/miui/internal/view/menu/ActionMenuView;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mL:Lcom/miui/internal/view/menu/ActionMenuView$a;

    .line 37
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 119
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeAlpha(FZZ)F
    .locals 2

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x41200000    # 10.0f

    .line 237
    .line 238
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    if-eqz p2, :cond_2

    .line 241
    sub-float/2addr v0, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    goto :goto_0

    .line 242
    :cond_2
    if-eqz p3, :cond_0

    .line 243
    mul-float v0, p1, v1

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method protected computeTranslationY(FZZ)F
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 220
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->getCollapsedHeight()I

    move-result v0

    int-to-float v0, v0

    .line 222
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 223
    float-to-double v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 224
    mul-float/2addr p1, v7

    .line 232
    :cond_0
    :goto_0
    mul-float/2addr v0, p1

    .line 233
    return v0

    .line 226
    :cond_1
    sub-float v1, v6, p1

    mul-float p1, v7, v1

    goto :goto_0

    .line 228
    :cond_2
    if-eqz p3, :cond_0

    .line 229
    sub-float p1, v6, p1

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public filterLeftoverView(I)Z
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->removeViewAt(I)V

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 98
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 100
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 1

    .prologue
    .line 110
    instance-of v0, p1, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 114
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_0
.end method

.method public generateOverflowButtonLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 124
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 125
    return-object v0
.end method

.method public abstract getCollapsedHeight()I
.end method

.method public getPresenter()Lcom/miui/internal/view/menu/ActionMenuPresenter;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mK:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public hasBackgroundView()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4

    .prologue
    .line 143
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 144
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 145
    const/4 v2, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    instance-of v3, v0, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 147
    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v0

    or-int/2addr v2, v0

    .line 149
    :cond_0
    if-lez p1, :cond_1

    instance-of v0, v1, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 150
    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v0}, Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v0

    or-int/2addr v0, v2

    .line 152
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public initialize(Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    .line 140
    return-void
.end method

.method public invokeItem(Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->ml:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 53
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mK:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mK:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 59
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mK:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mK:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    .line 61
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mK:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 64
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 79
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mK:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    .line 80
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0, v1, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public onPageScrolled(IFZZ)V
    .locals 3

    .prologue
    .line 251
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/ActionMenuView;->computeAlpha(FZZ)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuView;->setAlpha(F)V

    .line 255
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/ActionMenuView;->computeTranslationY(FZZ)F

    move-result v0

    .line 256
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuView;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 257
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuView;->setTranslationY(F)V

    .line 259
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mL:Lcom/miui/internal/view/menu/ActionMenuView$a;

    invoke-virtual {v1, v0}, Lcom/miui/internal/view/menu/ActionMenuView$a;->setTranslationY(F)V

    .line 260
    return-void
.end method

.method public playCloseAnimator()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mL:Lcom/miui/internal/view/menu/ActionMenuView$a;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView$a;->close()V

    .line 216
    return-void
.end method

.method public playOpenAnimator()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mL:Lcom/miui/internal/view/menu/ActionMenuView$a;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuView$a;->open()V

    .line 212
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->ml:Z

    .line 88
    return-void
.end method

.method public setPresenter(Lcom/miui/internal/view/menu/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuView;->mK:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    .line 44
    return-void
.end method
