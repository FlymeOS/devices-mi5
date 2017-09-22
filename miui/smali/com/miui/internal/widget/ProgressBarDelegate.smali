.class public Lcom/miui/internal/widget/ProgressBarDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "ProgressBarDelegate"

.field private static final tS:Lmiui/reflect/Method;

.field private static final tT:Lmiui/reflect/Method;

.field private static final tU:Lmiui/reflect/Method;

.field private static final tV:Lmiui/reflect/Method;

.field private static final tW:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

.field private static final tX:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

.field private static final tY:I = 0x2710


# instance fields
.field private final tZ:Landroid/widget/ProgressBar;

.field private final ua:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private ub:Z

.field private uc:Landroid/graphics/drawable/Drawable;

.field private ud:Landroid/graphics/drawable/Drawable;

.field private ue:Z

.field private uf:Landroid/graphics/drawable/Drawable;

.field private ug:Z

.field private uh:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "setIndeterminate"

    const-string v2, "(Z)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->tS:Lmiui/reflect/Method;

    .line 41
    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "setIndeterminateDrawable"

    const-string v2, "(Landroid/graphics/drawable/Drawable;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->tT:Lmiui/reflect/Method;

    .line 44
    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "setProgressDrawable"

    const-string v2, "(Landroid/graphics/drawable/Drawable;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->tU:Lmiui/reflect/Method;

    .line 47
    const-class v0, Landroid/widget/ProgressBar;

    const-string v1, "onSizeChanged"

    const-string v2, "(IIII)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->tV:Lmiui/reflect/Method;

    .line 49
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->tW:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    .line 52
    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->tX:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    return-void
.end method

.method private constructor <init>(Landroid/widget/ProgressBar;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ProgressBar;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/ProgressBar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ub:Z

    .line 72
    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->tZ:Landroid/widget/ProgressBar;

    .line 73
    iput-object p2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ua:Ljava/lang/Class;

    .line 74
    return-void
.end method

.method private static a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 283
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    if-gtz p4, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-object p1

    .line 287
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 288
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 289
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x3

    invoke-direct {v2, v4, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 290
    const/16 v2, 0x2710

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 291
    invoke-virtual {p1, v4, v4, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 292
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 293
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 294
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 10

    .prologue
    const v2, 0x800003

    const/16 v9, 0x2710

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 215
    instance-of v0, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 218
    new-instance p1, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {p1, v0, v2, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 279
    :goto_0
    return-object p1

    .line 219
    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v0, :cond_2

    .line 220
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 221
    if-eq v0, p1, :cond_d

    .line 222
    new-instance p1, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {p1, v0, v2, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_0

    .line 224
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_7

    .line 225
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 226
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v8

    .line 227
    new-array v9, v8, [Landroid/graphics/drawable/Drawable;

    move v6, v7

    .line 229
    :goto_1
    if-ge v6, v8, :cond_5

    .line 230
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v0

    .line 231
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 232
    const v2, 0x102000d

    if-eq v0, v2, :cond_3

    const v2, 0x102000f

    if-ne v0, v2, :cond_4

    :cond_3
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 233
    invoke-static/range {v0 .. v5}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v9, v6

    .line 229
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 235
    :cond_4
    aput-object v1, v9, v6

    goto :goto_2

    .line 239
    :cond_5
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 240
    :goto_3
    if-ge v7, v8, :cond_6

    .line 241
    invoke-virtual {p1, v7}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 240
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    move-object p1, v0

    .line 245
    goto :goto_0

    :cond_7
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_9

    .line 246
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 247
    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 248
    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->tX:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;->getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v8

    .line 249
    :goto_4
    if-ge v7, v8, :cond_8

    .line 250
    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->tX:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    invoke-virtual {v0, p1, v7}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;->getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 251
    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->tX:Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;

    invoke-virtual {v0, p1, v7}, Lcom/miui/internal/variable/Android_Graphics_Drawable_StateListDrawable_class;->getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object v9

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 252
    invoke-static/range {v0 .. v5}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 253
    invoke-virtual {v6, v9, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 249
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    move-object p1, v6

    .line 257
    goto/16 :goto_0

    :cond_9
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_c

    .line 258
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 259
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v8

    .line 260
    new-instance v6, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 261
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 263
    :goto_5
    if-ge v7, v8, :cond_a

    .line 264
    invoke-virtual {p1, v7}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 265
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 266
    invoke-virtual {p1, v7}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 263
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_5

    .line 268
    :cond_a
    if-eqz p5, :cond_b

    .line 269
    invoke-virtual {v6, v9}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    :goto_6
    move-object p1, v6

    .line 274
    goto/16 :goto_0

    .line 271
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getLevel()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    goto :goto_6

    .line 275
    :cond_c
    const-string v0, "ProgressBarDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Drawable subclass, src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    move-object p1, v0

    goto/16 :goto_0
.end method

.method private a(IIII)V
    .locals 6

    .prologue
    .line 348
    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->tV:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ua:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->tZ:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    instance-of v1, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 300
    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 305
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 306
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 310
    :goto_1
    return-void

    .line 301
    :cond_1
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 302
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    .line 308
    :cond_2
    const-string v0, "ProgressBarDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The drawable should be NinePatchDrawable or BitmapDrawable. drawable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private bx()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->tZ:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ProgressBarDelegate;->n(Z)V

    .line 162
    return-void
.end method

.method private c(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 329
    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->tT:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ua:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->tZ:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 330
    return-void
.end method

.method public static create(Landroid/widget/ProgressBar;Ljava/lang/Class;)Lcom/miui/internal/widget/ProgressBarDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ProgressBar;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/ProgressBar;",
            ">;)",
            "Lcom/miui/internal/widget/ProgressBarDelegate;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Lcom/miui/internal/widget/ProgressBarDelegate;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;-><init>(Landroid/widget/ProgressBar;Ljava/lang/Class;)V

    return-object v0
.end method

.method private d(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 337
    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->tU:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ua:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->tZ:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 338
    return-void
.end method

.method private n(Z)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 165
    iget-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ub:Z

    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->tZ:Landroid/widget/ProgressBar;

    .line 170
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getPaddingBottom()I

    move-result v2

    sub-int v4, v0, v2

    .line 171
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 174
    if-ge v4, v0, :cond_6

    move v3, v0

    .line 180
    :goto_1
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uc:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 184
    :cond_2
    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ug:Z

    if-eqz v0, :cond_4

    .line 185
    iput-boolean v5, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ug:Z

    .line 186
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uf:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uc:Landroid/graphics/drawable/Drawable;

    invoke-static/range {v0 .. v5}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_3

    if-lez v3, :cond_3

    if-lez v4, :cond_3

    .line 193
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->tZ:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 195
    sub-int v0, v3, v3

    .line 196
    sub-int/2addr v3, v6

    .line 198
    :goto_2
    invoke-virtual {v1, v0, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 200
    :cond_3
    invoke-direct {p0, v1}, Lcom/miui/internal/widget/ProgressBarDelegate;->c(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 201
    :cond_4
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ue:Z

    if-eqz v0, :cond_0

    .line 202
    iput-boolean v5, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ue:Z

    .line 203
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ud:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uc:Landroid/graphics/drawable/Drawable;

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 205
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/ProgressBarDelegate;->d(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    move v0, v6

    goto :goto_2

    :cond_6
    move v3, v4

    move v4, v0

    goto :goto_1
.end method

.method private o(Z)V
    .locals 6

    .prologue
    .line 321
    sget-object v0, Lcom/miui/internal/widget/ProgressBarDelegate;->tS:Lmiui/reflect/Method;

    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ua:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->tZ:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 322
    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->tZ:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isEnabled()Z

    move-result v0

    .line 153
    if-nez v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->tZ:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->tZ:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 158
    return-void

    .line 157
    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uh:F

    goto :goto_0
.end method

.method public getProgressMaskDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uc:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ue:Z

    .line 145
    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ug:Z

    .line 146
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->bx()V

    .line 147
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->a(IIII)V

    .line 148
    return-void
.end method

.method public postConstruct(Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 77
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->tZ:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    sget-object v1, Lmiui/R$styleable;->ProgressBar:[I

    invoke-virtual {v0, p1, v1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uf:Landroid/graphics/drawable/Drawable;

    .line 80
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.graphics.drawable.AnimatedRotateDrawable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    sget v3, Lcom/miui/internal/R$styleable;->ProgressBar_indeterminateFramesCount:I

    const/16 v4, 0x30

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 84
    sget-object v4, Lcom/miui/internal/widget/ProgressBarDelegate;->tW:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    invoke-virtual {v4, v2, v3}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesCount(Landroid/graphics/drawable/Drawable;I)V

    .line 85
    sget v3, Lcom/miui/internal/R$styleable;->ProgressBar_indeterminateFramesDuration:I

    const/16 v4, 0x19

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 88
    sget-object v4, Lcom/miui/internal/widget/ProgressBarDelegate;->tW:Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;

    invoke-virtual {v4, v2, v3}, Lcom/miui/internal/variable/Android_Graphics_Drawable_AnimatedRotateDrawable_class;->setFramesDuration(Landroid/graphics/drawable/Drawable;I)V

    .line 91
    :cond_0
    iput-boolean v6, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ub:Z

    .line 92
    sget v2, Lcom/miui/internal/R$styleable;->ProgressBar_progressMask:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 93
    if-eqz v2, :cond_1

    .line 94
    invoke-direct {p0, v2}, Lcom/miui/internal/widget/ProgressBarDelegate;->b(Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-virtual {p0, v2}, Lcom/miui/internal/widget/ProgressBarDelegate;->setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v6, [I

    const v2, 0x1010033

    aput v2, v1, v5

    invoke-virtual {v0, p1, v1, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uh:F

    .line 104
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    return-void

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->bx()V

    goto :goto_0
.end method

.method public setIndeterminate(Z)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->tZ:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->n(Z)V

    .line 110
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->o(Z)V

    .line 112
    :cond_0
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uf:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 124
    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uf:Landroid/graphics/drawable/Drawable;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ug:Z

    .line 126
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->bx()V

    .line 128
    :cond_0
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ud:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 116
    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ud:Landroid/graphics/drawable/Drawable;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ue:Z

    .line 118
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->bx()V

    .line 120
    :cond_0
    return-void
.end method

.method public declared-synchronized setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uc:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 132
    iput-object p1, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->uc:Landroid/graphics/drawable/Drawable;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ue:Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ProgressBarDelegate;->ug:Z

    .line 135
    invoke-direct {p0}, Lcom/miui/internal/widget/ProgressBarDelegate;->bx()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_0
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
