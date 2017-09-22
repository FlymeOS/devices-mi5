.class Lcom/android/settings/wifi/ao;
.super Ljava/lang/Object;
.source "WifiPrioritySettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic aDA:Lcom/android/settings/wifi/WifiPrioritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiPrioritySettings;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings/wifi/ao;->aDA:Lcom/android/settings/wifi/WifiPrioritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/ao;->aDA:Lcom/android/settings/wifi/WifiPrioritySettings;

    invoke-static {v0, p1, p2}, Lcom/android/settings/wifi/WifiPrioritySettings;->a(Lcom/android/settings/wifi/WifiPrioritySettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 108
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/ao;->b(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method
