.class Lcom/android/vendorsettings/wfd/g;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic awA:Landroid/widget/EditText;

.field final synthetic awB:Landroid/hardware/display/WifiDisplay;

.field final synthetic awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcom/android/vendorsettings/wfd/g;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    iput-object p2, p0, Lcom/android/vendorsettings/wfd/g;->awA:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/vendorsettings/wfd/g;->awB:Landroid/hardware/display/WifiDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/g;->awA:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/vendorsettings/wfd/g;->awB:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    :cond_0
    const/4 v0, 0x0

    .line 602
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/wfd/g;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->a(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/wfd/g;->awB:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManager;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    return-void
.end method
