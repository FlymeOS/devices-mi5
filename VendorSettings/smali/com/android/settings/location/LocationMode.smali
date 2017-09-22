.class public Lcom/android/settings/location/LocationMode;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationMode.java"

# interfaces
.implements Lcom/android/settings/location/RadioButtonPreference$OnClickListener;


# instance fields
.field private agZ:Lcom/android/settings/location/RadioButtonPreference;

.field private aha:Lcom/android/settings/location/RadioButtonPreference;

.field private ahb:Lcom/android/settings/location/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    return-void
.end method

.method private a(Lcom/android/settings/location/RadioButtonPreference;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    if-nez p1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->aha:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->aha:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->aha:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->aha:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->aha:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private hu()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 71
    :cond_0
    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationMode;->addPreferencesFromResource(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 74
    const-string v0, "high_accuracy"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/location/LocationMode;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    .line 75
    const-string v0, "battery_saving"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/location/LocationMode;->aha:Lcom/android/settings/location/RadioButtonPreference;

    .line 76
    const-string v0, "sensors_only"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/location/LocationMode;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    .line 77
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/location/RadioButtonPreference;->a(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->aha:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/location/RadioButtonPreference;->a(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/location/RadioButtonPreference;->a(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/location/LocationMode;->rJ()V

    .line 82
    return-object v1
.end method


# virtual methods
.method public ay()I
    .locals 1

    .prologue
    .line 145
    const v0, 0x7f0c09bd

    return v0
.end method

.method public b(Lcom/android/settings/location/RadioButtonPreference;)V
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_1

    .line 109
    const/4 v0, 0x3

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationMode;->cr(I)V

    .line 116
    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->aha:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_2

    .line 111
    const/4 v0, 0x2

    goto :goto_0

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_0

    .line 113
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/android/settings/location/LocationMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l(IZ)V
    .locals 2

    .prologue
    .line 120
    packed-switch p1, :pswitch_data_0

    .line 137
    :goto_0
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 138
    :goto_1
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 139
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->aha:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/location/RadioButtonPreference;->setEnabled(Z)V

    .line 141
    return-void

    .line 122
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/location/LocationMode;->a(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->ahb:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/location/LocationMode;->a(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->aha:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/location/LocationMode;->a(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 131
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->agZ:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/location/LocationMode;->a(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    .line 64
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    .line 58
    invoke-direct {p0}, Lcom/android/settings/location/LocationMode;->hu()Landroid/preference/PreferenceScreen;

    .line 59
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x40

    return v0
.end method
