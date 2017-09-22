.class public Lcom/android/vendorsettings/SetupEncryptionInterstitial;
.super Lcom/android/vendorsettings/EncryptionInterstitial;
.source "SetupEncryptionInterstitial.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/vendorsettings/EncryptionInterstitial;-><init>()V

    .line 69
    return-void
.end method

.method public static b(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/android/vendorsettings/EncryptionInterstitial;->b(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v0

    .line 44
    const-class v1, Lcom/android/vendorsettings/SetupEncryptionInterstitial;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 45
    const-string v1, "extra_prefs_show_button_bar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, ":settings:show_fragment_title_resid"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    return-object v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/vendorsettings/EncryptionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 53
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/vendorsettings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/android/vendorsettings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/vendorsettings/SetupEncryptionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/hH;->n(Landroid/content/Intent;)I

    move-result v0

    .line 66
    invoke-super {p0, p1, v0, p3}, Lcom/android/vendorsettings/EncryptionInterstitial;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 67
    return-void
.end method
