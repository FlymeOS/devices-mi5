.class Lcom/android/server/location/GpsLocationProviderInjector;
.super Ljava/lang/Object;
.source "GpsLocationProviderInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendUidExtra(Landroid/os/WorkSource;ZLandroid/content/Intent;)V
    .locals 3
    .param p0, "clientSource"    # Landroid/os/WorkSource;
    .param p1, "navigating"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 8
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 9
    const-string v0, "android.intent.extra.UID"

    invoke-virtual {p0, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {p0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    :cond_0
    return-void
.end method
