.class Lcom/android/vendorsettings/bluetooth/DockService$5;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic RU:Lcom/android/vendorsettings/bluetooth/DockService;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/bluetooth/DockService;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/vendorsettings/bluetooth/DockService$5;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 616
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 617
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService$5;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    invoke-static {v1}, Lcom/android/vendorsettings/bluetooth/DockService;->b(Lcom/android/vendorsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 618
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService$5;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService$5;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    invoke-static {v2}, Lcom/android/vendorsettings/bluetooth/DockService;->b(Lcom/android/vendorsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/vendorsettings/bluetooth/LocalBluetoothPreferences;->o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService$5;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService$5;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    invoke-static {v2}, Lcom/android/vendorsettings/bluetooth/DockService;->b(Lcom/android/vendorsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/vendorsettings/bluetooth/LocalBluetoothPreferences;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService$5;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService$5;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    invoke-static {v1}, Lcom/android/vendorsettings/bluetooth/DockService;->b(Lcom/android/vendorsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/bluetooth/DockService$5;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    invoke-static {v2}, Lcom/android/vendorsettings/bluetooth/DockService;->d(Lcom/android/vendorsettings/bluetooth/DockService;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/vendorsettings/bluetooth/DockService;->a(Lcom/android/vendorsettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 635
    :cond_1
    :goto_0
    return-void

    .line 629
    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService$5;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    invoke-static {v1}, Lcom/android/vendorsettings/bluetooth/DockService;->e(Lcom/android/vendorsettings/bluetooth/DockService;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 630
    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService$5;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    invoke-virtual {v1}, Lcom/android/vendorsettings/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dock_audio_media_enabled"

    iget-object v3, p0, Lcom/android/vendorsettings/bluetooth/DockService$5;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    invoke-static {v3}, Lcom/android/vendorsettings/bluetooth/DockService;->e(Lcom/android/vendorsettings/bluetooth/DockService;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
