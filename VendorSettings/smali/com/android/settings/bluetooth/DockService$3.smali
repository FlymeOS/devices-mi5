.class Lcom/android/vendorsettings/bluetooth/DockService$3;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic RU:Lcom/android/vendorsettings/bluetooth/DockService;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/bluetooth/DockService;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/vendorsettings/bluetooth/DockService$3;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService$3;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    invoke-static {v0}, Lcom/android/vendorsettings/bluetooth/DockService;->b(Lcom/android/vendorsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService$3;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService$3;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    invoke-static {v1}, Lcom/android/vendorsettings/bluetooth/DockService;->b(Lcom/android/vendorsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/vendorsettings/bluetooth/LocalBluetoothPreferences;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 594
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService$3;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    invoke-virtual {v0}, Lcom/android/vendorsettings/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dock_audio_media_enabled"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
