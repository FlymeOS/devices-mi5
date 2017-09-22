.class Lcom/android/vendorsettings/bluetooth/DockService$4;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic RU:Lcom/android/vendorsettings/bluetooth/DockService;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/bluetooth/DockService;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/vendorsettings/bluetooth/DockService$4;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService$4;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    invoke-static {v0}, Lcom/android/vendorsettings/bluetooth/DockService;->c(Lcom/android/vendorsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService$4;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/vendorsettings/bluetooth/DockService$4;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    invoke-static {v1}, Lcom/android/vendorsettings/bluetooth/DockService;->d(Lcom/android/vendorsettings/bluetooth/DockService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/bluetooth/DockService$4;->RU:Lcom/android/vendorsettings/bluetooth/DockService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/bluetooth/DockService;->stopForeground(Z)V

    .line 609
    return-void
.end method
