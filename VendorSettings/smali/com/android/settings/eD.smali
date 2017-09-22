.class Lcom/android/settings/eD;
.super Landroid/os/AsyncTask;
.source "MiuiMasterClear.java"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field final synthetic rw:Lcom/android/settings/MiuiMasterClear;

.field private rx:Lmiui/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiMasterClear;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/settings/eD;->rw:Lcom/android/settings/MiuiMasterClear;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 573
    iput-object p2, p0, Lcom/android/settings/eD;->mAppContext:Landroid/content/Context;

    .line 574
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 585
    iget-object v0, p0, Lcom/android/settings/eD;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->obtain(Landroid/content/Context;)Lmiui/cloud/finddevice/FindDeviceStatusManager;

    move-result-object v1

    .line 588
    :try_start_0
    invoke-virtual {v1}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/cloud/finddevice/FindDeviceStatusManager$FindDeviceStatusManagerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    invoke-virtual {v1}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    .line 602
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 591
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 599
    invoke-virtual {v1}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    goto :goto_0

    .line 592
    :catch_1
    move-exception v0

    .line 593
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 594
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 599
    invoke-virtual {v1}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    goto :goto_0

    .line 595
    :catch_2
    move-exception v0

    .line 596
    const/4 v2, 0x1

    :try_start_3
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 597
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 599
    invoke-virtual {v1}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lmiui/cloud/finddevice/FindDeviceStatusManager;->release()V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 569
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/eD;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/settings/eD;->rx:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->dismiss()V

    .line 611
    iget-object v0, p0, Lcom/android/settings/eD;->rw:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/eD;->rw:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v0}, Lcom/android/settings/MiuiMasterClear;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 616
    iget-object v0, p0, Lcom/android/settings/eD;->rw:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->e(Lcom/android/settings/MiuiMasterClear;)V

    goto :goto_0

    .line 618
    :cond_2
    iget-object v0, p0, Lcom/android/settings/eD;->rw:Lcom/android/settings/MiuiMasterClear;

    invoke-static {v0}, Lcom/android/settings/MiuiMasterClear;->g(Lcom/android/settings/MiuiMasterClear;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 569
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/eD;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/settings/eD;->rw:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v0}, Lcom/android/settings/MiuiMasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/android/settings/eD;->rw:Lcom/android/settings/MiuiMasterClear;

    const v3, 0x7f0c0e3b

    invoke-virtual {v2, v3}, Lcom/android/settings/MiuiMasterClear;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiui/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/eD;->rx:Lmiui/app/ProgressDialog;

    .line 581
    return-void
.end method
