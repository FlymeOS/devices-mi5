.class public Lmiui/os/ServiceManagerUtil;
.super Ljava/lang/Object;
.source "ServiceManagerUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
