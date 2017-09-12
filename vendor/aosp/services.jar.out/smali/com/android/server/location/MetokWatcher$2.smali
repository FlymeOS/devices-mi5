.class Lcom/android/server/location/MetokWatcher$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "MetokWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/MetokWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/MetokWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/location/MetokWatcher;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # getter for: Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$000(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 233
    :try_start_0
    const-string v0, "com.xiaomi.metok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # invokes: Lcom/android/server/location/MetokWatcher;->unbindLocked()V
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$100(Lcom/android/server/location/MetokWatcher;)V

    .line 236
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    const-string v2, "com.xiaomi.metok"

    # invokes: Lcom/android/server/location/MetokWatcher;->bindPackageLocked(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/android/server/location/MetokWatcher;->access$200(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;)Z

    .line 238
    :cond_0
    monitor-exit v1

    .line 239
    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # getter for: Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$000(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 254
    :try_start_0
    const-string v0, "com.xiaomi.metok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # invokes: Lcom/android/server/location/MetokWatcher;->unbindLocked()V
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$100(Lcom/android/server/location/MetokWatcher;)V

    .line 257
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    const-string v2, "com.xiaomi.metok"

    # invokes: Lcom/android/server/location/MetokWatcher;->bindPackageLocked(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/android/server/location/MetokWatcher;->access$200(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;)Z

    .line 259
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 259
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # getter for: Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$000(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 244
    :try_start_0
    const-string v0, "com.xiaomi.metok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # invokes: Lcom/android/server/location/MetokWatcher;->unbindLocked()V
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$100(Lcom/android/server/location/MetokWatcher;)V

    .line 246
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    const-string v2, "com.xiaomi.metok"

    # invokes: Lcom/android/server/location/MetokWatcher;->bindPackageLocked(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/android/server/location/MetokWatcher;->access$200(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;)Z

    .line 248
    :cond_0
    monitor-exit v1

    .line 249
    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # getter for: Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$000(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 222
    :try_start_0
    const-string v0, "com.xiaomi.metok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # invokes: Lcom/android/server/location/MetokWatcher;->unbindLocked()V
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$100(Lcom/android/server/location/MetokWatcher;)V

    .line 225
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    const-string v2, "com.xiaomi.metok"

    # invokes: Lcom/android/server/location/MetokWatcher;->bindPackageLocked(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/android/server/location/MetokWatcher;->access$200(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;)Z

    .line 227
    :cond_0
    monitor-exit v1

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
