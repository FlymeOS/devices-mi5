.class public Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;
.super Landroid/view/View;
.source "FingerprintLocationAnimationView.java"


# instance fields
.field private final abZ:I

.field private final abv:Landroid/view/animation/Interpolator;

.field private final abw:Landroid/view/animation/Interpolator;

.field private final aca:I

.field private final acb:F

.field private final acc:F

.field private final acd:Landroid/graphics/Paint;

.field private final ace:Landroid/graphics/Paint;

.field private acf:F

.field private acg:Landroid/animation/ValueAnimator;

.field private ach:Landroid/animation/ValueAnimator;

.field private final aci:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const v4, 0x10c000e

    const/4 v3, 0x1

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->acd:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->ace:Landroid/graphics/Paint;

    .line 172
    new-instance v0, Lcom/android/settings/fingerprint/v;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/v;-><init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->aci:Ljava/lang/Runnable;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->abZ:I

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->aca:I

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f120000

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->acb:F

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120001

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->acc:F

    .line 63
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010435

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 66
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->acd:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->ace:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->acd:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->ace:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->abw:Landroid/view/animation/Interpolator;

    .line 72
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->abv:Landroid/view/animation/Interpolator;

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;F)F
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->acf:F

    return p1
.end method

.method static synthetic a(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->acg:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->aci:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->ach:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic b(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->ace:Landroid/graphics/Paint;

    return-object v0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->qA()F

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->qB()F

    move-result v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->abZ:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->acd:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 84
    return-void
.end method

.method static synthetic c(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->qC()V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->qA()F

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->qB()F

    move-result v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->acf:F

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->ace:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 88
    return-void
.end method

.method private qA()F
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->acb:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private qB()F
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->acc:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private qC()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->qD()V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->qE()V

    .line 115
    return-void
.end method

.method private qD()V
    .locals 4

    .prologue
    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->aca:I

    int-to-float v2, v2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 119
    new-instance v1, Lcom/android/settings/fingerprint/r;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/r;-><init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 126
    new-instance v1, Lcom/android/settings/fingerprint/s;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/s;-><init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 144
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->abw:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 145
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 146
    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->acg:Landroid/animation/ValueAnimator;

    .line 147
    return-void
.end method

.method private qE()V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->ace:Landroid/graphics/Paint;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 151
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/android/settings/fingerprint/t;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/t;-><init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 159
    new-instance v1, Lcom/android/settings/fingerprint/u;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/u;-><init>(Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 165
    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 166
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->abv:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 168
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 169
    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->ach:Landroid/animation/ValueAnimator;

    .line 170
    return-void

    .line 151
    :array_0
    .array-data 4
        0x3e19999a    # 0.15f
        0x0
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->d(Landroid/graphics/Canvas;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->c(Landroid/graphics/Canvas;)V

    .line 80
    return-void
.end method

.method public startAnimation()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->qC()V

    .line 100
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->aci:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 104
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->acg:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->acg:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->ach:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLocationAnimationView;->ach:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 110
    :cond_1
    return-void
.end method
