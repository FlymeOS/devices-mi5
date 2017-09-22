.class public Lcom/android/settings/bluetooth/DevicePickerFragment;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# instance fields
.field private Rm:Z

.field private Rn:Ljava/lang/String;

.field private Ro:Ljava/lang/String;

.field private Rp:Z

.field private Rq:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private b(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Rq:Z

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Rn:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Ro:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Rn:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Ro:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    return-void
.end method


# virtual methods
.method public a(Lcom/android/b/b/H;I)V
    .locals 2

    .prologue
    .line 159
    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 160
    invoke-virtual {p1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Ri:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->b(Landroid/bluetooth/BluetoothDevice;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    .line 166
    :cond_0
    return-void
.end method

.method public bj(I)V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->bj(I)V

    .line 172
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Qu:Lcom/android/b/b/Q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/b/b/Q;->bR(Z)V

    .line 175
    :cond_0
    return-void
.end method

.method d(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->Ac()V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Ri:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->n(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->nm()Lcom/android/b/b/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/b/b/H;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Rm:Z

    if-nez v0, :cond_1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Ri:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->b(Landroid/bluetooth/BluetoothDevice;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->d(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0
.end method

.method e(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f0400d9

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 73
    return-void
.end method

.method nJ()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->addPreferencesFromResource(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Rm:Z

    .line 64
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->aO(I)V

    .line 66
    const-string v1, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Rn:Ljava/lang/String;

    .line 67
    const-string v1, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Ro:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0134

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 105
    const-string v1, "no_config_bluetooth"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Rp:Z

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v1, v0}, Lcom/android/b/b/Q;->setName(Ljava/lang/String;)V

    .line 113
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    .line 132
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Rq:Z

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.bluetooth.devicepicker.action.DEVICE_NOT_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Rn:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Ro:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Rn:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Ro:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->nM()V

    .line 119
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Rq:Z

    .line 120
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Rp:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Qu:Lcom/android/b/b/Q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/b/b/Q;->bR(Z)V

    .line 122
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->Rp:Z

    .line 124
    :cond_0
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 97
    const/16 v0, 0x19

    return v0
.end method
