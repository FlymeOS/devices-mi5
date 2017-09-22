.class Lcom/android/vendorsettings/wifi/k;
.super Ljava/lang/Object;
.source "MiuiSavedAccessPointsWifiSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic aAz:Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/vendorsettings/wifi/k;->aAz:Lcom/android/vendorsettings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/wifi/S;Lcom/android/vendorsettings/wifi/S;)I
    .locals 3

    .prologue
    .line 92
    instance-of v0, p1, Lcom/android/vendorsettings/wifi/S;

    if-nez v0, :cond_1

    .line 93
    const/4 v0, 0x1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    instance-of v0, p2, Lcom/android/vendorsettings/wifi/S;

    if-nez v0, :cond_2

    .line 96
    const/4 v0, -0x1

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p1}, Lcom/android/vendorsettings/wifi/S;->wP()Lcom/android/b/e/a;

    move-result-object v0

    iget-object v1, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    .line 99
    invoke-virtual {p2}, Lcom/android/vendorsettings/wifi/S;->wP()Lcom/android/b/e/a;

    move-result-object v0

    iget-object v2, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 102
    if-nez v0, :cond_0

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 89
    check-cast p1, Lcom/android/vendorsettings/wifi/S;

    check-cast p2, Lcom/android/vendorsettings/wifi/S;

    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/wifi/k;->a(Lcom/android/vendorsettings/wifi/S;Lcom/android/vendorsettings/wifi/S;)I

    move-result v0

    return v0
.end method
