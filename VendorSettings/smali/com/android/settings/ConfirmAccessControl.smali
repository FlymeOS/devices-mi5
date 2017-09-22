.class public Lcom/android/settings/ConfirmAccessControl;
.super Lcom/android/settings/ConfirmLockPattern;
.source "ConfirmAccessControl.java"


# instance fields
.field private eU:Z

.field private eV:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern;-><init>()V

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/android/settings/ConfirmAccessControl;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/settings/ConfirmAccessControl;->eU:Z

    return p1
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 85
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 91
    check-cast p1, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    iput-object p1, p0, Lcom/android/settings/ConfirmAccessControl;->eV:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    .line 92
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl;->eV:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl;->eV:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->a(Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl;->finish()V

    .line 72
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmAccessControl;->eV:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->b(Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string v1, "ConfirmAccessControl"

    const-string v2, "Fail to finish caller activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 78
    :cond_0
    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern;->onNewIntent(Landroid/content/Intent;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl;->eV:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->f(Landroid/content/Intent;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl;->eV:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    sget-object v1, Lcom/android/settings/ConfirmLockPattern$Stage;->fP:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->a(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 99
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/settings/ConfirmAccessControl;->eU:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl;->onBackPressed()V

    .line 62
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
