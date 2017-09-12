.class public final Lcom/android/commands/pm/PmInjector;
.super Ljava/lang/Object;
.source "PmInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/pm/PmInjector$InstallObserver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static getDefaultUserId()I
    .locals 4

    .prologue
    .line 96
    :try_start_0
    const-string v3, "user"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    .line 97
    .local v1, "um":Landroid/os/IUserManager;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 98
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {v2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 105
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_0
    return v3

    .line 102
    :catch_0
    move-exception v3

    .line 105
    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static isSupport()Z
    .locals 2

    .prologue
    .line 25
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0

    .line 28
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Failure [UNSUPPORTED]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startPackageInstallerForConfirm(Ljava/lang/String;)Z
    .locals 10
    .param p0, "apkFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 40
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, "apkFile":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 43
    .local v2, "apkURI":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "com.miui.securitycenter"

    const-string v8, "com.miui.permcenter.install.AdbInstallActivity"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v4, v2, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    new-instance v0, Lcom/android/commands/pm/PmInjector$InstallObserver;

    invoke-direct {v0}, Lcom/android/commands/pm/PmInjector$InstallObserver;-><init>()V

    .line 48
    .local v0, "activityObs":Lcom/android/commands/pm/PmInjector$InstallObserver;
    const-string v7, "observer"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 49
    const/high16 v7, 0x18000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    :try_start_0
    invoke-static {v4}, Lcom/android/commands/pm/IActivityManagerCompat;->startActivity(Landroid/content/Intent;)I

    move-result v5

    .line 53
    .local v5, "res":I
    if-eqz v5, :cond_0

    .line 54
    const-string v7, "Pm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "start PackageInstallerActivity failed ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v5    # "res":I
    :goto_0
    return v6

    .line 57
    :catch_0
    move-exception v3

    .line 58
    .local v3, "e1":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 59
    const-string v7, "Pm"

    const-string v8, "start PackageInstallerActivity RemoteException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    .end local v3    # "e1":Landroid/os/RemoteException;
    .restart local v5    # "res":I
    :cond_0
    monitor-enter v0

    .line 65
    :goto_1
    :try_start_1
    iget-boolean v7, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_1

    .line 67
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 68
    :catch_1
    move-exception v7

    goto :goto_1

    .line 71
    :cond_1
    :try_start_3
    iget v7, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->result:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 72
    const/4 v6, 0x1

    monitor-exit v0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v6

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 74
    :cond_2
    :try_start_4
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Failure [INSTALL_CANCELED_BY_USER]"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
