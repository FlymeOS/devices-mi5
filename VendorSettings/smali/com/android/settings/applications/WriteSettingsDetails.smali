.class public Lcom/android/vendorsettings/applications/WriteSettingsDetails;
.super Lcom/android/vendorsettings/applications/AppInfoWithHeader;
.source "WriteSettingsDetails.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final Ij:[I


# instance fields
.field private DD:Landroid/content/Intent;

.field private M:Landroid/preference/CheckBoxPreference;

.field private Pu:Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge;

.field private Pv:Landroid/preference/Preference;

.field private Pw:Landroid/preference/Preference;

.field private Px:Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

.field private mAppOpsManager:Landroid/app/AppOpsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x17

    aput v2, v0, v1

    sput-object v0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Ij:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/b/a/o;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p1, Lcom/android/b/a/o;->aIP:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 174
    new-instance v1, Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    iget-object v0, p1, Lcom/android/b/a/o;->aIP:Ljava/lang/Object;

    check-cast v0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v1, v0}, Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;)V

    invoke-static {p0, v1}, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->a(Landroid/content/Context;Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p1}, Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->jQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0b83

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0c0b84

    goto :goto_0
.end method

.method private ay(Z)V
    .locals 5

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x17

    iget-object v0, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 135
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const v4, 0x7f0c0b84

    .line 189
    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 192
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 193
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 194
    const/4 v0, 0x1

    move v1, v0

    .line 202
    :goto_0
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 204
    sget-object v5, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Ij:[I

    invoke-virtual {v0, v5}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v5

    .line 206
    if-nez v5, :cond_0

    .line 207
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_1
    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 198
    const-string v1, "WriteSettingsDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 210
    :cond_0
    if-eqz v1, :cond_3

    .line 211
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$PackageOps;

    .line 212
    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 213
    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v2

    .line 218
    :cond_2
    if-ne v2, v3, :cond_4

    .line 219
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move v2, v3

    .line 210
    goto :goto_2

    .line 222
    :cond_4
    const/16 v1, 0x17

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 223
    if-nez v0, :cond_5

    const v0, 0x7f0c0b83

    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected f(II)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jF()Z
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Pu:Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge;->k(Ljava/lang/String;I)Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Px:Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    .line 152
    iget-object v0, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Px:Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->jQ()Z

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->M:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 155
    iget-object v1, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->M:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Px:Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    iget-boolean v2, v2, Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->Gp:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 156
    iget-object v1, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Pv:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Pv:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/vendorsettings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Fh:Lcom/android/b/a/a;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/b/a/a;Lcom/android/vendorsettings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Pu:Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge;

    .line 81
    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 83
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->addPreferencesFromResource(I)V

    .line 86
    const-string v0, "app_ops_settings_switch"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->M:Landroid/preference/CheckBoxPreference;

    .line 87
    const-string v0, "app_ops_settings_preference"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Pv:Landroid/preference/Preference;

    .line 88
    const-string v0, "app_ops_settings_description"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Pw:Landroid/preference/Preference;

    .line 90
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const v1, 0x7f0c0b7a

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 91
    iget-object v0, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->M:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c0b81

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 92
    iget-object v0, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Pv:Landroid/preference/Preference;

    const v1, 0x7f0c0b80

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 93
    iget-object v0, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Pw:Landroid/preference/Preference;

    const v1, 0x7f0c0b82

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 95
    iget-object v0, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->M:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    iget-object v0, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Pv:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.USAGE_ACCESS_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->DD:Landroid/content/Intent;

    .line 101
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 120
    iget-object v2, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->M:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Px:Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    if-eqz v2, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Px:Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-virtual {v3}, Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->jQ()Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Px:Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-virtual {v2}, Lcom/android/vendorsettings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->jQ()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->ay(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->jF()Z

    .line 128
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->Pv:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->DD:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->DD:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 115
    :goto_1
    return v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    const-string v1, "WriteSettingsDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch write system settings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/applications/WriteSettingsDetails;->DD:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0xdd

    return v0
.end method
