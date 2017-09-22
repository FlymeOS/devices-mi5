.class public Lcom/android/settings/toggleposition/DragGridView;
.super Landroid/widget/GridView;
.source "DragGridView.java"


# instance fields
.field private JI:I

.field private UI:I

.field private arA:Landroid/widget/ImageView;

.field private arB:Landroid/view/WindowManager$LayoutParams;

.field private arC:Landroid/graphics/Bitmap;

.field private arD:I

.field private arE:I

.field private arF:I

.field private arG:I

.field private arH:I

.field private arI:Z

.field private arJ:I

.field private arK:Lcom/android/settings/toggleposition/b;

.field private arL:I

.field private arM:Z

.field private arN:I

.field private arO:I

.field private arP:Ljava/lang/Runnable;

.field private arQ:I

.field private arR:I

.field private arS:I

.field private arT:I

.field arU:Ljava/lang/Runnable;

.field private arr:J

.field private ars:Z

.field private art:I

.field private aru:I

.field private arv:I

.field private arw:I

.field private arx:I

.field private ary:I

.field private arz:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mWindowManager:Landroid/view/WindowManager;

.field private uO:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/toggleposition/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/toggleposition/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arr:J

    .line 45
    iput-boolean v2, p0, Lcom/android/settings/toggleposition/DragGridView;->ars:Z

    .line 54
    iput v4, p0, Lcom/android/settings/toggleposition/DragGridView;->arx:I

    .line 56
    iput v4, p0, Lcom/android/settings/toggleposition/DragGridView;->ary:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arz:Landroid/view/View;

    .line 109
    iput-boolean v3, p0, Lcom/android/settings/toggleposition/DragGridView;->arI:Z

    .line 119
    iput v3, p0, Lcom/android/settings/toggleposition/DragGridView;->JI:I

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Lcom/android/settings/toggleposition/c;

    invoke-direct {v0, p0}, Lcom/android/settings/toggleposition/c;-><init>(Lcom/android/settings/toggleposition/DragGridView;)V

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arP:Ljava/lang/Runnable;

    .line 439
    iput v2, p0, Lcom/android/settings/toggleposition/DragGridView;->arQ:I

    .line 440
    iput v2, p0, Lcom/android/settings/toggleposition/DragGridView;->arR:I

    .line 441
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arS:I

    .line 442
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arT:I

    .line 443
    new-instance v0, Lcom/android/settings/toggleposition/d;

    invoke-direct {v0, p0}, Lcom/android/settings/toggleposition/d;-><init>(Lcom/android/settings/toggleposition/DragGridView;)V

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arU:Ljava/lang/Runnable;

    .line 131
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->JI:I

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->JI:I

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->JI:I

    iget v3, p0, Lcom/android/settings/toggleposition/DragGridView;->JI:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/toggleposition/DragGridView;->setPaddingRelative(IIII)V

    .line 132
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->JI:I

    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/DragGridView;->setVerticalSpacing(I)V

    .line 133
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->JI:I

    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/DragGridView;->setHorizontalSpacing(I)V

    .line 134
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->uO:Landroid/os/Vibrator;

    .line 135
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arH:I

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arO:I

    .line 138
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arJ:I

    .line 140
    iget-boolean v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arM:Z

    if-nez v0, :cond_0

    .line 141
    iput v4, p0, Lcom/android/settings/toggleposition/DragGridView;->UI:I

    .line 143
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/toggleposition/DragGridView;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/android/settings/toggleposition/DragGridView;->arx:I

    return p1
.end method

.method private a(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 494
    const-string v0, "translationX"

    new-array v1, v3, [F

    aput p2, v1, v4

    aput p3, v1, v5

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 496
    const-string v1, "translationY"

    new-array v2, v3, [F

    aput p4, v2, v4

    aput p5, v2, v5

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 498
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 499
    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 500
    return-object v2
.end method

.method static synthetic a(Lcom/android/settings/toggleposition/DragGridView;)Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->uO:Landroid/os/Vibrator;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;II)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 382
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arB:Landroid/view/WindowManager$LayoutParams;

    .line 383
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arB:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 384
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arB:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 385
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arB:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arE:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->arG:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 386
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arB:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arD:I

    sub-int v1, p3, v1

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->arF:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->arH:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 387
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arB:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 388
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arB:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 389
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arB:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 390
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arB:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 393
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arA:Landroid/widget/ImageView;

    .line 394
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arA:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 395
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arA:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 396
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arA:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/toggleposition/DragGridView;->arB:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    return-void
.end method

.method static synthetic a(Lcom/android/settings/toggleposition/DragGridView;II)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/toggleposition/DragGridView;->u(II)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/toggleposition/DragGridView;Landroid/graphics/Bitmap;II)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/toggleposition/DragGridView;->a(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method private a(Landroid/view/View;II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 323
    if-nez p1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v0

    .line 326
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 328
    if-lt p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    if-gt p2, v1, :cond_0

    .line 332
    if-lt p3, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v2

    if-gt p3, v1, :cond_0

    .line 336
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/toggleposition/DragGridView;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/settings/toggleposition/DragGridView;->ars:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/toggleposition/DragGridView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arz:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/toggleposition/DragGridView;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/settings/toggleposition/DragGridView;->arI:Z

    return p1
.end method

.method static synthetic c(Lcom/android/settings/toggleposition/DragGridView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arC:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static clamp(III)I
    .locals 0

    .prologue
    .line 363
    if-ge p0, p1, :cond_0

    .line 368
    :goto_0
    return p1

    .line 365
    :cond_0
    if-lt p0, p2, :cond_1

    .line 366
    add-int/lit8 p1, p2, -0x1

    goto :goto_0

    :cond_1
    move p1, p0

    .line 368
    goto :goto_0
.end method

.method static synthetic d(Lcom/android/settings/toggleposition/DragGridView;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->art:I

    return v0
.end method

.method static synthetic e(Lcom/android/settings/toggleposition/DragGridView;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->aru:I

    return v0
.end method

.method static synthetic f(Lcom/android/settings/toggleposition/DragGridView;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arQ:I

    return v0
.end method

.method static synthetic g(Lcom/android/settings/toggleposition/DragGridView;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arR:I

    return v0
.end method

.method static synthetic h(Lcom/android/settings/toggleposition/DragGridView;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arx:I

    return v0
.end method

.method private s(II)V
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arB:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arE:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->arG:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 416
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arB:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arD:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->arF:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->arH:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 417
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arA:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/toggleposition/DragGridView;->arB:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    invoke-direct {p0, p1, p2}, Lcom/android/settings/toggleposition/DragGridView;->t(II)V

    .line 421
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arD:I

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arz:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/toggleposition/DragGridView;->arz:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 422
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arQ:I

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arS:I

    if-eq v0, v1, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/android/settings/toggleposition/DragGridView;->uG()V

    .line 424
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arS:I

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arQ:I

    .line 425
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arU:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/DragGridView;->post(Ljava/lang/Runnable;)Z

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arD:I

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arz:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    .line 428
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arQ:I

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arT:I

    if-eq v0, v1, :cond_0

    .line 429
    invoke-direct {p0}, Lcom/android/settings/toggleposition/DragGridView;->uG()V

    .line 430
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arT:I

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arQ:I

    .line 431
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arU:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/DragGridView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 434
    :cond_2
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arR:I

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arQ:I

    .line 435
    invoke-direct {p0}, Lcom/android/settings/toggleposition/DragGridView;->uG()V

    goto :goto_0
.end method

.method private t(II)V
    .locals 3

    .prologue
    .line 463
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/toggleposition/DragGridView;->pointToPosition(II)I

    move-result v0

    .line 466
    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arx:I

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arI:Z

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arK:Lcom/android/settings/toggleposition/b;

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->arx:I

    invoke-interface {v1, v2, v0}, Lcom/android/settings/toggleposition/b;->r(II)V

    .line 468
    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arK:Lcom/android/settings/toggleposition/b;

    invoke-interface {v1, v0}, Lcom/android/settings/toggleposition/b;->cS(I)V

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 470
    new-instance v2, Lcom/android/settings/toggleposition/e;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/settings/toggleposition/e;-><init>(Lcom/android/settings/toggleposition/DragGridView;Landroid/view/ViewTreeObserver;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 481
    :cond_0
    return-void
.end method

.method private u(II)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 510
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 511
    :goto_0
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 512
    if-eqz v0, :cond_3

    .line 513
    :goto_1
    if-ge p1, p2, :cond_6

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 516
    if-eqz v1, :cond_0

    .line 517
    add-int/lit8 v0, p1, 0x1

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->UI:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 518
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->UI:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/toggleposition/DragGridView;->a(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_0
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 510
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 522
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v2, v0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/toggleposition/DragGridView;->a(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 528
    :cond_3
    :goto_3
    if-le p1, p2, :cond_6

    .line 529
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 530
    if-eqz v1, :cond_4

    .line 531
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->UI:I

    add-int/2addr v0, p1

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->UI:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_5

    .line 532
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->UI:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v4, v0

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/toggleposition/DragGridView;->a(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_4
    :goto_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 536
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v2, v0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/toggleposition/DragGridView;->a(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 543
    :cond_6
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 544
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 545
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 546
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 547
    new-instance v1, Lcom/android/settings/toggleposition/f;

    invoke-direct {v1, p0}, Lcom/android/settings/toggleposition/f;-><init>(Lcom/android/settings/toggleposition/DragGridView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 558
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 559
    return-void
.end method

.method private uE()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 565
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arx:I

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 566
    if-eqz v0, :cond_0

    .line 567
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 569
    :cond_0
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arR:I

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arQ:I

    .line 570
    invoke-direct {p0}, Lcom/android/settings/toggleposition/DragGridView;->uG()V

    .line 571
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arK:Lcom/android/settings/toggleposition/b;

    invoke-interface {v0, v2}, Lcom/android/settings/toggleposition/b;->cS(I)V

    .line 572
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arK:Lcom/android/settings/toggleposition/b;

    invoke-interface {v0}, Lcom/android/settings/toggleposition/b;->uE()V

    .line 573
    invoke-direct {p0}, Lcom/android/settings/toggleposition/DragGridView;->uF()V

    .line 574
    iput v2, p0, Lcom/android/settings/toggleposition/DragGridView;->ary:I

    .line 575
    iput v2, p0, Lcom/android/settings/toggleposition/DragGridView;->arx:I

    .line 576
    return-void
.end method

.method private uF()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arA:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arA:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arA:Landroid/widget/ImageView;

    .line 407
    :cond_0
    return-void
.end method

.method private uG()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arU:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 454
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 311
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 262
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->art:I

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->aru:I

    .line 266
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->art:I

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->aru:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/toggleposition/DragGridView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->ary:I

    .line 267
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->ary:I

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arx:I

    .line 270
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 271
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arP:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/settings/toggleposition/DragGridView;->arr:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arx:I

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arz:Landroid/view/View;

    .line 280
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->aru:I

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arz:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arD:I

    .line 281
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->art:I

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arz:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arE:I

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->aru:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arF:I

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->art:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arG:I

    .line 287
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arz:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 289
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arz:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arC:Landroid/graphics/Bitmap;

    .line 291
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arz:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    goto/16 :goto_0

    .line 296
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 300
    iget-object v2, p0, Lcom/android/settings/toggleposition/DragGridView;->arz:Landroid/view/View;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings/toggleposition/DragGridView;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->aru:I

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arJ:I

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/toggleposition/DragGridView;->ars:Z

    if-nez v0, :cond_0

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arP:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 307
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arP:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arU:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 230
    invoke-super {p0, p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    .line 231
    invoke-virtual {p0, v6}, Lcom/android/settings/toggleposition/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getChildCount()I

    move-result v0

    .line 233
    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->UI:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v13, v2

    .line 235
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 236
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->JI:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 237
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arO:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    move v7, v6

    .line 238
    :goto_0
    if-gt v7, v13, :cond_0

    .line 239
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/2addr v0, v7

    int-to-float v0, v0

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->JI:I

    mul-int/2addr v2, v7

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 240
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->UI:I

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int/2addr v0, v3

    iget v3, p0, Lcom/android/settings/toggleposition/DragGridView;->UI:I

    iget v4, p0, Lcom/android/settings/toggleposition/DragGridView;->JI:I

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    int-to-float v3, v0

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 238
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    move v0, v6

    .line 243
    :goto_1
    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->UI:I

    if-gt v0, v2, :cond_1

    .line 244
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/settings/toggleposition/DragGridView;->JI:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    int-to-float v7, v2

    .line 245
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/2addr v2, v13

    iget v3, p0, Lcom/android/settings/toggleposition/DragGridView;->JI:I

    mul-int/2addr v3, v13

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v10, v2, v3

    move-object v6, p1

    move v8, v1

    move v9, v7

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 247
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 201
    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->UI:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 203
    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arL:I

    if-lez v1, :cond_0

    .line 204
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 206
    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arL:I

    div-int v1, v2, v1

    .line 207
    if-lez v1, :cond_1

    .line 208
    :goto_0
    if-eq v1, v0, :cond_3

    .line 209
    iget v3, p0, Lcom/android/settings/toggleposition/DragGridView;->arL:I

    mul-int/2addr v3, v1

    add-int/lit8 v4, v1, -0x1

    iget v5, p0, Lcom/android/settings/toggleposition/DragGridView;->arN:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    if-le v3, v2, :cond_3

    .line 211
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 220
    :cond_0
    const/4 v0, 0x2

    .line 222
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->UI:I

    .line 225
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 226
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/android/settings/toggleposition/DragGridView;->ars:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arA:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 357
    :goto_0
    const/4 v0, 0x1

    .line 359
    :goto_1
    return v0

    .line 344
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arv:I

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arw:I

    .line 348
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arv:I

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arE:I

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/toggleposition/DragGridView;->arz:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/toggleposition/DragGridView;->arE:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/settings/toggleposition/DragGridView;->clamp(III)I

    move-result v0

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->arw:I

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->arD:I

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/toggleposition/DragGridView;->arz:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/toggleposition/DragGridView;->arD:I

    add-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/settings/toggleposition/DragGridView;->clamp(III)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/toggleposition/DragGridView;->s(II)V

    goto :goto_0

    .line 353
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/toggleposition/DragGridView;->uE()V

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/toggleposition/DragGridView;->ars:Z

    goto :goto_0

    .line 359
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/toggleposition/DragGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    instance-of v0, p1, Lcom/android/settings/toggleposition/b;

    if-eqz v0, :cond_0

    .line 167
    check-cast p1, Lcom/android/settings/toggleposition/b;

    iput-object p1, p0, Lcom/android/settings/toggleposition/DragGridView;->arK:Lcom/android/settings/toggleposition/b;

    .line 171
    return-void

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the adapter must be implements DragGridAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColumnWidth(I)V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 185
    iput p1, p0, Lcom/android/settings/toggleposition/DragGridView;->arL:I

    .line 186
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 192
    iput p1, p0, Lcom/android/settings/toggleposition/DragGridView;->arN:I

    .line 193
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/toggleposition/DragGridView;->arM:Z

    .line 178
    iput p1, p0, Lcom/android/settings/toggleposition/DragGridView;->UI:I

    .line 179
    return-void
.end method
