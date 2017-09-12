.class public Lmiui/maml/FancyDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FancyDrawable.java"

# interfaces
.implements Lmiui/maml/RendererController$IRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/FancyDrawable$FancyDrawableState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "FancyDrawable"

.field private static final RENDER_TIMEOUT:I = 0x64


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mInvalidateSelf:Ljava/lang/Runnable;

.field private mPauseLock:Ljava/lang/Object;

.field private mPaused:Z

.field private mRenderTimeout:Ljava/lang/Runnable;

.field private mRendererCore:Lmiui/maml/RendererCore;

.field private mState:Lmiui/maml/FancyDrawable$FancyDrawableState;

.field private mTimeOut:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Lmiui/maml/RendererCore;)V
    .locals 2
    .param p1, "rc"    # Lmiui/maml/RendererCore;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    .line 25
    new-instance v0, Lmiui/maml/FancyDrawable$1;

    invoke-direct {v0, p0}, Lmiui/maml/FancyDrawable$1;-><init>(Lmiui/maml/FancyDrawable;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Lmiui/maml/FancyDrawable$2;

    invoke-direct {v0, p0}, Lmiui/maml/FancyDrawable$2;-><init>(Lmiui/maml/FancyDrawable;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    .line 48
    invoke-direct {p0, p1}, Lmiui/maml/FancyDrawable;->init(Lmiui/maml/RendererCore;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V
    .locals 2
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p2, "t"    # Lmiui/maml/RenderThread;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    .line 25
    new-instance v0, Lmiui/maml/FancyDrawable$1;

    invoke-direct {v0, p0}, Lmiui/maml/FancyDrawable$1;-><init>(Lmiui/maml/FancyDrawable;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Lmiui/maml/FancyDrawable$2;

    invoke-direct {v0, p0}, Lmiui/maml/FancyDrawable$2;-><init>(Lmiui/maml/FancyDrawable;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    .line 52
    invoke-direct {p0, p1, p2}, Lmiui/maml/FancyDrawable;->init(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    .line 53
    return-void
.end method

.method static synthetic access$002(Lmiui/maml/FancyDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/maml/FancyDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lmiui/maml/FancyDrawable;->mTimeOut:Z

    return p1
.end method

.method static synthetic access$100(Lmiui/maml/FancyDrawable;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/FancyDrawable;

    .prologue
    .line 13
    invoke-direct {p0}, Lmiui/maml/FancyDrawable;->doPause()V

    return-void
.end method

.method private doPause()V
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z

    if-eqz v0, :cond_0

    .line 160
    monitor-exit v1

    .line 165
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string v0, "doPause: "

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z

    .line 163
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0, p0}, Lmiui/maml/RendererCore;->pauseRenderable(Lmiui/maml/RendererController$IRenderable;)V

    .line 164
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doResume()V
    .locals 2

    .prologue
    .line 168
    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z

    if-nez v0, :cond_0

    .line 170
    monitor-exit v1

    .line 175
    :goto_0
    return-void

    .line 171
    :cond_0
    const-string v0, "doResume: "

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z

    .line 173
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0, p0}, Lmiui/maml/RendererCore;->resumeRenderable(Lmiui/maml/RendererController$IRenderable;)V

    .line 174
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static fromZipFile(Landroid/content/Context;Ljava/lang/String;)Lmiui/maml/FancyDrawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-static {v0}, Lmiui/maml/RenderThread;->globalThread(Z)Lmiui/maml/RenderThread;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiui/maml/FancyDrawable;->fromZipFile(Landroid/content/Context;Ljava/lang/String;Lmiui/maml/RenderThread;)Lmiui/maml/FancyDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static fromZipFile(Landroid/content/Context;Ljava/lang/String;Lmiui/maml/RenderThread;)Lmiui/maml/FancyDrawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "t"    # Lmiui/maml/RenderThread;

    .prologue
    const/4 v2, 0x0

    .line 75
    new-instance v3, Lmiui/maml/ScreenElementRootFactory$Parameter;

    invoke-direct {v3, p0, p1}, Lmiui/maml/ScreenElementRootFactory$Parameter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v3}, Lmiui/maml/ScreenElementRootFactory;->create(Lmiui/maml/ScreenElementRootFactory$Parameter;)Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    .line 76
    .local v1, "root":Lmiui/maml/ScreenElementRoot;
    if-nez v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-object v2

    .line 78
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lmiui/maml/ScreenElementRoot;->setDefaultFramerate(F)V

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "rc":Lmiui/maml/RendererCore;
    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->load()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    new-instance v0, Lmiui/maml/RendererCore;

    .end local v0    # "rc":Lmiui/maml/RendererCore;
    invoke-direct {v0, v1, p2}, Lmiui/maml/RendererCore;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    .line 84
    .restart local v0    # "rc":Lmiui/maml/RendererCore;
    :cond_2
    if-eqz v0, :cond_0

    new-instance v2, Lmiui/maml/FancyDrawable;

    invoke-direct {v2, v0}, Lmiui/maml/FancyDrawable;-><init>(Lmiui/maml/RendererCore;)V

    goto :goto_0
.end method

.method private init(Lmiui/maml/RendererCore;)V
    .locals 2
    .param p1, "rc"    # Lmiui/maml/RendererCore;

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59
    :cond_0
    new-instance v0, Lmiui/maml/FancyDrawable$FancyDrawableState;

    invoke-direct {v0, p1}, Lmiui/maml/FancyDrawable$FancyDrawableState;-><init>(Lmiui/maml/RendererCore;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mState:Lmiui/maml/FancyDrawable$FancyDrawableState;

    .line 60
    iput-object p1, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    .line 61
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0, p0}, Lmiui/maml/RendererCore;->addRenderable(Lmiui/maml/RendererController$IRenderable;)V

    .line 62
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0}, Lmiui/maml/RendererCore;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v1}, Lmiui/maml/RendererCore;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/FancyDrawable;->setIntrinsicSize(II)V

    .line 63
    return-void
.end method

.method private init(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V
    .locals 2
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p2, "t"    # Lmiui/maml/RenderThread;

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init  root:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v0, Lmiui/maml/RendererCore;

    invoke-direct {v0, p1, p2}, Lmiui/maml/RendererCore;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->init(Lmiui/maml/RendererCore;)V

    .line 68
    return-void
.end method

.method private logd(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/CharSequence;

    .prologue
    .line 196
    const-string v0, "FancyDrawable"

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

    .line 197
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 93
    const-string v0, "cleanUp: "

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0, p0}, Lmiui/maml/RendererCore;->removeRenderable(Lmiui/maml/RendererController$IRenderable;)V

    .line 95
    return-void
.end method

.method public doRender()V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 113
    iget-object v2, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    iget-boolean v2, p0, Lmiui/maml/FancyDrawable;->mTimeOut:Z

    if-eqz v2, :cond_0

    .line 115
    invoke-direct {p0}, Lmiui/maml/FancyDrawable;->doResume()V

    .line 116
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/maml/FancyDrawable;->mTimeOut:Z

    .line 119
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 120
    .local v1, "sa":I
    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 121
    iget v2, p0, Lmiui/maml/FancyDrawable;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/FancyDrawable;->mIntrinsicWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lmiui/maml/FancyDrawable;->mHeight:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/maml/FancyDrawable;->mIntrinsicHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 122
    iget-object v2, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v2, p1}, Lmiui/maml/RendererCore;->render(Landroid/graphics/Canvas;)V

    .line 123
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    .end local v1    # "sa":I
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    const-string v2, "FancyDrawable"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 129
    const-string v2, "FancyDrawable"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->cleanUp()V

    .line 191
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 192
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mState:Lmiui/maml/FancyDrawable$FancyDrawableState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lmiui/maml/FancyDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lmiui/maml/FancyDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, -0x3

    return v0
.end method

.method public getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0}, Lmiui/maml/RendererCore;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lmiui/maml/FancyDrawable;->doPause()V

    .line 149
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    const-string v1, "resume"

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lmiui/maml/FancyDrawable;->doResume()V

    .line 155
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 140
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    sub-int v0, p3, p1

    iput v0, p0, Lmiui/maml/FancyDrawable;->mWidth:I

    .line 100
    sub-int v0, p4, p2

    iput v0, p0, Lmiui/maml/FancyDrawable;->mHeight:I

    .line 101
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 144
    return-void
.end method

.method public setIntrinsicSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 88
    iput p1, p0, Lmiui/maml/FancyDrawable;->mIntrinsicWidth:I

    .line 89
    iput p2, p0, Lmiui/maml/FancyDrawable;->mIntrinsicHeight:I

    .line 90
    return-void
.end method
