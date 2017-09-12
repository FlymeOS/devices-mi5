.class public abstract Lmiui/maml/RenderUpdater;
.super Ljava/lang/Object;
.source "RenderUpdater.java"

# interfaces
.implements Lmiui/maml/RendererController$ISelfUpdateRenderable;


# instance fields
.field private mAutoCleanup:Z

.field private mCreateTime:J

.field private mDelay:J

.field private mHandler:Landroid/os/Handler;

.field protected mLastUpdateTime:J

.field protected mNextUpdateInterval:J

.field private mPaused:Z

.field protected mPendingRender:Z

.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field private mRunUpdater:Ljava/lang/Runnable;

.field private mSignaled:Z

.field private mStarted:Z

.field private mUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;)V
    .locals 1
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/RenderUpdater;-><init>(Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V
    .locals 1
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "autoCleanup"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lmiui/maml/RenderUpdater$1;

    invoke-direct {v0, p0}, Lmiui/maml/RenderUpdater$1;-><init>(Lmiui/maml/RenderUpdater;)V

    iput-object v0, p0, Lmiui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Lmiui/maml/RenderUpdater$2;

    invoke-direct {v0, p0}, Lmiui/maml/RenderUpdater$2;-><init>(Lmiui/maml/RenderUpdater;)V

    iput-object v0, p0, Lmiui/maml/RenderUpdater;->mRunUpdater:Ljava/lang/Runnable;

    .line 24
    iput-object p1, p0, Lmiui/maml/RenderUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 25
    iput-object p2, p0, Lmiui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    .line 26
    iput-boolean p3, p0, Lmiui/maml/RenderUpdater;->mAutoCleanup:Z

    .line 27
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/RenderUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/RenderUpdater;

    .prologue
    .line 7
    iget-boolean v0, p0, Lmiui/maml/RenderUpdater;->mSignaled:Z

    return v0
.end method

.method static synthetic access$002(Lmiui/maml/RenderUpdater;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/maml/RenderUpdater;
    .param p1, "x1"    # Z

    .prologue
    .line 7
    iput-boolean p1, p0, Lmiui/maml/RenderUpdater;->mSignaled:Z

    return p1
.end method

.method static synthetic access$100(Lmiui/maml/RenderUpdater;)Lmiui/maml/ScreenElementRoot;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/RenderUpdater;

    .prologue
    .line 7
    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/RenderUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/RenderUpdater;

    .prologue
    .line 7
    iget-boolean v0, p0, Lmiui/maml/RenderUpdater;->mPaused:Z

    return v0
.end method

.method static synthetic access$300(Lmiui/maml/RenderUpdater;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/RenderUpdater;

    .prologue
    .line 7
    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/maml/RenderUpdater;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/RenderUpdater;

    .prologue
    .line 7
    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/maml/RenderUpdater;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/RenderUpdater;

    .prologue
    .line 7
    invoke-direct {p0}, Lmiui/maml/RenderUpdater;->doRunUpdater()V

    return-void
.end method

.method static synthetic access$602(Lmiui/maml/RenderUpdater;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/maml/RenderUpdater;
    .param p1, "x1"    # Z

    .prologue
    .line 7
    iput-boolean p1, p0, Lmiui/maml/RenderUpdater;->mStarted:Z

    return p1
.end method

.method private checkDelay()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 91
    iget-wide v4, p0, Lmiui/maml/RenderUpdater;->mDelay:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-wide v2

    .line 94
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lmiui/maml/RenderUpdater;->mCreateTime:J

    sub-long v0, v4, v6

    .line 95
    .local v0, "elapsed":J
    iget-wide v4, p0, Lmiui/maml/RenderUpdater;->mDelay:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    iget-wide v2, p0, Lmiui/maml/RenderUpdater;->mDelay:J

    sub-long/2addr v2, v0

    goto :goto_0
.end method

.method private doRunUpdater()V
    .locals 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lmiui/maml/RenderUpdater;->mSignaled:Z

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mSignaled:Z

    .line 86
    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mPaused:Z

    .line 118
    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfFinish()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mSignaled:Z

    .line 120
    return-void
.end method

.method public final doRender()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mPendingRender:Z

    .line 57
    invoke-virtual {p0}, Lmiui/maml/RenderUpdater;->doRenderImp()V

    .line 58
    return-void
.end method

.method protected abstract doRenderImp()V
.end method

.method public doneRender()V
    .locals 8

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mPendingRender:Z

    .line 110
    iget-boolean v0, p0, Lmiui/maml/RenderUpdater;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/maml/RenderUpdater;->mSignaled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lmiui/maml/RenderUpdater;->mNextUpdateInterval:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 111
    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/RenderUpdater;->mUpdater:Ljava/lang/Runnable;

    iget-wide v2, p0, Lmiui/maml/RenderUpdater;->mNextUpdateInterval:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lmiui/maml/RenderUpdater;->mLastUpdateTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 142
    iget-boolean v0, p0, Lmiui/maml/RenderUpdater;->mAutoCleanup:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lmiui/maml/RenderUpdater;->cleanUp()V

    .line 145
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 146
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mPaused:Z

    .line 136
    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p0}, Lmiui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lmiui/maml/RendererController$IRenderable;)V

    .line 137
    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfInit()V

    .line 138
    return-void
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lmiui/maml/RenderUpdater;->mStarted:Z

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfPause()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mSignaled:Z

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mPaused:Z

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mPaused:Z

    .line 130
    iget-object v0, p0, Lmiui/maml/RenderUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfResume()V

    .line 131
    invoke-virtual {p0}, Lmiui/maml/RenderUpdater;->runUpdater()V

    .line 132
    return-void
.end method

.method public runUpdater()V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 71
    iget-boolean v4, p0, Lmiui/maml/RenderUpdater;->mStarted:Z

    if-eqz v4, :cond_1

    move-wide v0, v2

    .line 72
    .local v0, "delayToRun":J
    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 73
    iget-object v2, p0, Lmiui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/RenderUpdater;->mRunUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    iget-object v2, p0, Lmiui/maml/RenderUpdater;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/RenderUpdater;->mRunUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    :cond_0
    :goto_1
    return-void

    .line 71
    .end local v0    # "delayToRun":J
    :cond_1
    invoke-direct {p0}, Lmiui/maml/RenderUpdater;->checkDelay()J

    move-result-wide v0

    goto :goto_0

    .line 77
    .restart local v0    # "delayToRun":J
    :cond_2
    invoke-direct {p0}, Lmiui/maml/RenderUpdater;->doRunUpdater()V

    .line 78
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/RenderUpdater;->mStarted:Z

    goto :goto_1
.end method

.method public setAutoCleanup(Z)V
    .locals 0
    .param p1, "autoCleanup"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lmiui/maml/RenderUpdater;->mAutoCleanup:Z

    .line 39
    return-void
.end method

.method public setStartDelay(JJ)V
    .locals 5
    .param p1, "create"    # J
    .param p3, "delay"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lmiui/maml/RenderUpdater;->mCreateTime:J

    .line 31
    iput-wide p3, p0, Lmiui/maml/RenderUpdater;->mDelay:J

    .line 32
    iget-wide v0, p0, Lmiui/maml/RenderUpdater;->mDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderUpdater;->mStarted:Z

    .line 35
    :cond_0
    return-void
.end method

.method public triggerUpdate()V
    .locals 0

    .prologue
    .line 105
    invoke-virtual {p0}, Lmiui/maml/RenderUpdater;->runUpdater()V

    .line 106
    return-void
.end method
