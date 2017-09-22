.class public Lcom/android/vendorsettings/applications/ManageAssist;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "ManageAssist.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private Kn:Lcom/android/vendorsettings/applications/DefaultAssistPreference;

.field private Ko:Landroid/preference/CheckBoxPreference;

.field private Kp:Landroid/preference/CheckBoxPreference;

.field private Kq:Lcom/android/vendorsettings/voice/VoiceInputListPreference;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/ManageAssist;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/ManageAssist;->aB()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/ManageAssist;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/applications/ManageAssist;->as(Ljava/lang/String;)V

    return-void
.end method

.method private aB()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kn:Lcom/android/vendorsettings/applications/DefaultAssistPreference;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/DefaultAssistPreference;->kp()V

    .line 134
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kq:Lcom/android/vendorsettings/voice/VoiceInputListPreference;

    invoke-virtual {v0}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->vA()V

    .line 136
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kn:Lcom/android/vendorsettings/applications/DefaultAssistPreference;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/DefaultAssistPreference;->ko()Landroid/content/ComponentName;

    move-result-object v2

    .line 137
    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 138
    :goto_0
    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Ko:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 140
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 146
    :goto_1
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/ManageAssist;->kP()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kq:Lcom/android/vendorsettings/voice/VoiceInputListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    :goto_2
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kp:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Ko:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Ko:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 157
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 137
    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Ko:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 149
    :cond_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kq:Lcom/android/vendorsettings/voice/VoiceInputListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 150
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kq:Lcom/android/vendorsettings/voice/VoiceInputListPreference;

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->h(Landroid/content/ComponentName;)V

    goto :goto_2
.end method

.method private ar(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 167
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kn:Lcom/android/vendorsettings/applications/DefaultAssistPreference;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/applications/DefaultAssistPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kn:Lcom/android/vendorsettings/applications/DefaultAssistPreference;

    invoke-virtual {v1}, Lcom/android/vendorsettings/applications/DefaultAssistPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    .line 170
    const v1, 0x7f0c0b1d

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/vendorsettings/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 171
    const v2, 0x7f0c0b1e

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/vendorsettings/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v2, Lcom/android/vendorsettings/applications/ManageAssist$2;

    invoke-direct {v2, p0, p1}, Lcom/android/vendorsettings/applications/ManageAssist$2;-><init>(Lcom/android/vendorsettings/applications/ManageAssist;Ljava/lang/String;)V

    .line 180
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0b1f

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0b20

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 188
    return-void
.end method

.method private as(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kn:Lcom/android/vendorsettings/applications/DefaultAssistPreference;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/applications/DefaultAssistPreference;->setValue(Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/ManageAssist;->aB()V

    .line 193
    return-void
.end method

.method private kO()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vendorsettings/applications/ManageAssist$1;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/applications/ManageAssist$1;-><init>(Lcom/android/vendorsettings/applications/ManageAssist;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method

.method private kP()Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kn:Lcom/android/vendorsettings/applications/DefaultAssistPreference;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/DefaultAssistPreference;->ko()Landroid/content/ComponentName;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kq:Lcom/android/vendorsettings/voice/VoiceInputListPreference;

    invoke-virtual {v1}, Lcom/android/vendorsettings/voice/VoiceInputListPreference;->vB()Landroid/content/ComponentName;

    move-result-object v1

    .line 162
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/android/vendorsettings/applications/ManageAssist;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 64
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ManageAssist;->addPreferencesFromResource(I)V

    .line 67
    const-string v0, "default_assist"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/DefaultAssistPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kn:Lcom/android/vendorsettings/applications/DefaultAssistPreference;

    .line 68
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kn:Lcom/android/vendorsettings/applications/DefaultAssistPreference;

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/applications/DefaultAssistPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    const-string v0, "context"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Ko:Landroid/preference/CheckBoxPreference;

    .line 73
    iget-object v3, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Ko:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "assist_structure_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Ko:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    const-string v0, "screenshot"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kp:Landroid/preference/CheckBoxPreference;

    .line 80
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assist_screenshot_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    const-string v0, "voice_input_settings"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/voice/VoiceInputListPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kq:Lcom/android/vendorsettings/voice/VoiceInputListPreference;

    .line 85
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/ManageAssist;->aB()V

    .line 86
    return-void

    :cond_0
    move v0, v2

    .line 73
    goto :goto_0

    :cond_1
    move v1, v2

    .line 80
    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 95
    iget-object v2, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Ko:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assist_structure_enabled"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/ManageAssist;->kO()V

    move v0, v1

    .line 120
    :cond_1
    :goto_0
    return v0

    .line 101
    :cond_2
    iget-object v2, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kp:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_4

    .line 102
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assist_screenshot_enabled"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v0, v1

    .line 104
    goto :goto_0

    .line 106
    :cond_4
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kn:Lcom/android/vendorsettings/applications/DefaultAssistPreference;

    if-ne p1, v1, :cond_1

    .line 107
    check-cast p2, Ljava/lang/String;

    .line 108
    if-eqz p2, :cond_5

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 110
    :cond_5
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/applications/ManageAssist;->as(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_6
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ManageAssist;->Kn:Lcom/android/vendorsettings/applications/DefaultAssistPreference;

    invoke-virtual {v1}, Lcom/android/vendorsettings/applications/DefaultAssistPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_7

    invoke-virtual {p2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/vendorsettings/applications/ManageAssist;->ar(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0xc9

    return v0
.end method
