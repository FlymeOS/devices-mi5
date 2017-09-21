.class public Landroid/widget/MediaController;
.super Landroid/widget/FrameLayout;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MediaController$MediaPlayerControl;
    }
.end annotation


# static fields
.field private static final FADE_OUT:I = 0x1

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field private final isLayoutRtl:Z

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAnchor:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDecor:Landroid/view/View;

.field private mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field private mFfwdButton:Landroid/widget/ImageButton;

.field private final mFfwdListener:Landroid/view/View$OnClickListener;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mFromXml:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mListenersSet:Z

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseDescription:Ljava/lang/CharSequence;

.field private final mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayDescription:Ljava/lang/CharSequence;

.field private mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRewButton:Landroid/widget/ImageButton;

.field private final mRewListener:Landroid/view/View$OnClickListener;

.field private mRoot:Landroid/view/View;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShowing:Z

.field private final mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mUseFastForward:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/MediaController;->isLayoutRtl:Z

    .line 193
    new-instance v0, Landroid/widget/MediaController$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 206
    new-instance v0, Landroid/widget/MediaController$2;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 421
    new-instance v0, Landroid/widget/MediaController$3;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    .line 551
    new-instance v0, Landroid/widget/MediaController$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 592
    new-instance v0, Landroid/widget/MediaController$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 665
    new-instance v0, Landroid/widget/MediaController$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 677
    new-instance v0, Landroid/widget/MediaController$7;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$7;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 108
    iput-object p0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    .line 109
    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    .line 110
    iput-boolean v1, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    .line 111
    iput-boolean v1, p0, Landroid/widget/MediaController;->mFromXml:Z

    .line 112
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 113
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useFastForward"    # Z

    .prologue
    const/4 v0, 0x1

    .line 122
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/widget/MediaController;->isLayoutRtl:Z

    .line 193
    new-instance v0, Landroid/widget/MediaController$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 206
    new-instance v0, Landroid/widget/MediaController$2;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 421
    new-instance v0, Landroid/widget/MediaController$3;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    .line 551
    new-instance v0, Landroid/widget/MediaController$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 592
    new-instance v0, Landroid/widget/MediaController$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 665
    new-instance v0, Landroid/widget/MediaController$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 677
    new-instance v0, Landroid/widget/MediaController$7;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$7;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 123
    iput-object p1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    .line 124
    iput-boolean p2, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    .line 125
    invoke-direct {p0}, Landroid/widget/MediaController;->initFloatingWindowLayout()V

    .line 126
    invoke-direct {p0}, Landroid/widget/MediaController;->initFloatingWindow()V

    .line 127
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 128
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/MediaController;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/widget/MediaController;->updateFloatingWindowLayout()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/MediaController;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/MediaController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/MediaController;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/MediaController;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/MediaController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/MediaController;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/MediaController;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/MediaController;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/MediaController;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    iget-boolean v0, p0, Landroid/widget/MediaController;->mDragging:Z

    return v0
.end method

.method static synthetic access$602(Landroid/widget/MediaController;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Landroid/widget/MediaController;->mDragging:Z

    return p1
.end method

.method static synthetic access$700(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/MediaController;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/widget/MediaController;->doPauseResume()V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/MediaController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private disableUnsupportedButtons()V
    .locals 2

    .prologue
    .line 341
    :try_start_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 344
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 347
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    move-result v0

    if-nez v0, :cond_2

    .line 348
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 357
    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    move-result v0

    if-nez v0, :cond_3

    .line 358
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :cond_3
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 578
    :goto_0
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 579
    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    goto :goto_0
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 265
    iget-object v2, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 266
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x1040289

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/MediaController;->mPlayDescription:Ljava/lang/CharSequence;

    .line 268
    const v2, 0x1040288

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/MediaController;->mPauseDescription:Ljava/lang/CharSequence;

    .line 270
    const v2, 0x102035f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 271
    iget-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 273
    iget-object v2, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Landroid/widget/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    :cond_0
    const v2, 0x1020360

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    .line 277
    iget-object v2, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 278
    iget-boolean v2, p0, Landroid/widget/MediaController;->isLayoutRtl:Z

    if-eqz v2, :cond_7

    .line 279
    iget-object v2, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    :goto_0
    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v2, :cond_1

    .line 284
    iget-object v5, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 288
    :cond_1
    const v2, 0x102035e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    .line 289
    iget-object v2, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    .line 290
    iget-boolean v2, p0, Landroid/widget/MediaController;->isLayoutRtl:Z

    if-eqz v2, :cond_9

    .line 291
    iget-object v2, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    :goto_2
    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v2, :cond_2

    .line 296
    iget-object v2, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-boolean v5, p0, Landroid/widget/MediaController;->mUseFastForward:Z

    if-eqz v5, :cond_a

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 301
    :cond_2
    const v2, 0x102032d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    .line 302
    iget-object v2, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroid/widget/MediaController;->mListenersSet:Z

    if-nez v2, :cond_3

    .line 303
    iget-object v2, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 305
    :cond_3
    const v2, 0x102032c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    .line 306
    iget-object v2, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroid/widget/MediaController;->mListenersSet:Z

    if-nez v2, :cond_4

    .line 307
    iget-object v2, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 310
    :cond_4
    const v2, 0x1020362

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    .line 311
    iget-object v2, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_6

    .line 312
    iget-object v2, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    instance-of v2, v2, Landroid/widget/SeekBar;

    if-eqz v2, :cond_5

    .line 313
    iget-object v1, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    check-cast v1, Landroid/widget/SeekBar;

    .line 314
    .local v1, "seeker":Landroid/widget/SeekBar;
    iget-object v2, p0, Landroid/widget/MediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 316
    .end local v1    # "seeker":Landroid/widget/SeekBar;
    :cond_5
    iget-object v2, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 319
    :cond_6
    const v2, 0x1020090

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    .line 320
    const v2, 0x1020361

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 322
    new-instance v2, Ljava/util/Formatter;

    iget-object v3, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    .line 324
    invoke-direct {p0}, Landroid/widget/MediaController;->installPrevNextListeners()V

    .line 325
    return-void

    .line 281
    :cond_7
    iget-object v2, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Landroid/widget/MediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_8
    move v2, v4

    .line 284
    goto/16 :goto_1

    .line 293
    :cond_9
    iget-object v2, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Landroid/widget/MediaController;->mRewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_a
    move v3, v4

    .line 296
    goto/16 :goto_3
.end method

.method private initFloatingWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 135
    iget-object v0, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    .line 138
    new-instance v0, Lcom/android/internal/policy/MiuiPhoneWindow;

    iget-object v1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/MiuiPhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    .line 140
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 142
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    .line 143
    iget-object v0, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/MediaController;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 149
    iget-object v0, p0, Landroid/widget/MediaController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 151
    invoke-virtual {p0, v2}, Landroid/widget/MediaController;->setFocusable(Z)V

    .line 152
    invoke-virtual {p0, v2}, Landroid/widget/MediaController;->setFocusableInTouchMode(Z)V

    .line 153
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->setDescendantFocusability(I)V

    .line 154
    invoke-virtual {p0}, Landroid/widget/MediaController;->requestFocus()Z

    .line 155
    return-void
.end method

.method private initFloatingWindowLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 162
    iget-object v0, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 163
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 164
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 165
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 166
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 167
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 168
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x820020

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 171
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 172
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 173
    return-void
.end method

.method private installPrevNextListeners()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 690
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 691
    iget-boolean v0, p0, Landroid/widget/MediaController;->isLayoutRtl:Z

    if-eqz v0, :cond_2

    .line 692
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    :goto_0
    iget-object v3, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 699
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 700
    iget-boolean v0, p0, Landroid/widget/MediaController;->isLayoutRtl:Z

    if-eqz v0, :cond_4

    .line 701
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    :goto_2
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_5

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 707
    :cond_1
    return-void

    .line 694
    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 696
    goto :goto_1

    .line 703
    :cond_4
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    move v1, v2

    .line 705
    goto :goto_3
.end method

.method private setProgress()I
    .locals 10

    .prologue
    .line 456
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/MediaController;->mDragging:Z

    if-eqz v5, :cond_2

    .line 457
    :cond_0
    const/4 v4, 0x0

    .line 476
    :cond_1
    :goto_0
    return v4

    .line 459
    :cond_2
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v4

    .line 460
    .local v4, "position":I
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 461
    .local v0, "duration":I
    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_4

    .line 462
    if-lez v0, :cond_3

    .line 464
    const-wide/16 v6, 0x3e8

    int-to-long v8, v4

    mul-long/2addr v6, v8

    int-to-long v8, v0

    div-long v2, v6, v8

    .line 465
    .local v2, "pos":J
    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    long-to-int v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 467
    .end local v2    # "pos":J
    :cond_3
    iget-object v5, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getBufferPercentage()I

    move-result v1

    .line 468
    .local v1, "percent":I
    iget-object v5, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    mul-int/lit8 v6, v1, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 471
    .end local v1    # "percent":I
    :cond_4
    iget-object v5, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 472
    iget-object v5, p0, Landroid/widget/MediaController;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    :cond_5
    iget-object v5, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 474
    iget-object v5, p0, Landroid/widget/MediaController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/widget/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 11
    .param p1, "timeMs"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 441
    div-int/lit16 v3, p1, 0x3e8

    .line 443
    .local v3, "totalSeconds":I
    rem-int/lit8 v2, v3, 0x3c

    .line 444
    .local v2, "seconds":I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 445
    .local v1, "minutes":I
    div-int/lit16 v0, v3, 0xe10

    .line 447
    .local v0, "hours":I
    iget-object v4, p0, Landroid/widget/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 448
    if-lez v0, :cond_0

    .line 449
    iget-object v4, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 451
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Landroid/widget/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateFloatingWindowLayout()V
    .locals 6

    .prologue
    const/high16 v5, -0x80000000

    .line 178
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 179
    .local v0, "anchorPos":[I
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 183
    iget-object v2, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 186
    iget-object v1, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 187
    .local v1, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 188
    const/4 v2, 0x0

    aget v2, v0, v2

    iget-object v3, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 189
    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 190
    return-void
.end method

.method private updatePausePlay()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 564
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 565
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/MediaController;->mPauseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 567
    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 568
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/MediaController;->mPlayDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0xbb8

    const/4 v2, 0x1

    .line 505
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 506
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 508
    .local v1, "uniqueDown":Z
    :goto_0
    const/16 v3, 0x4f

    if-eq v0, v3, :cond_0

    const/16 v3, 0x55

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_3

    .line 511
    :cond_0
    if-eqz v1, :cond_1

    .line 512
    invoke-direct {p0}, Landroid/widget/MediaController;->doPauseResume()V

    .line 513
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    .line 514
    iget-object v3, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    .line 515
    iget-object v3, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 548
    :cond_1
    :goto_1
    return v2

    .line 506
    .end local v1    # "uniqueDown":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 519
    .restart local v1    # "uniqueDown":Z
    :cond_3
    const/16 v3, 0x7e

    if-ne v0, v3, :cond_4

    .line 520
    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_1

    .line 521
    iget-object v3, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    .line 522
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 523
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    goto :goto_1

    .line 526
    :cond_4
    const/16 v3, 0x56

    if-eq v0, v3, :cond_5

    const/16 v3, 0x7f

    if-ne v0, v3, :cond_6

    .line 528
    :cond_5
    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    iget-object v3, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 530
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 531
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    goto :goto_1

    .line 534
    :cond_6
    const/16 v3, 0x19

    if-eq v0, v3, :cond_7

    const/16 v3, 0x18

    if-eq v0, v3, :cond_7

    const/16 v3, 0xa4

    if-eq v0, v3, :cond_7

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_8

    .line 539
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1

    .line 540
    :cond_8
    const/4 v3, 0x4

    if-eq v0, v3, :cond_9

    const/16 v3, 0x52

    if-ne v0, v3, :cond_a

    .line 541
    :cond_9
    if-eqz v1, :cond_1

    .line 542
    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 547
    :cond_a
    invoke-virtual {p0, v4}, Landroid/widget/MediaController;->show(I)V

    .line 548
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 662
    const-class v0, Landroid/widget/MediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 407
    iget-object v1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-nez v1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-boolean v1, p0, Landroid/widget/MediaController;->mShowing:Z

    if-eqz v1, :cond_0

    .line 412
    :try_start_0
    iget-object v1, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 413
    iget-object v1, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/MediaController;->mShowing:Z

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaController"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Landroid/widget/MediaController;->mShowing:Z

    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 3

    .prologue
    .line 256
    iget-object v1, p0, Landroid/widget/MediaController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 257
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v1, 0x1090079

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    .line 259
    iget-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/MediaController;->initControllerView(Landroid/view/View;)V

    .line 261
    iget-object v1, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/MediaController;->initControllerView(Landroid/view/View;)V

    .line 119
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 494
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 483
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 486
    :pswitch_2
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 489
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    goto :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 499
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 231
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 234
    :cond_0
    iput-object p1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    .line 235
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 236
    iget-object v2, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/MediaController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 239
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 244
    .local v0, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/MediaController;->removeAllViews()V

    .line 245
    invoke-virtual {p0}, Landroid/widget/MediaController;->makeControllerView()Landroid/view/View;

    move-result-object v1

    .line 246
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0, v1, v0}, Landroid/widget/MediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 638
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 641
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Landroid/widget/MediaController;->mFfwdButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 644
    :cond_1
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Landroid/widget/MediaController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 647
    :cond_2
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 648
    iget-object v3, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_6

    iget-object v0, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 650
    :cond_3
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 651
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_7

    iget-object v3, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_7

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 653
    :cond_4
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    .line 654
    iget-object v0, p0, Landroid/widget/MediaController;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 656
    :cond_5
    invoke-direct {p0}, Landroid/widget/MediaController;->disableUnsupportedButtons()V

    .line 657
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 658
    return-void

    :cond_6
    move v0, v2

    .line 648
    goto :goto_0

    :cond_7
    move v1, v2

    .line 651
    goto :goto_1
.end method

.method public setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 0
    .param p1, "player"    # Landroid/widget/MediaController$MediaPlayerControl;

    .prologue
    .line 219
    iput-object p1, p0, Landroid/widget/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 220
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 221
    return-void
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "next"    # Landroid/view/View$OnClickListener;
    .param p2, "prev"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v1, 0x0

    .line 710
    iput-object p1, p0, Landroid/widget/MediaController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 711
    iput-object p2, p0, Landroid/widget/MediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MediaController;->mListenersSet:Z

    .line 714
    iget-object v0, p0, Landroid/widget/MediaController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 715
    invoke-direct {p0}, Landroid/widget/MediaController;->installPrevNextListeners()V

    .line 717
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v0, :cond_0

    .line 718
    iget-object v0, p0, Landroid/widget/MediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 720
    :cond_0
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/MediaController;->mFromXml:Z

    if-nez v0, :cond_1

    .line 721
    iget-object v0, p0, Landroid/widget/MediaController;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 724
    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 332
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/MediaController;->show(I)V

    .line 333
    return-void
.end method

.method public show(I)V
    .locals 5
    .param p1, "timeout"    # I

    .prologue
    const/4 v4, 0x1

    .line 375
    iget-boolean v1, p0, Landroid/widget/MediaController;->mShowing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/MediaController;->mAnchor:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 376
    invoke-direct {p0}, Landroid/widget/MediaController;->setProgress()I

    .line 377
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Landroid/widget/MediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 380
    :cond_0
    invoke-direct {p0}, Landroid/widget/MediaController;->disableUnsupportedButtons()V

    .line 381
    invoke-direct {p0}, Landroid/widget/MediaController;->updateFloatingWindowLayout()V

    .line 382
    iget-object v1, p0, Landroid/widget/MediaController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/widget/MediaController;->mDecor:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/MediaController;->mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    iput-boolean v4, p0, Landroid/widget/MediaController;->mShowing:Z

    .line 385
    :cond_1
    invoke-direct {p0}, Landroid/widget/MediaController;->updatePausePlay()V

    .line 390
    iget-object v1, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 392
    if-eqz p1, :cond_2

    iget-object v1, p0, Landroid/widget/MediaController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 393
    iget-object v1, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 394
    iget-object v1, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 395
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/widget/MediaController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 397
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method
