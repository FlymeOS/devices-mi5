.class public Lmiui/os/MiuiPowerManager;
.super Ljava/lang/Object;
.source "MiuiPowerManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reboot(ZLjava/lang/String;Z)V
    .locals 2
    .param p0, "confim"    # Z
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "wait"    # Z

    .prologue
    .line 15
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 17
    .local v0, "powermanager":Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p0, p1, p2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .end local v0    # "powermanager":Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v1

    goto :goto_0
.end method
