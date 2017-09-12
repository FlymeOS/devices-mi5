.class public Lmiui/util/ScreenshotDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScreenshotDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenshotDrawable"

.field private static isdDisplayOled:Z

.field private static sHasRealBlur:Z

.field private static sTempLoc:[I


# instance fields
.field private mBgColor:I

.field private mBluredBitmap:Landroid/graphics/Bitmap;

.field private mOriginalDrawable:Landroid/graphics/drawable/Drawable;

.field private mOwnerView:Landroid/view/View;

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lmiui/util/ScreenshotDrawable;->sTempLoc:[I

    .line 32
    const-string v0, "ro.miui.has_real_blur"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/util/ScreenshotDrawable;->sHasRealBlur:Z

    .line 33
    const-string v0, "oled"

    const-string v1, "ro.display.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/util/ScreenshotDrawable;->isdDisplayOled:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "ownerView"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/util/ScreenshotDrawable;->mPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 45
    iput-object p1, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-boolean v0, Lmiui/util/ScreenshotDrawable;->isdDisplayOled:Z

    if-eqz v0, :cond_0

    const v0, 0x110d000f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lmiui/util/ScreenshotDrawable;->mBgColor:I

    .line 47
    return-void

    .line 46
    :cond_0
    const v0, 0x110d000e

    goto :goto_0
.end method

.method static synthetic access$000(Lmiui/util/ScreenshotDrawable;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lmiui/util/ScreenshotDrawable;

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/util/ScreenshotDrawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lmiui/util/ScreenshotDrawable;

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lmiui/util/ScreenshotDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lmiui/util/ScreenshotDrawable;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 28
    iput-object p1, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private mixColor(II)I
    .locals 2
    .param p1, "color"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 100
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/2addr v0, p2

    div-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xffffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method public static processBlurBehindFlag(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p2, "isUpdate"    # Z

    .prologue
    .line 50
    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    .end local p1    # "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lmiui/util/ScreenshotDrawable;

    if-nez v1, :cond_0

    .line 52
    new-instance v0, Lmiui/util/ScreenshotDrawable;

    invoke-direct {v0, p0}, Lmiui/util/ScreenshotDrawable;-><init>(Landroid/view/View;)V

    .line 53
    .local v0, "screenshotDrawable":Lmiui/util/ScreenshotDrawable;
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/util/ScreenshotDrawable;->setOriginalDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 59
    .end local v0    # "screenshotDrawable":Lmiui/util/ScreenshotDrawable;
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lmiui/util/ScreenshotDrawable;

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lmiui/util/ScreenshotDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiui/util/ScreenshotDrawable;->startVisibilityAnimator(Z)V

    goto :goto_0
.end method

.method private rebuildBluredBitmap()V
    .locals 7

    .prologue
    .line 62
    sget-boolean v2, Lmiui/util/ScreenshotDrawable;->sHasRealBlur:Z

    if-eqz v2, :cond_0

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_0
    :try_start_0
    iget-object v2, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    sget v4, Lmiui/util/ScreenshotUtils;->sMinification:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 66
    .local v1, "screenshot":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    sget v3, Lmiui/util/ScreenshotUtils;->sBlurRadius:I

    invoke-static {v1, v2, v3}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v1    # "screenshot":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v2, "ScreenshotDrawable"

    const-string v3, "Screenshot and fastblur failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startVisibilityAnimator(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 154
    :cond_0
    if-eqz p1, :cond_1

    .line 155
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    .line 156
    invoke-virtual {p0, v2}, Lmiui/util/ScreenshotDrawable;->setAlpha(I)V

    .line 171
    :goto_0
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 172
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 173
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 174
    return-void

    .line 158
    :cond_1
    new-array v0, v1, [I

    iget-object v1, p0, Lmiui/util/ScreenshotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    .line 159
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/util/ScreenshotDrawable$2;

    invoke-direct {v1, p0}, Lmiui/util/ScreenshotDrawable$2;-><init>(Lmiui/util/ScreenshotDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 155
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 82
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 83
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    sget-object v5, Lmiui/util/ScreenshotDrawable;->sTempLoc:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 85
    sget-object v4, Lmiui/util/ScreenshotDrawable;->sTempLoc:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lmiui/util/ScreenshotUtils;->sMinification:I

    div-int v1, v4, v5

    .line 86
    .local v1, "left":I
    sget-object v4, Lmiui/util/ScreenshotDrawable;->sTempLoc:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lmiui/util/ScreenshotUtils;->sMinification:I

    div-int v2, v4, v5

    .line 87
    .local v2, "top":I
    invoke-virtual {p0}, Lmiui/util/ScreenshotDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sget v5, Lmiui/util/ScreenshotUtils;->sMinification:I

    div-int v3, v4, v5

    .line 88
    .local v3, "width":I
    invoke-virtual {p0}, Lmiui/util/ScreenshotDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget v5, Lmiui/util/ScreenshotUtils;->sMinification:I

    div-int v0, v4, v5

    .line 89
    .local v0, "height":I
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    add-int v5, v1, v3

    add-int v6, v2, v0

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 91
    .end local v0    # "height":I
    .end local v1    # "left":I
    .end local v2    # "top":I
    .end local v3    # "width":I
    :cond_0
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mBluredBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lmiui/util/ScreenshotDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lmiui/util/ScreenshotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 93
    :cond_1
    iget v4, p0, Lmiui/util/ScreenshotDrawable;->mBgColor:I

    iget-object v5, p0, Lmiui/util/ScreenshotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lmiui/util/ScreenshotDrawable;->mixColor(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 94
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 95
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    :cond_2
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public getOriginalDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/util/ScreenshotDrawable;->setAlpha(I)V

    .line 208
    return-void
.end method

.method processShow()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 128
    const/4 v2, 0x0

    .line 129
    .local v2, "hasWinEnterAnimator":Z
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_0

    .line 130
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .line 131
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v4, :cond_0

    .line 132
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    sget-object v6, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 134
    .local v1, "attrs":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 135
    .local v0, "anim":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 139
    .end local v0    # "anim":I
    .end local v1    # "attrs":Landroid/content/res/TypedArray;
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    if-eqz v2, :cond_2

    .line 140
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    iget-object v4, p0, Lmiui/util/ScreenshotDrawable;->mVisibilityChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->end()V

    .line 143
    :cond_1
    const/16 v4, 0xff

    invoke-virtual {p0, v4}, Lmiui/util/ScreenshotDrawable;->setAlpha(I)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lmiui/util/ScreenshotDrawable;->startVisibilityAnimator(Z)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 189
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 192
    :cond_0
    invoke-virtual {p0}, Lmiui/util/ScreenshotDrawable;->invalidateSelf()V

    .line 193
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 180
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 181
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 184
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 197
    return-void
.end method

.method public setOriginalDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "originalDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 73
    iput-object p1, p0, Lmiui/util/ScreenshotDrawable;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmiui/util/ScreenshotDrawable$1;

    invoke-direct {v1, p0}, Lmiui/util/ScreenshotDrawable$1;-><init>(Lmiui/util/ScreenshotDrawable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 119
    :goto_0
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 120
    invoke-direct {p0}, Lmiui/util/ScreenshotDrawable;->rebuildBluredBitmap()V

    .line 122
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0

    .line 117
    :cond_1
    invoke-virtual {p0}, Lmiui/util/ScreenshotDrawable;->processShow()V

    goto :goto_0
.end method
