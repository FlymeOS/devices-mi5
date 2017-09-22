.class public Lcom/android/vendorsettings/SetupChooseLockPassword;
.super Lcom/android/vendorsettings/ChooseLockPassword;
.source "SetupChooseLockPassword.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/vendorsettings/ChooseLockPassword;-><init>()V

    .line 84
    return-void
.end method

.method public static b(Landroid/content/Context;IIIZJ)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 62
    invoke-static/range {p0 .. p6}, Lcom/android/vendorsettings/ChooseLockPassword;->b(Landroid/content/Context;IIIZJ)Landroid/content/Intent;

    move-result-object v0

    .line 64
    const-class v1, Lcom/android/vendorsettings/SetupChooseLockPassword;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 65
    const-string v1, "extra_prefs_show_button_bar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    return-object v0
.end method

.method public static b(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 53
    invoke-static/range {p0 .. p5}, Lcom/android/vendorsettings/ChooseLockPassword;->b(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    const-class v1, Lcom/android/vendorsettings/SetupChooseLockPassword;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 56
    const-string v1, "extra_prefs_show_button_bar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    return-object v0
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/android/vendorsettings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/vendorsettings/SetupChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/hH;->n(Landroid/content/Intent;)I

    move-result v0

    .line 81
    invoke-super {p0, p1, v0, p3}, Lcom/android/vendorsettings/ChooseLockPassword;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 82
    return-void
.end method
