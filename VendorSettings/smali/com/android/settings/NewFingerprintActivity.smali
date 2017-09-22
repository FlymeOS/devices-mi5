.class public Lcom/android/settings/NewFingerprintActivity;
.super Landroid/app/Activity;
.source "NewFingerprintActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Class;I)V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    invoke-virtual {p0, v0, p2}, Lcom/android/settings/NewFingerprintActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 32
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 33
    const-class v0, Lcom/android/settings/NewFingerprintInternalActivity;

    const/16 v1, 0x66

    invoke-direct {p0, v0, v1}, Lcom/android/settings/NewFingerprintActivity;->a(Ljava/lang/Class;I)V

    .line 38
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/NewFingerprintActivity;->setResult(I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const-string v0, "miui.permission.USE_INTERNAL_GENERAL_API"

    .line 17
    const-string v0, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-virtual {p0, v0}, Lcom/android/settings/NewFingerprintActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need miui.permission.USE_INTERNAL_GENERAL_API permission to access"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    invoke-static {p0}, Landroid/provider/MiuiSettings$Secure;->hasCommonPassword(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    const-class v0, Lcom/android/settings/MiuiConfirmCommonPassword;

    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lcom/android/settings/NewFingerprintActivity;->a(Ljava/lang/Class;I)V

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_1
    const-class v0, Lcom/android/settings/NewFingerprintInternalActivity;

    const/16 v1, 0x66

    invoke-direct {p0, v0, v1}, Lcom/android/settings/NewFingerprintActivity;->a(Ljava/lang/Class;I)V

    goto :goto_0
.end method
