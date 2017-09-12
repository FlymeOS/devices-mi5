.class Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver2$Stub;
.source "PackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field finished:Z

.field result:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver2$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerProxy$1;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 38
    monitor-enter p0

    .line 39
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;->finished:Z

    .line 40
    if-ne p2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;->result:Z

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 33
    return-void
.end method
