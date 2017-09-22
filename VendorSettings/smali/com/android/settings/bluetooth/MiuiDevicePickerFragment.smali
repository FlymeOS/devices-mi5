.class public Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;
.super Lcom/android/settings/bluetooth/DevicePickerFragment;
.source "MiuiDevicePickerFragment.java"


# instance fields
.field private Se:Lcom/android/settings/eH;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public aB(Z)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->aB(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->invalidateOptionsMenu()V

    .line 77
    return-void
.end method

.method protected aC(Z)V
    .locals 1

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->Se:Lcom/android/settings/eH;

    invoke-virtual {v0}, Lcom/android/settings/eH;->eL()V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->Se:Lcom/android/settings/eH;

    invoke-virtual {v0}, Lcom/android/settings/eH;->stopAnimation()V

    goto :goto_0
.end method

.method nJ()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->nJ()V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->setHasOptionsMenu(Z)V

    .line 83
    return-void
.end method

.method nX()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->Rl:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 88
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 90
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/b/b/H;

    .line 93
    sget-object v3, Lcom/android/b/b/h;->aJn:Lcom/android/b/b/n;

    invoke-virtual {v1}, Lcom/android/b/b/H;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/android/b/b/n;->a(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 96
    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->Rk:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/android/settings/eH;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/eH;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->Se:Lcom/android/settings/eH;

    .line 28
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->Qu:Lcom/android/b/b/Q;

    if-nez v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v0}, Lcom/android/b/b/Q;->Ad()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 36
    :goto_1
    const v3, 0x7f0c027f

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 38
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->Se:Lcom/android/settings/eH;

    invoke-virtual {v4}, Lcom/android/settings/eH;->fq()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 39
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 40
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 41
    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->aC(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 35
    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 59
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v1}, Lcom/android/b/b/Q;->Ad()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v1}, Lcom/android/b/b/Q;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v1}, Lcom/android/b/b/Q;->Ac()V

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->nX()V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->nM()V

    .line 65
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->Qu:Lcom/android/b/b/Q;

    invoke-virtual {v1, v0}, Lcom/android/b/b/Q;->bR(Z)V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
