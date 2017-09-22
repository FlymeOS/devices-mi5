.class Lmiui/util/async/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final Jd:Lmiui/util/async/TaskManager;

.field private volatile Jt:Z

.field private final Ju:Lmiui/util/async/b;


# direct methods
.method public constructor <init>(Lmiui/util/async/TaskManager;Lmiui/util/async/b;I)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 39
    iput-object p1, p0, Lmiui/util/async/c;->Jd:Lmiui/util/async/TaskManager;

    .line 40
    iput-object p2, p0, Lmiui/util/async/c;->Ju:Lmiui/util/async/b;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/async/c;->Jt:Z

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskThread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/util/async/c;->setName(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private static a(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Ljava/lang/Thread;",
            "Lmiui/util/async/Task",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 103
    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 104
    sget-object v0, Lmiui/util/async/Task$Status;->Executing:Lmiui/util/async/Task$Status;

    invoke-virtual {p2, v0, v2}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p2, p1}, Lmiui/util/async/Task;->a(Ljava/lang/Thread;)V

    .line 109
    :try_start_0
    invoke-virtual {p2}, Lmiui/util/async/Task;->doLoad()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :try_start_1
    sget-object v3, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "result is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2, v3, v1}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    .line 125
    :goto_1
    invoke-virtual {p0}, Lmiui/util/async/TaskManager;->dp()Lmiui/util/cache/Cache;

    move-result-object v3

    .line 126
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    instance-of v0, p2, Lmiui/util/async/Cacheable;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 127
    check-cast v0, Lmiui/util/async/Cacheable;

    .line 128
    invoke-interface {v0}, Lmiui/util/async/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    .line 129
    if-eqz v4, :cond_0

    .line 134
    invoke-interface {v0}, Lmiui/util/async/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1}, Lmiui/util/async/Cacheable;->sizeOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v3, v4, v1, v0}, Lmiui/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 138
    :cond_0
    invoke-virtual {p2, v2}, Lmiui/util/async/Task;->a(Ljava/lang/Thread;)V

    .line 140
    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    .line 115
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 122
    :goto_2
    sget-object v3, Lmiui/util/async/Task$Status;->Done:Lmiui/util/async/Task$Status;

    new-instance v4, Lmiui/util/async/TaskExecutingException;

    invoke-direct {v4, v1}, Lmiui/util/async/TaskExecutingException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p2, v3, v4}, Lmiui/util/async/Task;->a(Lmiui/util/async/Task$Status;Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_1

    .line 116
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static a(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lmiui/util/async/c$1;

    invoke-direct {v0, p0, p1}, Lmiui/util/async/c$1;-><init>(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V

    .line 59
    const-string v1, "TaskThread-RealTime"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method

.method static synthetic b(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, Lmiui/util/async/c;->a(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lmiui/util/async/c;->Ju:Lmiui/util/async/b;

    .line 77
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lmiui/util/async/c;->Jt:Z

    if-nez v1, :cond_1

    .line 82
    invoke-virtual {v0}, Lmiui/util/async/b;->ds()Lmiui/util/async/Task;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    .line 89
    iget-object v2, p0, Lmiui/util/async/c;->Jd:Lmiui/util/async/TaskManager;

    invoke-static {v2, p0, v1}, Lmiui/util/async/c;->a(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V

    .line 90
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lmiui/util/async/c;->setPriority(I)V

    goto :goto_0

    .line 93
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/async/c;->Jt:Z

    .line 68
    invoke-virtual {p0}, Lmiui/util/async/c;->interrupt()V

    .line 69
    return-void
.end method
