.class Lcom/android/vendorsettings/wfd/d;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic awz:Lcom/android/vendorsettings/wfd/c;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wfd/c;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/vendorsettings/wfd/d;->awz:Lcom/android/vendorsettings/wfd/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/d;->awz:Lcom/android/vendorsettings/wfd/c;

    iget-object v0, v0, Lcom/android/vendorsettings/wfd/c;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->a(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->pauseWifiDisplay()V

    .line 374
    return-void
.end method
