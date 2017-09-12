.class public Lmiui/maml/elements/VirtualScreen;
.super Lmiui/maml/elements/ElementGroup;
.source "VirtualScreen.java"

# interfaces
.implements Lmiui/maml/elements/BitmapProvider$IBitmapHolder;


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenCanvas:Landroid/graphics/Canvas;

.field private mTicked:Z

.field private mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 51
    iget-boolean v0, p0, Lmiui/maml/elements/VirtualScreen;->mTicked:Z

    if-eqz v0, :cond_0

    .line 52
    iput-boolean v2, p0, Lmiui/maml/elements/VirtualScreen;->mTicked:Z

    .line 53
    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 54
    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lmiui/maml/elements/VirtualScreen;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 55
    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 56
    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Lmiui/maml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    .line 57
    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 58
    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    .line 60
    :cond_0
    return-void
.end method

.method protected doTick(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;->doTick(J)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/VirtualScreen;->mTicked:Z

    .line 66
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->finish()V

    .line 44
    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 45
    iput-object v1, p0, Lmiui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 46
    iput-object v1, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 47
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmap(Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 29
    invoke-virtual {p0}, Lmiui/maml/elements/VirtualScreen;->getWidth()F

    move-result v1

    .line 30
    .local v1, "width":F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    .line 31
    const-string v2, "screen_width"

    invoke-virtual {p0}, Lmiui/maml/elements/VirtualScreen;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/VirtualScreen;->scale(D)F

    move-result v1

    .line 32
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/VirtualScreen;->getHeight()F

    move-result v0

    .line 33
    .local v0, "height":F
    cmpg-float v2, v0, v4

    if-gez v2, :cond_1

    .line 34
    const-string v2, "screen_height"

    invoke-virtual {p0}, Lmiui/maml/elements/VirtualScreen;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/VirtualScreen;->scale(D)F

    move-result v0

    .line 35
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 36
    iget-object v2, p0, Lmiui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lmiui/maml/elements/VirtualScreen;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getTargetDensity()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 37
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lmiui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 38
    new-instance v2, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    iget-object v3, p0, Lmiui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lmiui/maml/elements/VirtualScreen;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 39
    return-void
.end method
