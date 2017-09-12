.class Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;
.super Ljava/lang/Object;
.source "PackageManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstallAppParam"
.end annotation


# instance fields
.field private msg:Landroid/os/Message;

.field private refH:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->refH:Ljava/lang/ref/WeakReference;

    .line 776
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->msg:Landroid/os/Message;

    .line 777
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->msg:Landroid/os/Message;

    return-object v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->refH:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 782
    const/4 v0, 0x0

    .line 784
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->refH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    goto :goto_0
.end method
