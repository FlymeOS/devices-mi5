.class public Lcom/android/vendorsettings/SetupRedactionInterstitial;
.super Lcom/android/vendorsettings/notification/RedactionInterstitial;
.source "SetupRedactionInterstitial.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/vendorsettings/notification/RedactionInterstitial;-><init>()V

    .line 70
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/vendorsettings/notification/RedactionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 54
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/vendorsettings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/android/vendorsettings/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/vendorsettings/SetupRedactionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/hH;->n(Landroid/content/Intent;)I

    move-result v0

    .line 67
    invoke-super {p0, p1, v0, p3}, Lcom/android/vendorsettings/notification/RedactionInterstitial;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 68
    return-void
.end method
