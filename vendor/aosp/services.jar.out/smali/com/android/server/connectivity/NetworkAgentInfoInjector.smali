.class Lcom/android/server/connectivity/NetworkAgentInfoInjector;
.super Ljava/lang/Object;
.source "NetworkAgentInfoInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final enableDataAndWifiRoam(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 8
    invoke-static {p0}, Lcom/android/server/MiuiConfigCaptivePortal;->enableDataAndWifiRoam(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
