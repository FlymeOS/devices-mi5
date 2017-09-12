.class public Lcom/android/commands/pm/IActivityManagerCompat;
.super Ljava/lang/Object;
.source "IActivityManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startActivity(Landroid/content/Intent;)I
    .locals 13
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 13
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 14
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v12

    .line 15
    .local v12, "userInfo":Landroid/content/pm/UserInfo;
    const-string v2, "pm"

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    move-object v3, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move v8, v7

    move-object v9, v1

    move-object v10, v1

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v1

    return v1
.end method
