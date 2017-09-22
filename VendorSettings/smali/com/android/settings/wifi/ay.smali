.class Lcom/android/vendorsettings/wifi/ay;
.super Landroid/content/BroadcastReceiver;
.source "WifiSetupActivity.java"


# instance fields
.field final synthetic aEh:Lcom/android/vendorsettings/wifi/WifiSetupActivity;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/WifiSetupActivity;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/ay;->aEh:Lcom/android/vendorsettings/wifi/WifiSetupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/vendorsettings/wifi/ay;->aEh:Lcom/android/vendorsettings/wifi/WifiSetupActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/wifi/WifiSetupActivity;->a(Lcom/android/vendorsettings/wifi/WifiSetupActivity;)V

    .line 84
    return-void
.end method
