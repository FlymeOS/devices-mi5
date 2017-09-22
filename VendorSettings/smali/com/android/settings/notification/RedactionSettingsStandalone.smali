.class public Lcom/android/vendorsettings/notification/RedactionSettingsStandalone;
.super Lcom/android/vendorsettings/hn;
.source "RedactionSettingsStandalone.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/vendorsettings/hn;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 30
    new-instance v1, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/vendorsettings/hn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 31
    const-string v0, ":settings:show_fragment"

    const-class v2, Lcom/android/vendorsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_prefs_show_button_bar"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_prefs_set_back_text"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_prefs_set_next_text"

    const v3, 0x7f0c0a7f

    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/notification/RedactionSettingsStandalone;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    return-object v1
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/vendorsettings/notification/RedactionInterstitial$RedactionInterstitialFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
