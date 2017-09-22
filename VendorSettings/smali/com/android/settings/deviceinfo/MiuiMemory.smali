.class public Lcom/android/vendorsettings/deviceinfo/MiuiMemory;
.super Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;
.source "MiuiMemory.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private Vm:Landroid/preference/ListPreference;

.field private final Vn:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;-><init>()V

    .line 173
    new-instance v0, Lcom/android/vendorsettings/deviceinfo/MiuiMemory$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory$1;-><init>(Lcom/android/vendorsettings/deviceinfo/MiuiMemory;)V

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->Vn:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/deviceinfo/MiuiMemory;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->oX()V

    return-void
.end method

.method private oX()V
    .locals 5

    .prologue
    .line 184
    const/4 v2, 0x0

    .line 188
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 189
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    .line 190
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 191
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_0

    .line 192
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v4

    .line 193
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const/4 v0, 0x1

    .line 200
    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 202
    if-eqz v0, :cond_2

    .line 203
    const-string v0, "priority_storage_category"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 204
    if-nez v0, :cond_1

    .line 205
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 206
    const-string v2, "priority_storage_category"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 208
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 209
    const v2, 0x7f0c103a

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 210
    const v2, 0x7f0c103b

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 211
    const-string v2, "com.android.settings.deviceinfo.PriorityStorageFragment"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 212
    const-string v2, "priority_storage"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 221
    :cond_1
    :goto_1
    return-void

    .line 216
    :cond_2
    const-string v0, "priority_storage_category"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    if-nez v0, :cond_1

    .line 65
    const-string v0, "usb_mode"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->Vm:Landroid/preference/ListPreference;

    .line 66
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->Vm:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string v0, "usb_mode_category"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    invoke-super {p0, p1}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 123
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/vendorsettings/deviceinfo/MiuiUsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0458

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 132
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    const-class v0, Lcom/android/vendorsettings/deviceinfo/MiuiUsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->onPause()V

    .line 98
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->Vn:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 103
    const-string v0, "usb_mode"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->Vm:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 105
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->Vm:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 107
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->Vm:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->Vm:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 140
    const-string v0, "priority_storage"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-class v0, Lcom/android/vendorsettings/deviceinfo/PriorityStorageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, 0x7f0c103a

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    move v0, v6

    .line 170
    :goto_0
    return v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->Wc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;

    .line 146
    invoke-virtual {v0}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->oZ()Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 148
    if-eqz v2, :cond_1

    .line 152
    invoke-virtual {v0, p2}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->g(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 153
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-nez v0, :cond_2

    .line 154
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/vendorsettings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->b(Landroid/app/Fragment;Ljava/lang/String;)V

    move v0, v6

    .line 155
    goto :goto_0

    .line 157
    :cond_2
    new-instance v0, Lcom/android/vendorsettings/deviceinfo/StorageSettings$UnmountTask;

    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/android/vendorsettings/deviceinfo/StorageSettings$UnmountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/deviceinfo/StorageSettings$UnmountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v6

    .line 158
    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/vendorsettings/deviceinfo/MiuiStorageVolumePreferenceCategory;->h(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/vendorsettings/deviceinfo/StorageWizardFormatConfirm;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    const-string v3, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v2, "format_private"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 170
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/vendorsettings/deviceinfo/PrivateVolumeSettings;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->Vm:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->Vm:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->Vm:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 85
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->Vm:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->Vm:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->oX()V

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/deviceinfo/MiuiMemory;->Vn:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    return-void
.end method
