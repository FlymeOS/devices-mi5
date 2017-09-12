.class Lcom/android/server/wifi/WifiAutoConnController$1;
.super Landroid/database/ContentObserver;
.source "WifiAutoConnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiAutoConnController;->registerDisableWifiAutoConnectChangedObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiAutoConnController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiAutoConnController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoConnController$1;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController$1;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController$1;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    # getter for: Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiAutoConnController;->access$100(Lcom/android/server/wifi/WifiAutoConnController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getDisableWifiAutoConnectSsid(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v1

    # setter for: Lcom/android/server/wifi/WifiAutoConnController;->mDisableSsidSet:Ljava/util/HashSet;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiAutoConnController;->access$002(Lcom/android/server/wifi/WifiAutoConnController;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 81
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController$1;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    # getter for: Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiAutoConnController;->access$200(Lcom/android/server/wifi/WifiAutoConnController;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 82
    return-void
.end method
