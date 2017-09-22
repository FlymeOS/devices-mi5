.class Lcom/android/vendorsettings/wfd/n;
.super Landroid/preference/CheckBoxPreference;
.source "WifiDisplaySettings.java"


# instance fields
.field final synthetic awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/vendorsettings/wfd/n;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .prologue
    .line 409
    iget-object v1, p0, Lcom/android/vendorsettings/wfd/n;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/android/vendorsettings/wfd/n;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->c(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->c(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;Z)Z

    .line 410
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/n;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->c(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/n;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->d(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)V

    .line 415
    :goto_1
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/n;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->c(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/wfd/n;->setChecked(Z)V

    .line 416
    return-void

    .line 409
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/n;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->e(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)V

    goto :goto_1
.end method
