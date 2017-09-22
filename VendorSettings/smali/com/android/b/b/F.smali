.class Lcom/android/b/b/F;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/b/b/C;


# instance fields
.field final synthetic aJu:Lcom/android/b/b/t;

.field private final mStarted:Z


# direct methods
.method constructor <init>(Lcom/android/b/b/t;Z)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/b/b/F;->aJu:Lcom/android/b/b/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-boolean p2, p0, Lcom/android/b/b/F;->mStarted:Z

    .line 174
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/b/b/F;->aJu:Lcom/android/b/b/t;

    invoke-static {v0}, Lcom/android/b/b/t;->c(Lcom/android/b/b/t;)Ljava/util/Collection;

    move-result-object v1

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/b/b/F;->aJu:Lcom/android/b/b/t;

    invoke-static {v0}, Lcom/android/b/b/t;->c(Lcom/android/b/b/t;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/g;

    .line 179
    iget-boolean v3, p0, Lcom/android/b/b/F;->mStarted:Z

    invoke-interface {v0, v3}, Lcom/android/b/b/g;->aB(Z)V

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    iget-object v0, p0, Lcom/android/b/b/F;->aJu:Lcom/android/b/b/t;

    invoke-static {v0}, Lcom/android/b/b/t;->d(Lcom/android/b/b/t;)Lcom/android/b/b/J;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/b/b/F;->mStarted:Z

    invoke-virtual {v0, v1}, Lcom/android/b/b/J;->aB(Z)V

    .line 183
    return-void
.end method
