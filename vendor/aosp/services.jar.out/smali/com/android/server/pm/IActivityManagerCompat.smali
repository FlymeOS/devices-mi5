.class public Lcom/android/server/pm/IActivityManagerCompat;
.super Ljava/lang/Object;
.source "IActivityManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startService(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 17
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method
