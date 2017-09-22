.class Lcom/android/b/b/v;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/b/b/C;


# instance fields
.field final synthetic aJu:Lcom/android/b/b/t;


# direct methods
.method private constructor <init>(Lcom/android/b/b/t;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/b/b/v;->aJu:Lcom/android/b/b/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/b/b/t;Lcom/android/b/b/u;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/b/b/v;-><init>(Lcom/android/b/b/t;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .prologue
    .line 154
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 157
    iget-object v0, p0, Lcom/android/b/b/v;->aJu:Lcom/android/b/b/t;

    invoke-static {v0}, Lcom/android/b/b/t;->b(Lcom/android/b/b/t;)Lcom/android/b/b/Q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/b/b/Q;->ea(I)V

    .line 159
    iget-object v0, p0, Lcom/android/b/b/v;->aJu:Lcom/android/b/b/t;

    invoke-static {v0}, Lcom/android/b/b/t;->c(Lcom/android/b/b/t;)Ljava/util/Collection;

    move-result-object v2

    monitor-enter v2

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/b/b/v;->aJu:Lcom/android/b/b/t;

    invoke-static {v0}, Lcom/android/b/b/t;->c(Lcom/android/b/b/t;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/g;

    .line 161
    invoke-interface {v0, v1}, Lcom/android/b/b/g;->bj(I)V

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    iget-object v0, p0, Lcom/android/b/b/v;->aJu:Lcom/android/b/b/t;

    invoke-static {v0}, Lcom/android/b/b/t;->d(Lcom/android/b/b/t;)Lcom/android/b/b/J;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/b/b/J;->bj(I)V

    .line 166
    return-void
.end method
