.class Lcom/bumptech/glide/load/engine/b/r;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/s;


# instance fields
.field private final aSh:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/r;->aSh:Landroid/util/DisplayMetrics;

    .line 107
    return-void
.end method


# virtual methods
.method public Dj()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/r;->aSh:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public Dk()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/r;->aSh:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method
