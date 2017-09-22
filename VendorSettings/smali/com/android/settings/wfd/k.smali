.class Lcom/android/settings/wfd/k;
.super Landroid/database/ContentObserver;
.source "WifiDisplaySettings.java"


# instance fields
.field final synthetic awy:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/settings/wfd/k;->awy:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/settings/wfd/k;->awy:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->f(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    .line 645
    return-void
.end method
