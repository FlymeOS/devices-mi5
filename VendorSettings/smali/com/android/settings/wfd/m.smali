.class Lcom/android/vendorsettings/wfd/m;
.super Landroid/preference/CheckBoxPreference;
.source "WifiDisplaySettings.java"


# instance fields
.field final synthetic awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/vendorsettings/wfd/m;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .prologue
    .line 396
    iget-object v1, p0, Lcom/android/vendorsettings/wfd/m;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/android/vendorsettings/wfd/m;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->b(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->a(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Z)Z

    .line 397
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/m;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/vendorsettings/wfd/m;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->b(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->b(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Z)V

    .line 398
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/m;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->b(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wfd/m;->setChecked(Z)V

    .line 399
    return-void

    .line 396
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
