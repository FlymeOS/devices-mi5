.class Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DisableChanger;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetailsFragment.java"


# instance fields
.field final FQ:Landroid/content/pm/ApplicationInfo;

.field final IR:Ljava/lang/ref/WeakReference;

.field final Jh:Landroid/content/pm/IPackageManager;

.field final mState:I


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;Landroid/content/pm/ApplicationInfo;I)V
    .locals 1

    .prologue
    .line 600
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 601
    invoke-static {p1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->d(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DisableChanger;->Jh:Landroid/content/pm/IPackageManager;

    .line 602
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DisableChanger;->IR:Ljava/lang/ref/WeakReference;

    .line 603
    iput-object p2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DisableChanger;->FQ:Landroid/content/pm/ApplicationInfo;

    .line 604
    iput p3, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DisableChanger;->mState:I

    .line 605
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DisableChanger;->IR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DisableChanger;->Jh:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DisableChanger;->FQ:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DisableChanger;->mState:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DisableChanger;->IR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    iget v4, v4, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    iget-object v5, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DisableChanger;->IR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    invoke-virtual {v5}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    const-string v1, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not setApplicationEnabledSetting for pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$DisableChanger;->FQ:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
