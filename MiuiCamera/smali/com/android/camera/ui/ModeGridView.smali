.class Lcom/android/camera/ui/ModeGridView;
.super Landroid/view/ViewGroup;
.source "ModeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ModeGridView$OnChanageListener;
    }
.end annotation


# static fields
.field private static INVALID_POSITION:I


# instance fields
.field private dragResponseMS:J

.field private isDrag:Z

.field private mChildHeight:I

.field private mChildWidth:I

.field private mColumnCount:I

.field private mDownScrollBorder:I

.field private mDownX:I

.field private mDownY:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragImageView:Landroid/widget/ImageView;

.field private mDragPosition:I

.field private mEnableDrag:Z

.field private mGridViewHonSpacing:I

.field private mGridViewMarginTop:I

.field private mGridViewMarginWidth:I

.field private mGridViewVerSpacing:I

.field private mHandler:Landroid/os/Handler;

.field private mLongClickRunnable:Ljava/lang/Runnable;

.field private mOffset2Left:I

.field private mOffset2Top:I

.field mParent:Lcom/android/camera/ui/ScreenView;

.field private mPoint2ItemLeft:I

.field private mPoint2ItemTop:I

.field private mRowCount:I

.field private mScreenIndex:I

.field private mScrollRunnable:Ljava/lang/Runnable;

.field private mStartDragItemView:Landroid/view/View;

.field private mStatusHeight:I

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mUpScrollBorder:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private moveX:I

.field private moveY:I

.field private onChanageListener:Lcom/android/camera/ui/ModeGridView$OnChanageListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 517
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/ui/ModeGridView;->INVALID_POSITION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/ui/ScreenView;IIIII)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/camera/ui/ScreenView;
    .param p3, "rowCount"    # I
    .param p4, "columnCount"    # I
    .param p5, "childWidth"    # I
    .param p6, "childHeight"    # I
    .param p7, "screenIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 536
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 423
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/camera/ui/ModeGridView;->dragResponseMS:J

    .line 433
    iput-boolean v2, p0, Lcom/android/camera/ui/ModeGridView;->isDrag:Z

    .line 434
    iput-boolean v2, p0, Lcom/android/camera/ui/ModeGridView;->mEnableDrag:Z

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    .line 555
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    .line 558
    new-instance v0, Lcom/android/camera/ui/ModeGridView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ModeGridView$1;-><init>(Lcom/android/camera/ui/ModeGridView;)V

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    .line 781
    new-instance v0, Lcom/android/camera/ui/ModeGridView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ModeGridView$2;-><init>(Lcom/android/camera/ui/ModeGridView;)V

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mScrollRunnable:Ljava/lang/Runnable;

    .line 537
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/camera/ui/ModeGridView;->set(IIII)V

    .line 538
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeGridView;->setDrawingCacheEnabled(Z)V

    .line 539
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ModeGridView;->setWillNotDraw(Z)V

    .line 540
    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->initGridViewLayout()V

    .line 541
    invoke-direct {p0, p2, p7}, Lcom/android/camera/ui/ModeGridView;->initDrag(Lcom/android/camera/ui/ScreenView;I)V

    .line 542
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/ModeGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeGridView;
    .param p1, "x1"    # Z

    .prologue
    .line 420
    iput-boolean p1, p0, Lcom/android/camera/ui/ModeGridView;->isDrag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ModeGridView;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeGridView;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/ModeGridView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeGridView;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/ModeGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeGridView;

    .prologue
    .line 420
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mDownScrollBorder:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/ModeGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeGridView;

    .prologue
    .line 420
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->moveX:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/ModeGridView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeGridView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 420
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ModeGridView;->onSwapItem(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/ModeGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeGridView;

    .prologue
    .line 420
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/ModeGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeGridView;

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/ui/ModeGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeGridView;

    .prologue
    .line 420
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mScreenIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ModeGridView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeGridView;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/ModeGridView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeGridView;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/ModeGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeGridView;

    .prologue
    .line 420
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mDownX:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/ModeGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeGridView;

    .prologue
    .line 420
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mDownY:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/ModeGridView;Landroid/graphics/Bitmap;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ModeGridView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 420
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/ModeGridView;->createDragImage(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/ui/ModeGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeGridView;

    .prologue
    .line 420
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->moveY:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/ModeGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeGridView;

    .prologue
    .line 420
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mUpScrollBorder:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/ModeGridView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ModeGridView;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createDragImage(Landroid/graphics/Bitmap;II)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "downX"    # I
    .param p3, "downY"    # I

    .prologue
    const/4 v3, -0x2

    .line 731
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 732
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 733
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 734
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mPoint2ItemLeft:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mOffset2Left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 735
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mPoint2ItemTop:I

    sub-int v1, p3, v1

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mOffset2Top:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mStatusHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 736
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f0ccccd    # 0.55f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 737
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 738
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 739
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 742
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    .line 743
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 744
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 745
    return-void
.end method

.method private getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x0

    return v0
.end method

.method private initDrag(Lcom/android/camera/ui/ScreenView;I)V
    .locals 2
    .param p1, "parent"    # Lcom/android/camera/ui/ScreenView;
    .param p2, "screenIndex"    # I

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/camera/ui/ModeGridView;->mParent:Lcom/android/camera/ui/ScreenView;

    .line 546
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mVibrator:Landroid/os/Vibrator;

    .line 547
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowManager:Landroid/view/WindowManager;

    .line 548
    iput p2, p0, Lcom/android/camera/ui/ModeGridView;->mScreenIndex:I

    .line 549
    return-void
.end method

.method private initGridViewLayout()V
    .locals 3

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewHonSpacing:I

    .line 865
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewVerSpacing:I

    .line 866
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mChildWidth:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewHonSpacing:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginWidth:I

    .line 868
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginTop:I

    .line 869
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mRowCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 870
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginTop:I

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mChildHeight:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewVerSpacing:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mRowCount:I

    rsub-int/lit8 v2, v2, 0x3

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginTop:I

    .line 872
    :cond_0
    return-void
.end method

.method private isTouchInItem(Landroid/view/View;II)Z
    .locals 4
    .param p1, "dragView"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 686
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 687
    .local v0, "leftOffset":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 688
    .local v1, "topOffset":I
    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-le p2, v3, :cond_1

    .line 696
    :cond_0
    :goto_0
    return v2

    .line 692
    :cond_1
    if-lt p3, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    if-gt p3, v3, :cond_0

    .line 696
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onDragItem(II)V
    .locals 3
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mPoint2ItemLeft:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mOffset2Left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 767
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mPoint2ItemTop:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mOffset2Top:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mStatusHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 768
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ModeGridView;->onSwapItem(II)V

    .line 772
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/ModeGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 773
    return-void
.end method

.method private onStopDrag()V
    .locals 2

    .prologue
    .line 835
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 836
    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->removeDragImage()V

    .line 837
    return-void
.end method

.method private onSwapItem(II)V
    .locals 3
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    .line 815
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/ModeGridView;->pointToPosition(II)I

    move-result v0

    .line 818
    .local v0, "tempPosition":I
    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    if-eq v0, v1, :cond_1

    sget v1, Lcom/android/camera/ui/ModeGridView;->INVALID_POSITION:I

    if-eq v0, v1, :cond_1

    .line 819
    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 820
    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 822
    iget-object v1, p0, Lcom/android/camera/ui/ModeGridView;->onChanageListener:Lcom/android/camera/ui/ModeGridView$OnChanageListener;

    if-eqz v1, :cond_0

    .line 823
    iget-object v1, p0, Lcom/android/camera/ui/ModeGridView;->onChanageListener:Lcom/android/camera/ui/ModeGridView$OnChanageListener;

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    invoke-interface {v1, v2, v0}, Lcom/android/camera/ui/ModeGridView$OnChanageListener;->onChange(II)V

    .line 826
    :cond_0
    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    .line 828
    :cond_1
    return-void
.end method

.method private removeDragImage()V
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    .line 756
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 930
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 931
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 612
    iget-boolean v2, p0, Lcom/android/camera/ui/ModeGridView;->mEnableDrag:Z

    if-nez v2, :cond_0

    .line 613
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 670
    :goto_0
    return v2

    .line 615
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 670
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 618
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/camera/ui/ModeGridView;->dragResponseMS:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 620
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mDownX:I

    .line 621
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mDownY:I

    .line 624
    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mDownX:I

    iget v3, p0, Lcom/android/camera/ui/ModeGridView;->mDownY:I

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ui/ModeGridView;->pointToPosition(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    .line 626
    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    sget v3, Lcom/android/camera/ui/ModeGridView;->INVALID_POSITION:I

    if-ne v2, v3, :cond_2

    .line 627
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 631
    :cond_2
    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mDragPosition:I

    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ModeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    .line 634
    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mDownY:I

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mPoint2ItemTop:I

    .line 635
    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mDownX:I

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mPoint2ItemLeft:I

    .line 637
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/ModeGridView;->mDownY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mOffset2Top:I

    .line 638
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/ModeGridView;->mDownX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mOffset2Left:I

    .line 641
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mDownScrollBorder:I

    .line 643
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/camera/ui/ModeGridView;->mUpScrollBorder:I

    .line 648
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 650
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 652
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    goto/16 :goto_1

    .line 657
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 658
    .local v0, "moveX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 661
    .local v1, "moveY":I
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mStartDragItemView:Landroid/view/View;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/camera/ui/ModeGridView;->isTouchInItem(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 662
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 666
    .end local v0    # "moveX":I
    .end local v1    # "moveY":I
    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView;->mLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 667
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/ui/ModeGridView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 615
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected doLayout(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 924
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 925
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeGridView;->layoutChildByIndex(I)V

    .line 924
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 927
    :cond_0
    return-void
.end method

.method protected layoutChildByIndex(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 906
    iget v4, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    div-int v2, p1, v4

    .line 907
    .local v2, "rowIndex":I
    iget v4, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    rem-int v0, p1, v4

    .line 908
    .local v0, "columnIndex":I
    iget v4, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginWidth:I

    iget v6, p0, Lcom/android/camera/ui/ModeGridView;->mChildWidth:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v4

    if-lez v0, :cond_1

    iget v4, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewHonSpacing:I

    mul-int/2addr v4, v0

    :goto_0
    add-int v1, v6, v4

    .line 910
    .local v1, "left":I
    iget v4, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginTop:I

    iget v6, p0, Lcom/android/camera/ui/ModeGridView;->mChildHeight:I

    mul-int/2addr v6, v2

    add-int/2addr v4, v6

    if-lez v2, :cond_0

    iget v5, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewVerSpacing:I

    mul-int/2addr v5, v2

    :cond_0
    add-int v3, v4, v5

    .line 912
    .local v3, "top":I
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ModeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/ModeGridView;->mChildWidth:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/camera/ui/ModeGridView;->mChildHeight:I

    add-int/2addr v6, v3

    invoke-virtual {v4, v1, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 916
    return-void

    .end local v1    # "left":I
    .end local v3    # "top":I
    :cond_1
    move v4, v5

    .line 908
    goto :goto_0
.end method

.method measureDimension(II)I
    .locals 1
    .param p1, "measureSpec"    # I
    .param p2, "contentDimension"    # I

    .prologue
    .line 894
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 902
    const/4 p2, 0x0

    .end local p2    # "contentDimension":I
    :goto_0
    :sswitch_0
    return p2

    .line 898
    .restart local p2    # "contentDimension":I
    :sswitch_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_0

    .line 900
    :sswitch_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    .line 894
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 920
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/camera/ui/ModeGridView;->doLayout(IIII)V

    .line 921
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 881
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginWidth:I

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mChildWidth:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewHonSpacing:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginWidth:I

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/ModeGridView;->measureDimension(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewMarginTop:I

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mChildHeight:I

    iget v3, p0, Lcom/android/camera/ui/ModeGridView;->mRowCount:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ModeGridView;->mGridViewVerSpacing:I

    iget v3, p0, Lcom/android/camera/ui/ModeGridView;->mRowCount:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/android/camera/ui/ModeGridView;->measureDimension(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ModeGridView;->setMeasuredDimension(II)V

    .line 888
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->mChildWidth:I

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->mChildHeight:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ModeGridView;->measureChildren(II)V

    .line 891
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/android/camera/ui/ModeGridView;->isDrag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ModeGridView;->mDragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 716
    :goto_0
    const/4 v0, 0x1

    .line 718
    :goto_1
    return v0

    .line 706
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->moveX:I

    .line 707
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->moveY:I

    .line 709
    iget v0, p0, Lcom/android/camera/ui/ModeGridView;->moveX:I

    iget v1, p0, Lcom/android/camera/ui/ModeGridView;->moveY:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ModeGridView;->onDragItem(II)V

    goto :goto_0

    .line 712
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/ui/ModeGridView;->onStopDrag()V

    .line 713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/ModeGridView;->isDrag:Z

    goto :goto_0

    .line 718
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 591
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 592
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 593
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/ModeGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 594
    iget-object v2, p0, Lcom/android/camera/ui/ModeGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 597
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeGridView;->getChildCount()I

    move-result v1

    .line 598
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 599
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ModeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 600
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 601
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 602
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 607
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :goto_1
    return v3

    .line 598
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 607
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public set(IIII)V
    .locals 2
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I
    .param p3, "childWidth"    # I
    .param p4, "childHeight"    # I

    .prologue
    const/4 v1, 0x1

    .line 857
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mRowCount:I

    .line 858
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mColumnCount:I

    .line 859
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mChildHeight:I

    .line 860
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeGridView;->mChildWidth:I

    .line 861
    return-void
.end method
