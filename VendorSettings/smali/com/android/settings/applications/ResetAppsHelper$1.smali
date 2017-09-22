.class Lcom/android/settings/applications/ResetAppsHelper$1;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ME:Lcom/android/settings/applications/ResetAppsHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ResetAppsHelper;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->ME:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->ME:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/ResetAppsHelper;->a(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 113
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 114
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 116
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->ME:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v4}, Lcom/android/settings/applications/ResetAppsHelper;->b(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    :goto_1
    iget-boolean v4, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->ME:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v4}, Lcom/android/settings/applications/ResetAppsHelper;->a(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 122
    iget-object v4, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->ME:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v4}, Lcom/android/settings/applications/ResetAppsHelper;->a(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0, v2, v8}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 113
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 129
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->ME:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/ResetAppsHelper;->c(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->ME:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/ResetAppsHelper;->d(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpsManager;->resetAllModes()V

    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->ME:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/ResetAppsHelper;->e(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v1

    .line 135
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 136
    array-length v4, v1

    move v0, v2

    :goto_3
    if-ge v0, v4, :cond_3

    aget v5, v1, v0

    .line 138
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, v3, :cond_2

    .line 139
    iget-object v6, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->ME:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v6}, Lcom/android/settings/applications/ResetAppsHelper;->e(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 136
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 142
    :cond_3
    return-void

    .line 130
    :catch_0
    move-exception v0

    goto :goto_2

    .line 117
    :catch_1
    move-exception v4

    goto :goto_1
.end method
