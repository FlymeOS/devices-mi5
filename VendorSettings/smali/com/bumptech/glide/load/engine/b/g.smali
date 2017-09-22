.class Lcom/bumptech/glide/load/engine/b/g;
.super Ljava/lang/Object;
.source "DiskCacheWriteLocker.java"


# instance fields
.field final aRU:Ljava/util/concurrent/locks/Lock;

.field aRV:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/g;->aRU:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/b/f;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/b/g;-><init>()V

    return-void
.end method
