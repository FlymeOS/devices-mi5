.class public Lcom/android/vendorsettings/applications/DrawOverlayDetails;
.super Lcom/android/vendorsettings/applications/AppInfoWithHeader;
.source "DrawOverlayDetails.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final Ij:[I


# instance fields
.field private DD:Landroid/content/Intent;

.field private Ik:Lcom/android/vendorsettings/applications/AppStateOverlayBridge;

.field private Il:Landroid/preference/Preference;

.field private Im:Landroid/preference/Preference;

.field private In:Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;

.field private M:Landroid/preference/CheckBoxPreference;

.field private mAppOpsManager:Landroid/app/AppOpsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x18

    aput v2, v0, v1

    sput-object v0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->Ij:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/b/a/o;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p1, Lcom/android/b/a/o;->aIP:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 185
    new-instance v1, Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;

    iget-object v0, p1, Lcom/android/b/a/o;->aIP:Ljava/lang/Object;

    check-cast v0, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v1, v0}, Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;)V

    invoke-static {p0, v1}, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->a(Landroid/content/Context;Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;->jQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0b78

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0c0b79

    goto :goto_0
.end method

.method private am(Z)V
    .locals 5

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x18

    iget-object v0, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 146
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const v1, 0x7f0c0b78

    const v2, 0x7f0c0b79

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 203
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 204
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 205
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 206
    const v0, 0x7f0c0b78

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 210
    const-string v1, "DrawOverlayDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_0
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 216
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 217
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_1
    const/16 v4, 0x18

    invoke-virtual {v0, v4, v3, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 221
    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method protected f(II)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jF()Z
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->Ik:Lcom/android/vendorsettings/applications/AppStateOverlayBridge;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/applications/AppStateOverlayBridge;->i(Ljava/lang/String;I)Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->In:Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;

    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->In:Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;->jQ()Z

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->M:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    iget-object v1, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->M:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->In:Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;

    iget-boolean v2, v2, Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;->Gp:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 167
    iget-object v1, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->Il:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->Il:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/vendorsettings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/android/vendorsettings/applications/AppStateOverlayBridge;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->Fh:Lcom/android/b/a/a;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/vendorsettings/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/b/a/a;Lcom/android/vendorsettings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->Ik:Lcom/android/vendorsettings/applications/AppStateOverlayBridge;

    .line 91
    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 94
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->addPreferencesFromResource(I)V

    .line 97
    const-string v0, "app_ops_settings_switch"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->M:Landroid/preference/CheckBoxPreference;

    .line 98
    const-string v0, "app_ops_settings_preference"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->Il:Landroid/preference/Preference;

    .line 99
    const-string v0, "app_ops_settings_description"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->Im:Landroid/preference/Preference;

    .line 102
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const v1, 0x7f0c0b6d

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 103
    iget-object v0, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->M:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c0b71

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 104
    iget-object v0, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->Il:Landroid/preference/Preference;

    const v1, 0x7f0c0b72

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 105
    iget-object v0, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->Im:Landroid/preference/Preference;

    const v1, 0x7f0c0b73

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 108
    iget-object v0, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->M:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 109
    iget-object v0, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->Il:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->DD:Landroid/content/Intent;

    .line 113
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/vendorsettings/applications/AppInfoWithHeader;->onDestroy()V

    .line 76
    iget-object v0, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->Ik:Lcom/android/vendorsettings/applications/AppStateOverlayBridge;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/AppStateOverlayBridge;->release()V

    .line 77
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 132
    iget-object v2, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->M:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->In:Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;

    if-eqz v2, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->In:Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v3}, Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;->jQ()Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 134
    iget-object v2, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->In:Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {v2}, Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;->jQ()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->am(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->jF()Z

    .line 139
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
    .line 117
    iget-object v0, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->Il:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->DD:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->DD:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 127
    :goto_1
    return v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string v1, "DrawOverlayDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch app draw overlay settings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/applications/DrawOverlayDetails;->DD:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 127
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 180
    const/16 v0, 0xdd

    return v0
.end method
