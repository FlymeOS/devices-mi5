.class public Lcom/android/vendorsettings/applications/UsageAccessDetails;
.super Lcom/android/vendorsettings/applications/AppInfoWithHeader;
.source "UsageAccessDetails.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private DD:Landroid/content/Intent;

.field private M:Landroid/preference/CheckBoxPreference;

.field private Pq:Lcom/android/vendorsettings/applications/AppStateUsageBridge;

.field private Pr:Landroid/preference/Preference;

.field private Ps:Landroid/preference/Preference;

.field private Pt:Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;

.field private jd:Landroid/app/admin/DevicePolicyManager;

.field private mAppOpsManager:Landroid/app/AppOpsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method private ax(Z)V
    .locals 5

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x2b

    iget-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 134
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected f(II)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/android/vendorsettings/applications/UsageAccessDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jF()Z
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Pq:Lcom/android/vendorsettings/applications/AppStateUsageBridge;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/applications/AppStateUsageBridge;->j(Ljava/lang/String;I)Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Pt:Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;

    .line 141
    iget-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Pt:Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;->jQ()Z

    move-result v0

    .line 142
    iget-object v1, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->M:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 143
    iget-object v1, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->M:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Pt:Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;

    iget-boolean v2, v2, Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;->Gp:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 144
    iget-object v1, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Pr:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->i:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->DD:Landroid/content/Intent;

    const/16 v2, 0x80

    iget v3, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->mUserId:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_2

    .line 149
    const-string v1, "app_ops_settings_preference"

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/UsageAccessDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Pr:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 152
    :cond_0
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 153
    iget-object v2, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->DD:Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 155
    if-eqz v1, :cond_1

    const-string v0, "android.settings.metadata.USAGE_ACCESS_REASON"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->M:Landroid/preference/CheckBoxPreference;

    const-string v2, "android.settings.metadata.USAGE_ACCESS_REASON"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 161
    :cond_2
    const-string v0, "app_ops_settings_preference"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/UsageAccessDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Pr:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/vendorsettings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/UsageAccessDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 72
    new-instance v0, Lcom/android/vendorsettings/applications/AppStateUsageBridge;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Fh:Lcom/android/b/a/a;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vendorsettings/applications/AppStateUsageBridge;-><init>(Landroid/content/Context;Lcom/android/b/a/a;Lcom/android/vendorsettings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Pq:Lcom/android/vendorsettings/applications/AppStateUsageBridge;

    .line 73
    const-string v0, "appops"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 74
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->jd:Landroid/app/admin/DevicePolicyManager;

    .line 76
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/UsageAccessDetails;->addPreferencesFromResource(I)V

    .line 79
    const-string v0, "app_ops_settings_switch"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->M:Landroid/preference/CheckBoxPreference;

    .line 80
    const-string v0, "app_ops_settings_preference"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Pr:Landroid/preference/Preference;

    .line 81
    const-string v0, "app_ops_settings_description"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Ps:Landroid/preference/Preference;

    .line 83
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/UsageAccessDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const v1, 0x7f0c0b27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 84
    iget-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->M:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c0b28

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 85
    iget-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Pr:Landroid/preference/Preference;

    const v1, 0x7f0c0b29

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 86
    iget-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Ps:Landroid/preference/Preference;

    const v1, 0x7f0c0b2a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 88
    iget-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->M:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Pr:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.USAGE_ACCESS_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->DD:Landroid/content/Intent;

    .line 94
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 113
    iget-object v2, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->M:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_3

    .line 114
    iget-object v2, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Pt:Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;

    if-eqz v2, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Pt:Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {v3}, Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;->jQ()Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 115
    iget-object v2, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Pt:Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {v2}, Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;->jQ()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->jd:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/UsageAccessDetails;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x108033d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0b6a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c01a7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Pt:Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {v2}, Lcom/android/vendorsettings/applications/AppStateUsageBridge$UsageState;->jQ()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/applications/UsageAccessDetails;->ax(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/UsageAccessDetails;->jF()Z

    .line 128
    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->Pr:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->DD:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/UsageAccessDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->DD:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 108
    :goto_1
    return v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    sget-object v1, Lcom/android/vendorsettings/applications/UsageAccessDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch app usage access settings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/applications/UsageAccessDetails;->DD:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 176
    const/16 v0, 0xb7

    return v0
.end method
