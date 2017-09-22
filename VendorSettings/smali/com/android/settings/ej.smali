.class Lcom/android/vendorsettings/ej;
.super Ljava/lang/Object;
.source "MiuiCryptKeeperSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ql:Lcom/android/vendorsettings/MiuiCryptKeeperSettings;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/MiuiCryptKeeperSettings;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/vendorsettings/ej;->ql:Lcom/android/vendorsettings/MiuiCryptKeeperSettings;

    iput p2, p0, Lcom/android/vendorsettings/ej;->val$type:I

    iput-object p3, p0, Lcom/android/vendorsettings/ej;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 248
    invoke-static {}, Lcom/android/vendorsettings/iC;->iu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    :goto_0
    return-void

    .line 268
    :cond_0
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/vendorsettings/ej;->ql:Lcom/android/vendorsettings/MiuiCryptKeeperSettings;

    invoke-virtual {v3}, Lcom/android/vendorsettings/MiuiCryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 269
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 272
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 276
    :cond_1
    iget-object v3, p0, Lcom/android/vendorsettings/ej;->ql:Lcom/android/vendorsettings/MiuiCryptKeeperSettings;

    invoke-virtual {v3}, Lcom/android/vendorsettings/MiuiCryptKeeperSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_password"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 279
    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    .line 281
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/vendorsettings/ej;->ql:Lcom/android/vendorsettings/MiuiCryptKeeperSettings;

    invoke-virtual {v1}, Lcom/android/vendorsettings/MiuiCryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/vendorsettings/CryptKeeperConfirm$Blank;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 283
    const-string v2, "type"

    iget v3, p0, Lcom/android/vendorsettings/ej;->val$type:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    const-string v2, "password"

    iget-object v3, p0, Lcom/android/vendorsettings/ej;->val$password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 286
    iget-object v1, p0, Lcom/android/vendorsettings/ej;->ql:Lcom/android/vendorsettings/MiuiCryptKeeperSettings;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/MiuiCryptKeeperSettings;->startActivity(Landroid/content/Intent;)V

    .line 290
    :try_start_0
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 291
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 292
    const-string v1, "SystemLocale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    const-string v1, "MiuiCryptKeeper"

    const-string v2, "Error storing locale for decryption UI"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 279
    goto :goto_1
.end method
