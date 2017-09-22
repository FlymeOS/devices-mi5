.class public Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;
.super Lcom/android/vendorsettings/fingerprint/a;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Lcom/android/vendorsettings/fingerprint/q;


# instance fields
.field private abA:Z

.field private abB:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private abC:I

.field private abD:I

.field private abE:Z

.field private final abF:Landroid/animation/Animator$AnimatorListener;

.field private final abG:Ljava/lang/Runnable;

.field private final abH:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private final abI:Ljava/lang/Runnable;

.field private final abJ:Ljava/lang/Runnable;

.field private abq:Landroid/widget/ImageView;

.field private abr:Landroid/animation/ObjectAnimator;

.field private abs:Landroid/widget/TextView;

.field private abt:Landroid/widget/TextView;

.field private abu:Landroid/widget/TextView;

.field private abv:Landroid/view/animation/Interpolator;

.field private abw:Landroid/view/animation/Interpolator;

.field private abx:Landroid/view/animation/Interpolator;

.field private aby:I

.field private abz:Lcom/android/vendorsettings/fingerprint/n;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/a;-><init>()V

    .line 323
    new-instance v0, Lcom/android/vendorsettings/fingerprint/f;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/fingerprint/f;-><init>(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abF:Landroid/animation/Animator$AnimatorListener;

    .line 344
    new-instance v0, Lcom/android/vendorsettings/fingerprint/g;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/fingerprint/g;-><init>(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abG:Ljava/lang/Runnable;

    .line 351
    new-instance v0, Lcom/android/vendorsettings/fingerprint/h;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/fingerprint/h;-><init>(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abH:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 369
    new-instance v0, Lcom/android/vendorsettings/fingerprint/j;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/fingerprint/j;-><init>(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abI:Ljava/lang/Runnable;

    .line 376
    new-instance v0, Lcom/android/vendorsettings/fingerprint/k;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/fingerprint/k;-><init>(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abJ:Ljava/lang/Runnable;

    .line 383
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->aby:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->aby:I

    return v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->e(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;[B)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->f([B)V

    return-void
.end method

.method private aP(Z)V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abz:Lcom/android/vendorsettings/fingerprint/n;

    invoke-virtual {v0}, Lcom/android/vendorsettings/fingerprint/n;->qy()I

    move-result v0

    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abz:Lcom/android/vendorsettings/fingerprint/n;

    invoke-virtual {v1}, Lcom/android/vendorsettings/fingerprint/n;->qz()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->k(II)I

    move-result v0

    .line 265
    if-eqz p1, :cond_0

    .line 266
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->ca(I)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->aby:I

    return v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->qp()V

    return-void
.end method

.method private ca(I)V
    .locals 5

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abr:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abr:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    const-string v1, "progress"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abF:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 181
    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abv:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 182
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 183
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 184
    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abr:Landroid/animation/ObjectAnimator;

    .line 185
    return-void
.end method

.method private clearError()V
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abu:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abu:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abx:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/fingerprint/e;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/fingerprint/e;-><init>(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 321
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abI:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abq:Landroid/widget/ImageView;

    return-object v0
.end method

.method private e(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 286
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abu:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abu:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abu:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abu:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 291
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abu:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 292
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abu:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abw:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 303
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abu:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 300
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abu:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 301
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abu:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abD:I

    return v0
.end method

.method private f([B)V
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->qn()Landroid/content/Intent;

    move-result-object v0

    .line 217
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->startActivity(Landroid/content/Intent;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 221
    return-void
.end method

.method static synthetic g(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abC:I

    return v0
.end method

.method static synthetic h(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abw:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic i(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abu:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private k(II)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 273
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 277
    :goto_0
    return v0

    .line 276
    :cond_0
    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 277
    mul-int/lit16 v0, v0, 0x2710

    add-int/lit8 v1, p1, 0x1

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic k(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abG:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic l(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abA:Z

    return v0
.end method

.method static synthetic m(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->qk()V

    return-void
.end method

.method private qk()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abB:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 157
    return-void
.end method

.method private ql()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abA:Z

    .line 161
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abB:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 162
    return-void
.end method

.method private qm()V
    .locals 4

    .prologue
    .line 188
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abC:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abD:I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 190
    new-instance v1, Lcom/android/vendorsettings/fingerprint/c;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/fingerprint/c;-><init>(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 198
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 199
    new-instance v2, Lcom/android/vendorsettings/fingerprint/d;

    invoke-direct {v2, p0, v1}, Lcom/android/vendorsettings/fingerprint/d;-><init>(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 210
    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abv:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 211
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 212
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 213
    return-void
.end method

.method private qo()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abz:Lcom/android/vendorsettings/fingerprint/n;

    invoke-virtual {v0}, Lcom/android/vendorsettings/fingerprint/n;->qy()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 229
    const v0, 0x7f0c0200

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->bZ(I)V

    .line 230
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abs:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abt:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    :goto_0
    return-void

    .line 233
    :cond_0
    const v0, 0x7f0c0202

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->k(IZ)V

    .line 235
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abs:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private qp()V
    .locals 3

    .prologue
    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->aby:I

    .line 282
    new-instance v0, Lcom/android/vendorsettings/fingerprint/l;

    invoke-direct {v0}, Lcom/android/vendorsettings/fingerprint/l;-><init>()V

    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/fingerprint/l;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 283
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abu:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->e(Ljava/lang/CharSequence;)V

    .line 249
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->ql()V

    .line 250
    return-void
.end method

.method public j(II)V
    .locals 4

    .prologue
    .line 254
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->aP(Z)V

    .line 255
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->qo()V

    .line 256
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->clearError()V

    .line 257
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->qm()V

    .line 258
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abu:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abJ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 259
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abu:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abJ:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/vendorsettings/fingerprint/a;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f04007b

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->setContentView(I)V

    .line 93
    const v0, 0x7f0c0200

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->bZ(I)V

    .line 94
    const v0, 0x7f1300f7

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abs:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f1300f8

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abt:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f1300f9

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abu:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f1300fb

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    .line 98
    const v0, 0x7f1300fa

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abq:Landroid/widget/ImageView;

    .line 99
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abq:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abB:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 100
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abB:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abH:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 101
    const v0, 0x10c000d

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abv:Landroid/view/animation/Interpolator;

    .line 103
    const v0, 0x10c000e

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abw:Landroid/view/animation/Interpolator;

    .line 105
    const v0, 0x10c000f

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abx:Landroid/view/animation/Interpolator;

    .line 107
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abq:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/vendorsettings/fingerprint/b;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/fingerprint/b;-><init>(Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 125
    const v0, 0x7f0e003f

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abC:I

    .line 127
    const v0, 0x7f0e0097

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abD:I

    .line 129
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abE:Z

    .line 130
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/vendorsettings/fingerprint/a;->onEnterAnimationComplete()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abA:Z

    .line 152
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->qk()V

    .line 153
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/vendorsettings/fingerprint/a;->onStart()V

    .line 135
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "sidecar"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/fingerprint/n;

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abz:Lcom/android/vendorsettings/fingerprint/n;

    .line 136
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abz:Lcom/android/vendorsettings/fingerprint/n;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/android/vendorsettings/fingerprint/n;

    invoke-direct {v0}, Lcom/android/vendorsettings/fingerprint/n;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abz:Lcom/android/vendorsettings/fingerprint/n;

    .line 138
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abz:Lcom/android/vendorsettings/fingerprint/n;

    const-string v2, "sidecar"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abz:Lcom/android/vendorsettings/fingerprint/n;

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/fingerprint/n;->a(Lcom/android/vendorsettings/fingerprint/q;)V

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->aP(Z)V

    .line 142
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->qo()V

    .line 143
    iget-boolean v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abE:Z

    if-eqz v0, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->qk()V

    .line 146
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/vendorsettings/fingerprint/a;->onStop()V

    .line 167
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->abz:Lcom/android/vendorsettings/fingerprint/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/fingerprint/n;->a(Lcom/android/vendorsettings/fingerprint/q;)V

    .line 168
    invoke-direct {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->ql()V

    .line 169
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollEnrolling;->finish()V

    .line 172
    :cond_0
    return-void
.end method

.method protected qn()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/vendorsettings/fingerprint/FingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method
