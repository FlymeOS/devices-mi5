.class Lcom/android/settings/wfd/t;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field final synthetic awy:Lcom/android/settings/wfd/WifiDisplaySettings;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/settings/wfd/t;->awy:Lcom/android/settings/wfd/WifiDisplaySettings;

    iput-boolean p2, p0, Lcom/android/settings/wfd/t;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    .prologue
    .line 549
    const-string v1, "WifiDisplaySettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/settings/wfd/t;->val$enable:Z

    if-eqz v0, :cond_0

    const-string v0, "entered"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " listen mode with reason "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void

    .line 549
    :cond_0
    const-string v0, "exited"

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 545
    return-void
.end method
