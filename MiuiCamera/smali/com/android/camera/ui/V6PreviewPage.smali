.class public Lcom/android/camera/ui/V6PreviewPage;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6PreviewPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6PreviewPage$AnimationType;,
        Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mAnimPopup:Landroid/animation/ValueAnimator;

.field private mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

.field public mAsdIndicatorView:Landroid/widget/ImageView;

.field private mCollapseInterpolator:Landroid/animation/TimeInterpolator;

.field private mExpandInterpolator:Landroid/animation/TimeInterpolator;

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field public mLyingOriFlag:Lcom/android/camera/ui/OrientationIndicator;

.field private mModeExitButton:Landroid/view/View;

.field public mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

.field private mOrientationArea:Lcom/android/camera/ui/RotateLayout;

.field private mOrientationParent:Landroid/widget/RelativeLayout;

.field public mPanoramaViewRoot:Landroid/widget/RelativeLayout;

.field private mPopupGroupVisible:Z

.field private mPopupIndicator:Landroid/view/View;

.field public mPopupIndicatorLayout:Landroid/view/View;

.field public mPopupParent:Landroid/view/ViewGroup;

.field public mPopupParentLayout:Landroid/view/ViewGroup;

.field private mPopupVisible:Z

.field public mStereoButton:Lcom/android/camera/ui/StereoButton;

.field public mTopPopupParent:Lcom/android/camera/ui/TopPopupParent;

.field private mVisible:Z

.field public mWarningMessageLayout:Landroid/widget/LinearLayout;

.field public mWarningView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 75
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 57
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mCollapseInterpolator:Landroid/animation/TimeInterpolator;

    .line 58
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mExpandInterpolator:Landroid/animation/TimeInterpolator;

    .line 60
    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$1;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 76
    check-cast p1, Lcom/android/camera/ActivityBase;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mActivity:Lcom/android/camera/ActivityBase;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 57
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mCollapseInterpolator:Landroid/animation/TimeInterpolator;

    .line 58
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mExpandInterpolator:Landroid/animation/TimeInterpolator;

    .line 60
    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$1;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 81
    check-cast p1, Lcom/android/camera/ActivityBase;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mActivity:Lcom/android/camera/ActivityBase;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6PreviewPage;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6PreviewPage;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6PreviewPage;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->createOrUpdateAnimatorListener()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6PreviewPage;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->createAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/V6PreviewPage;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6PreviewPage;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6PreviewPage;->getChildY(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6PreviewPage;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->clearOnLayoutChangeListener()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6PreviewPage;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->setupOnLayoutChangeListener()V

    return-void
.end method

.method private clearOnLayoutChangeListener()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 355
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 356
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 357
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 358
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 359
    return-void
.end method

.method private createAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 370
    const-string v1, "V6PreviewPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAnimation: popupHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    if-nez v1, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->createOrUpdateAnimatorListener()V

    .line 375
    :cond_0
    const-string v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 376
    .local v0, "popupTransYOut":Landroid/animation/PropertyValuesHolder;
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    .line 377
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 378
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 379
    return-void
.end method

.method private createOrUpdateAnimatorListener()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->updateParameters()V

    goto :goto_0
.end method

.method private doViewAnimation(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eq v0, p2, :cond_0

    .line 121
    if-eqz p2, :cond_3

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    if-ne p1, v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->show()V

    .line 135
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 120
    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    if-ne p1, v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->hide()V

    goto :goto_1

    .line 131
    :cond_4
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private getChildY(Landroid/view/View;)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 408
    .local v2, "y":I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 409
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_0

    if-eq v0, p0, :cond_0

    move-object v1, v0

    .line 410
    check-cast v1, Landroid/view/View;

    .line 411
    .local v1, "viewParent":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 412
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 413
    goto :goto_0

    .line 415
    .end local v1    # "viewParent":Landroid/view/View;
    :cond_0
    return v2
.end method

.method private getCurrentPopupShownView()Landroid/view/View;
    .locals 2

    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 312
    .end local v0    # "i":I
    :goto_1
    return-object v1

    .line 307
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private hasCollapsedPopup()Z
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->getCurrentPopup()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoButton;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hidePopupView()V
    .locals 3

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->getCurrentPopupShownView()Landroid/view/View;

    move-result-object v0

    .line 575
    .local v0, "popup":Landroid/view/View;
    instance-of v1, v0, Lcom/android/camera/ui/StereoPopup;

    if-eqz v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getStereoButton()Lcom/android/camera/ui/StereoButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/StereoButton;->dismissPopup(Z)Z

    .line 582
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    sget-object v2, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->COLLAPSE:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/V6PreviewPage$AnimationType;)V

    .line 579
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mCollapseInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 580
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private initAnimation(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;
    .param p2, "slideUp"    # Z

    .prologue
    .line 267
    invoke-virtual {p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 269
    .local v0, "animation":Landroid/view/animation/Animation;
    if-nez v0, :cond_0

    .line 270
    if-eqz p2, :cond_2

    .line 271
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    const v3, 0x7f050013

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 276
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 277
    new-instance v1, Lcom/android/camera/ui/SimpleAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/camera/ui/SimpleAnimationListener;-><init>(Landroid/view/View;Z)V

    .line 278
    .local v1, "animationListener":Lcom/android/camera/ui/SimpleAnimationListener;
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 281
    .end local v1    # "animationListener":Lcom/android/camera/ui/SimpleAnimationListener;
    :cond_1
    return-object v0

    .line 273
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    const v3, 0x7f050012

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method

.method private setWindowInsets()V
    .locals 5

    .prologue
    .line 107
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 108
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/camera/CameraSettings;->BOTTOM_CONTROL_HEIGHT:I

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->addExtraHeight(Landroid/content/Context;I)I

    move-result v1

    .line 109
    .local v1, "newMargin":I
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-eq v3, v1, :cond_0

    .line 110
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 111
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 113
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    .local v2, "popuplp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 115
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestLayout()V

    .line 117
    .end local v2    # "popuplp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private setupOnLayoutChangeListener()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 347
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 348
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 349
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 350
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 351
    return-void
.end method

.method private shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z
    .locals 6
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 243
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v5

    .line 245
    :cond_1
    const/4 v2, 0x0

    .line 246
    .local v2, "visiblePopup":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 247
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 248
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 249
    if-ne v2, p1, :cond_0

    .line 246
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 255
    :cond_3
    if-nez v2, :cond_4

    move v5, v4

    .line 256
    goto :goto_0

    .line 257
    :cond_4
    if-eqz p1, :cond_0

    if-ne p1, v2, :cond_0

    .line 258
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/PopupManager;->getLastOnOtherPopupShowedListener()Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;

    move-result-object v1

    .line 260
    .local v1, "lastListener":Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
    if-nez v1, :cond_5

    move v3, v4

    :goto_2
    move v5, v3

    goto :goto_0

    :cond_5
    move v3, v5

    goto :goto_2
.end method

.method private updatePopupIndicatorImageResource()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updatePopupVisibility(ZZZ)V
    .locals 4
    .param p1, "isExitViewVisible"    # Z
    .param p2, "isPopupVisible"    # Z
    .param p3, "isIndicatorVisible"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 392
    if-eqz p1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->show()V

    .line 397
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    if-eqz p3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 399
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->hide()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 397
    goto :goto_1

    :cond_2
    move v1, v2

    .line 398
    goto :goto_2
.end method

.method private updateRotateLayout(ILandroid/view/View;)V
    .locals 6
    .param p1, "degree"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    const/16 v3, 0xa

    const/16 v2, 0x9

    const/4 v1, -0x1

    .line 541
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 542
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 543
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 544
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 545
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 546
    sparse-switch p1, :sswitch_data_0

    .line 560
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    return-void

    .line 548
    :sswitch_0
    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 551
    :sswitch_1
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 554
    :sswitch_2
    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 557
    :sswitch_3
    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 546
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .locals 2
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    const/4 v1, 0x0

    .line 296
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6PreviewPage;->shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    move-result v0

    .line 297
    .local v0, "animation":Z
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->clearAnimation()V

    .line 299
    invoke-direct {p0, p1, v1}, Lcom/android/camera/ui/V6PreviewPage;->initAnimation(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss(Z)V

    goto :goto_0
.end method

.method public inflatePanoramaView()V
    .locals 3

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPanoramaViewRoot:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 329
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040015

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 330
    const v1, 0x7f09003d

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPanoramaViewRoot:Landroid/widget/RelativeLayout;

    .line 332
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method public isPopupShown()Z
    .locals 1

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->getCurrentPopupShownView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewPageVisible()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    return v0
.end method

.method public onCameraOpen()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAsdIndicatorView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    .line 142
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupIndicatorImageResource()V

    .line 143
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 342
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 343
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 87
    const v0, 0x7f09006e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParentLayout:Landroid/view/ViewGroup;

    .line 88
    const v0, 0x7f09006f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    .line 89
    const v0, 0x7f090071

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TopPopupParent;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mTopPopupParent:Lcom/android/camera/ui/TopPopupParent;

    .line 90
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6ModeExitView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    .line 91
    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    .line 92
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningMessageLayout:Landroid/widget/LinearLayout;

    .line 94
    const v0, 0x7f090064

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    .line 95
    const v0, 0x7f090065

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    .line 96
    const v0, 0x7f090062

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAsdIndicatorView:Landroid/widget/ImageView;

    .line 97
    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationParent:Landroid/widget/RelativeLayout;

    .line 98
    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationArea:Lcom/android/camera/ui/RotateLayout;

    .line 99
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/OrientationIndicator;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mLyingOriFlag:Lcom/android/camera/ui/OrientationIndicator;

    .line 100
    const v0, 0x7f090070

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/StereoButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mStereoButton:Lcom/android/camera/ui/StereoButton;

    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->setupOnLayoutChangeListener()V

    .line 104
    return-void
.end method

.method public onPopupChange()V
    .locals 2

    .prologue
    .line 320
    const-string v0, "V6PreviewPage"

    const-string v1, "onPopupChange"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 322
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onResume()V

    .line 148
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->setWindowInsets()V

    .line 149
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 536
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;->setOrientation(IZ)V

    .line 537
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationArea:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6PreviewPage;->updateRotateLayout(ILandroid/view/View;)V

    .line 538
    return-void
.end method

.method public setPopupVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    if-ne v0, p1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    .line 198
    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupIndicator()V

    goto :goto_0
.end method

.method public showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .locals 2
    .param p1, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6PreviewPage;->shouldAnimatePopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)Z

    move-result v0

    .line 286
    .local v0, "animation":Z
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    .line 288
    invoke-virtual {p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->clearAnimation()V

    .line 289
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/ui/V6PreviewPage;->initAnimation(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    goto :goto_0
.end method

.method public showPopupWithoutExitView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 236
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasCollapsedPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iput-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 238
    invoke-direct {p0, v1, v2, v1}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    .line 240
    :cond_0
    return-void
.end method

.method public simplifyPopup(ZZ)V
    .locals 5
    .param p1, "simplify"    # Z
    .param p2, "animation"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 208
    const-string v0, "V6PreviewPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simplifyPopup: simplify="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasCollapsedPopup()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    iput-boolean v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 216
    if-eqz p2, :cond_2

    .line 217
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hidePopupView()V

    goto :goto_0

    .line 219
    :cond_2
    invoke-direct {p0, v3, v3, v4}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    goto :goto_0

    .line 221
    :cond_3
    if-nez p1, :cond_0

    .line 222
    iput-boolean v4, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 223
    if-eqz p2, :cond_5

    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->getAnimationType()Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->EXPAND:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    if-eq v0, v1, :cond_0

    .line 225
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    sget-object v1, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->EXPAND:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/V6PreviewPage$AnimationType;)V

    .line 226
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mExpandInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 227
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    .line 230
    :cond_5
    invoke-direct {p0, v4, v4, v3}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    goto :goto_0
.end method

.method public switchWithAnimation(Z)V
    .locals 5
    .param p1, "switchToPreviewPage"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    const-string v0, "Camera10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchWithAnimation: toPreviewPage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",popupVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",groupVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-eqz p1, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 156
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationArea:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 157
    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    if-eqz v0, :cond_0

    .line 158
    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 160
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 167
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mStereoButton:Lcom/android/camera/ui/StereoButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoButton;->updateVisible()V

    .line 177
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mTopPopupParent:Lcom/android/camera/ui/TopPopupParent;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TopPopupParent;->onPreviewPageShown(Z)V

    .line 178
    iput-boolean p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    .line 179
    return-void

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasCollapsedPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAsdIndicatorView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 174
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationArea:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mStereoButton:Lcom/android/camera/ui/StereoButton;

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/V6PreviewPage;->doViewAnimation(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method public updateOrientationLayout(Z)V
    .locals 4
    .param p1, "topMargin"    # Z

    .prologue
    const/4 v2, 0x0

    .line 564
    invoke-static {}, Lcom/android/camera/Device;->isOrientationIndicatorEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 566
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-eq p1, v1, :cond_0

    .line 567
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080075

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_2
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 569
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 566
    goto :goto_1

    :cond_3
    move v1, v2

    .line 567
    goto :goto_2
.end method

.method public updatePopupIndicator()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasCollapsedPopup()Z

    move-result v0

    .line 184
    .local v0, "hasSettingPopup":Z
    const-string v2, "V6PreviewPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePopupIndicator: groupVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",popupVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",hasSettingPopup="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    if-eqz v2, :cond_1

    .line 187
    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    iget-boolean v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    iget-boolean v4, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, v2, v3, v1}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-direct {p0, v1, v1, v1}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    goto :goto_0
.end method
