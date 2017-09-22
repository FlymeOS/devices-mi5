.class Lmiui/util/async/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/async/a$a;,
        Lmiui/util/async/a$b;
    }
.end annotation


# static fields
.field private static final Jc:Lmiui/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$Pool",
            "<",
            "Lmiui/util/async/a$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Jd:Lmiui/util/async/TaskManager;

.field private Je:Lmiui/util/async/a$a;

.field private Jf:Lmiui/util/concurrent/ConcurrentRingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/ConcurrentRingQueue",
            "<",
            "Lmiui/util/async/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lmiui/util/async/a$1;

    invoke-direct {v0}, Lmiui/util/async/a$1;-><init>()V

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lmiui/util/Pools;->createSimplePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lmiui/util/async/a;->Jc:Lmiui/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Lmiui/util/async/TaskManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lmiui/util/async/a;->Jd:Lmiui/util/async/TaskManager;

    .line 132
    new-instance v0, Lmiui/util/async/a$a;

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/util/async/a$a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/util/async/a;->Je:Lmiui/util/async/a$a;

    .line 134
    new-instance v0, Lmiui/util/concurrent/ConcurrentRingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1, v2, v2}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object v0, p0, Lmiui/util/async/a;->Jf:Lmiui/util/concurrent/ConcurrentRingQueue;

    .line 135
    return-void
.end method

.method static synthetic a(Lmiui/util/async/a;Lmiui/util/async/a$a;)Lmiui/util/async/a$a;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lmiui/util/async/a;->Je:Lmiui/util/async/a$a;

    return-object p1
.end method

.method static synthetic a(Lmiui/util/async/a;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lmiui/util/async/a;->dm()V

    return-void
.end method

.method private dm()V
    .locals 5

    .prologue
    .line 212
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/a;->Je:Lmiui/util/async/a$a;

    invoke-virtual {v1}, Lmiui/util/async/a$a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/util/async/a;->Jf:Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {v0}, Lmiui/util/concurrent/ConcurrentRingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    iget-object v0, p0, Lmiui/util/async/a;->Jf:Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {v0}, Lmiui/util/concurrent/ConcurrentRingQueue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/a$b;

    .line 215
    if-eqz v0, :cond_0

    .line 220
    iget-object v1, v0, Lmiui/util/async/a$b;->Jj:Lmiui/util/async/Task;

    iget-object v2, p0, Lmiui/util/async/a;->Jd:Lmiui/util/async/TaskManager;

    iget-object v3, v0, Lmiui/util/async/a$b;->Jk:Lmiui/util/async/Task$Delivery;

    iget-object v4, v0, Lmiui/util/async/a$b;->Jl:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lmiui/util/async/Task;->a(Lmiui/util/async/TaskManager;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    .line 221
    sget-object v1, Lmiui/util/async/a;->Jc:Lmiui/util/Pools$Pool;

    invoke-interface {v1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lmiui/util/async/a;->Je:Lmiui/util/async/a$a;

    invoke-virtual {v0, p0}, Lmiui/util/async/a$a;->b(Lmiui/util/async/a;)V

    .line 227
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task",
            "<*>;",
            "Lmiui/util/async/Task$Delivery;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 180
    sget-object v0, Lmiui/util/async/a;->Jc:Lmiui/util/Pools$Pool;

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/a$b;

    .line 181
    iput-object p1, v0, Lmiui/util/async/a$b;->Jj:Lmiui/util/async/Task;

    .line 182
    iput-object p2, v0, Lmiui/util/async/a$b;->Jk:Lmiui/util/async/Task$Delivery;

    .line 183
    iput-object p3, v0, Lmiui/util/async/a$b;->Jl:Ljava/lang/Object;

    .line 185
    sget-object v1, Lmiui/util/async/Task$Delivery;->IW:Lmiui/util/async/Task$Delivery;

    if-ne p2, v1, :cond_0

    if-nez p3, :cond_0

    .line 192
    iget-object v1, p0, Lmiui/util/async/a;->Jf:Lmiui/util/concurrent/ConcurrentRingQueue;

    new-instance v2, Lmiui/util/async/a$3;

    invoke-direct {v2, p0, p1}, Lmiui/util/async/a$3;-><init>(Lmiui/util/async/a;Lmiui/util/async/Task;)V

    invoke-virtual {v1, v2}, Lmiui/util/concurrent/ConcurrentRingQueue;->remove(Lmiui/util/concurrent/Queue$Predicate;)I

    .line 204
    :cond_0
    iget-object v1, p0, Lmiui/util/async/a;->Jf:Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {v1, v0}, Lmiui/util/concurrent/ConcurrentRingQueue;->put(Ljava/lang/Object;)Z

    .line 205
    invoke-direct {p0}, Lmiui/util/async/a;->dm()V

    .line 206
    return-void
.end method

.method public setCallbackThread(Z)V
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 150
    if-eqz p1, :cond_1

    iget-object v1, p0, Lmiui/util/async/a;->Je:Lmiui/util/async/a$a;

    invoke-virtual {v1}, Lmiui/util/async/a$a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 151
    iget-object v1, p0, Lmiui/util/async/a;->Je:Lmiui/util/async/a$a;

    invoke-virtual {v1}, Lmiui/util/async/a$a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 152
    new-instance v1, Lmiui/util/async/a$a;

    invoke-direct {v1, v0}, Lmiui/util/async/a$a;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/util/async/a;->Je:Lmiui/util/async/a$a;

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    if-nez p1, :cond_0

    iget-object v1, p0, Lmiui/util/async/a;->Je:Lmiui/util/async/a$a;

    invoke-virtual {v1}, Lmiui/util/async/a$a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 154
    new-instance v0, Lmiui/util/async/a$2;

    invoke-direct {v0, p0}, Lmiui/util/async/a$2;-><init>(Lmiui/util/async/a;)V

    .line 163
    const-string v1, "TaskInfoDeliverer-Callback"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
