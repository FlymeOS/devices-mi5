.class public Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;
.super Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;
.source "MiuiBluetoothDiscoverableEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/b/b/Q;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Lcom/android/b/b/Q;Landroid/preference/CheckBoxPreference;)V

    .line 17
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method bf(I)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->bf(I)V

    .line 47
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->Qt:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 48
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 32
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->Qu:Lcom/android/b/b/Q;

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->Qt:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-super {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->as(Landroid/content/Context;)V

    .line 22
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->Qu:Lcom/android/b/b/Q;

    if-nez v0, :cond_0

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->Qt:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 26
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->Qt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method
