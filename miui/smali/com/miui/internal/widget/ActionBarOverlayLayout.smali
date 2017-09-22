.class public Lcom/miui/internal/widget/ActionBarOverlayLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ActionBarOverlayLayout$1;,
        Lcom/miui/internal/widget/ActionBarOverlayLayout$b;,
        Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;,
        Lcom/miui/internal/widget/ActionBarOverlayLayout$c;,
        Lcom/miui/internal/widget/ActionBarOverlayLayout$a;
    }
.end annotation


# instance fields
.field private aT:Lmiui/app/ActionBar;

.field private aV:I

.field private bh:Landroid/view/View;

.field protected mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

.field protected mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field private mActionMode:Landroid/view/ActionMode;

.field protected mContentView:Landroid/view/View;

.field private ps:Lcom/miui/internal/widget/ActionBarContextView;

.field private qE:Lcom/miui/internal/widget/ActionBarContainer;

.field private qF:Landroid/view/Window$Callback;

.field private qG:Z

.field private qH:Z

.field private qI:Z

.field private qJ:Z

.field private qK:Landroid/graphics/drawable/Drawable;

.field private qL:Landroid/graphics/Paint;

.field private qM:Landroid/graphics/Bitmap;

.field private qN:Landroid/graphics/Bitmap;

.field private qO:Landroid/graphics/Bitmap;

.field private qP:Landroid/graphics/Bitmap;

.field private qQ:Landroid/util/TypedValue;

.field private qR:Landroid/util/TypedValue;

.field private qS:Landroid/util/TypedValue;

.field private qT:Landroid/util/TypedValue;

.field private qU:Z

.field private qV:Landroid/graphics/Rect;

.field private qW:Landroid/graphics/Rect;

.field private qX:Landroid/graphics/Rect;

.field private qY:Landroid/graphics/Rect;

.field private qZ:Landroid/graphics/Rect;

.field private ra:Landroid/graphics/Rect;

.field private rb:Lcom/miui/internal/view/menu/ContextMenuBuilder;

.field private rc:Lcom/miui/internal/view/menu/MenuDialogHelper;

.field private rd:Lcom/miui/internal/widget/ActionBarOverlayLayout$b;

.field private re:Lmiui/app/OnStatusBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qV:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qW:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qX:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qY:Landroid/graphics/Rect;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qZ:Landroid/graphics/Rect;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ra:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Lcom/miui/internal/widget/ActionBarOverlayLayout$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$b;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Lcom/miui/internal/widget/ActionBarOverlayLayout$1;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rd:Lcom/miui/internal/widget/ActionBarOverlayLayout$b;

    .line 132
    sget-object v0, Lcom/miui/internal/R$styleable;->Window:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 134
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMajor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qQ:Landroid/util/TypedValue;

    .line 136
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMajor:I

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qQ:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 138
    :cond_0
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMinor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qR:Landroid/util/TypedValue;

    .line 140
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMinor:I

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qR:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 142
    :cond_1
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMajor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qS:Landroid/util/TypedValue;

    .line 144
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMajor:I

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qS:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 146
    :cond_2
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMinor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qT:Landroid/util/TypedValue;

    .line 148
    sget v1, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMinor:I

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qT:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 151
    :cond_3
    sget v1, Lmiui/R$styleable;->Window_contentAutoFitSystemWindow:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qJ:Z

    .line 152
    iget-boolean v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qJ:Z

    if-eqz v1, :cond_4

    .line 153
    sget v1, Lmiui/R$styleable;->Window_contentHeaderBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qK:Landroid/graphics/drawable/Drawable;

    .line 155
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->bh:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    .line 212
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v1

    .line 214
    if-nez v0, :cond_0

    .line 215
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 218
    :cond_0
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 219
    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qJ:Z

    if-nez v0, :cond_2

    .line 221
    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 223
    :cond_2
    return-void
.end method

.method private a(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 571
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 226
    const/4 v2, 0x0

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 228
    if-eqz p3, :cond_0

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    if-eq v3, v4, :cond_0

    .line 230
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move v2, v1

    .line 232
    :cond_0
    if-eqz p4, :cond_1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    if-eq v3, v4, :cond_1

    .line 234
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move v2, v1

    .line 236
    :cond_1
    if-eqz p6, :cond_2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    if-eq v3, v4, :cond_2

    .line 238
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move v2, v1

    .line 240
    :cond_2
    if-eqz p5, :cond_3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v3, v4, :cond_3

    .line 242
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move v0, v1

    .line 244
    :goto_0
    return v0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Lcom/miui/internal/widget/ActionBarContainer;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qE:Lcom/miui/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method private b(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionBarOverlayLayout$a;
    .locals 1

    .prologue
    .line 619
    instance-of v0, p1, Lmiui/view/SearchActionMode$Callback;

    if-eqz v0, :cond_0

    .line 620
    new-instance v0, Lcom/miui/internal/widget/ActionBarOverlayLayout$c;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$c;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    .line 622
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/internal/widget/ActionBarOverlayLayout$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$a;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    goto :goto_0
.end method

.method private ba()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 467
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 468
    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getLocationOnScreen([I)V

    .line 469
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 470
    aget v4, v2, v1

    if-eqz v4, :cond_0

    aget v4, v2, v0

    if-eqz v4, :cond_0

    aget v4, v2, v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v4, v5, :cond_0

    aget v2, v2, v0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private bb()V
    .locals 3

    .prologue
    .line 519
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 520
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 521
    sget v0, Lcom/miui/internal/R$id;->content_mask:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->bh:Landroid/view/View;

    .line 523
    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_OLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->bh:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->bh:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$drawable;->window_content_mask_oled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 527
    :cond_0
    sget v0, Lcom/miui/internal/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    .line 528
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    sget v1, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ps:Lcom/miui/internal/widget/ActionBarContextView;

    .line 530
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    sget v1, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    .line 532
    :cond_1
    sget v0, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qE:Lcom/miui/internal/widget/ActionBarContainer;

    .line 534
    :cond_2
    return-void
.end method

.method private bc()V
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rc:Lcom/miui/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rc:Lcom/miui/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rb:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    .line 796
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/miui/internal/widget/ActionBarOverlayLayout;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->bc()V

    return-void
.end method

.method private m(I)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 392
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 394
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    .line 395
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 396
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v4, :cond_2

    const/4 v1, 0x1

    .line 398
    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qR:Landroid/util/TypedValue;

    .line 399
    :goto_1
    if-eqz v1, :cond_1

    iget v4, v1, Landroid/util/TypedValue;->type:I

    if-eqz v4, :cond_1

    .line 401
    iget v4, v1, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 402
    invoke-virtual {v1, v3}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 409
    :cond_0
    :goto_2
    if-lez v0, :cond_1

    .line 410
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 414
    :cond_1
    return p1

    :cond_2
    move v1, v0

    .line 396
    goto :goto_0

    .line 398
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qQ:Landroid/util/TypedValue;

    goto :goto_1

    .line 403
    :cond_4
    iget v4, v1, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 404
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    invoke-virtual {v1, v0, v3}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_2
.end method

.method private n(I)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 418
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 419
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 422
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 424
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v4, :cond_2

    const/4 v1, 0x1

    .line 426
    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qS:Landroid/util/TypedValue;

    .line 427
    :goto_1
    if-eqz v1, :cond_1

    iget v4, v1, Landroid/util/TypedValue;->type:I

    if-eqz v4, :cond_1

    .line 429
    iget v4, v1, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 430
    invoke-virtual {v1, v3}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 437
    :cond_0
    :goto_2
    if-lez v0, :cond_1

    .line 438
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 442
    :cond_1
    return p1

    :cond_2
    move v1, v0

    .line 424
    goto :goto_0

    .line 426
    :cond_3
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qT:Landroid/util/TypedValue;

    goto :goto_1

    .line 431
    :cond_4
    iget v4, v1, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 432
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    invoke-virtual {v1, v0, v3}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_2
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 447
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qJ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qK:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qV:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 450
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 453
    :cond_0
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qU:Z

    if-eqz v0, :cond_1

    .line 454
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 455
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 456
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qM:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qL:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 457
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qN:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qN:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qL:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 458
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qO:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qO:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qL:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 459
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qP:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qP:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qP:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qL:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 460
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 464
    :goto_0
    return-void

    .line 462
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 550
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 567
    :cond_0
    :goto_0
    return v0

    .line 555
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 556
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_3

    .line 557
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ps:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ps:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContextView;->hideOverflowMenu()Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 559
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0

    .line 563
    :cond_3
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView;->hideOverflowMenu()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 178
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->re:Lmiui/app/OnStatusBarChangeListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->re:Lmiui/app/OnStatusBarChangeListener;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-interface {v0, v1}, Lmiui/app/OnStatusBarChangeListener;->onStatusBarHeightChange(I)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qY:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 183
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qY:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qV:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 186
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_6

    .line 187
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->setPendingInsets(Landroid/graphics/Rect;)V

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qY:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v0

    if-nez v0, :cond_4

    move v4, v3

    :goto_0
    move-object v0, p0

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    .line 194
    :goto_1
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qE:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_2

    .line 195
    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qE:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qY:Landroid/graphics/Rect;

    move-object v6, p0

    move v9, v3

    move v10, v5

    move v11, v3

    move v12, v3

    invoke-direct/range {v6 .. v12}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qW:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qV:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 199
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qW:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qV:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 203
    :goto_2
    if-eqz v3, :cond_3

    .line 204
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 207
    :cond_3
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    return v0

    :cond_4
    move v4, v5

    .line 190
    goto :goto_0

    :cond_5
    move v3, v0

    goto :goto_2

    :cond_6
    move v0, v5

    goto :goto_1
.end method

.method public getActionBar()Lmiui/app/ActionBar;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->aT:Lmiui/app/ActionBar;

    return-object v0
.end method

.method public getActionBarView()Lcom/miui/internal/widget/ActionBarView;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    return-object v0
.end method

.method protected getBottomInset()I
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qE:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qE:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getCollapsedHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallback()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qF:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;
    .locals 2

    .prologue
    .line 496
    new-instance v0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;Lcom/miui/internal/widget/ActionBarOverlayLayout$1;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public isRootSubDecor()Z
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qH:Z

    return v0
.end method

.method public isTranslucentStatus()Z
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->aV:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 249
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 250
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 251
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 262
    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->bb()V

    .line 263
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    .prologue
    .line 267
    invoke-direct/range {p0 .. p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->m(I)I

    move-result v4

    .line 268
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->n(I)I

    move-result v6

    .line 270
    const/4 v7, 0x0

    .line 271
    const/4 v5, 0x0

    .line 272
    const/4 v3, 0x0

    .line 274
    const/4 v10, 0x0

    .line 275
    const/4 v11, 0x0

    .line 277
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->bh:Landroid/view/View;

    move-object/from16 v17, v0

    .line 282
    const/4 v2, 0x0

    move v9, v2

    move v14, v3

    move v15, v5

    move/from16 v16, v7

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v2

    if-ge v9, v2, :cond_1

    .line 283
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 285
    if-eq v3, v8, :cond_f

    move-object/from16 v0, v17

    if-eq v3, v0, :cond_f

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_0

    move v3, v14

    move v5, v15

    move/from16 v7, v16

    .line 282
    :goto_1
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v14, v3

    move v15, v5

    move/from16 v16, v7

    goto :goto_0

    .line 289
    :cond_0
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 290
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 291
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v7

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v7

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 292
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v7

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v5

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 293
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v14, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v14

    move v3, v14

    move v5, v15

    move/from16 v7, v16

    goto :goto_1

    .line 296
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_e

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v2

    move v3, v2

    .line 301
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qE:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_d

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getBottomInset()I

    move-result v2

    move v5, v2

    .line 308
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qJ:Z

    if-eqz v2, :cond_2

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qK:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qK:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getRight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getLeft()I

    move-result v11

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qV:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v7, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 326
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ra:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qY:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qX:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qV:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v2

    if-eqz v2, :cond_3

    if-lez v3, :cond_3

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qX:Landroid/graphics/Rect;

    const/4 v7, 0x0

    iput v7, v2, Landroid/graphics/Rect;->top:I

    .line 332
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qG:Z

    if-nez v2, :cond_a

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qX:Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qX:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 345
    :goto_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qX:Landroid/graphics/Rect;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->a(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qZ:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ra:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qI:Z

    if-eqz v2, :cond_5

    .line 348
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qZ:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ra:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ra:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-super {v0, v2}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 350
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qI:Z

    .line 353
    :cond_5
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 354
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 355
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 356
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 357
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v14, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v8

    .line 360
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 361
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    invoke-virtual/range {v2 .. v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 365
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v9

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v10

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 373
    invoke-static {v2, v4, v8}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v2

    shl-int/lit8 v4, v8, 0x10

    invoke-static {v3, v6, v4}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    .line 376
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ba()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qU:Z

    .line 377
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qU:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qL:Landroid/graphics/Paint;

    if-nez v2, :cond_7

    .line 378
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qL:Landroid/graphics/Paint;

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qL:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qL:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 382
    sget v3, Lcom/miui/internal/R$drawable;->popup_mask_1:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qM:Landroid/graphics/Bitmap;

    .line 383
    sget v3, Lcom/miui/internal/R$drawable;->popup_mask_2:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qN:Landroid/graphics/Bitmap;

    .line 384
    sget v3, Lcom/miui/internal/R$drawable;->popup_mask_3:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qO:Landroid/graphics/Bitmap;

    .line 385
    sget v3, Lcom/miui/internal/R$drawable;->popup_mask_4:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qP:Landroid/graphics/Bitmap;

    .line 388
    :cond_7
    return-void

    .line 313
    :cond_8
    const v2, 0x1020002

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 314
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    .line 315
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 316
    if-gtz v3, :cond_9

    .line 317
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qY:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v2, v7, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_4

    .line 319
    :cond_9
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    const/4 v9, 0x0

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v2, v7, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_4

    .line 336
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 337
    if-lez v3, :cond_b

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ra:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 343
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ra:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_5

    .line 341
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->ra:Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_6

    :cond_d
    move v5, v11

    goto/16 :goto_3

    :cond_e
    move v3, v10

    goto/16 :goto_2

    :cond_f
    move v3, v14

    move v5, v15

    move/from16 v7, v16

    goto/16 :goto_1
.end method

.method public requestFitSystemWindows()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestFitSystemWindows()V

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qI:Z

    .line 257
    return-void
.end method

.method public setActionBar(Lmiui/app/ActionBar;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->aT:Lmiui/app/ActionBar;

    .line 485
    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qF:Landroid/view/Window$Callback;

    .line 509
    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->re:Lmiui/app/OnStatusBarChangeListener;

    .line 800
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 0

    .prologue
    .line 488
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qG:Z

    .line 489
    return-void
.end method

.method public setRootSubDecor(Z)V
    .locals 0

    .prologue
    .line 545
    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->qH:Z

    .line 546
    return-void
.end method

.method public setTranslucentStatus(I)V
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->aV:I

    if-eq v0, p1, :cond_0

    .line 513
    iput p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->aV:I

    .line 514
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 516
    :cond_0
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rb:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rb:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    .line 162
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rb:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rd:Lcom/miui/internal/widget/ActionBarOverlayLayout$b;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rb:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/miui/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rc:Lcom/miui/internal/view/menu/MenuDialogHelper;

    .line 168
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rc:Lcom/miui/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rc:Lcom/miui/internal/view/menu/MenuDialogHelper;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rd:Lcom/miui/internal/widget/ActionBarOverlayLayout$b;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_1
    return v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->rb:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->clear()V

    goto :goto_0

    .line 172
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    goto :goto_1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 581
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 584
    :cond_0
    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 587
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 588
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->b(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionBarOverlayLayout$a;

    move-result-object v0

    .line 589
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 592
    :cond_1
    if-eqz v0, :cond_2

    .line 593
    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 596
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 597
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 600
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 604
    instance-of v0, p1, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 610
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->b(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionBarOverlayLayout$a;

    move-result-object v0

    .line 611
    invoke-virtual {p1, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 612
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    .line 614
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 576
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
