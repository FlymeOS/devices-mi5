.class Lcom/bumptech/glide/load/engine/executor/c;
.super Ljava/lang/Thread;
.source "FifoPriorityThreadPoolExecutor.java"


# instance fields
.field final synthetic aSm:Lcom/bumptech/glide/load/engine/executor/b;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/b;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/executor/c;->aSm:Lcom/bumptech/glide/load/engine/executor/b;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 117
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 118
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 119
    return-void
.end method
