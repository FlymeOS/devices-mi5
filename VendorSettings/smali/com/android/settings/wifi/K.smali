.class Lcom/android/settings/wifi/K;
.super Ljava/lang/Object;
.source "MiuiWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic aBv:Lcom/android/settings/wifi/MiuiWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lcom/android/settings/wifi/K;->aBv:Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/settings/wifi/K;->aBv:Lcom/android/settings/wifi/MiuiWifiSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->b(Lcom/android/settings/wifi/MiuiWifiSettings;Z)Z

    .line 896
    iget-object v0, p0, Lcom/android/settings/wifi/K;->aBv:Lcom/android/settings/wifi/MiuiWifiSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->a(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/b/e/a;)Lcom/android/b/e/a;

    .line 897
    return-void
.end method
