.class public Lmiui/widget/SlidingButton;
.super Landroid/widget/CheckBox;
.source "SourceFile"


# static fields
.field private static final ANIMATION_DURATION:I = 0xb4

.field private static final Qp:I = 0xff

.field private static final Yy:I = 0x64


# instance fields
.field private Nx:Z

.field private Qg:Landroid/animation/Animator$AnimatorListener;

.field private YA:Landroid/graphics/drawable/Drawable;

.field private YB:I

.field private YC:Landroid/graphics/drawable/Drawable;

.field private YD:Landroid/graphics/Bitmap;

.field private YF:Landroid/graphics/Paint;

.field private YG:Landroid/graphics/Bitmap;

.field private YH:Landroid/graphics/Paint;

.field private YI:Landroid/graphics/Bitmap;

.field private YJ:I

.field private YK:I

.field private YL:I

.field private YM:I

.field private YN:I

.field private YO:I

.field private YP:Z

.field private YQ:Z

.field private YR:I

.field private YS:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private YT:Landroid/animation/Animator;

.field private YU:Landroid/graphics/drawable/Drawable;

.field private YV:Landroid/graphics/drawable/Drawable;

.field private Yz:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mWidth:I

.field private sF:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 143
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/SlidingButton;->sF:Landroid/graphics/Rect;

    .line 90
    iput-boolean v7, p0, Lmiui/widget/SlidingButton;->Nx:Z

    .line 96
    new-instance v0, Lmiui/widget/SlidingButton$1;

    invoke-direct {v0, p0}, Lmiui/widget/SlidingButton$1;-><init>(Lmiui/widget/SlidingButton;)V

    iput-object v0, p0, Lmiui/widget/SlidingButton;->Qg:Landroid/animation/Animator$AnimatorListener;

    .line 144
    sget-object v0, Lcom/miui/internal/R$styleable;->SlidingButton:[I

    sget v1, Lcom/miui/internal/R$style;->Widget_SlidingButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 148
    invoke-virtual {p0, v7}, Lmiui/widget/SlidingButton;->setDrawingCacheEnabled(Z)V

    .line 149
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiui/widget/SlidingButton;->YR:I

    .line 151
    sget v0, Lcom/miui/internal/R$styleable;->SlidingButton_frame:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SlidingButton;->Yz:Landroid/graphics/drawable/Drawable;

    .line 152
    sget v0, Lcom/miui/internal/R$styleable;->SlidingButton_sliderOn:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SlidingButton;->YA:Landroid/graphics/drawable/Drawable;

    .line 153
    sget v0, Lcom/miui/internal/R$styleable;->SlidingButton_sliderOff:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SlidingButton;->YC:Landroid/graphics/drawable/Drawable;

    .line 154
    sget v0, Lcom/miui/internal/R$styleable;->SlidingButton_android_background:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/SlidingButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v0, p0, Lmiui/widget/SlidingButton;->Yz:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    .line 157
    iget-object v0, p0, Lmiui/widget/SlidingButton;->Yz:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lmiui/widget/SlidingButton;->mHeight:I

    .line 159
    iget v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget-object v1, p0, Lmiui/widget/SlidingButton;->YA:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/SlidingButton;->YJ:I

    .line 160
    iput v7, p0, Lmiui/widget/SlidingButton;->YK:I

    .line 161
    iget v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v1, p0, Lmiui/widget/SlidingButton;->YJ:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/SlidingButton;->YL:I

    .line 162
    iget v0, p0, Lmiui/widget/SlidingButton;->YK:I

    iput v0, p0, Lmiui/widget/SlidingButton;->YM:I

    .line 164
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 165
    sget v0, Lcom/miui/internal/R$styleable;->SlidingButton_barOff:I

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 166
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 167
    sget v0, Lcom/miui/internal/R$styleable;->SlidingButton_barOn:I

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 168
    sget v0, Lcom/miui/internal/R$styleable;->SlidingButton_barOff:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 169
    sget v1, Lcom/miui/internal/R$styleable;->SlidingButton_barOn:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 170
    instance-of v5, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    instance-of v5, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    .line 171
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v5, p0, Lmiui/widget/SlidingButton;->mWidth:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lmiui/widget/SlidingButton;->YJ:I

    sub-int/2addr v5, v6

    iget v6, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-static {v0, v5, v6, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SlidingButton;->YD:Landroid/graphics/Bitmap;

    .line 173
    iget v0, v3, Landroid/util/TypedValue;->type:I

    iget v5, v4, Landroid/util/TypedValue;->type:I

    if-ne v0, v5, :cond_2

    iget v0, v3, Landroid/util/TypedValue;->data:I

    iget v5, v4, Landroid/util/TypedValue;->data:I

    if-ne v0, v5, :cond_2

    iget v0, v3, Landroid/util/TypedValue;->resourceId:I

    iget v3, v4, Landroid/util/TypedValue;->resourceId:I

    if-ne v0, v3, :cond_2

    .line 176
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YD:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/widget/SlidingButton;->YG:Landroid/graphics/Bitmap;

    .line 182
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/widget/SlidingButton;->Yz:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v3, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v0, v7, v7, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 184
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/SlidingButton;->YF:Landroid/graphics/Paint;

    .line 185
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/SlidingButton;->YH:Landroid/graphics/Paint;

    .line 186
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YH:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 187
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YF:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 189
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/SlidingButton;->YD:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 190
    sget v0, Lcom/miui/internal/R$styleable;->SlidingButton_mask:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 191
    iget v1, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v3, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v0, v7, v7, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 192
    invoke-direct {p0, v0}, Lmiui/widget/SlidingButton;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SlidingButton;->YI:Landroid/graphics/Bitmap;

    .line 194
    invoke-direct {p0, v8}, Lmiui/widget/SlidingButton;->A(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SlidingButton;->YU:Landroid/graphics/drawable/Drawable;

    .line 195
    invoke-direct {p0, v7}, Lmiui/widget/SlidingButton;->A(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SlidingButton;->YV:Landroid/graphics/drawable/Drawable;

    .line 198
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    return-void

    :cond_2
    move-object v0, v1

    .line 178
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lmiui/widget/SlidingButton;->mWidth:I

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Lmiui/widget/SlidingButton;->YJ:I

    sub-int/2addr v1, v3

    iget v3, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-static {v0, v1, v3, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SlidingButton;->YG:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private A(Z)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 437
    iget v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 438
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 441
    iget-object v2, p0, Lmiui/widget/SlidingButton;->YI:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 443
    if-eqz p1, :cond_0

    .line 444
    iget-object v2, p0, Lmiui/widget/SlidingButton;->YG:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lmiui/widget/SlidingButton;->YH:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 449
    :goto_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 450
    iget v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v2, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v1, v5, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 451
    return-object v1

    .line 446
    :cond_0
    iget-object v2, p0, Lmiui/widget/SlidingButton;->YD:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lmiui/widget/SlidingButton;->YF:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method static synthetic a(Lmiui/widget/SlidingButton;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lmiui/widget/SlidingButton;->YM:I

    return v0
.end method

.method static synthetic a(Lmiui/widget/SlidingButton;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lmiui/widget/SlidingButton;->YT:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic a(Lmiui/widget/SlidingButton;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lmiui/widget/SlidingButton;->Nx:Z

    return p1
.end method

.method private animateToggle()V
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lmiui/widget/SlidingButton;->z(Z)V

    .line 316
    return-void

    .line 315
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ax(I)V
    .locals 2

    .prologue
    .line 341
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    neg-int p1, p1

    .line 344
    :cond_0
    iget v0, p0, Lmiui/widget/SlidingButton;->YM:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/widget/SlidingButton;->YM:I

    .line 345
    iget v0, p0, Lmiui/widget/SlidingButton;->YM:I

    iget v1, p0, Lmiui/widget/SlidingButton;->YK:I

    if-ge v0, v1, :cond_2

    .line 346
    iget v0, p0, Lmiui/widget/SlidingButton;->YK:I

    iput v0, p0, Lmiui/widget/SlidingButton;->YM:I

    .line 350
    :cond_1
    :goto_0
    iget v0, p0, Lmiui/widget/SlidingButton;->YM:I

    invoke-virtual {p0, v0}, Lmiui/widget/SlidingButton;->setSliderOffset(I)V

    .line 351
    return-void

    .line 347
    :cond_2
    iget v0, p0, Lmiui/widget/SlidingButton;->YM:I

    iget v1, p0, Lmiui/widget/SlidingButton;->YL:I

    if-le v0, v1, :cond_1

    .line 348
    iget v0, p0, Lmiui/widget/SlidingButton;->YL:I

    iput v0, p0, Lmiui/widget/SlidingButton;->YM:I

    goto :goto_0
.end method

.method static synthetic b(Lmiui/widget/SlidingButton;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lmiui/widget/SlidingButton;->YL:I

    return v0
.end method

.method static synthetic c(Lmiui/widget/SlidingButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YS:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method private g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 209
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 210
    return-object v0
.end method

.method private g(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 427
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YH:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YG:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiui/widget/SlidingButton;->YH:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 431
    :cond_0
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YF:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YD:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiui/widget/SlidingButton;->YF:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 434
    :cond_1
    return-void
.end method

.method private z(Z)V
    .locals 11

    .prologue
    const-wide/16 v4, 0xb4

    const-wide/16 v6, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 319
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YT:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YT:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/SlidingButton;->YT:Landroid/animation/Animator;

    .line 323
    :cond_0
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 324
    const-string v2, "SliderOffset"

    new-array v3, v10, [I

    if-eqz p1, :cond_1

    iget v0, p0, Lmiui/widget/SlidingButton;->YL:I

    :goto_0
    aput v0, v3, v1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 326
    const-string v2, "SliderOnAlpha"

    new-array v3, v10, [I

    if-eqz p1, :cond_2

    const/16 v0, 0xff

    :goto_1
    aput v0, v3, v1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 327
    sget-boolean v2, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v2, :cond_3

    move-wide v2, v4

    :goto_2
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 328
    sget-boolean v2, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v2, :cond_4

    :goto_3
    invoke-virtual {v9, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 329
    sget-boolean v2, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v2, :cond_5

    .line 330
    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 334
    :goto_4
    iput-object v8, p0, Lmiui/widget/SlidingButton;->YT:Landroid/animation/Animator;

    .line 335
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YT:Landroid/animation/Animator;

    iget-object v1, p0, Lmiui/widget/SlidingButton;->Qg:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 336
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YT:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 337
    return-void

    .line 324
    :cond_1
    iget v0, p0, Lmiui/widget/SlidingButton;->YK:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 326
    goto :goto_1

    :cond_3
    move-wide v2, v6

    .line 327
    goto :goto_2

    :cond_4
    move-wide v4, v6

    .line 328
    goto :goto_3

    .line 332
    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v1

    aput-object v9, v2, v10

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    .line 235
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YA:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 236
    return-void
.end method

.method public getSliderOffset()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lmiui/widget/SlidingButton;->YM:I

    return v0
.end method

.method public getSliderOnAlpha()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lmiui/widget/SlidingButton;->YB:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 385
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v5, 0xff

    .line 386
    :goto_0
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YI:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/SlidingButton;->YG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/SlidingButton;->YD:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 387
    iget-boolean v0, p0, Lmiui/widget/SlidingButton;->YP:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/widget/SlidingButton;->Nx:Z

    if-eqz v0, :cond_3

    .line 388
    :cond_0
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YI:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lmiui/widget/SlidingButton;->YI:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/4 v6, 0x4

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 390
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YI:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 392
    invoke-direct {p0, p1}, Lmiui/widget/SlidingButton;->g(Landroid/graphics/Canvas;)V

    .line 393
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 404
    :cond_1
    :goto_1
    iget-object v0, p0, Lmiui/widget/SlidingButton;->Yz:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 407
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    .line 408
    if-eqz v2, :cond_5

    iget v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v1, p0, Lmiui/widget/SlidingButton;->YM:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/SlidingButton;->YJ:I

    sub-int/2addr v0, v1

    move v1, v0

    .line 409
    :goto_2
    if-eqz v2, :cond_6

    iget v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v2, p0, Lmiui/widget/SlidingButton;->YM:I

    sub-int/2addr v0, v2

    .line 410
    :goto_3
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 411
    iget-object v2, p0, Lmiui/widget/SlidingButton;->YA:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v2, v1, v7, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 412
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YA:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 418
    :goto_4
    int-to-float v0, v5

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lmiui/widget/SlidingButton;->setAlpha(F)V

    .line 419
    return-void

    .line 385
    :cond_2
    const/16 v5, 0x7f

    goto :goto_0

    .line 395
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 396
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YU:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 398
    :cond_4
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 408
    :cond_5
    iget v0, p0, Lmiui/widget/SlidingButton;->YM:I

    move v1, v0

    goto :goto_2

    .line 409
    :cond_6
    iget v0, p0, Lmiui/widget/SlidingButton;->YJ:I

    iget v2, p0, Lmiui/widget/SlidingButton;->YM:I

    add-int/2addr v0, v2

    goto :goto_3

    .line 414
    :cond_7
    iget-object v2, p0, Lmiui/widget/SlidingButton;->YC:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v2, v1, v7, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 415
    iget-object v0, p0, Lmiui/widget/SlidingButton;->YC:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 240
    iget v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lmiui/widget/SlidingButton;->setMeasuredDimension(II)V

    .line 241
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    :goto_0
    return v2

    .line 249
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v5, v0

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v6, v0

    .line 252
    iget-object v7, p0, Lmiui/widget/SlidingButton;->sF:Landroid/graphics/Rect;

    .line 253
    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    .line 254
    if-eqz v8, :cond_2

    iget v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v3, p0, Lmiui/widget/SlidingButton;->YM:I

    sub-int/2addr v0, v3

    iget v3, p0, Lmiui/widget/SlidingButton;->YJ:I

    sub-int/2addr v0, v3

    move v3, v0

    .line 255
    :goto_1
    if-eqz v8, :cond_3

    iget v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v8, p0, Lmiui/widget/SlidingButton;->YM:I

    sub-int/2addr v0, v8

    .line 256
    :goto_2
    iget v8, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v7, v3, v2, v0, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 258
    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_3
    move v2, v1

    .line 305
    goto :goto_0

    .line 254
    :cond_2
    iget v0, p0, Lmiui/widget/SlidingButton;->YM:I

    move v3, v0

    goto :goto_1

    .line 255
    :cond_3
    iget v0, p0, Lmiui/widget/SlidingButton;->YM:I

    iget v8, p0, Lmiui/widget/SlidingButton;->YJ:I

    add-int/2addr v0, v8

    goto :goto_2

    .line 260
    :pswitch_0
    invoke-virtual {v7, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 261
    iput-boolean v1, p0, Lmiui/widget/SlidingButton;->YP:Z

    .line 262
    invoke-virtual {p0, v1}, Lmiui/widget/SlidingButton;->setPressed(Z)V

    .line 266
    :goto_4
    iput v5, p0, Lmiui/widget/SlidingButton;->YN:I

    .line 267
    iput v5, p0, Lmiui/widget/SlidingButton;->YO:I

    .line 268
    iput-boolean v2, p0, Lmiui/widget/SlidingButton;->YQ:Z

    goto :goto_3

    .line 264
    :cond_4
    iput-boolean v2, p0, Lmiui/widget/SlidingButton;->YP:Z

    goto :goto_4

    .line 272
    :pswitch_1
    iget-boolean v0, p0, Lmiui/widget/SlidingButton;->YP:Z

    if-eqz v0, :cond_1

    .line 273
    iget v0, p0, Lmiui/widget/SlidingButton;->YN:I

    sub-int v0, v5, v0

    invoke-direct {p0, v0}, Lmiui/widget/SlidingButton;->ax(I)V

    .line 274
    iput v5, p0, Lmiui/widget/SlidingButton;->YN:I

    .line 275
    iget v0, p0, Lmiui/widget/SlidingButton;->YO:I

    sub-int v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lmiui/widget/SlidingButton;->YR:I

    if-lt v0, v2, :cond_1

    .line 276
    iput-boolean v1, p0, Lmiui/widget/SlidingButton;->YQ:Z

    .line 277
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 283
    :pswitch_2
    iget-boolean v0, p0, Lmiui/widget/SlidingButton;->YP:Z

    if-eqz v0, :cond_7

    .line 284
    iget-boolean v0, p0, Lmiui/widget/SlidingButton;->YQ:Z

    if-nez v0, :cond_5

    .line 285
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateToggle()V

    .line 292
    :goto_5
    iput-boolean v2, p0, Lmiui/widget/SlidingButton;->YP:Z

    .line 293
    iput-boolean v2, p0, Lmiui/widget/SlidingButton;->YQ:Z

    .line 294
    invoke-virtual {p0, v2}, Lmiui/widget/SlidingButton;->setPressed(Z)V

    goto :goto_3

    .line 287
    :cond_5
    iget v0, p0, Lmiui/widget/SlidingButton;->YM:I

    iget v3, p0, Lmiui/widget/SlidingButton;->YL:I

    div-int/lit8 v3, v3, 0x2

    if-lt v0, v3, :cond_6

    move v0, v1

    :goto_6
    invoke-direct {p0, v0}, Lmiui/widget/SlidingButton;->z(Z)V

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_6

    .line 290
    :cond_7
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateToggle()V

    goto :goto_5

    .line 298
    :pswitch_3
    iput-boolean v2, p0, Lmiui/widget/SlidingButton;->YP:Z

    .line 299
    iput-boolean v2, p0, Lmiui/widget/SlidingButton;->YQ:Z

    .line 300
    invoke-virtual {p0, v2}, Lmiui/widget/SlidingButton;->setPressed(Z)V

    .line 301
    iget v0, p0, Lmiui/widget/SlidingButton;->YM:I

    iget v3, p0, Lmiui/widget/SlidingButton;->YL:I

    div-int/lit8 v3, v3, 0x2

    if-lt v0, v3, :cond_8

    move v2, v1

    :cond_8
    invoke-direct {p0, v2}, Lmiui/widget/SlidingButton;->z(Z)V

    goto :goto_3

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public setChecked(Z)V
    .locals 4

    .prologue
    const/16 v1, 0xff

    const/4 v2, 0x0

    .line 215
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    .line 217
    if-eq v0, p1, :cond_0

    .line 218
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 219
    if-eqz p1, :cond_1

    iget v0, p0, Lmiui/widget/SlidingButton;->YL:I

    :goto_0
    iput v0, p0, Lmiui/widget/SlidingButton;->YM:I

    .line 220
    iget-object v3, p0, Lmiui/widget/SlidingButton;->YH:Landroid/graphics/Paint;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 221
    iget-object v3, p0, Lmiui/widget/SlidingButton;->YF:Landroid/graphics/Paint;

    if-nez p1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 222
    if-eqz p1, :cond_4

    :goto_3
    iput v1, p0, Lmiui/widget/SlidingButton;->YB:I

    .line 223
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 225
    :cond_0
    return-void

    .line 219
    :cond_1
    iget v0, p0, Lmiui/widget/SlidingButton;->YK:I

    goto :goto_0

    :cond_2
    move v0, v2

    .line 220
    goto :goto_1

    :cond_3
    move v0, v2

    .line 221
    goto :goto_2

    :cond_4
    move v1, v2

    .line 222
    goto :goto_3
.end method

.method public setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lmiui/widget/SlidingButton;->YS:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 203
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 311
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 312
    return-void
.end method

.method public setSliderOffset(I)V
    .locals 0

    .prologue
    .line 364
    iput p1, p0, Lmiui/widget/SlidingButton;->YM:I

    .line 365
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 366
    return-void
.end method

.method public setSliderOnAlpha(I)V
    .locals 0

    .prologue
    .line 379
    iput p1, p0, Lmiui/widget/SlidingButton;->YB:I

    .line 380
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 381
    return-void
.end method
