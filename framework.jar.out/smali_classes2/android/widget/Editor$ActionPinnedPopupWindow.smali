.class abstract Landroid/widget/Editor$ActionPinnedPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$Fader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ActionPinnedPopupWindow"
.end annotation


# static fields
.field protected static final LONG_ACTION_MENU_COUNT:I = 0x6


# instance fields
.field protected mAboveHandle:Z

.field protected mAnimationFadeIn:Landroid/animation/AnimatorSet;

.field protected mAnimationFadeOut:Landroid/animation/AnimatorSet;

.field protected mAnimationFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHandleView:Landroid/widget/Editor$HandleView;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field protected mMainPanel:Landroid/widget/TouchPanelLayout;

.field private mShower:Ljava/lang/Runnable;

.field private mSpaceOffScreen:I

.field private final mTouchableRegion:Landroid/graphics/Region;

.field protected mVisibleChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V
    .locals 2
    .param p2, "handleView"    # Landroid/widget/Editor$HandleView;

    .prologue
    .line 2536
    iput-object p1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    .line 2537
    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    .line 2491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    .line 2505
    new-instance v0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$ActionPinnedPopupWindow$1;-><init>(Landroid/widget/Editor$ActionPinnedPopupWindow;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    .line 2523
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    .line 2524
    new-instance v0, Landroid/widget/Editor$ActionPinnedPopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$ActionPinnedPopupWindow$2;-><init>(Landroid/widget/Editor$ActionPinnedPopupWindow;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 2538
    iput-object p2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    .line 2539
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    .line 2542
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->createAnimations()V

    .line 2543
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/Editor$AnimatePopupWindow;->setFader(Landroid/widget/Editor$Fader;)V

    .line 2545
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInflater:Landroid/view/LayoutInflater;

    .line 2547
    return-void
.end method

.method static synthetic access$1500(Landroid/widget/Editor$ActionPinnedPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$ActionPinnedPopupWindow;

    .prologue
    .line 2487
    invoke-direct {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->isMiddleOffsetInSelection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/Editor$ActionPinnedPopupWindow;)Landroid/widget/Editor$HandleView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$ActionPinnedPopupWindow;

    .prologue
    .line 2487
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/Editor$ActionPinnedPopupWindow;)Landroid/graphics/Region;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$ActionPinnedPopupWindow;

    .prologue
    .line 2487
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method private isMainPanelContent()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2797
    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isMiddleOffsetInSelection()Z
    .locals 4

    .prologue
    .line 2724
    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 2725
    .local v0, "middleOffset":I
    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setTouchableSurfaceInsetsComputer()V
    .locals 2

    .prologue
    .line 2847
    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2850
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 2851
    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 2852
    return-void
.end method


# virtual methods
.method public cancelAnimations()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2744
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2746
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 2747
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 2748
    return-void
.end method

.method protected clipVertically(I)I
    .locals 11
    .param p1, "positionY"    # I

    .prologue
    const/4 v10, 0x0

    .line 2643
    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 2644
    .local v2, "layout":Landroid/text/Layout;
    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 2645
    .local v6, "selectionStart":I
    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 2646
    .local v5, "selectionEnd":I
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 2647
    .local v4, "lineStart":I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 2648
    .local v3, "lineEnd":I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    sub-int v7, v8, v9

    .line 2650
    .local v7, "spaceBetweenSelection":I
    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x110200cb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 2652
    .local v1, "handleHeight":I
    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2654
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    if-gez p1, :cond_2

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v8, v6}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2655
    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 2656
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr p1, v8

    .line 2660
    :goto_0
    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    add-int/2addr p1, v8

    .line 2661
    div-int/lit8 v8, v1, 0x2

    add-int/2addr p1, v8

    .line 2663
    iput-boolean v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    .line 2681
    :cond_0
    :goto_1
    return p1

    .line 2658
    :cond_1
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr p1, v8

    goto :goto_0

    .line 2664
    :cond_2
    if-gez p1, :cond_3

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2665
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p1

    .line 2666
    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v8

    add-int/2addr p1, v8

    .line 2667
    div-int/lit8 v8, v1, 0x2

    add-int/2addr p1, v8

    .line 2669
    iput-boolean v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    goto :goto_1

    .line 2670
    :cond_3
    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, p1

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v8, v9, :cond_0

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v8, v5}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2672
    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    if-le v7, v8, :cond_4

    .line 2673
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr p1, v8

    .line 2677
    :goto_2
    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr p1, v8

    .line 2678
    div-int/lit8 v8, v1, 0x2

    sub-int/2addr p1, v8

    goto :goto_1

    .line 2675
    :cond_4
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr p1, v8

    goto :goto_2
.end method

.method protected computeLocalPosition()V
    .locals 11

    .prologue
    .line 2569
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 2570
    .local v6, "selectionStart":I
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 2571
    .local v5, "selectionEnd":I
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 2572
    .local v3, "layout":Landroid/text/Layout;
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    .line 2574
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->measureContent()V

    .line 2577
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v9, v6}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2578
    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    .line 2580
    iget v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    .line 2608
    :goto_0
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    .line 2609
    .local v8, "width":I
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    iget v2, v9, Landroid/widget/Editor$HandleView;->mHorizontalScale:F

    .line 2611
    .local v2, "horizontalScale":F
    invoke-virtual {v3, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    .line 2612
    .local v7, "startPositionX":F
    invoke-virtual {v3, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 2613
    .local v0, "endPositionX":F
    add-float v9, v7, v0

    int-to-float v10, v8

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float/2addr v9, v2

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionX:I

    .line 2615
    return-void

    .line 2581
    .end local v0    # "endPositionX":F
    .end local v2    # "horizontalScale":F
    .end local v7    # "startPositionX":F
    .end local v8    # "width":I
    :cond_0
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v9, v5}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2582
    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    .line 2583
    iget v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    .line 2585
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    invoke-virtual {v9}, Landroid/widget/Editor$HandleView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1

    .line 2586
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x110200cb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 2588
    .local v1, "handleHeight":I
    iget v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    div-int/lit8 v10, v1, 0x2

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    .line 2591
    .end local v1    # "handleHeight":I
    :cond_1
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    goto :goto_0

    .line 2592
    :cond_2
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2593
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->getTextOffset()I

    move-result v4

    .line 2594
    .local v4, "offset":I
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    .line 2596
    iget v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    goto/16 :goto_0

    .line 2600
    .end local v4    # "offset":I
    :cond_3
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v9

    if-nez v9, :cond_4

    .line 2601
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    # setter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9, v10}, Landroid/widget/Editor;->access$1902(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 2603
    :cond_4
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2604
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    goto/16 :goto_0
.end method

.method protected abstract createAnimations()V
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 2692
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->dismiss()V

    .line 2693
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setZeroTouchableSurface()V

    .line 2694
    return-void
.end method

.method public fadeOut()V
    .locals 1

    .prologue
    .line 2739
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2740
    return-void
.end method

.method protected getTextOffset()I
    .locals 2

    .prologue
    .line 2735
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 2730
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 2686
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2687
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    .line 2688
    return-void
.end method

.method protected measureContent()V
    .locals 7

    .prologue
    .line 2551
    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2552
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    mul-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 2554
    .local v0, "contentWidth":I
    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    :goto_0
    if-ge v4, v3, :cond_2

    .line 2556
    :cond_0
    const/high16 v2, -0x80000000

    .line 2561
    .local v2, "widthMode":I
    :goto_1
    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->measure(II)V

    .line 2565
    return-void

    .line 2554
    .end local v2    # "widthMode":I
    :cond_1
    const/4 v3, 0x6

    goto :goto_0

    .line 2558
    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    .restart local v2    # "widthMode":I
    goto :goto_1
.end method

.method protected setContentAreaAsTouchableSurface(Z)V
    .locals 15
    .param p1, "needMeasure"    # Z

    .prologue
    .line 2812
    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v11, 0x110b000e

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 2813
    .local v7, "panel":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 2814
    .local v4, "paddingLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 2815
    .local v6, "paddingTop":I
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 2816
    .local v5, "paddingRight":I
    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 2818
    .local v3, "paddingBottom":I
    if-nez p1, :cond_0

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v10

    if-nez v10, :cond_1

    .line 2819
    :cond_0
    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2820
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v10, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    mul-int/lit8 v11, v11, 0x2

    add-int v2, v10, v11

    .line 2822
    .local v2, "maxWidth":I
    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    sget-boolean v10, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v10, :cond_2

    const/4 v10, 0x5

    :goto_0
    if-ge v11, v10, :cond_3

    .line 2824
    const/high16 v9, -0x80000000

    .line 2829
    .local v9, "widthMode":I
    :goto_1
    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroid/view/View;->measure(II)V

    .line 2835
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v2    # "maxWidth":I
    .end local v9    # "widthMode":I
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 2836
    .local v8, "width":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2837
    .local v1, "height":I
    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v13

    add-int/2addr v13, v8

    sub-int/2addr v13, v5

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v14

    add-int/2addr v14, v1

    sub-int/2addr v14, v3

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Region;->set(IIII)Z

    .line 2841
    return-void

    .line 2822
    .end local v1    # "height":I
    .end local v8    # "width":I
    .restart local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "maxWidth":I
    :cond_2
    const/4 v10, 0x6

    goto :goto_0

    .line 2826
    :cond_3
    const/high16 v9, 0x40000000    # 2.0f

    .restart local v9    # "widthMode":I
    goto :goto_1
.end method

.method protected setMainPanelAsContent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 2759
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    invoke-virtual {v0}, Landroid/widget/TouchPanelLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2760
    invoke-virtual {p0, v4}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setContentAreaAsTouchableSurface(Z)V

    .line 2768
    :goto_0
    return-void

    .line 2763
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2764
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2767
    invoke-virtual {p0, v4}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setContentAreaAsTouchableSurface(Z)V

    goto :goto_0
.end method

.method protected setSubPanelAsContent(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "subView"    # Landroid/view/View;
    .param p2, "panelBackground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, -0x1

    .line 2771
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->dismiss()V

    .line 2773
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    instance-of v2, v2, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v2, :cond_0

    .line 2774
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    check-cast v2, Landroid/widget/Editor$InsertionHandleView;

    # invokes: Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V
    invoke-static {v2}, Landroid/widget/Editor$InsertionHandleView;->access$2000(Landroid/widget/Editor$InsertionHandleView;)V

    .line 2777
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2778
    .local v1, "subPanel":Landroid/widget/LinearLayout;
    if-eqz p2, :cond_1

    .line 2779
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2780
    const v2, 0x110b000e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 2782
    :cond_1
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2784
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2785
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2788
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2789
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->computeLocalPosition()V

    .line 2790
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v2}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    .line 2791
    .local v0, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/Editor$ActionPinnedPopupWindow;->updatePosition(II)V

    .line 2793
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setContentAreaAsTouchableSurface(Z)V

    .line 2794
    return-void
.end method

.method protected setZeroTouchableSurface()V
    .locals 1

    .prologue
    .line 2805
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 2806
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 2754
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setMainPanelAsContent()V

    .line 2755
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    .line 2756
    return-void
.end method

.method show(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 2719
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2720
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2721
    return-void
.end method

.method protected updatePosition(II)V
    .locals 7
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I

    .prologue
    .line 2619
    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionX:I

    add-int v1, p1, v4

    .line 2620
    .local v1, "positionX":I
    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    add-int v2, p2, v4

    .line 2621
    .local v2, "positionY":I
    invoke-virtual {p0, v2}, Landroid/widget/Editor$ActionPinnedPopupWindow;->clipVertically(I)I

    move-result v2

    .line 2623
    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    .line 2624
    .local v3, "width":I
    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2627
    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2628
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2629
    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    neg-int v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2631
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2632
    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 2639
    :goto_0
    return-void

    .line 2634
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2637
    invoke-direct {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setTouchableSurfaceInsetsComputer()V

    goto :goto_0
.end method

.method public updatePosition(IIZZ)V
    .locals 3
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 2699
    if-nez p4, :cond_0

    if-eqz p3, :cond_2

    .line 2700
    :cond_0
    const/4 v1, 0x0

    .line 2701
    .local v1, "insertionMode":Z
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    invoke-virtual {v2}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    instance-of v2, v2, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v2, :cond_1

    .line 2702
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    check-cast v0, Landroid/widget/Editor$InsertionHandleView;

    .line 2703
    .local v0, "insertionHandle":Landroid/widget/Editor$InsertionHandleView;
    # invokes: Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V
    invoke-static {v0}, Landroid/widget/Editor$InsertionHandleView;->access$2000(Landroid/widget/Editor$InsertionHandleView;)V

    .line 2704
    const/4 v1, 0x1

    # setter for: Landroid/widget/Editor$InsertionHandleView;->mReShowPopup:Z
    invoke-static {v0, v1}, Landroid/widget/Editor$InsertionHandleView;->access$2102(Landroid/widget/Editor$InsertionHandleView;Z)Z

    .line 2707
    .end local v0    # "insertionHandle":Landroid/widget/Editor$InsertionHandleView;
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->isMainPanelContent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2708
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->hide()V

    .line 2709
    const/16 v2, 0x1f4

    invoke-virtual {p0, v2}, Landroid/widget/Editor$ActionPinnedPopupWindow;->show(I)V

    .line 2716
    .end local v1    # "insertionMode":Z
    :cond_2
    :goto_0
    return-void

    .line 2710
    .restart local v1    # "insertionMode":Z
    :cond_3
    if-eqz v1, :cond_4

    .line 2711
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->hide()V

    goto :goto_0

    .line 2713
    :cond_4
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->stopSelectionActionMode()V

    goto :goto_0
.end method
