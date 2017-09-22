.class Lcom/bumptech/glide/load/resource/c/c;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GifDrawable.java"


# instance fields
.field aNB:Lcom/bumptech/glide/load/engine/a/e;

.field aOJ:Lcom/bumptech/glide/b/b;

.field aTV:Lcom/bumptech/glide/b/d;

.field aTW:Lcom/bumptech/glide/load/f;

.field aTX:I

.field aTY:I

.field aTZ:Landroid/graphics/Bitmap;

.field context:Landroid/content/Context;

.field data:[B


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/b/d;[BLandroid/content/Context;Lcom/bumptech/glide/load/f;IILcom/bumptech/glide/b/b;Lcom/bumptech/glide/load/engine/a/e;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 332
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 333
    if-nez p9, :cond_0

    .line 334
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The first frame of the GIF must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/c/c;->aTV:Lcom/bumptech/glide/b/d;

    .line 337
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/c/c;->data:[B

    .line 338
    iput-object p8, p0, Lcom/bumptech/glide/load/resource/c/c;->aNB:Lcom/bumptech/glide/load/engine/a/e;

    .line 339
    iput-object p9, p0, Lcom/bumptech/glide/load/resource/c/c;->aTZ:Landroid/graphics/Bitmap;

    .line 340
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/c/c;->context:Landroid/content/Context;

    .line 341
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/c/c;->aTW:Lcom/bumptech/glide/load/f;

    .line 342
    iput p5, p0, Lcom/bumptech/glide/load/resource/c/c;->aTX:I

    .line 343
    iput p6, p0, Lcom/bumptech/glide/load/resource/c/c;->aTY:I

    .line 344
    iput-object p7, p0, Lcom/bumptech/glide/load/resource/c/c;->aOJ:Lcom/bumptech/glide/b/b;

    .line 345
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 368
    new-instance v0, Lcom/bumptech/glide/load/resource/c/b;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/c/b;-><init>(Lcom/bumptech/glide/load/resource/c/c;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/c/c;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
