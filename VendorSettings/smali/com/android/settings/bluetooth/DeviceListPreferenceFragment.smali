.class public abstract Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/android/b/b/g;


# instance fields
.field Qu:Lcom/android/b/b/Q;

.field protected Rh:Lcom/android/b/b/n;

.field Ri:Landroid/bluetooth/BluetoothDevice;

.field Rj:Lcom/android/b/b/R;

.field protected Rk:Landroid/preference/PreferenceGroup;

.field final Rl:Ljava/util/WeakHashMap;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rl:Ljava/util/WeakHashMap;

    .line 71
    sget-object v0, Lcom/android/b/b/h;->aJl:Lcom/android/b/b/n;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rh:Lcom/android/b/b/n;

    .line 72
    return-void
.end method


# virtual methods
.method final a(Lcom/android/b/b/n;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rh:Lcom/android/b/b/n;

    .line 76
    return-void
.end method

.method public aB(Z)V
    .locals 0

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->aC(Z)V

    .line 218
    return-void
.end method

.method protected aC(Z)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rk:Landroid/preference/PreferenceGroup;

    instance-of v0, v0, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rk:Landroid/preference/PreferenceGroup;

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->Q(Z)V

    .line 226
    :cond_0
    return-void
.end method

.method final aO(I)V
    .locals 1

    .prologue
    .line 79
    invoke-static {p1}, Lcom/android/b/b/h;->dU(I)Lcom/android/b/b/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rh:Lcom/android/b/b/n;

    .line 80
    return-void
.end method

.method b(Landroid/preference/PreferenceGroup;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rk:Landroid/preference/PreferenceGroup;

    .line 100
    return-void
.end method

.method public b(Lcom/android/b/b/H;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rl:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->Ad()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rh:Lcom/android/b/b/n;

    invoke-virtual {p1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/b/b/n;->a(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->c(Lcom/android/b/b/H;)V

    goto :goto_0
.end method

.method public b(Lcom/android/b/b/H;I)V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public bj(I)V
    .locals 1

    .prologue
    .line 229
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->aC(Z)V

    .line 232
    :cond_0
    return-void
.end method

.method c(Lcom/android/b/b/H;)V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rk:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_0

    .line 188
    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "Trying to create a device preference before the list group/category exists!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/b/b/H;)V

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->e(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 197
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rk:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 198
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rl:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public d(Lcom/android/b/b/H;)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rl:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 211
    if-eqz v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rk:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    :cond_0
    return-void
.end method

.method d(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->no()V

    .line 171
    return-void
.end method

.method e(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method abstract nJ()V
.end method

.method nL()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->Ac()V

    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rl:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 133
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rk:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rk:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    if-ltz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rk:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 133
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    return-void
.end method

.method nM()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rj:Lcom/android/b/b/R;

    invoke-virtual {v0}, Lcom/android/b/b/R;->Ai()Lcom/android/b/b/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/b/b/J;->zY()Ljava/util/Collection;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/b/H;

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->b(Lcom/android/b/b/H;)V

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->ax(Landroid/content/Context;)Lcom/android/b/b/R;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rj:Lcom/android/b/b/R;

    .line 87
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rj:Lcom/android/b/b/R;

    if-nez v0, :cond_0

    .line 88
    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rj:Lcom/android/b/b/R;

    invoke-virtual {v0}, Lcom/android/b/b/R;->Af()Lcom/android/b/b/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Qu:Lcom/android/b/b/Q;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->nJ()V

    .line 95
    const-string v0, "bt_device_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rk:Landroid/preference/PreferenceGroup;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 119
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rj:Lcom/android/b/b/R;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->hj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->nL()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rj:Lcom/android/b/b/R;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/b/b/R;->cP(Landroid/content/Context;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rj:Lcom/android/b/b/R;

    invoke-virtual {v0}, Lcom/android/b/b/R;->Aj()Lcom/android/b/b/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/b/b/t;->b(Lcom/android/b/b/g;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 153
    const-string v1, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v1, v0}, Lcom/android/b/b/Q;->bR(Z)V

    .line 166
    :goto_0
    return v0

    .line 158
    :cond_0
    instance-of v1, p2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v1, :cond_1

    .line 159
    check-cast p2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 160
    invoke-virtual {p2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->nm()Lcom/android/b/b/H;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Ri:Landroid/bluetooth/BluetoothDevice;

    .line 162
    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->d(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0

    .line 166
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 108
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rj:Lcom/android/b/b/R;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->hj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rj:Lcom/android/b/b/R;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/b/b/R;->cP(Landroid/content/Context;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Rj:Lcom/android/b/b/R;

    invoke-virtual {v0}, Lcom/android/b/b/R;->Aj()Lcom/android/b/b/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/b/b/t;->a(Lcom/android/b/b/g;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->isDiscovering()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->aC(Z)V

    goto :goto_0
.end method
