.class public Lmiui/maml/RendererController;
.super Ljava/lang/Object;
.source "RendererController.java"

# interfaces
.implements Lmiui/maml/FramerateTokenList$FramerateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/RendererController$EmptyListener;,
        Lmiui/maml/RendererController$Listener;,
        Lmiui/maml/RendererController$ISelfUpdateRenderable;,
        Lmiui/maml/RendererController$IRenderable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererController"

.field private static final MAX_MSG_COUNT:I = 0x3


# instance fields
.field private mCurFramerate:F

.field private mFrameTime:J

.field private mFramerateControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/FramerateController;",
            ">;"
        }
    .end annotation
.end field

.field private mFramerateTokenList:Lmiui/maml/FramerateTokenList;

.field private mInited:Z

.field private mLastUpdateSystemTime:J

.field private mListener:Lmiui/maml/RendererController$Listener;

.field private mLock:[B

.field private mMsgLock:Ljava/lang/Object;

.field private mMsgQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z

.field private mPendingRender:Z

.field private mReadRunnableQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderThread:Lmiui/maml/RenderThread;

.field private mSelfPaused:Z

.field private mShouldUpdate:Z

.field private mTouchX:F

.field private mTouchY:F

.field private mWriteRunnableQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteRunnableQueueLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Lmiui/maml/FramerateTokenList;

    invoke-direct {v0}, Lmiui/maml/FramerateTokenList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    .line 93
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/maml/RendererController;->mLock:[B

    .line 100
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/maml/RendererController;->mFrameTime:J

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    .line 107
    iput v2, p0, Lmiui/maml/RendererController;->mTouchX:F

    .line 109
    iput v2, p0, Lmiui/maml/RendererController;->mTouchY:F

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Lmiui/maml/FramerateTokenList;

    invoke-direct {v0, p0}, Lmiui/maml/FramerateTokenList;-><init>(Lmiui/maml/FramerateTokenList$FramerateChangeListener;)V

    iput-object v0, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    .line 119
    return-void
.end method

.method public constructor <init>(Lmiui/maml/RendererController$Listener;)V
    .locals 0
    .param p1, "l"    # Lmiui/maml/RendererController$Listener;

    .prologue
    .line 122
    invoke-direct {p0}, Lmiui/maml/RendererController;-><init>()V

    .line 123
    invoke-virtual {p0, p1}, Lmiui/maml/RendererController;->setListener(Lmiui/maml/RendererController$Listener;)V

    .line 124
    return-void
.end method


# virtual methods
.method public addFramerateController(Lmiui/maml/elements/FramerateController;)V
    .locals 1
    .param p1, "framerateController"    # Lmiui/maml/elements/FramerateController;

    .prologue
    .line 228
    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    invoke-virtual {v0, p1}, Lmiui/maml/FramerateTokenList;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public final doRender()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    .line 270
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->doRender()V

    .line 272
    :cond_0
    return-void
.end method

.method public final doneRender()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    .line 326
    invoke-virtual {p0}, Lmiui/maml/RendererController;->triggerUpdate()V

    .line 327
    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 150
    iget-object v2, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v2

    .line 151
    :try_start_0
    iget-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v1, :cond_0

    .line 152
    monitor-exit v2

    .line 176
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 156
    :try_start_1
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v1}, Lmiui/maml/RendererController$Listener;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    :cond_1
    :goto_1
    :try_start_2
    iget-object v3, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    :try_start_3
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_2

    .line 164
    :goto_2
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 165
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_2

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 174
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    const-string v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 169
    :try_start_7
    iget-object v3, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 170
    :try_start_8
    iget-object v1, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 171
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 173
    const/4 v1, 0x0

    :try_start_9
    iput-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z

    .line 174
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 175
    iget-object v1, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    invoke-virtual {v1}, Lmiui/maml/FramerateTokenList;->clear()V

    goto :goto_0

    .line 171
    :catchall_2
    move-exception v1

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
.end method

.method public final getMessage()Landroid/view/MotionEvent;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 427
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 430
    :goto_0
    return-object v0

    .line 429
    :cond_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 430
    :try_start_0
    iget-object v2, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 430
    :cond_1
    :try_start_1
    iget-object v0, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final hasInited()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    return v0
.end method

.method public final hasMessage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 419
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 422
    :goto_0
    return v0

    .line 421
    :cond_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 422
    :try_start_0
    iget-object v2, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v2, :cond_2

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 422
    :cond_2
    :try_start_1
    iget-object v2, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final hasRunnable()Z
    .locals 3

    .prologue
    .line 463
    iget-object v2, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 464
    :try_start_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 465
    .local v0, "ret":Z
    :goto_0
    monitor-exit v2

    .line 466
    return v0

    .line 464
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 4

    .prologue
    .line 180
    iget-object v2, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v2

    .line 181
    :try_start_0
    iget-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z

    if-eqz v1, :cond_0

    .line 182
    monitor-exit v2

    .line 194
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 186
    :try_start_1
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v1}, Lmiui/maml/RendererController$Listener;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :cond_1
    :goto_1
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lmiui/maml/RendererController;->mInited:Z

    .line 193
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    const-string v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final isSelfPaused()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    return v0
.end method

.method public onFrameRateChage(FF)V
    .locals 1
    .param p1, "old"    # F
    .param p2, "cur"    # F

    .prologue
    .line 496
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lmiui/maml/RendererController;->triggerUpdate()V

    .line 499
    :cond_0
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 401
    if-nez p1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v1, :cond_0

    .line 407
    :try_start_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v1, p1}, Lmiui/maml/RendererController$Listener;->onHover(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 410
    const-string v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 413
    const-string v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 383
    if-nez p1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v1, :cond_0

    .line 389
    :try_start_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v1, p1}, Lmiui/maml/RendererController$Listener;->onTouch(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 392
    const-string v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 395
    const-string v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v1

    .line 202
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPaused:Z

    .line 203
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->pause()V

    .line 208
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final pendingRender()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    return v0
.end method

.method public postMessage(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    .line 435
    iget-object v4, p0, Lmiui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 436
    :try_start_0
    iget-object v3, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    .line 437
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 439
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v5, p0, Lmiui/maml/RendererController;->mTouchX:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v5, p0, Lmiui/maml/RendererController;->mTouchY:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_2

    .line 440
    :cond_1
    iget-object v3, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lmiui/maml/RendererController;->mTouchX:F

    .line 442
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lmiui/maml/RendererController;->mTouchY:F

    .line 444
    :cond_2
    iget-object v3, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v5, 0x3

    if-le v3, v5, :cond_5

    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, "dropEvent":Landroid/view/MotionEvent;
    iget-object v3, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 447
    .local v2, "me":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 448
    move-object v0, v2

    .line 452
    .end local v2    # "me":Landroid/view/MotionEvent;
    :cond_4
    if-eqz v0, :cond_5

    .line 453
    iget-object v3, p0, Lmiui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 457
    .end local v0    # "dropEvent":Landroid/view/MotionEvent;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    invoke-virtual {p0}, Lmiui/maml/RendererController;->triggerUpdate()V

    .line 459
    return-void

    .line 457
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 470
    if-nez p1, :cond_0

    .line 471
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "postRunnable null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 474
    :try_start_0
    iget-object v0, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 475
    iget-object v0, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    invoke-virtual {p0}, Lmiui/maml/RendererController;->requestUpdate()V

    .line 479
    return-void

    .line 476
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeFramerateController(Lmiui/maml/elements/FramerateController;)V
    .locals 1
    .param p1, "framerateController"    # Lmiui/maml/elements/FramerateController;

    .prologue
    .line 235
    iget-object v0, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public final requestUpdate()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    .line 146
    invoke-virtual {p0}, Lmiui/maml/RendererController;->triggerUpdate()V

    .line 147
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 213
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v1

    .line 217
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPaused:Z

    .line 218
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->resume()V

    .line 223
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public runRunnables()V
    .locals 5

    .prologue
    .line 482
    iget-object v4, p0, Lmiui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 483
    :try_start_0
    iget-object v2, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 484
    .local v2, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    iget-object v3, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    iput-object v3, p0, Lmiui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 485
    iput-object v2, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    .line 486
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    iget-object v3, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 488
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 489
    iget-object v3, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 491
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    :cond_0
    iget-object v3, p0, Lmiui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 492
    return-void
.end method

.method public selfPause()V
    .locals 2

    .prologue
    .line 280
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v1

    .line 284
    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-nez v0, :cond_1

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    .line 286
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mPaused:Z

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->pause()V

    .line 292
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public selfResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mInited:Z

    if-nez v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v1, p0, Lmiui/maml/RendererController;->mLock:[B

    monitor-enter v1

    .line 302
    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    if-eqz v0, :cond_2

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererController;->mSelfPaused:Z

    .line 304
    iget-boolean v0, p0, Lmiui/maml/RendererController;->mPaused:Z

    if-nez v0, :cond_2

    .line 305
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->resume()V

    .line 310
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v2}, Lmiui/maml/RenderThread;->setPaused(Z)V

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setListener(Lmiui/maml/RendererController$Listener;)V
    .locals 0
    .param p1, "l"    # Lmiui/maml/RendererController$Listener;

    .prologue
    .line 130
    iput-object p1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    .line 131
    return-void
.end method

.method public setRenderThread(Lmiui/maml/RenderThread;)V
    .locals 0
    .param p1, "renderThread"    # Lmiui/maml/RenderThread;

    .prologue
    .line 136
    iput-object p1, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    .line 137
    return-void
.end method

.method public tick(J)V
    .locals 3
    .param p1, "currentTime"    # J

    .prologue
    .line 370
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    .line 371
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v1, :cond_0

    .line 373
    :try_start_0
    iget-object v1, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v1, p1, p2}, Lmiui/maml/RendererController$Listener;->tick(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_0
    :goto_0
    iput-wide p1, p0, Lmiui/maml/RendererController;->mLastUpdateSystemTime:J

    .line 380
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    const-string v1, "RendererController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public triggerUpdate()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lmiui/maml/RendererController;->mRenderThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->signal()V

    .line 333
    :cond_0
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lmiui/maml/RendererController;->mListener:Lmiui/maml/RendererController$Listener;

    invoke-interface {v0}, Lmiui/maml/RendererController$Listener;->triggerUpdate()V

    .line 336
    :cond_1
    return-void
.end method

.method public update(J)J
    .locals 11
    .param p1, "currentTime"    # J

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    .line 340
    invoke-virtual {p0, p1, p2}, Lmiui/maml/RendererController;->updateFramerate(J)J

    move-result-wide v2

    .line 342
    .local v2, "nextUpdateInterval":J
    iget-wide v6, p0, Lmiui/maml/RendererController;->mFrameTime:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_0

    iget-wide v6, p0, Lmiui/maml/RendererController;->mFrameTime:J

    iget-wide v8, p0, Lmiui/maml/RendererController;->mLastUpdateSystemTime:J

    sub-long v8, p1, v8

    sub-long v4, v6, v8

    .line 344
    .local v4, "timeGap":J
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/RendererController;->hasRunnable()Z

    move-result v1

    .line 345
    .local v1, "hasRunnable":Z
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    iget-boolean v6, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lmiui/maml/RendererController;->hasMessage()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v1, :cond_7

    .line 346
    :cond_1
    iget-boolean v6, p0, Lmiui/maml/RendererController;->mPendingRender:Z

    if-eqz v6, :cond_2

    if-eqz v1, :cond_5

    .line 347
    :cond_2
    invoke-virtual {p0}, Lmiui/maml/RendererController;->runRunnables()V

    .line 348
    invoke-virtual {p0}, Lmiui/maml/RendererController;->getMessage()Landroid/view/MotionEvent;

    move-result-object v0

    .line 349
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_3

    .line 350
    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 351
    invoke-virtual {p0, v0}, Lmiui/maml/RendererController;->onTouch(Landroid/view/MotionEvent;)V

    .line 356
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lmiui/maml/RendererController;->tick(J)V

    .line 357
    invoke-virtual {p0}, Lmiui/maml/RendererController;->doRender()V

    .line 358
    iget-boolean v6, p0, Lmiui/maml/RendererController;->mShouldUpdate:Z

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lmiui/maml/RendererController;->hasMessage()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 359
    :cond_4
    const-wide/16 v2, 0x0

    .line 366
    .end local v0    # "event":Landroid/view/MotionEvent;
    :cond_5
    :goto_1
    return-wide v2

    .line 353
    .restart local v0    # "event":Landroid/view/MotionEvent;
    :cond_6
    invoke-virtual {p0, v0}, Lmiui/maml/RendererController;->onHover(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 362
    .end local v0    # "event":Landroid/view/MotionEvent;
    :cond_7
    cmp-long v6, v4, v2

    if-gez v6, :cond_5

    .line 363
    move-wide v2, v4

    goto :goto_1
.end method

.method public final updateFramerate(J)J
    .locals 13
    .param p1, "time"    # J

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    .line 240
    const-wide v8, 0x7fffffffffffffffL

    .line 241
    .local v8, "nextUpdateInterval":J
    iget-object v5, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 242
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 243
    iget-object v5, p0, Lmiui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/elements/FramerateController;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/FramerateController;->updateFramerate(J)J

    move-result-wide v6

    .line 244
    .local v6, "l":J
    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 245
    move-wide v8, v6

    .line 242
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 248
    .end local v6    # "l":J
    :cond_1
    iget-object v5, p0, Lmiui/maml/RendererController;->mFramerateTokenList:Lmiui/maml/FramerateTokenList;

    invoke-virtual {v5}, Lmiui/maml/FramerateTokenList;->getFramerate()F

    move-result v1

    .line 249
    .local v1, "framerate":F
    iget v5, p0, Lmiui/maml/RendererController;->mCurFramerate:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_3

    .line 255
    iget v5, p0, Lmiui/maml/RendererController;->mCurFramerate:F

    cmpl-float v5, v5, v10

    if-ltz v5, :cond_2

    cmpg-float v5, v1, v10

    if-gez v5, :cond_2

    .line 256
    invoke-virtual {p0}, Lmiui/maml/RendererController;->requestUpdate()V

    .line 258
    :cond_2
    iput v1, p0, Lmiui/maml/RendererController;->mCurFramerate:F

    .line 260
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v5, v1

    float-to-long v2, v5

    .line 261
    .local v2, "frameTime":J
    :goto_1
    iput-wide v2, p0, Lmiui/maml/RendererController;->mFrameTime:J

    .line 264
    .end local v2    # "frameTime":J
    :cond_3
    iget-wide v10, p0, Lmiui/maml/RendererController;->mFrameTime:J

    cmp-long v5, v10, v8

    if-gez v5, :cond_4

    iget-wide v8, p0, Lmiui/maml/RendererController;->mFrameTime:J

    .end local v8    # "nextUpdateInterval":J
    :cond_4
    return-wide v8

    .line 260
    .restart local v8    # "nextUpdateInterval":J
    :cond_5
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_1
.end method
