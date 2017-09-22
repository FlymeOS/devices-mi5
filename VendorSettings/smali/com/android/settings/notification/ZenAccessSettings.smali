.class public Lcom/android/vendorsettings/notification/ZenAccessSettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "ZenAccessSettings.java"


# instance fields
.field private final akx:Lcom/android/vendorsettings/notification/ZenAccessSettings$SettingObserver;

.field private aky:Landroid/content/pm/PackageManager;

.field private akz:Landroid/app/NotificationManager;

.field private hn:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 56
    new-instance v0, Lcom/android/vendorsettings/notification/ZenAccessSettings$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/notification/ZenAccessSettings$SettingObserver;-><init>(Lcom/android/vendorsettings/notification/ZenAccessSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->akx:Lcom/android/vendorsettings/notification/ZenAccessSettings$SettingObserver;

    .line 179
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/notification/ZenAccessSettings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/notification/ZenAccessSettings;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/ZenAccessSettings;->sA()V

    return-void
.end method

.method private bj(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->akz:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/android/vendorsettings/notification/ZenAccessSettings$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/vendorsettings/notification/ZenAccessSettings$2;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method static synthetic e(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lcom/android/vendorsettings/notification/ZenAccessSettings;->d(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private sA()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/ZenAccessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->akz:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getPackagesRequestingNotificationPolicyAccess()Landroid/util/ArraySet;

    move-result-object v4

    .line 114
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->aky:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_1

    .line 117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 118
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 119
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_1
    new-instance v0, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v4, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->aky:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v4}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 125
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 126
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 127
    iget-object v6, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->aky:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 128
    new-instance v7, Landroid/preference/SwitchPreference;

    iget-object v8, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-virtual {v7, v1}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 130
    iget-object v8, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->aky:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    invoke-direct {p0, v5}, Lcom/android/vendorsettings/notification/ZenAccessSettings;->bj(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 133
    new-instance v0, Lcom/android/vendorsettings/notification/ZenAccessSettings$1;

    invoke-direct {v0, p0, v5, v6}, Lcom/android/vendorsettings/notification/ZenAccessSettings$1;-><init>(Lcom/android/vendorsettings/notification/ZenAccessSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->hn:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    return-void

    .line 151
    :cond_3
    const/16 v0, 0x8

    goto :goto_2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/android/vendorsettings/notification/ZenAccessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/ZenAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->aky:Landroid/content/pm/PackageManager;

    .line 79
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->akz:Landroid/app/NotificationManager;

    .line 80
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/ZenAccessSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/notification/ZenAccessSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 81
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 88
    const v0, 0x7f0400a7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 89
    const v0, 0x1020004

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->hn:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->hn:Landroid/widget/TextView;

    const v2, 0x7f0c0a72

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 91
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 106
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/ZenAccessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->akx:Lcom/android/vendorsettings/notification/ZenAccessSettings$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 107
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 97
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/ZenAccessSettings;->sA()V

    .line 98
    invoke-virtual {p0}, Lcom/android/vendorsettings/notification/ZenAccessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_notification_policy_access_packages"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/vendorsettings/notification/ZenAccessSettings;->akx:Lcom/android/vendorsettings/notification/ZenAccessSettings$SettingObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0xb4

    return v0
.end method
