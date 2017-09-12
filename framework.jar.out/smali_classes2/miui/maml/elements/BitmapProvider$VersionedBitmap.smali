.class public Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
.super Ljava/lang/Object;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionedBitmap"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mVersion:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 39
    return-void
.end method

.method public static equals(Lmiui/maml/elements/BitmapProvider$VersionedBitmap;Lmiui/maml/elements/BitmapProvider$VersionedBitmap;)Z
    .locals 3
    .param p0, "a"    # Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .param p1, "b"    # Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    .prologue
    const/4 v0, 0x0

    .line 72
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    iget v2, p1, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 69
    return-void
.end method

.method public set(Lmiui/maml/elements/BitmapProvider$VersionedBitmap;)V
    .locals 1
    .param p1, "versionedBmp"    # Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p1, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 44
    iget v0, p1, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    iput v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 51
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    .line 52
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 53
    iget v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    .line 55
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateVersion()I
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    return v0
.end method
