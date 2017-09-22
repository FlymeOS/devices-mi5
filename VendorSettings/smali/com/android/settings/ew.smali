.class Lcom/android/settings/ew;
.super Ljava/lang/Thread;
.source "MiuiLocaleSettings.java"


# instance fields
.field final synthetic rm:Lcom/android/settings/MiuiLocaleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiLocaleSettings;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/ew;->rm:Lcom/android/settings/MiuiLocaleSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lmiui/os/MiuiInit;->installPreinstallApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings/ew;->rm:Lcom/android/settings/MiuiLocaleSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiLocaleSettings;->a(Lcom/android/settings/MiuiLocaleSettings;)V

    .line 80
    :cond_0
    return-void
.end method
