.class public Lmiui/extension/Extension;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Extension"


# instance fields
.field private ub:Z

.field private final xu:Ljava/lang/String;

.field private final xv:Ljava/lang/String;

.field private final xw:Ljava/lang/String;

.field private xx:Lmiui/extension/invoker/Invoker;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lmiui/extension/Extension;->xu:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lmiui/extension/Extension;->xv:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lmiui/extension/Extension;->xw:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 60
    iget-boolean v0, p0, Lmiui/extension/Extension;->ub:Z

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmiui/extension/Extension;->xw:Ljava/lang/String;

    const-string v1, "()V"

    invoke-static {v0, v1}, Lmiui/reflect/Constructor;->of(Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Constructor;

    move-result-object v0

    .line 65
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmiui/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/extension/invoker/Invoker;

    iput-object v0, p0, Lmiui/extension/Extension;->xx:Lmiui/extension/invoker/Invoker;
    :try_end_0
    .catch Lmiui/reflect/NoSuchClassException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iput-boolean v4, p0, Lmiui/extension/Extension;->ub:Z

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    :try_start_1
    const-string v1, "Extension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to initialize ActivityExecutor, invoker="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/extension/Extension;->xw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    iput-boolean v4, p0, Lmiui/extension/Extension;->ub:Z

    goto :goto_0

    .line 68
    :catch_1
    move-exception v0

    .line 69
    :try_start_2
    const-string v1, "Extension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to initialize ActivityExecutor, invoker="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/extension/Extension;->xw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    iput-boolean v4, p0, Lmiui/extension/Extension;->ub:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lmiui/extension/Extension;->ub:Z

    throw v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmiui/extension/Extension;->xv:Ljava/lang/String;

    return-object v0
.end method

.method public getInvoker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/extension/Extension;->xw:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/extension/Extension;->xu:Ljava/lang/String;

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lmiui/extension/Extension;->xv:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/extension/Extension;->xv:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-direct {p0}, Lmiui/extension/Extension;->initialize()V

    .line 50
    iget-object v0, p0, Lmiui/extension/Extension;->xx:Lmiui/extension/invoker/Invoker;

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    iget-object v0, p0, Lmiui/extension/Extension;->xx:Lmiui/extension/invoker/Invoker;

    invoke-interface {v0, p1, p2}, Lmiui/extension/invoker/Invoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lmiui/reflect/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v1, "Extension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to invoke ActivityExecutor, invoker="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/extension/Extension;->xw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
