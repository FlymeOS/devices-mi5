.class Lcom/android/settings/wifi/l;
.super Ljava/lang/Object;
.source "MiuiSavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aAz:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings/wifi/l;->aAz:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/l;->aAz:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/l;->aAz:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->a(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)Lcom/android/b/e/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->a(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Lcom/android/b/e/a;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/l;->aAz:Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->b(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V

    .line 124
    return-void
.end method
