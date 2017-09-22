.class Lcom/android/settings/cl;
.super Ljava/lang/Object;
.source "DeviceAdminAddFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic lg:Lcom/android/settings/DeviceAdminAddFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminAddFragment;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/settings/cl;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 212
    iget-object v0, p0, Lcom/android/settings/cl;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    iget-boolean v0, v0, Lcom/android/settings/DeviceAdminAddFragment;->kU:Z

    if-eqz v0, :cond_1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/cl;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAddFragment;->ds:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/cl;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminAddFragment;->kH:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cl;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    iget-boolean v2, v2, Lcom/android/settings/DeviceAdminAddFragment;->kV:Z

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/cl;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAddFragment;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/cl;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    invoke-virtual {v0}, Lcom/android/settings/DeviceAdminAddFragment;->finish()V

    .line 254
    :goto_1
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 219
    const-string v1, "DeviceAdminAdd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception trying to activate admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cl;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    iget-object v3, v3, Lcom/android/settings/DeviceAdminAddFragment;->kH:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    iget-object v0, p0, Lcom/android/settings/cl;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAddFragment;->ds:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/cl;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminAddFragment;->kH:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/cl;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    invoke-virtual {v0, v4}, Lcom/android/settings/DeviceAdminAddFragment;->setResult(I)V

    goto :goto_0

    .line 230
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    :goto_2
    iget-object v0, p0, Lcom/android/settings/cl;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAddFragment;->ds:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/cl;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminAddFragment;->kH:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    new-instance v2, Lcom/android/settings/DeviceAdminAddFragment$3$1;

    iget-object v3, p0, Lcom/android/settings/cl;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    iget-object v3, v3, Lcom/android/settings/DeviceAdminAddFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/DeviceAdminAddFragment$3$1;-><init>(Lcom/android/settings/cl;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    goto :goto_1

    .line 231
    :catch_1
    move-exception v0

    goto :goto_2
.end method
