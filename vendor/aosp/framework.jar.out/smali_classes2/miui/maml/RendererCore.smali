.class public Lmiui/maml/RendererCore;
.super Ljava/lang/Object;
.source "RendererCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/RendererCore$OnReleaseListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererCore"


# instance fields
.field private mCleaned:Z

.field private mMultipleRenderable:Lmiui/maml/MultipleRenderable;

.field private mOnReleaseListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/maml/RendererCore$OnReleaseListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReleased:Z

.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field private mThread:Lmiui/maml/RenderThread;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V
    .locals 1
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p2, "t"    # Lmiui/maml/RenderThread;

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/RendererCore;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;Z)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;Z)V
    .locals 2
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p2, "t"    # Lmiui/maml/RenderThread;
    .param p3, "attach"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lmiui/maml/MultipleRenderable;

    invoke-direct {v0}, Lmiui/maml/MultipleRenderable;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    .line 29
    iput-object p2, p0, Lmiui/maml/RendererCore;->mThread:Lmiui/maml/RenderThread;

    .line 30
    iput-object p1, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 31
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lmiui/maml/RendererController$IRenderable;)V

    .line 32
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfInit()V

    .line 33
    if-eqz p3, :cond_0

    .line 34
    invoke-virtual {p0, p2}, Lmiui/maml/RendererCore;->attach(Lmiui/maml/RenderThread;)V

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .locals 3
    .param p1, "r"    # Lmiui/maml/RendererController$IRenderable;

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 50
    :goto_0
    monitor-exit p0

    return-void

    .line 46
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v0, p1}, Lmiui/maml/MultipleRenderable;->add(Lmiui/maml/RendererController$IRenderable;)V

    .line 47
    const-string v0, "RendererCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v2}, Lmiui/maml/MultipleRenderable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfResume()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererCore;->mReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public attach(Lmiui/maml/RenderThread;)V
    .locals 2
    .param p1, "t"    # Lmiui/maml/RenderThread;

    .prologue
    .line 97
    iput-object p1, p0, Lmiui/maml/RendererCore;->mThread:Lmiui/maml/RenderThread;

    .line 98
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/RendererCore;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->attachToRenderThread(Lmiui/maml/RenderThread;)V

    .line 100
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 102
    :cond_0
    return-void
.end method

.method public cleanUp()V
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererCore;->mCleaned:Z

    .line 106
    const-string v0, "RendererCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/RendererCore;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->detachFromRenderThread(Lmiui/maml/RenderThread;)V

    .line 109
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfFinish()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 112
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Lmiui/maml/RendererCore;->cleanUp()V

    .line 117
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 118
    return-void
.end method

.method public getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method public declared-synchronized pauseRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .locals 4
    .param p1, "r"    # Lmiui/maml/RendererController$IRenderable;

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lmiui/maml/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 70
    :cond_1
    :try_start_1
    iget-object v1, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v1, p1}, Lmiui/maml/MultipleRenderable;->pause(Lmiui/maml/RendererController$IRenderable;)I

    move-result v0

    .line 71
    .local v0, "active":I
    if-nez v0, :cond_0

    .line 72
    const-string v1, "RendererCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "self pause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->selfPause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    .end local v0    # "active":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .locals 3
    .param p1, "r"    # Lmiui/maml/RendererController$IRenderable;

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 56
    :cond_1
    :try_start_1
    iget-object v0, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v0, p1}, Lmiui/maml/MultipleRenderable;->remove(Lmiui/maml/RendererController$IRenderable;)V

    .line 57
    const-string v0, "RendererCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v2}, Lmiui/maml/MultipleRenderable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v0}, Lmiui/maml/MultipleRenderable;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfPause()V

    .line 60
    iget-boolean v0, p0, Lmiui/maml/RendererCore;->mReleased:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lmiui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/RendererCore$OnReleaseListener;

    invoke-interface {v0, p0}, Lmiui/maml/RendererCore$OnReleaseListener;->OnRendererCoreReleased(Lmiui/maml/RendererCore;)V

    .line 62
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererCore;->mReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 91
    iget-boolean v0, p0, Lmiui/maml/RendererCore;->mCleaned:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/RendererCore;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public declared-synchronized resumeRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .locals 3
    .param p1, "r"    # Lmiui/maml/RendererController$IRenderable;

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v0, p1}, Lmiui/maml/MultipleRenderable;->resume(Lmiui/maml/RendererController$IRenderable;)I

    .line 82
    const-string v0, "RendererCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "self resume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfResume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnReleaseListener(Lmiui/maml/RendererCore$OnReleaseListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/maml/RendererCore$OnReleaseListener;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    .line 40
    return-void
.end method
