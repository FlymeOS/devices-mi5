.class abstract Lcom/android/settings/print/s;
.super Landroid/database/ContentObserver;
.source "PrintSettingsFragment.java"


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 412
    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentResolver;)V
    .locals 2

    .prologue
    .line 415
    const-string v0, "enabled_print_services"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 417
    return-void
.end method

.method public b(Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 420
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 421
    return-void
.end method
