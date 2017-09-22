.class Lcom/android/vendorsettings/bluetooth/BluetoothPairingDialog$3;
.super Ljava/lang/Object;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic QN:Lcom/android/vendorsettings/bluetooth/BluetoothPairingDialog;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/bluetooth/BluetoothPairingDialog;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPairingDialog$3;->QN:Lcom/android/vendorsettings/bluetooth/BluetoothPairingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 299
    if-eqz p2, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPairingDialog$3;->QN:Lcom/android/vendorsettings/bluetooth/BluetoothPairingDialog;

    invoke-static {v0}, Lcom/android/vendorsettings/bluetooth/BluetoothPairingDialog;->a(Lcom/android/vendorsettings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/BluetoothPairingDialog$3;->QN:Lcom/android/vendorsettings/bluetooth/BluetoothPairingDialog;

    invoke-static {v0}, Lcom/android/vendorsettings/bluetooth/BluetoothPairingDialog;->a(Lcom/android/vendorsettings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0
.end method
