.class public Lcom/android/setupwizardlib/SetupWizardLayout;
.super Landroid/widget/FrameLayout;
.source "SetupWizardLayout.java"


# instance fields
.field private mContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    sget v2, Lcom/android/setupwizardlib/b;->aLp:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(ILandroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v0, 0x0

    sget v1, Lcom/android/setupwizardlib/b;->aLp:I

    invoke-direct {p0, p2, v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(ILandroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    invoke-direct {p0, p2, p3, p4}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(ILandroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/4 v0, 0x0

    sget v1, Lcom/android/setupwizardlib/b;->aLp:I

    invoke-direct {p0, v0, p2, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(ILandroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(ILandroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method private B(II)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 373
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 374
    invoke-direct {p0, v1, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private a(ILandroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    .line 91
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/setupwizardlib/h;->wH:[I

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 93
    if-nez p1, :cond_0

    .line 94
    sget v0, Lcom/android/setupwizardlib/h;->aLL:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->ed(I)V

    .line 99
    sget v0, Lcom/android/setupwizardlib/h;->aLM:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_6

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->d(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_1
    :goto_0
    sget v0, Lcom/android/setupwizardlib/h;->aLQ:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_7

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->c(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_2
    :goto_1
    sget v0, Lcom/android/setupwizardlib/h;->aLO:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 129
    if-ne v0, v4, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/setupwizardlib/d;->aLs:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 132
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->ee(I)V

    .line 137
    sget v0, Lcom/android/setupwizardlib/h;->aLR:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 139
    cmpl-float v2, v0, v3

    if-nez v2, :cond_4

    .line 140
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 141
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/setupwizardlib/d;->aLt:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 142
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 144
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->g(F)V

    .line 147
    sget v0, Lcom/android/setupwizardlib/h;->aLP:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_5

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->m(Ljava/lang/CharSequence;)V

    .line 153
    :cond_5
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    return-void

    .line 104
    :cond_6
    sget v0, Lcom/android/setupwizardlib/h;->aLN:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->e(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 117
    :cond_7
    sget v0, Lcom/android/setupwizardlib/h;->aLT:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    sget v2, Lcom/android/setupwizardlib/h;->aLS:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 121
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 122
    invoke-direct {p0, v0, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 300
    sget v0, Lcom/android/setupwizardlib/e;->aLx:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 301
    instance-of v1, v0, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v1, :cond_0

    .line 302
    check-cast v0, Lcom/android/setupwizardlib/view/Illustration;

    .line 303
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 304
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/view/Illustration;->c(Landroid/graphics/drawable/Drawable;)V

    .line 306
    :cond_0
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/16 v4, 0x13

    const/4 v3, 0x1

    .line 379
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/setupwizardlib/c;->aLr:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 382
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 383
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    move-object v0, p2

    .line 384
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 386
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 388
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 390
    :cond_1
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    aput-object p1, v1, v3

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 392
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_2

    .line 393
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->setAutoMirrored(Z)V

    :cond_2
    move-object p1, v0

    .line 401
    :cond_3
    :goto_0
    return-object p1

    .line 398
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_3

    .line 399
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    goto :goto_0
.end method

.method private e(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 364
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 365
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 367
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->d(Landroid/graphics/drawable/Drawable;)V

    .line 368
    return-void
.end method

.method private ed(I)V
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 187
    invoke-virtual {p0, v0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object v0

    .line 188
    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->p(Landroid/view/View;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->wI()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardLayout;->mContainer:Landroid/view/ViewGroup;

    .line 191
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->AW()V

    .line 192
    return-void
.end method

.method private p(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 182
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-super {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 183
    return-void
.end method


# virtual methods
.method public A(II)V
    .locals 2

    .prologue
    .line 291
    sget v0, Lcom/android/setupwizardlib/e;->aLx:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 292
    instance-of v1, v0, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v1, :cond_0

    .line 293
    check-cast v0, Lcom/android/setupwizardlib/view/Illustration;

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->B(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 295
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/view/Illustration;->c(Landroid/graphics/drawable/Drawable;)V

    .line 297
    :cond_0
    return-void
.end method

.method protected AW()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public AX()Z
    .locals 1

    .prologue
    .line 406
    sget v0, Lcom/android/setupwizardlib/e;->aLz:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public AY()V
    .locals 2

    .prologue
    .line 411
    sget v0, Lcom/android/setupwizardlib/e;->aLz:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_1

    .line 413
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    sget v0, Lcom/android/setupwizardlib/e;->aLA:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 416
    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_0
.end method

.method public AZ()V
    .locals 2

    .prologue
    .line 423
    sget v0, Lcom/android/setupwizardlib/e;->aLz:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_0

    .line 425
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    :cond_0
    return-void
.end method

.method protected a(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 205
    if-nez p2, :cond_0

    .line 206
    sget p2, Lcom/android/setupwizardlib/f;->aLH:I

    .line 208
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardLayout;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 179
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 274
    sget v0, Lcom/android/setupwizardlib/e;->aLx:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 275
    instance-of v1, v0, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v1, :cond_0

    .line 276
    check-cast v0, Lcom/android/setupwizardlib/view/Illustration;

    .line 277
    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/view/Illustration;->c(Landroid/graphics/drawable/Drawable;)V

    .line 279
    :cond_0
    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 346
    sget v0, Lcom/android/setupwizardlib/e;->aLx:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    :cond_0
    return-void
.end method

.method public ee(I)V
    .locals 4

    .prologue
    .line 334
    sget v0, Lcom/android/setupwizardlib/e;->aLx:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 339
    :cond_0
    return-void
.end method

.method public g(F)V
    .locals 2

    .prologue
    .line 316
    sget v0, Lcom/android/setupwizardlib/e;->aLx:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 317
    instance-of v1, v0, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v1, :cond_0

    .line 318
    check-cast v0, Lcom/android/setupwizardlib/view/Illustration;

    .line 319
    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/view/Illustration;->h(F)V

    .line 321
    :cond_0
    return-void
.end method

.method public m(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 254
    sget v0, Lcom/android/setupwizardlib/e;->aLB:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 255
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 166
    check-cast p1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;

    .line 167
    invoke-virtual {p1}, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 168
    iget-boolean v0, p1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->aLV:Z

    .line 169
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->AY()V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->AZ()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 159
    new-instance v1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->AX()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->aLV:Z

    .line 161
    return-object v1
.end method

.method public qh()Lcom/android/setupwizardlib/view/NavigationBar;
    .locals 2

    .prologue
    .line 226
    sget v0, Lcom/android/setupwizardlib/e;->aLy:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 227
    instance-of v1, v0, Lcom/android/setupwizardlib/view/NavigationBar;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/setupwizardlib/view/NavigationBar;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected wI()I
    .locals 1

    .prologue
    .line 222
    sget v0, Lcom/android/setupwizardlib/e;->aLw:I

    return v0
.end method
