.class public Lmiui/util/concurrent/ConcurrentRingQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/util/concurrent/Queue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/concurrent/ConcurrentRingQueue$1;,
        Lmiui/util/concurrent/ConcurrentRingQueue$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiui/util/concurrent/Queue",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private KC:I

.field private final KD:Z

.field private final KF:Z

.field private final KJ:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile KK:Lmiui/util/concurrent/ConcurrentRingQueue$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/ConcurrentRingQueue$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final KL:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile KO:Lmiui/util/concurrent/ConcurrentRingQueue$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/ConcurrentRingQueue$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile KQ:I


# direct methods
.method public constructor <init>(IZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KC:I

    .line 46
    iput-boolean p2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KD:Z

    .line 47
    iput-boolean p3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KF:Z

    .line 48
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KJ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KL:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    new-instance v1, Lmiui/util/concurrent/ConcurrentRingQueue$a;

    invoke-direct {v1, v3}, Lmiui/util/concurrent/ConcurrentRingQueue$a;-><init>(Lmiui/util/concurrent/ConcurrentRingQueue$1;)V

    iput-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KK:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    .line 52
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KK:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    iput-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KO:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    .line 53
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KK:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    .line 54
    :goto_0
    if-ge v0, p1, :cond_0

    .line 55
    new-instance v2, Lmiui/util/concurrent/ConcurrentRingQueue$a;

    invoke-direct {v2, v3}, Lmiui/util/concurrent/ConcurrentRingQueue$a;-><init>(Lmiui/util/concurrent/ConcurrentRingQueue$1;)V

    iput-object v2, v1, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KT:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    .line 56
    iget-object v1, v1, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KT:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KK:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    iput-object v0, v1, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KT:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    .line 59
    return-void
.end method


# virtual methods
.method public clear()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KJ:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 162
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KK:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    move v1, v2

    :goto_1
    iget-object v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KO:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    if-eq v0, v3, :cond_2

    .line 169
    const/4 v3, 0x0

    iput-object v3, v0, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KS:Ljava/lang/Object;

    .line 170
    add-int/lit8 v1, v1, 0x1

    .line 168
    iget-object v0, v0, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KT:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    goto :goto_1

    .line 173
    :cond_2
    iput-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KK:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    .line 175
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 176
    return v1
.end method

.method public decreaseCapacity(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-boolean v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KF:Z

    if-eqz v0, :cond_0

    if-gtz p1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KL:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KL:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 223
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 222
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KL:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_1

    .line 226
    :cond_3
    iget v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KC:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KC:I

    .line 227
    iput p1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KQ:I

    .line 229
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KL:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 97
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KJ:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 97
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0

    .line 102
    :cond_1
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KK:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    .line 103
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KO:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    move-object v2, v3

    :goto_1
    if-nez v2, :cond_2

    if-eq v1, v0, :cond_2

    .line 104
    iget-object v2, v1, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KS:Ljava/lang/Object;

    .line 105
    iput-object v3, v1, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KS:Ljava/lang/Object;

    .line 103
    iget-object v1, v1, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KT:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KO:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    goto :goto_1

    .line 107
    :cond_2
    if-eqz v2, :cond_3

    .line 108
    iput-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KK:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    .line 110
    :cond_3
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 111
    return-object v2
.end method

.method public getCapacity()I
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KQ:I

    if-lez v0, :cond_0

    iget v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KC:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KC:I

    goto :goto_0
.end method

.method public increaseCapacity(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-boolean v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KD:Z

    if-nez v0, :cond_0

    if-gtz p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KL:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KL:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 202
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 201
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KL:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_1

    .line 205
    :cond_3
    neg-int v0, p1

    iput v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KQ:I

    .line 206
    iget v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KC:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KC:I

    .line 208
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KL:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KO:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KK:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return v1

    .line 67
    :cond_0
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KL:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    :goto_1
    if-nez v2, :cond_1

    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KL:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 68
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 67
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KL:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    goto :goto_1

    .line 72
    :cond_2
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KK:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    .line 73
    iget-object v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KO:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    .line 74
    iget v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KQ:I

    .line 75
    iget-object v5, v3, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KT:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    if-eq v5, v2, :cond_4

    .line 76
    iput-object p1, v3, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KS:Ljava/lang/Object;

    .line 77
    iget-object v5, v3, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KT:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    iget-object v5, v5, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KT:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    if-eq v5, v2, :cond_3

    iget-boolean v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KF:Z

    if-eqz v2, :cond_3

    if-lez v4, :cond_3

    .line 78
    iget-object v2, v3, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KT:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    iget-object v2, v2, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KT:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    iput-object v2, v3, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KT:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    .line 79
    add-int/lit8 v2, v4, -0x1

    iput v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KQ:I

    .line 81
    :cond_3
    iget-object v2, v3, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KT:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    iput-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KO:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    .line 91
    :goto_2
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KL:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move v1, v0

    .line 92
    goto :goto_0

    .line 83
    :cond_4
    iget-boolean v5, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KD:Z

    if-nez v5, :cond_5

    if-gez v4, :cond_6

    .line 84
    :cond_5
    new-instance v5, Lmiui/util/concurrent/ConcurrentRingQueue$a;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lmiui/util/concurrent/ConcurrentRingQueue$a;-><init>(Lmiui/util/concurrent/ConcurrentRingQueue$1;)V

    iput-object v5, v3, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KT:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    .line 85
    iget-object v5, v3, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KT:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    iput-object v2, v5, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KT:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    .line 86
    iput-object p1, v3, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KS:Ljava/lang/Object;

    .line 87
    add-int/lit8 v2, v4, 0x1

    iput v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KQ:I

    .line 88
    iget-object v2, v3, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KT:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    iput-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KO:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public remove(Lmiui/util/concurrent/Queue$Predicate;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/concurrent/Queue$Predicate",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 138
    if-nez p1, :cond_0

    .line 157
    :goto_0
    return v0

    .line 142
    :cond_0
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    :goto_1
    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KJ:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 142
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    goto :goto_1

    .line 148
    :cond_2
    :try_start_0
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KK:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    move-object v2, v1

    move v1, v0

    :goto_2
    iget-object v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KO:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    if-eq v2, v3, :cond_4

    .line 149
    iget-object v3, v2, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KS:Ljava/lang/Object;

    invoke-interface {p1, v3}, Lmiui/util/concurrent/Queue$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    const/4 v3, 0x0

    iput-object v3, v2, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KS:Ljava/lang/Object;

    .line 151
    add-int/lit8 v1, v1, 0x1

    .line 148
    :cond_3
    iget-object v2, v2, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KT:Lmiui/util/concurrent/ConcurrentRingQueue$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 155
    :cond_4
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move v0, v1

    .line 157
    goto :goto_0

    .line 155
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 116
    if-nez p1, :cond_0

    .line 133
    :goto_0
    return v1

    .line 120
    :cond_0
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KJ:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 120
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_1

    .line 125
    :cond_2
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KK:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    :goto_2
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KO:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    if-eq v0, v2, :cond_4

    .line 126
    iget-object v2, v0, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KS:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    const/4 v2, 0x0

    iput-object v2, v0, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KS:Ljava/lang/Object;

    .line 128
    const/4 v0, 0x1

    .line 132
    :goto_3
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->KJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move v1, v0

    .line 133
    goto :goto_0

    .line 125
    :cond_3
    iget-object v0, v0, Lmiui/util/concurrent/ConcurrentRingQueue$a;->KT:Lmiui/util/concurrent/ConcurrentRingQueue$a;

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3
.end method
