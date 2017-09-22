.class public Lcom/android/vendorsettings/ConfirmLockPassword;
.super Lcom/android/vendorsettings/hv;
.source "ConfirmLockPassword.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/vendorsettings/hv;-><init>()V

    .line 89
    return-void
.end method

.method private aM()Z
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/vendorsettings/ConfirmLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "businessId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v1, "security_core_add"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/vendorsettings/hv;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 63
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/android/vendorsettings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/vendorsettings/hv;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/ConfirmLockPassword;->aM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ConfirmLockPassword;->setRequestedOrientation(I)V

    .line 80
    :cond_0
    const v0, 0x7f0c0543

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ConfirmLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ConfirmLockPassword;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method
