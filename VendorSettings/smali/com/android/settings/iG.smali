.class Lcom/android/vendorsettings/iG;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingSettings.java"


# instance fields
.field final synthetic Co:Lcom/android/vendorsettings/WifiCallingSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/WifiCallingSettings;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/vendorsettings/iG;->Co:Lcom/android/vendorsettings/WifiCallingSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/android/vendorsettings/iG;->Co:Lcom/android/vendorsettings/WifiCallingSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hn;

    .line 72
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 74
    invoke-virtual {v0}, Lcom/android/vendorsettings/hn;->hD()Lcom/android/vendorsettings/widget/SwitchBar;

    move-result-object v5

    .line 75
    invoke-virtual {v5}, Lcom/android/vendorsettings/widget/SwitchBar;->wO()Lcom/android/vendorsettings/widget/ToggleSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    move v3, v1

    .line 78
    :goto_0
    if-nez p1, :cond_2

    if-eqz v4, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Lcom/android/vendorsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/vendorsettings/iG;->Co:Lcom/android/vendorsettings/WifiCallingSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/WifiCallingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "wifi_calling_mode"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 86
    :cond_0
    return-void

    :cond_1
    move v3, v2

    .line 75
    goto :goto_0

    :cond_2
    move v0, v2

    .line 78
    goto :goto_1

    :cond_3
    move v1, v2

    .line 83
    goto :goto_2
.end method
