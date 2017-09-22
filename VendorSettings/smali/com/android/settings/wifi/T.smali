.class Lcom/android/settings/wifi/T;
.super Ljava/lang/Object;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic aBJ:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings/wifi/T;->aBJ:Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/b/e/a;Lcom/android/b/e/a;)I
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/android/b/e/a;->AD()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p1}, Lcom/android/b/e/a;->AD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/b/e/a;->AD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 104
    check-cast p1, Lcom/android/b/e/a;

    check-cast p2, Lcom/android/b/e/a;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/T;->a(Lcom/android/b/e/a;Lcom/android/b/e/a;)I

    move-result v0

    return v0
.end method
