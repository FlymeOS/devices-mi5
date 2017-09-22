.class public Lcom/android/vendorsettings/fV;
.super Ljava/lang/Object;
.source "NsdEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final vt:Landroid/preference/SwitchPreference;

.field private vu:Landroid/net/nsd/NsdManager;


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/android/vendorsettings/fV;->vt:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 69
    iget-object v1, p0, Lcom/android/vendorsettings/fV;->vu:Landroid/net/nsd/NsdManager;

    invoke-virtual {v1, v0}, Landroid/net/nsd/NsdManager;->setEnabled(Z)V

    .line 70
    return v2
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/vendorsettings/fV;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/vendorsettings/fV;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    iget-object v0, p0, Lcom/android/vendorsettings/fV;->vt:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/vendorsettings/fV;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/vendorsettings/fV;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/vendorsettings/fV;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    iget-object v0, p0, Lcom/android/vendorsettings/fV;->vt:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    return-void
.end method
