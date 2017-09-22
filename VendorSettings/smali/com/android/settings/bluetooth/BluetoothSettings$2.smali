.class Lcom/android/vendorsettings/bluetooth/BluetoothSettings$2;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/vendorsettings/dK;


# instance fields
.field final synthetic Re:Lcom/android/vendorsettings/bluetooth/BluetoothSettings;


# virtual methods
.method public onClick()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 492
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothSettings$2;->Re:Lcom/android/vendorsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hn;

    .line 494
    const-class v1, Lcom/android/vendorsettings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c051c

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/vendorsettings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 496
    return-void
.end method
