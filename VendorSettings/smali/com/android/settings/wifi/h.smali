.class final Lcom/android/vendorsettings/wifi/h;
.super Ljava/lang/Object;
.source "MiuiAccessPointPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/wifi/a;Lcom/android/vendorsettings/wifi/a;)I
    .locals 3

    .prologue
    .line 218
    instance-of v0, p1, Lcom/android/vendorsettings/wifi/a;

    if-nez v0, :cond_1

    .line 219
    const/4 v0, 0x1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    instance-of v0, p2, Lcom/android/vendorsettings/wifi/a;

    if-nez v0, :cond_2

    .line 222
    const/4 v0, -0x1

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {p1}, Lcom/android/vendorsettings/wifi/a;->wP()Lcom/android/b/e/a;

    move-result-object v0

    iget-object v1, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    .line 225
    invoke-virtual {p2}, Lcom/android/vendorsettings/wifi/a;->wP()Lcom/android/b/e/a;

    move-result-object v0

    iget-object v2, v0, Lcom/android/b/e/a;->ssid:Ljava/lang/String;

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 228
    if-nez v0, :cond_0

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 215
    check-cast p1, Lcom/android/vendorsettings/wifi/a;

    check-cast p2, Lcom/android/vendorsettings/wifi/a;

    invoke-virtual {p0, p1, p2}, Lcom/android/vendorsettings/wifi/h;->a(Lcom/android/vendorsettings/wifi/a;Lcom/android/vendorsettings/wifi/a;)I

    move-result v0

    return v0
.end method
