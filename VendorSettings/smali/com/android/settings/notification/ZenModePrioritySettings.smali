.class public Lcom/android/settings/notification/ZenModePrioritySettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Lcom/android/settings/search/k;


# instance fields
.field private ald:Z

.field private ale:Landroid/preference/SwitchPreference;

.field private alf:Landroid/preference/SwitchPreference;

.field private alg:Lcom/android/settings/DropDownPreference;

.field private alh:Lcom/android/settings/DropDownPreference;

.field private ali:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenModePrioritySettings;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->ald:Z

    return v0
.end method

.method private static b(Lcom/android/settings/DropDownPreference;)V
    .locals 2

    .prologue
    .line 181
    const v0, 0x7f0c0aa2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 182
    const v0, 0x7f0c0aa3

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 183
    const v0, 0x7f0c0aa4

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 184
    const v0, 0x7f0c0aa5

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DropDownPreference;->a(ILjava/lang/Object;)V

    .line 185
    return-void
.end method

.method private pV()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 162
    iput-boolean v3, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->ald:Z

    .line 163
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->alh:Lcom/android/settings/DropDownPreference;

    if-eqz v0, :cond_0

    .line 164
    iget-object v4, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->alh:Lcom/android/settings/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/settings/DropDownPreference;->o(Ljava/lang/Object;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->alg:Lcom/android/settings/DropDownPreference;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/DropDownPreference;->o(Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->ale:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->alf:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->ali:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 170
    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->ali:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->aah:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-eqz v0, :cond_4

    :cond_2
    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 172
    iput-boolean v2, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->ald:Z

    .line 173
    return-void

    :cond_3
    move v0, v1

    .line 164
    goto :goto_0

    :cond_4
    move v0, v2

    .line 170
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f0800c9

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModePrioritySettings;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModePrioritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 54
    const-string v0, "reminders"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->ale:Landroid/preference/SwitchPreference;

    .line 55
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->ale:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModePrioritySettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$1;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    const-string v0, "events"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->alf:Landroid/preference/SwitchPreference;

    .line 70
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->alf:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModePrioritySettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$2;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    const-string v0, "messages"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->alg:Lcom/android/settings/DropDownPreference;

    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->alg:Lcom/android/settings/DropDownPreference;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModePrioritySettings;->b(Lcom/android/settings/DropDownPreference;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->alg:Lcom/android/settings/DropDownPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModePrioritySettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$3;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v0, v2}, Lcom/android/settings/DropDownPreference;->a(Lcom/android/settings/cO;)V

    .line 107
    const-string v0, "calls"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->alh:Lcom/android/settings/DropDownPreference;

    .line 108
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->alh:Lcom/android/settings/DropDownPreference;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModePrioritySettings;->b(Lcom/android/settings/DropDownPreference;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->alh:Lcom/android/settings/DropDownPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModePrioritySettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$4;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v0, v2}, Lcom/android/settings/DropDownPreference;->a(Lcom/android/settings/cO;)V

    .line 130
    const-string v0, "repeat_callers"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->ali:Landroid/preference/SwitchPreference;

    .line 131
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->ali:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0aab

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0092

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/notification/ZenModePrioritySettings;->ali:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings/notification/ZenModePrioritySettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenModePrioritySettings$5;-><init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModePrioritySettings;->pV()V

    .line 149
    return-void
.end method

.method protected sB()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method protected sC()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModePrioritySettings;->pV()V

    .line 159
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 177
    const/16 v0, 0x8d

    return v0
.end method
