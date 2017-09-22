.class Lcom/android/vendorsettings/wfd/h;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic awB:Landroid/hardware/display/WifiDisplay;

.field final synthetic awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/vendorsettings/wfd/h;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    iput-object p2, p0, Lcom/android/vendorsettings/wfd/h;->awB:Landroid/hardware/display/WifiDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/h;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->a(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/wfd/h;->awB:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 609
    return-void
.end method
