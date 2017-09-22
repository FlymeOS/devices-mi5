.class final Lcom/android/vendorsettings/fz;
.super Ljava/lang/Object;
.source "MiuiUtils.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic ug:Ljava/lang/String;

.field final synthetic uh:Landroid/security/MiuiLockPatternUtils;

.field final synthetic ui:Landroid/content/Intent;

.field final synthetic val$act:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Landroid/security/MiuiLockPatternUtils;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/vendorsettings/fz;->ug:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/vendorsettings/fz;->val$act:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/vendorsettings/fz;->uh:Landroid/security/MiuiLockPatternUtils;

    iput-object p4, p0, Lcom/android/vendorsettings/fz;->ui:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 362
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 363
    if-eqz v0, :cond_2

    const-string v2, "booleanResult"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 364
    :goto_0
    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/vendorsettings/fz;->ug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/vendorsettings/fz;->val$act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/fz;->ug:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/fz;->uh:Landroid/security/MiuiLockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->saveMiuiLockPattern(Ljava/util/List;)V

    .line 369
    iget-object v0, p0, Lcom/android/vendorsettings/fz;->uh:Landroid/security/MiuiLockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->clearLock(I)V

    .line 370
    iget-object v0, p0, Lcom/android/vendorsettings/fz;->uh:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->clearLockoutAttemptDeadline()V

    .line 371
    iget-object v0, p0, Lcom/android/vendorsettings/fz;->val$act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_password_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 373
    iget-object v0, p0, Lcom/android/vendorsettings/fz;->val$act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 374
    iget-object v0, p0, Lcom/android/vendorsettings/fz;->ui:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/fz;->val$act:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/vendorsettings/fz;->ui:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 363
    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
