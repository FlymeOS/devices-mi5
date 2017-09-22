.class public abstract Lcom/android/settings/applications/AppInfoBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppInfoBase.java"

# interfaces
.implements Lcom/android/b/a/s;


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field protected EV:Lcom/android/b/a/w;

.field protected Fg:Z

.field protected Fh:Lcom/android/b/a/a;

.field protected Fi:Lcom/android/b/a/o;

.field protected Fj:Landroid/content/pm/PackageInfo;

.field protected Fk:Landroid/hardware/usb/IUsbManager;

.field protected i:Landroid/content/pm/PackageManager;

.field protected jd:Landroid/app/admin/DevicePolicyManager;

.field protected mFinishing:Z

.field protected mPackageName:Ljava/lang/String;

.field protected mUserId:I

.field protected sR:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/android/settings/applications/AppInfoBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppInfoBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->Fg:Z

    .line 224
    return-void
.end method

.method public static a(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;I)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 214
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 215
    const-string v0, "package"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v0, "uid"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    invoke-virtual {p4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move v4, p1

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings/iC;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v0

    .line 220
    invoke-virtual {p4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, p5, v2}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    .line 222
    return-void
.end method


# virtual methods
.method public aj(Z)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public al(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method protected c(ZZ)V
    .locals 3

    .prologue
    .line 156
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 157
    const-string v0, "chg"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hn;

    .line 159
    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/settings/hn;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mFinishing:Z

    .line 161
    return-void
.end method

.method protected e(II)V
    .locals 4

    .prologue
    .line 164
    invoke-static {p1, p2}, Lcom/android/settings/applications/AppInfoBase$MyAlertDialogFragment;->g(II)Lcom/android/settings/applications/AppInfoBase$MyAlertDialogFragment;

    move-result-object v0

    .line 165
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method protected abstract f(II)Landroid/app/AlertDialog;
.end method

.method public jA()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public jB()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public jC()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public jD()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method protected jE()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 119
    if-eqz v2, :cond_2

    const-string v0, "package"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 126
    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 130
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 134
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    .line 135
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->Fh:Lcom/android/b/a/a;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/b/a/a;->u(Ljava/lang/String;I)Lcom/android/b/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->Fi:Lcom/android/b/a/o;

    .line 136
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->Fi:Lcom/android/b/a/o;

    if-eqz v0, :cond_4

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->i:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->Fi:Lcom/android/b/a/o;

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x2240

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->Fj:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    return-object v0

    :cond_2
    move-object v0, v1

    .line 119
    goto :goto_0

    .line 126
    :cond_3
    const-string v0, "intent"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    sget-object v1, Lcom/android/settings/applications/AppInfoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when retrieving package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->Fi:Lcom/android/b/a/o;

    iget-object v3, v3, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 147
    :cond_4
    sget-object v0, Lcom/android/settings/applications/AppInfoBase;->TAG:Ljava/lang/String;

    const-string v2, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->Fj:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method protected abstract jF()Z
.end method

.method public jz()V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->jF()Z

    .line 210
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mFinishing:Z

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/b/a/a;->a(Landroid/app/Application;)Lcom/android/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->Fh:Lcom/android/b/a/a;

    .line 80
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->Fh:Lcom/android/b/a/a;

    invoke-virtual {v0, p0}, Lcom/android/b/a/a;->a(Lcom/android/b/a/s;)Lcom/android/b/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->EV:Lcom/android/b/a/w;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 82
    const-string v0, "device_policy"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->jd:Landroid/app/admin/DevicePolicyManager;

    .line 83
    const-string v0, "user"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->sR:Landroid/os/UserManager;

    .line 84
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->i:Landroid/content/pm/PackageManager;

    .line 85
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->Fk:Landroid/hardware/usb/IUsbManager;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->jE()Ljava/lang/String;

    .line 89
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->EV:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->release()V

    .line 114
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->EV:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->pause()V

    .line 105
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 106
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 93
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->EV:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->resume()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->sR:Landroid/os/UserManager;

    const-string v1, "no_control_apps"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->Fg:Z

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->jF()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0, v2, v2}, Lcom/android/settings/applications/AppInfoBase;->c(ZZ)V

    .line 100
    :cond_0
    return-void
.end method
