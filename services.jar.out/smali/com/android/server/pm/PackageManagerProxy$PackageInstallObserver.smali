.class Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field finished:Z

.field result:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    .line 48
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->result:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerProxy$1;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    monitor-enter p0

    .line 58
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->finished:Z

    .line 59
    iput p2, p0, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->result:I

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 61
    monitor-exit p0

    .line 62
    return-void

    .line 61
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
    .line 52
    return-void
.end method
