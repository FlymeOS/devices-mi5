.class Lcom/android/server/wifi/WifiAutoConnController$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiAutoConnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiAutoConnController;->registerConnectivityChangedReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiAutoConnController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiAutoConnController;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoConnController$4;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController$4;->this$0:Lcom/android/server/wifi/WifiAutoConnController;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiAutoConnController;->processBroadcast(Ljava/lang/String;)V

    .line 128
    return-void
.end method
