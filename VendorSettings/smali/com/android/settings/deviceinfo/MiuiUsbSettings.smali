.class public Lcom/android/settings/deviceinfo/MiuiUsbSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiUsbSettings.java"


# instance fields
.field private VA:Landroid/preference/CheckBoxPreference;

.field private VB:Landroid/preference/CheckBoxPreference;

.field private VC:Landroid/preference/CheckBoxPreference;

.field private VD:Z

.field private VE:Z

.field private VF:Ljava/lang/String;

.field private VG:Ljava/lang/String;

.field private VH:Ljava/lang/String;

.field private VI:Ljava/lang/String;

.field private final VJ:Landroid/content/BroadcastReceiver;

.field private Vy:Landroid/hardware/usb/UsbManager;

.field private Vz:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 40
    new-instance v0, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;-><init>(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VJ:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)Landroid/hardware/usb/UsbManager;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Vy:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/MiuiUsbSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->aU(Ljava/lang/String;)V

    return-void
.end method

.method private aU(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Vz:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VF:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VA:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VG:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 125
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VD:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VB:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VH:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VE:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VC:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VI:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 131
    :cond_1
    return-void
.end method

.method private hu()Landroid/preference/PreferenceScreen;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 60
    :cond_0
    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->addPreferencesFromResource(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 63
    const-string v0, "usb_mtp"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Vz:Landroid/preference/CheckBoxPreference;

    .line 64
    const-string v0, "usb_ptp"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VA:Landroid/preference/CheckBoxPreference;

    .line 65
    const-string v0, "usb_msd"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VB:Landroid/preference/CheckBoxPreference;

    .line 66
    const-string v0, "usb_charging"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VC:Landroid/preference/CheckBoxPreference;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0b8e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VF:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0b8f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VG:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0b90

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VH:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0b91

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VI:Ljava/lang/String;

    .line 73
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VB:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0c0e5f

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VB:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0c0e60

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 77
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VD:Z

    .line 79
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VB:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VD:Z

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 81
    iput-object v4, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VB:Landroid/preference/CheckBoxPreference;

    .line 84
    :cond_2
    sget-boolean v0, Lmiui/os/Build;->IS_CTA_BUILD:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_5

    :cond_3
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VE:Z

    .line 85
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VE:Z

    if-nez v0, :cond_4

    .line 86
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 87
    iput-object v4, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VC:Landroid/preference/CheckBoxPreference;

    .line 89
    :cond_4
    return-object v2

    :cond_5
    move v0, v1

    .line 84
    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Vy:Landroid/hardware/usb/UsbManager;

    .line 101
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VJ:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lcom/android/settings/iC;->iu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Vz:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Vz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Vy:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VF:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->aU(Ljava/lang/String;)V

    .line 157
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VA:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VA:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Vy:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->aU(Ljava/lang/String;)V

    goto :goto_1

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VB:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VD:Z

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Vy:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->aU(Ljava/lang/String;)V

    goto :goto_1

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VE:Z

    if-eqz v0, :cond_4

    .line 152
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Vy:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VI:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->aU(Ljava/lang/String;)V

    goto :goto_1

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->Vy:Landroid/hardware/usb/UsbManager;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 115
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->hu()Landroid/preference/PreferenceScreen;

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->VJ:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void
.end method
