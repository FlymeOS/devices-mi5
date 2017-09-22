.class public Lcom/android/vendorsettings/deviceinfo/PriorityStorageFragment;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "PriorityStorageFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private i:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private pa()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.PRIORITY_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/PriorityStorageFragment;->i:Landroid/content/pm/PackageManager;

    const/16 v4, 0x280

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 42
    if-nez v0, :cond_1

    .line 78
    :cond_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PriorityStorageFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 48
    new-instance v6, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PriorityStorageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v7, p0, Lcom/android/vendorsettings/deviceinfo/PriorityStorageFragment;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 51
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 52
    const v8, 0x7f0a00bb

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 53
    const v8, 0x7f0a00bc

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 54
    iget-object v8, p0, Lcom/android/vendorsettings/deviceinfo/PriorityStorageFragment;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    .line 56
    if-eq v1, v3, :cond_2

    if-nez v1, :cond_5

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "miui.intent.extra.SET_PRIORITY_DEFAULT"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    move v1, v3

    .line 62
    :goto_1
    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 63
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v1, v8, v1

    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 65
    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    const v1, 0x7f0c103d

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v7, v8, v2

    invoke-virtual {p0, v1, v8}, Lcom/android/vendorsettings/deviceinfo/PriorityStorageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    .line 69
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "miui.intent.extra.PRIORITY_STORAGE_KILL_APP"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    .line 71
    :goto_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 72
    const-string v7, "extra_kill_app"

    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setIntent(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 69
    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/vendorsettings/deviceinfo/PriorityStorageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/PriorityStorageFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/PriorityStorageFragment;->i:Landroid/content/pm/PackageManager;

    .line 34
    const v0, 0x7f080077

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/PriorityStorageFragment;->addPreferencesFromResource(I)V

    .line 35
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/PriorityStorageFragment;->pa()V

    .line 36
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 82
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 83
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 84
    check-cast p1, Landroid/preference/ListPreference;

    .line 85
    if-ne v3, v1, :cond_0

    move v0, v1

    .line 87
    :goto_0
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "extra_kill_app"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 88
    iget-object v5, p0, Lcom/android/vendorsettings/deviceinfo/PriorityStorageFragment;->i:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v5, v4, v0, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 89
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    return v1

    .line 85
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 88
    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method
