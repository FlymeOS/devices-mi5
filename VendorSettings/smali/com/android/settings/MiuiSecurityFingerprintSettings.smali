.class public Lcom/android/settings/MiuiSecurityFingerprintSettings;
.super Lcom/android/settings/Settings;
.source "MiuiSecurityFingerprintSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/Settings;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 37
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/settings/MiuiSecurityFingerprintSettings$MiuiSecurityFingerprintSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
