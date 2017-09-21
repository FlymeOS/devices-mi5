.class public Lcom/android/keyguard/FingerprintNavHelper;
.super Ljava/lang/Object;
.source "FingerprintNavHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableNavigation(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    .line 8
    :try_start_0
    new-instance v1, Lcom/fingerprints/service/Navigation;

    invoke-direct {v1}, Lcom/fingerprints/service/Navigation;-><init>()V

    invoke-virtual {v1, p0}, Lcom/fingerprints/service/Navigation;->setNavigationEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :goto_0
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
