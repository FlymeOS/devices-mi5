.class Lcom/android/settings/wifi/p2p/j;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field final synthetic aGy:Lcom/android/settings/wifi/p2p/i;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/i;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/j;->aGy:Lcom/android/settings/wifi/p2p/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 308
    return-void
.end method
