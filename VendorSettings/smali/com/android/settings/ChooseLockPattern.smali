.class public Lcom/android/vendorsettings/ChooseLockPattern;
.super Lcom/android/vendorsettings/Settings;
.source "ChooseLockPattern.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/vendorsettings/Settings;-><init>()V

    .line 111
    return-void
.end method

.method public static a(Landroid/content/Context;ZZ)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/vendorsettings/ChooseLockPattern;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    const-string v1, "key_lock_method"

    const-string v2, "pattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    const-string v1, "extra_require_password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    return-object v0
.end method

.method public static b(Landroid/content/Context;ZJ)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/vendorsettings/ChooseLockPattern;->a(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 91
    const-string v1, "has_challenge"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    const-string v1, "challenge"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 93
    return-object v0
.end method

.method public static b(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/vendorsettings/ChooseLockPattern;->a(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 83
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    return-object v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/vendorsettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 67
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 98
    const-class v0, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    :cond_0
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/vendorsettings/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v0, 0x7f0c0541

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ChooseLockPattern;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ChooseLockPattern;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method
