.class Lcom/android/settings/wifi/p2p/h;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field final synthetic aGx:Lcom/android/settings/wifi/p2p/g;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/g;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/h;->aGx:Lcom/android/settings/wifi/p2p/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method
