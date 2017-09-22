.class Lcom/android/settings/bluetooth/MiuiBluetoothSettings$2;
.super Ljava/lang/Object;
.source "MiuiBluetoothSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic Sk:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$2;->Sk:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 136
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 137
    const-string v0, ":miui:starting_window_label"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$2;->Sk:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$2;->Sk:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    const-class v2, Lcom/android/settings/MiuiDeviceNameEditFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 140
    const/4 v0, 0x1

    return v0
.end method
