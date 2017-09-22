.class public Lcom/android/settings/TrustAgentSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TrustAgentSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private Bj:Landroid/util/ArrayMap;

.field private final Bk:Landroid/util/ArraySet;

.field private dC:Lcom/android/internal/widget/LockPatternUtils;

.field private jd:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 45
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrustAgentSettings;->Bk:Landroid/util/ArraySet;

    .line 49
    return-void
.end method

.method private in()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 92
    iget-object v0, p0, Lcom/android/settings/TrustAgentSettings;->Bj:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/TrustAgentSettings;->iq()Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TrustAgentSettings;->Bj:Landroid/util/ArrayMap;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustAgentSettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/TrustAgentSettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TrustAgentSettings;->io()V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/TrustAgentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "trust_agents"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 101
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 103
    iget-object v1, p0, Lcom/android/settings/TrustAgentSettings;->jd:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v10}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    move v2, v1

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/android/settings/TrustAgentSettings;->Bj:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v4, v3

    .line 107
    :goto_1
    if-ge v4, v6, :cond_4

    .line 108
    iget-object v1, p0, Lcom/android/settings/TrustAgentSettings;->Bj:Landroid/util/ArrayMap;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ia;

    .line 109
    new-instance v7, Landroid/preference/SwitchPreference;

    invoke-direct {v7, v5}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 110
    iput-object v7, v1, Lcom/android/settings/ia;->Bl:Landroid/preference/SwitchPreference;

    .line 111
    invoke-virtual {v7, v3}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 112
    iget-object v8, v1, Lcom/android/settings/ia;->label:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v8, v1, Lcom/android/settings/ia;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 114
    invoke-virtual {v7, v3}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 115
    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    iget-object v8, p0, Lcom/android/settings/TrustAgentSettings;->Bk:Landroid/util/ArraySet;

    iget-object v9, v1, Lcom/android/settings/ia;->component:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 118
    if-eqz v2, :cond_2

    iget-object v8, p0, Lcom/android/settings/TrustAgentSettings;->jd:Landroid/app/admin/DevicePolicyManager;

    iget-object v9, v1, Lcom/android/settings/ia;->component:Landroid/content/ComponentName;

    invoke-virtual {v8, v10, v9}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_2

    .line 120
    invoke-virtual {v7, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 121
    invoke-virtual {v7, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 122
    const v8, 0x7f0c0b06

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 125
    :cond_2
    iget-object v1, v1, Lcom/android/settings/ia;->Bl:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 107
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 103
    goto :goto_0

    .line 127
    :cond_4
    return-void
.end method

.method private io()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/TrustAgentSettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/settings/TrustAgentSettings;->Bk:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 135
    :cond_0
    return-void
.end method

.method private ip()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/TrustAgentSettings;->dC:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/TrustAgentSettings;->Bk:Landroid/util/ArraySet;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    .line 140
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/android/settings/TrustAgentSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method iq()Landroid/util/ArrayMap;
    .locals 9

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/settings/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    const/16 v1, 0x80

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 148
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 149
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 150
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 151
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_2

    .line 152
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 153
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v6, :cond_1

    .line 151
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 154
    :cond_1
    invoke-static {v0, v2}, Lcom/android/settings/ib;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 155
    invoke-static {v0}, Lcom/android/settings/ib;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    .line 156
    new-instance v7, Lcom/android/settings/ia;

    invoke-direct {v7}, Lcom/android/settings/ia;-><init>()V

    .line 157
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settings/ia;->label:Ljava/lang/CharSequence;

    .line 158
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v7, Lcom/android/settings/ia;->icon:Landroid/graphics/drawable/Drawable;

    .line 159
    iput-object v6, v7, Lcom/android/settings/ia;->component:Landroid/content/ComponentName;

    .line 160
    invoke-virtual {v4, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 162
    :cond_2
    return-object v4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/TrustAgentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/TrustAgentSettings;->jd:Landroid/app/admin/DevicePolicyManager;

    .line 81
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/android/settings/TrustAgentSettings;->addPreferencesFromResource(I)V

    .line 82
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 167
    instance-of v0, p1, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/android/settings/TrustAgentSettings;->Bj:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v2, v1

    .line 169
    :goto_0
    if-ge v2, v3, :cond_3

    .line 170
    iget-object v0, p0, Lcom/android/settings/TrustAgentSettings;->Bj:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ia;

    .line 171
    iget-object v4, v0, Lcom/android/settings/ia;->Bl:Landroid/preference/SwitchPreference;

    if-ne v4, p1, :cond_2

    .line 172
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/settings/TrustAgentSettings;->Bk:Landroid/util/ArraySet;

    iget-object v2, v0, Lcom/android/settings/ia;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/settings/TrustAgentSettings;->Bk:Landroid/util/ArraySet;

    iget-object v0, v0, Lcom/android/settings/ia;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/TrustAgentSettings;->ip()V

    .line 180
    const/4 v0, 0x1

    .line 184
    :goto_2
    return v0

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TrustAgentSettings;->Bk:Landroid/util/ArraySet;

    iget-object v0, v0, Lcom/android/settings/ia;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 184
    goto :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 86
    const-string v0, "dummy_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/TrustAgentSettings;->U(Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/TrustAgentSettings;->in()V

    .line 88
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x5b

    return v0
.end method
