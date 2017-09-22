.class public Lcom/android/vendorsettings/HeadsetModeFragment;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "HeadsetModeFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private nr:Lmiui/preference/RadioButtonPreference;

.field private ns:Lmiui/preference/RadioButtonPreference;

.field private nt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/HeadsetModeFragment;->nt:Ljava/lang/String;

    return-void
.end method

.method private getMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    const-string v0, "persist.sys.button_jack_profile"

    const-string v1, "volume"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private refresh()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Lcom/android/vendorsettings/HeadsetModeFragment;->getMode()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/vendorsettings/HeadsetModeFragment;->nt:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 59
    :cond_0
    iput-object v0, p0, Lcom/android/vendorsettings/HeadsetModeFragment;->nt:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/android/vendorsettings/HeadsetModeFragment;->nr:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 61
    iget-object v1, p0, Lcom/android/vendorsettings/HeadsetModeFragment;->ns:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    .line 63
    const-string v1, "music"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/vendorsettings/HeadsetModeFragment;->ns:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/HeadsetModeFragment;->nr:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private setMode(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 75
    const-string v0, "HeadsetModeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new mode, mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v0, "persist.sys.button_jack_profile"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/vendorsettings/HeadsetModeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/HeadsetModeFragment;->addPreferencesFromResource(I)V

    .line 40
    const-string v0, "mode_volume"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/HeadsetModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/HeadsetModeFragment;->nr:Lmiui/preference/RadioButtonPreference;

    .line 41
    const-string v0, "mode_music"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/HeadsetModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/HeadsetModeFragment;->ns:Lmiui/preference/RadioButtonPreference;

    .line 43
    iget-object v0, p0, Lcom/android/vendorsettings/HeadsetModeFragment;->nr:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 44
    iget-object v0, p0, Lcom/android/vendorsettings/HeadsetModeFragment;->ns:Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 45
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/vendorsettings/HeadsetModeFragment;->nt:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/android/vendorsettings/HeadsetModeFragment;->nr:Lmiui/preference/RadioButtonPreference;

    if-ne v1, p1, :cond_2

    .line 83
    const-string v0, "volume"

    .line 88
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/HeadsetModeFragment;->nt:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/HeadsetModeFragment;->setMode(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/android/vendorsettings/HeadsetModeFragment;->refresh()V

    .line 93
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/HeadsetModeFragment;->ns:Lmiui/preference/RadioButtonPreference;

    if-ne v1, p1, :cond_0

    .line 85
    const-string v0, "music"

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 50
    invoke-direct {p0}, Lcom/android/vendorsettings/HeadsetModeFragment;->refresh()V

    .line 51
    return-void
.end method
