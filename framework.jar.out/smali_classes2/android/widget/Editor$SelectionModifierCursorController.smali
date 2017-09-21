.class public Landroid/widget/Editor$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectionModifierCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_REPLACE_ACTION:I = 0xc8


# instance fields

.field private mFlymeCanDragSelection:Z

.field private mFlymeDownMotionX:I

.field private mFlymeDownMotionY:I

.field private mFlymeDragSlop:I

.field private mIsFlymeDragSelectionToTop:Z

.field private mIsFlymeMoved:Z

.field private mDoubleTabed:Z

.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

.field private mGestureStayedInTapRegion:Z

.field private mInSwipeSelectionMode:Z

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

.field private mSwipeSelectionStart:I

.field private mTextSelectionModeEnable:Z

.field private mTranslationCache:[F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 2

    .prologue
    .line 5263
    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5246
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 5261
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTranslationCache:[F

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initFlymeExtraFields()V

    .line 5264
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 5265
    return-void

    .line 5261
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$200(Landroid/widget/Editor$SelectionModifierCursorController;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$SelectionModifierCursorController;

    .prologue
    .line 5233
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mInSwipeSelectionMode:Z

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/Editor$SelectionModifierCursorController;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$SelectionModifierCursorController;

    .prologue
    .line 5233
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTextSelectionModeEnable:Z

    return v0
.end method

.method private initDrawables()V
    .locals 3

    .prologue
    .line 5277
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$3900(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5278
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110200cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$3902(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5281
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$4000(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5282
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110200cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$4002(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5285
    :cond_1
    return-void
.end method

.method private initHandles()V
    .locals 4

    .prologue
    .line 5289
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-nez v0, :cond_0

    .line 5290
    new-instance v0, Landroid/widget/Editor$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/Editor;->access$3900(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/Editor;->access$4000(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionStartHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    .line 5292
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-nez v0, :cond_1

    .line 5293
    new-instance v0, Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/Editor;->access$4000(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/Editor;->access$3900(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionEndHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    .line 5296
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTranslationCache:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionStartHandleView;->setTranslation(F)V

    .line 5297
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTranslationCache:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionEndHandleView;->setTranslation(F)V

    .line 5299
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->show()V

    .line 5300
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->show()V

    .line 5304
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionStartHandleView;->showActionPopupWindow(I)V

    .line 5305
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->getActionPopupWindow()Landroid/widget/Editor$ActionPopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionEndHandleView;->setActionPopupWindow(Landroid/widget/Editor$ActionPopupWindow;)V

    .line 5307
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 5308
    return-void
.end method

.method private requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 5414
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5415
    return-void
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 5422
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 5423
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 5424
    .local v1, "offset":I
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v3, :cond_0

    .line 5425
    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5427
    :cond_0
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v3, :cond_1

    .line 5428
    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 5422
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5431
    .end local v1    # "offset":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 5442
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 5434
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 5311
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTextSelectionModeEnable:Z

    .line 5312
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    .line 5313
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->hide()V

    .line 5315
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1

    .line 5316
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->hide()V

    .line 5318
    :cond_1
    return-void
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 5457
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 5468
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5469
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 5471
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v1, :cond_0

    .line 5472
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->hideActionPopupWindow()V

    .line 5474
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v1, :cond_1

    .line 5475
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionEndHandleView;->hideActionPopupWindow()V

    .line 5477
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5323
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 5324
    .local v12, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 5325
    .local v13, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 5407
    :cond_0
    :goto_0
    :pswitch_0

    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$SelectionModifierCursorController;->flymeTouchEvent(Landroid/view/MotionEvent;)V

    return-void

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/Editor$SelectionModifierCursorController;->requestDisallowInterceptTouchEvent(Z)V

    .line 5408
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDoubleTabed:Z

    .line 5411
    :cond_1
    :goto_1
    return-void

    .line 5327
    :pswitch_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mInSwipeSelectionMode:Z

    .line 5330
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5333
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    if-eqz v14, :cond_2

    .line 5334
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    move-wide/from16 v16, v0

    sub-long v8, v14, v16

    .line 5335
    .local v8, "duration":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v14

    int-to-long v14, v14

    cmp-long v14, v8, v14

    if-gtz v14, :cond_2

    .line 5336
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    sub-float v2, v12, v14

    .line 5337
    .local v2, "deltaX":F
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    sub-float v3, v13, v14

    .line 5338
    .local v3, "deltaY":F
    mul-float v14, v2, v2

    mul-float v15, v3, v3

    add-float v4, v14, v15

    .line 5340
    .local v4, "distanceSquared":F
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    .line 5342
    .local v11, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v5

    .line 5343
    .local v5, "doubleTapSlop":I
    mul-int v14, v5, v5

    int-to-float v14, v14

    cmpg-float v14, v4, v14

    if-gez v14, :cond_3

    const/4 v10, 0x1

    .line 5345
    .local v10, "stayedInArea":Z
    :goto_2
    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isPositionOnText(FF)Z
    invoke-static {v14, v12, v13}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;FF)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5346
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwipeSelectionStart:I

    .line 5347
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mInSwipeSelectionMode:Z

    .line 5348
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 5349
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/Editor$SelectionModifierCursorController;->requestDisallowInterceptTouchEvent(Z)V

    .line 5350
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDoubleTabed:Z

    .line 5355
    .end local v2    # "deltaX":F
    .end local v3    # "deltaY":F
    .end local v4    # "distanceSquared":F
    .end local v5    # "doubleTapSlop":I
    .end local v8    # "duration":J
    .end local v10    # "stayedInArea":Z
    .end local v11    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_2
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    .line 5356
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    .line 5357
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    goto/16 :goto_1

    .line 5343
    .restart local v2    # "deltaX":F
    .restart local v3    # "deltaY":F
    .restart local v4    # "distanceSquared":F
    .restart local v5    # "doubleTapSlop":I
    .restart local v8    # "duration":J
    .restart local v11    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 5364
    .end local v2    # "deltaX":F
    .end local v3    # "deltaY":F
    .end local v4    # "distanceSquared":F
    .end local v5    # "doubleTapSlop":I
    .end local v8    # "duration":J
    .end local v11    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 5366
    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 5371
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    if-eqz v14, :cond_4

    .line 5372
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    sub-float v2, v12, v14

    .line 5373
    .restart local v2    # "deltaX":F
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    sub-float v3, v13, v14

    .line 5374
    .restart local v3    # "deltaY":F
    mul-float v14, v2, v2

    mul-float v15, v3, v3

    add-float v4, v14, v15

    .line 5376
    .restart local v4    # "distanceSquared":F
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    .line 5378
    .restart local v11    # "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v6

    .line 5380
    .local v6, "doubleTapTouchSlop":I
    mul-int v14, v6, v6

    int-to-float v14, v14

    cmpl-float v14, v4, v14

    if-lez v14, :cond_4

    .line 5381
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    .line 5382
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDoubleTabed:Z

    .line 5386
    .end local v2    # "deltaX":F
    .end local v3    # "deltaY":F
    .end local v4    # "distanceSquared":F
    .end local v6    # "doubleTapTouchSlop":I
    .end local v11    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mInSwipeSelectionMode:Z

    if-eqz v14, :cond_1

    .line 5387
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v7

    .line 5388
    .local v7, "offset":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwipeSelectionStart:I

    if-lt v7, v14, :cond_5

    .line 5389
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwipeSelectionStart:I

    invoke-static {v14, v15, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5392
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwipeSelectionStart:I

    if-eq v14, v7, :cond_6

    .line 5393
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    goto/16 :goto_1

    .line 5395
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    goto/16 :goto_1

    .line 5401
    .end local v7    # "offset":I
    :pswitch_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 5402
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mInSwipeSelectionMode:Z

    .line 5403
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDoubleTabed:Z

    if-eqz v14, :cond_0

    .line 5404
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto/16 :goto_0

    .line 5325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 5461
    if-nez p1, :cond_0

    .line 5462
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 5464
    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    .line 5450
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5451
    return-void
.end method

.method public setMaxTouchOffset(I)V
    .locals 0
    .param p1, "maxTouchOffset"    # I

    .prologue
    .line 5446
    iput p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 5447
    return-void
.end method

.method public setMinTouchOffset(I)V
    .locals 0
    .param p1, "minTouchOffset"    # I

    .prologue
    .line 5438
    iput p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5439
    return-void
.end method

.method public setTranslationCache([F)V
    .locals 0
    .param p1, "translationCache"    # [F

    .prologue
    .line 5480
    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTranslationCache:[F

    .line 5481
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 5268
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5274
    :goto_0
    return-void

    .line 5271
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V

    .line 5272
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    .line 5273
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTextSelectionModeEnable:Z

    goto :goto_0
.end method

.method private flymeTouchDown(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .local v4, "y":F
    float-to-int v5, v3

    iput v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDownMotionX:I

    float-to-int v5, v4

    iput v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDownMotionY:I

    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/widget/Editor;->mLastScrollTime:J

    iput-boolean v8, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeCanDragSelection:Z

    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    if-nez v5, :cond_1

    iput-boolean v8, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeCanDragSelection:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-boolean v5, v5, Landroid/widget/Editor;->mEnableDragSelection:Z

    if-nez v5, :cond_2

    iput-boolean v8, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeCanDragSelection:Z

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v5

    if-nez v5, :cond_3

    iput-boolean v9, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeCanDragSelection:Z

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .local v1, "lineWidth":I
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    sub-int v2, v5, v6

    .local v2, "textWidth":I
    if-gt v1, v2, :cond_4

    iput-boolean v9, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeCanDragSelection:Z

    goto :goto_0

    :cond_4
    iput-boolean v8, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeCanDragSelection:Z

    goto :goto_0
.end method

.method private flymeTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->flymeTouchDown(Landroid/view/MotionEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->flymeTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->flymeTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private flymeTouchMove(Landroid/view/MotionEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v8, v14

    .local v8, "motionX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v9, v14

    .local v9, "motionY":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v14

    int-to-float v15, v8

    int-to-float v0, v9

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v10

    .local v10, "offset":I
    const/4 v11, 0x0

    .local v11, "start":I
    const/4 v7, 0x0

    .local v7, "end":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeCanDragSelection:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-boolean v14, v14, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsFlymeMoved:Z

    if-eqz v14, :cond_2

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-boolean v14, v14, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->stopTextActionMode()V

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v14, v10, :cond_6

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    move v7, v10

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsFlymeDragSelectionToTop:Z

    :goto_1
    if-ltz v11, :cond_8

    if-ltz v7, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v14

    if-ne v11, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v14

    if-eq v7, v14, :cond_8

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/widget/TextView;->isOffsetOutOfVisible(I)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/widget/Editor;->mLastScrollTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/16 v16, 0xc8

    cmp-long v14, v14, v16

    if-gez v14, :cond_7

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-boolean v14, v14, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDownMotionX:I

    sub-int v14, v8, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-double v2, v14

    .local v2, "delateX":D
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDownMotionY:I

    sub-int v14, v9, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-double v4, v14

    .local v4, "delateY":D
    const-wide/16 v12, 0x0

    .local v12, "tan":D
    const-wide/16 v14, 0x0

    cmpl-double v14, v2, v14

    if-lez v14, :cond_3

    div-double v14, v4, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDownMotionX:I

    sub-int/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDragSlop:I

    if-lt v14, v15, :cond_5

    const-wide v14, 0x3ff3333333333333L    # 1.2

    cmpg-double v14, v12, v14

    if-gez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsFlymeMoved:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->hasFocus()Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDownMotionX:I

    sub-int/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDragSlop:I

    if-ge v14, v15, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDownMotionY:I

    sub-int/2addr v14, v9

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDragSlop:I

    if-lt v14, v15, :cond_0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsFlymeMoved:Z

    goto/16 :goto_0

    .end local v2    # "delateX":D
    .end local v4    # "delateY":D
    .end local v12    # "tan":D
    :cond_6
    move v11, v10

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsFlymeDragSelectionToTop:Z

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v14, Landroid/widget/Editor;->mLastScrollTime:J

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v14

    invoke-static {v14, v11, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_2
    return-void

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    goto :goto_2
.end method

.method private flymeTouchUp(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsFlymeMoved:Z

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void
.end method

.method private initFlymeExtraFields()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDragSlop:I

    return-void
.end method

.method public isDragSelectionToTop()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsFlymeDragSelectionToTop:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isShowing()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public mzUpdateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    return-void
.end method
