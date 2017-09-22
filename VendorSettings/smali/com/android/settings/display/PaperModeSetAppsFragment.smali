.class public Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "PaperModeSetAppsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private Zn:Ljava/util/HashMap;

.field private Zo:Landroid/preference/PreferenceCategory;

.field private Zp:Landroid/preference/PreferenceCategory;

.field private bD:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 89
    new-instance v0, Lcom/android/vendorsettings/display/B;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/display/B;-><init>(Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;)V

    iput-object v0, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->bD:Landroid/content/BroadcastReceiver;

    .line 128
    return-void
.end method

.method private P()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    iget-object v0, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getScreenPaperModePkgList(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->Zn:Ljava/util/HashMap;

    .line 146
    new-instance v1, Lcom/android/vendorsettings/display/C;

    invoke-virtual {p0}, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/vendorsettings/display/C;-><init>(Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;Landroid/app/FragmentManager;Ljava/util/List;)V

    const v0, 0x7f0c0f0c

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/display/C;->setMessage(I)Lmiui/os/AsyncTaskWithProgress;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/os/AsyncTaskWithProgress;->setCancelable(Z)Lmiui/os/AsyncTaskWithProgress;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/os/AsyncTaskWithProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 185
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->P()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 110
    iget-object v0, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->Zo:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 111
    iget-object v0, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->Zp:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->Zo:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move v1, v2

    .line 115
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 116
    iget-object v3, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->Zo:Landroid/preference/PreferenceCategory;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 115
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 120
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->Zp:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 122
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->Zp:Landroid/preference/PreferenceCategory;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->Zn:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->addPreferencesFromResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "paper_mode_pkg_list"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->Zo:Landroid/preference/PreferenceCategory;

    .line 65
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "paper_mode_off_pkg_list"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->Zp:Landroid/preference/PreferenceCategory;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->bD:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->bD:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 81
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 99
    instance-of v1, p1, Lcom/android/vendorsettings/display/E;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->Zn:Ljava/util/HashMap;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->Zn:Ljava/util/HashMap;

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$System;->setScreenPaperModePkgList(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 102
    invoke-direct {p0}, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->P()V

    .line 104
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 86
    invoke-direct {p0}, Lcom/android/vendorsettings/display/PaperModeSetAppsFragment;->P()V

    .line 87
    return-void
.end method
