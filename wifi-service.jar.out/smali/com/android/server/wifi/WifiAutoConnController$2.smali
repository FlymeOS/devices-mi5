.class Lcom/android/server/wifi/WifiAutoConnController$2;
.super Landroid/database/ContentObserver;
.source "WifiAutoConnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiAutoConnController;->registerConnectTypeChangedObserver()V
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
    .line 91
    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoConnController$2;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController$2;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoConnController$2;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    # getter for: Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiAutoConnController;->access$100(Lcom/android/server/wifi/WifiAutoConnController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiAutoConnController;->loadConnectType(Landroid/content/Context;)I

    move-result v0

    .line 95
    .local v0, "connectType":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController$2;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    # getter for: Lcom/android/server/wifi/WifiAutoConnController;->mConnectType:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiAutoConnController;->access$300(Lcom/android/server/wifi/WifiAutoConnController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController$2;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    # setter for: Lcom/android/server/wifi/WifiAutoConnController;->mConnectType:I
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiAutoConnController;->access$302(Lcom/android/server/wifi/WifiAutoConnController;I)I

    .line 97
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController$2;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiAutoConnController;->updateWifiEnableState()V

    .line 99
    :cond_0
    return-void
.end method
