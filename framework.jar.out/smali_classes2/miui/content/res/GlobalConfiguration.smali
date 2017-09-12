.class public Lmiui/content/res/GlobalConfiguration;
.super Ljava/lang/Object;
.source "GlobalConfiguration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/content/res/Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public static getExtraConfig(Landroid/content/res/Configuration;)Landroid/content/res/MiuiConfiguration;
    .locals 1
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 25
    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    return-object v0
.end method

.method public static update(Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "configuration"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 22
    return-void
.end method
