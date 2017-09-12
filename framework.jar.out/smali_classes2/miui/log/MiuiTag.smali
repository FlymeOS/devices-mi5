.class public final Lmiui/log/MiuiTag;
.super Ljava/lang/Object;
.source "MiuiTag.java"

# interfaces
.implements Lmiui/log/ILogTag;


# instance fields
.field public final defaultOn:Z

.field public final id:I

.field private isTagOn:Z

.field public final name:Ljava/lang/String;

.field private onNumber:I


# direct methods
.method constructor <init>(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultOn"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lmiui/log/MiuiTag;->id:I

    .line 17
    iput-object p2, p0, Lmiui/log/MiuiTag;->name:Ljava/lang/String;

    .line 18
    iput-boolean p3, p0, Lmiui/log/MiuiTag;->defaultOn:Z

    .line 19
    iput-boolean p3, p0, Lmiui/log/MiuiTag;->isTagOn:Z

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    .line 21
    return-void
.end method


# virtual methods
.method public isOn()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lmiui/log/MiuiTag;->isTagOn:Z

    return v0
.end method

.method public declared-synchronized switchOff()V
    .locals 2

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    .line 38
    iget v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    if-nez v0, :cond_1

    .line 39
    iget-boolean v0, p0, Lmiui/log/MiuiTag;->defaultOn:Z

    iput-boolean v0, p0, Lmiui/log/MiuiTag;->isTagOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 40
    :cond_1
    :try_start_1
    iget v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/log/MiuiTag;->isTagOn:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized switchOn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 28
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    .line 29
    iget v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    if-nez v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lmiui/log/MiuiTag;->defaultOn:Z

    iput-boolean v0, p0, Lmiui/log/MiuiTag;->isTagOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 31
    :cond_1
    :try_start_1
    iget v0, p0, Lmiui/log/MiuiTag;->onNumber:I

    if-ne v0, v1, :cond_0

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/log/MiuiTag;->isTagOn:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
