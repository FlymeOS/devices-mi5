.class public Lcom/android/settings/SetupChooseLockPattern;
.super Lcom/android/settings/ChooseLockPattern;
.source "SetupChooseLockPattern.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern;-><init>()V

    .line 76
    return-void
.end method

.method public static b(Landroid/content/Context;ZJ)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 56
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/ChooseLockPattern;->b(Landroid/content/Context;ZJ)Landroid/content/Intent;

    move-result-object v0

    .line 57
    const-class v1, Lcom/android/settings/SetupChooseLockPattern;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 58
    return-object v0
.end method

.method public static b(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/android/settings/ChooseLockPattern;->b(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 51
    const-class v1, Lcom/android/settings/SetupChooseLockPattern;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 52
    return-object v0
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/hH;->n(Landroid/content/Intent;)I

    move-result v0

    .line 73
    invoke-super {p0, p1, v0, p3}, Lcom/android/settings/ChooseLockPattern;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 74
    return-void
.end method
