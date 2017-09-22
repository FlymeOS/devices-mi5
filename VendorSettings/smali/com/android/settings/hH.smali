.class public Lcom/android/vendorsettings/hH;
.super Ljava/lang/Object;
.source "SetupWizardUtils.java"


# direct methods
.method public static a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "useImmersiveMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/setupwizardlib/a/a;->a(Landroid/view/Window;)V

    .line 54
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/setupwizardlib/a/a;->b(Landroid/app/Dialog;)V

    .line 58
    return-void
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 61
    const-string v0, "theme"

    const-string v1, "theme"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v0, "useImmersiveMode"

    const-string v1, "useImmersiveMode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    return-void
.end method

.method public static n(Landroid/content/Intent;)I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/setupwizardlib/a/e;->a(Landroid/content/Intent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const v0, 0x7f0d0059

    .line 40
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0d0058

    goto :goto_0
.end method
