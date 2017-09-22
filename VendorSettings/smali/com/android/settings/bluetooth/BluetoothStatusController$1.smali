.class Lcom/android/vendorsettings/bluetooth/BluetoothStatusController$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothStatusController.java"


# instance fields
.field final synthetic Rg:Lcom/android/vendorsettings/bluetooth/BluetoothStatusController;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/bluetooth/BluetoothStatusController;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothStatusController$1;->Rg:Lcom/android/vendorsettings/bluetooth/BluetoothStatusController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 33
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/BluetoothStatusController$1;->Rg:Lcom/android/vendorsettings/bluetooth/BluetoothStatusController;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/bluetooth/BluetoothStatusController;->bg(I)V

    .line 35
    return-void
.end method
