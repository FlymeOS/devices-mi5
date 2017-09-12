.class public Lmiui/maml/component/MamlDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MamlDrawable.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MamlDrawable"

.field private static final RENDER_TIMEOUT:I = 0x64


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mInvalidateSelf:Ljava/lang/Runnable;

.field private mPaused:Z

.field private mRenderTimeout:Ljava/lang/Runnable;

.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field private mUpdater:Lmiui/maml/RenderUpdater;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/component/MamlDrawable;-><init>(Lmiui/maml/ScreenElementRoot;Z)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Z)V
    .locals 3
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p2, "autoCleanup"    # Z

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/component/MamlDrawable;->mPaused:Z

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/maml/component/MamlDrawable;->mHandler:Landroid/os/Handler;

    .line 23
    new-instance v0, Lmiui/maml/component/MamlDrawable$1;

    invoke-direct {v0, p0}, Lmiui/maml/component/MamlDrawable$1;-><init>(Lmiui/maml/component/MamlDrawable;)V

    iput-object v0, p0, Lmiui/maml/component/MamlDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 29
    new-instance v0, Lmiui/maml/component/MamlDrawable$2;

    invoke-direct {v0, p0}, Lmiui/maml/component/MamlDrawable$2;-><init>(Lmiui/maml/component/MamlDrawable;)V

    iput-object v0, p0, Lmiui/maml/component/MamlDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    .line 52
    iput-object p1, p0, Lmiui/maml/component/MamlDrawable;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 53
    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lmiui/maml/component/MamlDrawable;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/component/MamlDrawable;->setIntrinsicSize(II)V

    .line 54
    new-instance v0, Lmiui/maml/component/MamlDrawable$3;

    iget-object v1, p0, Lmiui/maml/component/MamlDrawable;->mRoot:Lmiui/maml/ScreenElementRoot;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, v2, p2}, Lmiui/maml/component/MamlDrawable$3;-><init>(Lmiui/maml/component/MamlDrawable;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lmiui/maml/component/MamlDrawable;->mUpdater:Lmiui/maml/RenderUpdater;

    .line 62
    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->init()V

    .line 63
    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->runUpdater()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/component/MamlDrawable;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/component/MamlDrawable;

    .prologue
    .line 15
    invoke-direct {p0}, Lmiui/maml/component/MamlDrawable;->doPause()V

    return-void
.end method

.method static synthetic access$100(Lmiui/maml/component/MamlDrawable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/component/MamlDrawable;

    .prologue
    .line 15
    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/component/MamlDrawable;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/component/MamlDrawable;

    .prologue
    .line 15
    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/maml/component/MamlDrawable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/component/MamlDrawable;

    .prologue
    .line 15
    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    return-object v0
.end method

.method private doPause()V
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lmiui/maml/component/MamlDrawable;->mPaused:Z

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v0, "doPause: "

    invoke-direct {p0, v0}, Lmiui/maml/component/MamlDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/component/MamlDrawable;->mPaused:Z

    .line 133
    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->onPause()V

    goto :goto_0
.end method

.method private doResume()V
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lmiui/maml/component/MamlDrawable;->mPaused:Z

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string v0, "doResume: "

    invoke-direct {p0, v0}, Lmiui/maml/component/MamlDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/component/MamlDrawable;->mPaused:Z

    .line 142
    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->onResume()V

    goto :goto_0
.end method

.method private logd(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/CharSequence;

    .prologue
    .line 151
    const-string v0, "MamlDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "cleanUp: "

    invoke-direct {p0, v0}, Lmiui/maml/component/MamlDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->cleanUp()V

    .line 79
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 97
    iget-object v2, p0, Lmiui/maml/component/MamlDrawable;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/component/MamlDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    invoke-direct {p0}, Lmiui/maml/component/MamlDrawable;->doResume()V

    .line 100
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 101
    .local v1, "sa":I
    invoke-virtual {p0}, Lmiui/maml/component/MamlDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lmiui/maml/component/MamlDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 102
    iget v2, p0, Lmiui/maml/component/MamlDrawable;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/component/MamlDrawable;->mIntrinsicWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lmiui/maml/component/MamlDrawable;->mHeight:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/maml/component/MamlDrawable;->mIntrinsicHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 103
    iget-object v2, p0, Lmiui/maml/component/MamlDrawable;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    .line 104
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    .end local v1    # "sa":I
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    const-string v2, "MamlDrawable"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 110
    const-string v2, "MamlDrawable"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lmiui/maml/component/MamlDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lmiui/maml/component/MamlDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, -0x3

    return v0
.end method

.method public getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 121
    return-void
.end method

.method public setAutoCleanup(Z)Lmiui/maml/component/MamlDrawable;
    .locals 1
    .param p1, "autoCleanup"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0, p1}, Lmiui/maml/RenderUpdater;->setAutoCleanup(Z)V

    .line 68
    return-object p0
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    sub-int v0, p3, p1

    iput v0, p0, Lmiui/maml/component/MamlDrawable;->mWidth:I

    .line 84
    sub-int v0, p4, p2

    iput v0, p0, Lmiui/maml/component/MamlDrawable;->mHeight:I

    .line 85
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 125
    return-void
.end method

.method public setIntrinsicSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 72
    iput p1, p0, Lmiui/maml/component/MamlDrawable;->mIntrinsicWidth:I

    .line 73
    iput p2, p0, Lmiui/maml/component/MamlDrawable;->mIntrinsicHeight:I

    .line 74
    return-void
.end method
