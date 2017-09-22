.class Lcom/android/vendorsettings/wifi/i;
.super Ljava/lang/Object;
.source "MiuiAccessPointPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private aAu:Lcom/android/vendorsettings/SettingsPreferenceFragment;

.field private azP:Lcom/android/b/e/a;


# direct methods
.method public constructor <init>(Lcom/android/b/e/a;Lcom/android/vendorsettings/SettingsPreferenceFragment;)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/i;->azP:Lcom/android/b/e/a;

    .line 258
    iput-object p2, p0, Lcom/android/vendorsettings/wifi/i;->aAu:Lcom/android/vendorsettings/SettingsPreferenceFragment;

    .line 259
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 263
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 264
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/i;->azP:Lcom/android/b/e/a;

    invoke-virtual {v0, v4}, Lcom/android/b/e/a;->k(Landroid/os/Bundle;)V

    .line 265
    const-string v0, ":miui:starting_window_label"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v0, "ssid"

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/i;->azP:Lcom/android/b/e/a;

    iget-object v1, v1, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/i;->aAu:Lcom/android/vendorsettings/SettingsPreferenceFragment;

    iget-object v1, p0, Lcom/android/vendorsettings/wifi/i;->aAu:Lcom/android/vendorsettings/SettingsPreferenceFragment;

    const-class v2, Lcom/android/vendorsettings/wifi/MiuiWifiDetailFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 268
    return-void
.end method
