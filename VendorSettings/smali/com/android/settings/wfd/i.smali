.class Lcom/android/vendorsettings/wfd/i;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/vendorsettings/wfd/i;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/vendorsettings/wfd/i;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->i(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;)I

    move-result v0

    .line 626
    iget-object v1, p0, Lcom/android/vendorsettings/wfd/i;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->d(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;I)I

    .line 627
    iget-object v1, p0, Lcom/android/vendorsettings/wfd/i;->awy:Lcom/android/vendorsettings/wfd/WifiDisplaySettings;

    invoke-static {v1, v0}, Lcom/android/vendorsettings/wfd/WifiDisplaySettings;->e(Lcom/android/vendorsettings/wfd/WifiDisplaySettings;I)V

    .line 628
    return-void
.end method
