.class Lcom/android/server/wifi/WifiAutoConnController$3;
.super Landroid/database/ContentObserver;
.source "WifiAutoConnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiAutoConnController;->registerSelectSsidTypeChangedObserver()V
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
    .line 107
    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoConnController$3;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController$3;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoConnController$3;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    # getter for: Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiAutoConnController;->access$100(Lcom/android/server/wifi/WifiAutoConnController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiAutoConnController;->loadSelectSsidType(Landroid/content/Context;)I

    move-result v0

    .line 111
    .local v0, "selectSsidType":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController$3;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    # getter for: Lcom/android/server/wifi/WifiAutoConnController;->mSelectSsidType:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiAutoConnController;->access$400(Lcom/android/server/wifi/WifiAutoConnController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController$3;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    # setter for: Lcom/android/server/wifi/WifiAutoConnController;->mSelectSsidType:I
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiAutoConnController;->access$402(Lcom/android/server/wifi/WifiAutoConnController;I)I

    .line 113
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController$3;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiAutoConnController;->updateWifiEnableState()V

    .line 115
    :cond_0
    return-void
.end method
