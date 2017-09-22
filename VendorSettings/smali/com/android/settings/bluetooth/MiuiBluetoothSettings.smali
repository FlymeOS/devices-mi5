.class public Lcom/android/settings/bluetooth/MiuiBluetoothSettings;
.super Lcom/android/settings/bluetooth/BluetoothSettings;
.source "MiuiBluetoothSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field RY:Lmiui/bluetooth/ble/MiBleDeviceManager;

.field private Se:Lcom/android/settings/eH;

.field private Sf:Lmiui/preference/ValuePreference;

.field Sg:Z

.field private Sh:Lcom/android/settings/bluetooth/GattProfile;

.field private Si:I

.field private Sj:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sg:Z

    .line 54
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Si:I

    .line 133
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$2;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sj:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/settings/bluetooth/GattProfile;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sh:Lcom/android/settings/bluetooth/GattProfile;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->n(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private n(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .prologue
    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.bluetooth.action.PICK_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    const-string v1, "com.android.bluetooth.ble.DeviceProfileFragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 328
    const-string v1, "com.android.bluetooth.ble.device"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 330
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private nW()V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v1, v0}, Lcom/android/b/b/Q;->setName(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sf:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 148
    return-void
.end method


# virtual methods
.method public a(Lcom/android/b/b/H;I)V
    .locals 1

    .prologue
    .line 244
    iput p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Si:I

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->b(Landroid/preference/PreferenceGroup;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->nL()V

    .line 247
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sh:Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/GattProfile;->nS()V

    .line 248
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->Ad()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->bi(I)V

    .line 249
    return-void
.end method

.method protected aC(Z)V
    .locals 1

    .prologue
    .line 253
    if-eqz p1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Se:Lcom/android/settings/eH;

    invoke-virtual {v0}, Lcom/android/settings/eH;->eL()V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Se:Lcom/android/settings/eH;

    invoke-virtual {v0}, Lcom/android/settings/eH;->stopAnimation()V

    goto :goto_0
.end method

.method public b(Lcom/android/b/b/H;)V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Rl:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->Ad()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sh:Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {p1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/GattProfile;->m(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 271
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sg:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->RY:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {p1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 273
    invoke-virtual {p1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sh:Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {p1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/GattProfile;->l(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 276
    sget-object v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "some unknown ble device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/b/b/H;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 279
    :cond_2
    sget-object v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HID over BLE device found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/b/b/H;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Rh:Lcom/android/b/b/n;

    sget-object v1, Lcom/android/b/b/h;->aJm:Lcom/android/b/b/n;

    if-ne v0, v1, :cond_4

    .line 283
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sh:Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {p1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/GattProfile;->l(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->c(Lcom/android/b/b/H;)V

    goto/16 :goto_0

    .line 288
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sh:Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {p1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/GattProfile;->l(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->c(Lcom/android/b/b/H;)V

    goto/16 :goto_0

    .line 295
    :cond_5
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->b(Lcom/android/b/b/H;)V

    goto/16 :goto_0
.end method

.method protected bi(I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->nW()V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 155
    packed-switch p1, :pswitch_data_0

    .line 171
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Rc:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c0118

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 173
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->bi(I)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Rc:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0c0e5a

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Rc:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Rc:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setIcon(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_1
    return-void

    .line 157
    :goto_2
    :pswitch_0
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 158
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v3

    if-ltz v3, :cond_1

    .line 160
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->QV:Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Qu:Lcom/android/b/b/Q;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Rc:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/b/b/Q;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->QV:Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

    .line 166
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->QV:Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->resume()V

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    goto :goto_1

    .line 155
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public bj(I)V
    .locals 1

    .prologue
    .line 233
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->aC(Z)V

    .line 236
    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sh:Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/GattProfile;->nS()V

    .line 239
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->bi(I)V

    .line 240
    return-void
.end method

.method c(Lcom/android/b/b/H;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Rk:Landroid/preference/PreferenceGroup;

    instance-of v0, v0, Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 189
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->RY:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {p1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/b/b/H;Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    .line 193
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;->e(Lcom/android/b/b/H;)V

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->e(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 196
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Rk:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 197
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Rl:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->c(Lcom/android/b/b/H;)V

    goto :goto_0
.end method

.method d(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 2

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->RY:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->nm()Lcom/android/b/b/H;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->nm()Lcom/android/b/b/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->n(Landroid/bluetooth/BluetoothDevice;)V

    .line 306
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->d(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0
.end method

.method e(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3

    .prologue
    .line 310
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->nm()Lcom/android/b/b/H;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->RY:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {v0}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$3;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$3;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Lcom/android/b/b/H;)V

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a(Landroid/view/View$OnClickListener;)V

    .line 323
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->e(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0
.end method

.method nJ()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 113
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->nJ()V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 115
    const-string v0, "bluetooth_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->QW:Landroid/preference/CheckBoxPreference;

    .line 116
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->QW:Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, v2, v3}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->QU:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    .line 117
    const-string v0, "bluetooth_device_name_edit"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sf:Lmiui/preference/ValuePreference;

    .line 118
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sf:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sf:Lmiui/preference/ValuePreference;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sj:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 120
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sf:Lmiui/preference/ValuePreference;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    .line 121
    const-string v0, "bluetooth_device_searchable"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Rc:Landroid/preference/CheckBoxPreference;

    .line 122
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 58
    new-instance v0, Lcom/android/settings/eH;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/eH;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Se:Lcom/android/settings/eH;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    invoke-static {v0, v1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->createManager(Landroid/content/Context;Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;)Lmiui/bluetooth/ble/MiBleDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->RY:Lmiui/bluetooth/ble/MiBleDeviceManager;

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->onCreate(Landroid/os/Bundle;)V

    .line 77
    new-instance v0, Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Qu:Lcom/android/b/b/Q;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Rj:Lcom/android/b/b/R;

    invoke-virtual {v3}, Lcom/android/b/b/R;->Ai()Lcom/android/b/b/J;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Rj:Lcom/android/b/b/R;

    invoke-virtual {v4}, Lcom/android/b/b/R;->Ak()Lcom/android/b/b/U;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->RY:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/bluetooth/GattProfile;-><init>(Landroid/content/Context;Lcom/android/b/b/Q;Lcom/android/b/b/J;Lcom/android/b/b/U;Lmiui/bluetooth/ble/MiBleDeviceManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sh:Lcom/android/settings/bluetooth/GattProfile;

    .line 79
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Qu:Lcom/android/b/b/Q;

    if-nez v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->Ad()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 209
    :goto_1
    const v3, 0x7f0c027f

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 211
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Se:Lcom/android/settings/eH;

    invoke-virtual {v4}, Lcom/android/settings/eH;->fq()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 212
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 213
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 214
    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->aC(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 208
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->RY:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->close()V

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sh:Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/GattProfile;->cleanup()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Sh:Lcom/android/settings/bluetooth/GattProfile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->onDestroy()V

    .line 92
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 221
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 228
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 223
    :pswitch_0
    iget v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Si:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 224
    sget-object v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    const-string v1, "Cannot start scanning since device is in bonding state."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x1

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->QV:Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->QV:Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->pause()V

    .line 108
    :cond_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->onPause()V

    .line 109
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 127
    const-string v0, "bluetooth_enable"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->QU:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->aD(Z)V

    .line 130
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->QV:Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->QV:Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothDiscoverableEnabler;->resume()V

    .line 99
    :cond_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->onResume()V

    .line 100
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->Si:I

    .line 101
    return-void
.end method
