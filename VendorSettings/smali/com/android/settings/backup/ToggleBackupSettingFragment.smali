.class public Lcom/android/settings/backup/ToggleBackupSettingFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ToggleBackupSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field protected DA:Lcom/android/settings/widget/K;

.field private DB:Landroid/preference/Preference;

.field private Qj:Landroid/app/Dialog;

.field private Qk:Z

.field private jc:Landroid/app/backup/IBackupManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->Qk:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/backup/ToggleBackupSettingFragment;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->nl()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/backup/ToggleBackupSettingFragment;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    return-void
.end method

.method private nl()V
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_full_data_backup_aware"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c080e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 222
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->Qk:Z

    .line 225
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c080c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->Qj:Landroid/app/Dialog;

    .line 231
    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c080d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private setBackupEnabled(Z)V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->jc:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->jc:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    const-string v1, "ToggleBackupSettingFragment"

    const-string v2, "Error communicating with BackupManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/android/settings/backup/ToggleBackupSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->DA:Lcom/android/settings/widget/K;

    new-instance v1, Lcom/android/settings/backup/C;

    invoke-direct {v1, p0}, Lcom/android/settings/backup/C;-><init>(Lcom/android/settings/backup/ToggleBackupSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/K;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 168
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 183
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 184
    iput-boolean v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->Qk:Z

    .line 185
    invoke-direct {p0, v1}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->DA:Lcom/android/settings/widget/K;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/K;->setChecked(Z)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 191
    iput-boolean v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->Qk:Z

    .line 192
    invoke-direct {p0, v2}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->DA:Lcom/android/settings/widget/K;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/K;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->jc:Landroid/app/backup/IBackupManager;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 69
    new-instance v1, Lcom/android/settings/backup/B;

    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/backup/B;-><init>(Lcom/android/settings/backup/ToggleBackupSettingFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->DB:Landroid/preference/Preference;

    .line 77
    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->DB:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 78
    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->DB:Landroid/preference/Preference;

    const v2, 0x7f04017d

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 79
    iget-object v1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->DB:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 80
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->DA:Lcom/android/settings/widget/K;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/K;->a(Lcom/android/settings/widget/L;)V

    .line 127
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 201
    iget-boolean v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->Qk:Z

    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0, v1}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->DA:Lcom/android/settings/widget/K;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/K;->setChecked(Z)V

    .line 208
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->Qj:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->Qj:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->Qj:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 176
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->Qj:Landroid/app/Dialog;

    .line 177
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 178
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hn;

    .line 90
    new-instance v0, Lcom/android/settings/widget/K;

    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/widget/K;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->DA:Lcom/android/settings/widget/K;

    .line 91
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->DA:Lcom/android/settings/widget/K;

    const v2, 0x7f0c1010

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/K;->setTitle(I)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->DA:Lcom/android/settings/widget/K;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/K;->setOrder(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->DA:Lcom/android/settings/widget/K;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "user_full_data_backup_aware"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->DB:Landroid/preference/Preference;

    const v2, 0x7f0c080f

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 106
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->jc:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_1

    move v0, v1

    .line 110
    :goto_1
    iget-object v2, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->DA:Lcom/android/settings/widget/K;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/K;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c07fe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 118
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->DB:Landroid/preference/Preference;

    const v2, 0x7f0c07ff

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 106
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->jc:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    .line 111
    :catch_0
    move-exception v0

    .line 115
    iget-object v0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment;->DA:Lcom/android/settings/widget/K;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/K;->setChecked(Z)V

    goto :goto_2
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 235
    const/16 v0, 0x51

    return v0
.end method
