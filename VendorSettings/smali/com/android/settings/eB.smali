.class Lcom/android/vendorsettings/eB;
.super Landroid/os/AsyncTask;
.source "MiuiMasterClear.java"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field final synthetic rw:Lcom/android/vendorsettings/MiuiMasterClear;

.field private rx:Lmiui/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/MiuiMasterClear;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/vendorsettings/eB;->rw:Lcom/android/vendorsettings/MiuiMasterClear;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 489
    iput-object p2, p0, Lcom/android/vendorsettings/eB;->mAppContext:Landroid/content/Context;

    .line 490
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 501
    iget-object v1, p0, Lcom/android/vendorsettings/eB;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->obtain(Landroid/content/Context;)Lmiui/cloud/finddevice/FindDeviceStatusManager;

    move-result-object v2

    .line 504
    :try_start_0
    invoke-virtual {v2}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->isOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 512
    invoke-virtual {v2}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    :goto_0
    return-object v0

    .line 505
    :catch_0
    move-exception v1

    .line 506
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    invoke-virtual {v2}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    goto :goto_0

    .line 508
    :catch_1
    move-exception v1

    .line 509
    const/4 v3, 0x1

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 512
    invoke-virtual {v2}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 485
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/eB;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/vendorsettings/eB;->rx:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 522
    iget-object v0, p0, Lcom/android/vendorsettings/eB;->rw:Lcom/android/vendorsettings/MiuiMasterClear;

    invoke-virtual {v0}, Lcom/android/vendorsettings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/eB;->rw:Lcom/android/vendorsettings/MiuiMasterClear;

    invoke-virtual {v0}, Lcom/android/vendorsettings/MiuiMasterClear;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    if-nez p1, :cond_2

    .line 527
    iget-object v0, p0, Lcom/android/vendorsettings/eB;->rw:Lcom/android/vendorsettings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiMasterClear;->d(Lcom/android/vendorsettings/MiuiMasterClear;)V

    goto :goto_0

    .line 531
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 532
    iget-object v0, p0, Lcom/android/vendorsettings/eB;->rw:Lcom/android/vendorsettings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/vendorsettings/MiuiMasterClear;->e(Lcom/android/vendorsettings/MiuiMasterClear;)V

    goto :goto_0

    .line 535
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/eB;->rw:Lcom/android/vendorsettings/MiuiMasterClear;

    invoke-virtual {v0}, Lcom/android/vendorsettings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 537
    invoke-static {v3}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 538
    if-nez v1, :cond_4

    .line 539
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Find device is open, but there is no Xiaomi account. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_4
    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 543
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 544
    const-string v4, "verify_only"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 545
    new-instance v4, Lcom/android/vendorsettings/eC;

    invoke-direct {v4, p0}, Lcom/android/vendorsettings/eC;-><init>(Lcom/android/vendorsettings/eB;)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 485
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/eB;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/vendorsettings/eB;->rw:Lcom/android/vendorsettings/MiuiMasterClear;

    invoke-virtual {v0}, Lcom/android/vendorsettings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/android/vendorsettings/eB;->rw:Lcom/android/vendorsettings/MiuiMasterClear;

    const v3, 0x7f0c0e3c

    invoke-virtual {v2, v3}, Lcom/android/vendorsettings/MiuiMasterClear;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiui/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/eB;->rx:Lmiui/app/ProgressDialog;

    .line 497
    return-void
.end method
