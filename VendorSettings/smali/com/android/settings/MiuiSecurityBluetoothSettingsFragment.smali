.class public Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiSecurityBluetoothSettingsFragment.java"


# instance fields
.field private dr:Lcom/android/settings/aH;

.field private fi:Landroid/security/MiuiLockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    return-void
.end method

.method private T(I)V
    .locals 3

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.bluetooth.action.PICK_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    const-string v1, "miui.bluetooth.extra.MIBLE_PROPERTY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 180
    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;)Lcom/android/settings/aH;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->dr:Lcom/android/settings/aH;

    return-object v0
.end method

.method private e(Ljava/lang/String;I)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const/16 v7, 0x67

    const/16 v6, 0x66

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 134
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 136
    const-string v0, "unlock_device_by_bluetooth"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 137
    const-string v1, "bluetooth_devices"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 139
    const/16 v2, 0x64

    if-ne p1, v2, :cond_3

    if-ne p2, v4, :cond_3

    .line 140
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.miui.keyguard.bluetoothdeviceunlock.disable"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2, v5}, Landroid/security/MiuiLockPatternUtils;->setBluetoothUnlockEnabled(Z)V

    .line 143
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 144
    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    invoke-direct {p0, v6}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->T(I)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2, v3}, Landroid/security/MiuiLockPatternUtils;->setBluetoothUnlockEnabled(Z)V

    .line 150
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 151
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.keyguard.bluetoothdeviceunlock"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    :cond_3
    const/16 v2, 0x65

    if-ne p1, v2, :cond_4

    if-ne p2, v4, :cond_4

    .line 156
    invoke-direct {p0, v7}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->T(I)V

    goto :goto_0

    .line 157
    :cond_4
    if-eq p1, v6, :cond_5

    if-ne p1, v7, :cond_6

    :cond_5
    if-ne p2, v4, :cond_6

    .line 159
    if-eqz p3, :cond_0

    .line 160
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 161
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 163
    const-string v2, "device_address"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-class v0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x68

    invoke-virtual {p0, p0, v0, v2, v1}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 166
    :cond_6
    const/16 v2, 0x68

    if-ne p1, v2, :cond_0

    .line 167
    if-ne p2, v4, :cond_0

    .line 168
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2, v3}, Landroid/security/MiuiLockPatternUtils;->setBluetoothUnlockEnabled(Z)V

    .line 169
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 170
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    .line 47
    new-instance v0, Lcom/android/settings/aH;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/aH;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->dr:Lcom/android/settings/aH;

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 53
    :cond_0
    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->addPreferencesFromResource(I)V

    .line 55
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 102
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v1, "unlock_device_by_bluetooth"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->dr:Lcom/android/settings/aH;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/aH;->b(ILjava/lang/CharSequence;)Z

    .line 129
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 106
    :cond_1
    const-string v1, "matched_device"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    const-class v0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v5, v2}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 108
    :cond_2
    const-string v1, "change_matched_device"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/android/settings/eR;

    invoke-direct {v1, p0}, Lcom/android/settings/eR;-><init>(Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;)V

    .line 121
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 122
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c102b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 124
    const/4 v2, -0x2

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 126
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 59
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 61
    const-string v0, "unlock_device_by_bluetooth"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 62
    const-string v1, "bluetooth_devices"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 64
    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 65
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getBluetoothNameToUnlock()Ljava/lang/String;

    move-result-object v3

    .line 67
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    :goto_0
    const-string v3, "matched_device"

    invoke-direct {p0, v3, v2}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 73
    const-string v2, "change_matched_device"

    const v3, 0x7f0c1023

    invoke-direct {p0, v2, v3}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->e(Ljava/lang/String;I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 80
    :goto_1
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->fi:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 82
    invoke-virtual {v1, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 87
    :goto_2
    return-void

    .line 68
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 76
    :cond_1
    const-string v2, "no_matched_device"

    const v3, 0x7f0c1022

    invoke-direct {p0, v2, v3}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->e(Ljava/lang/String;I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 85
    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_2
.end method
