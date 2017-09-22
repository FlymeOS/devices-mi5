.class public Lcom/android/settings/fy;
.super Ljava/lang/Object;
.source "MiuiUtils.java"


# static fields
.field private static uf:Lcom/android/settings/fy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static N(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x1e

    const/4 v2, 0x0

    .line 233
    .line 234
    invoke-static {p0}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v5, :cond_0

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v2

    .line 237
    :goto_0
    if-ge v1, v3, :cond_0

    .line 238
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-le v4, v5, :cond_1

    .line 239
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 244
    :cond_0
    return-object v0

    .line 237
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static O(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 302
    if-eqz p0, :cond_1

    const-string v0, "1"

    .line 305
    :goto_0
    const-string v1, "leadcore"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > /sys/devices/platform/comip-gpio-keys/keys_wakeup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/miui/Shell;->runShell(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 307
    const-string v1, "/sys/devices/platform/comip-gpio-keys/keys_wakeup"

    invoke-static {v1, v0}, Lcom/android/settings/fy;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_0
    :goto_1
    return-void

    .line 302
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 308
    :cond_2
    const-string v1, "mediatek"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > /sys/bus/platform/drivers/mtk-kpd/kpd_as_wake"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/miui/Shell;->runShell(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > /sys/devices/platform/mtk-kpd/driver/kpd_as_wake"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/miui/Shell;->runShell(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 311
    const-string v1, "/sys/bus/platform/drivers/mtk-kpd/kpd_as_wake"

    invoke-static {v1, v0}, Lcom/android/settings/fy;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v1, "/sys/devices/platform/mtk-kpd/driver/kpd_as_wake"

    invoke-static {v1, v0}, Lcom/android/settings/fy;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 292
    instance-of v0, p0, Lcom/android/settings/MiuiSettings;

    if-eqz v0, :cond_0

    .line 293
    check-cast p0, Lcom/android/settings/MiuiSettings;

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/settings/MiuiSettings;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 299
    :goto_0
    return-void

    .line 296
    :cond_0
    check-cast p0, Lcom/android/settings/hn;

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/settings/hn;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 216
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 217
    instance-of v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 218
    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 223
    :cond_0
    invoke-static {p1}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 224
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_2

    instance-of v1, p0, Lcom/android/settings/MiuiSettings;

    if-eqz v1, :cond_2

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    if-eqz v0, :cond_1

    .line 228
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/security/MiuiLockPatternUtils;)V
    .locals 6

    .prologue
    .line 358
    new-instance v4, Lcom/android/settings/fz;

    invoke-direct {v4, p1, p0, p3, p2}, Lcom/android/settings/fz;-><init>(Ljava/lang/String;Landroid/app/Activity;Landroid/security/MiuiLockPatternUtils;Landroid/content/Intent;)V

    .line 383
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 384
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 385
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 386
    const-string v3, "verify_only"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 387
    const/4 v5, 0x0

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 388
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 7

    .prologue
    .line 267
    instance-of v0, p0, Lcom/android/settings/MiuiSettings;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 268
    check-cast v0, Lcom/android/settings/MiuiSettings;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/MiuiSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 279
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 274
    check-cast v0, Lcom/android/settings/hn;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public static c(Landroid/app/Fragment;)V
    .locals 2

    .prologue
    .line 338
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 339
    instance-of v1, v0, Lcom/android/settings/MiuiSettings;

    if-eqz v1, :cond_0

    .line 340
    check-cast v0, Lcom/android/settings/MiuiSettings;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings;->fW()V

    .line 342
    :cond_0
    return-void
.end method

.method public static d(Landroid/app/Fragment;)V
    .locals 4

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 346
    if-eqz v1, :cond_0

    .line 347
    const-string v0, "input_method"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 348
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 349
    instance-of v0, v1, Lcom/android/settings/MiuiSettings;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 350
    check-cast v0, Lcom/android/settings/MiuiSettings;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings;->fX()V

    .line 353
    :cond_0
    return-void
.end method

.method public static gg()Lcom/android/settings/fy;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/settings/fy;->uf:Lcom/android/settings/fy;

    if-nez v0, :cond_0

    .line 78
    :try_start_0
    const-string v0, "com.android.settings.cr"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fy;

    sput-object v0, Lcom/android/settings/fy;->uf:Lcom/android/settings/fy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settings/fy;->uf:Lcom/android/settings/fy;

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    new-instance v0, Lcom/android/settings/fy;

    invoke-direct {v0}, Lcom/android/settings/fy;-><init>()V

    sput-object v0, Lcom/android/settings/fy;->uf:Lcom/android/settings/fy;

    goto :goto_0
.end method

.method private static writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 317
    const/4 v2, 0x0

    .line 319
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 327
    if-eqz v1, :cond_0

    .line 329
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 322
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 323
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 327
    if-eqz v1, :cond_0

    .line 329
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 330
    :catch_2
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 324
    :catch_3
    move-exception v0

    .line 325
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 327
    if-eqz v2, :cond_0

    .line 329
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 330
    :catch_4
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_1

    .line 329
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 332
    :cond_1
    :goto_4
    throw v0

    .line 330
    :catch_5
    move-exception v1

    .line 331
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 327
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 324
    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 322
    :catch_7
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public J(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public K(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public L(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/settings/fy;->isMultiSimSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    :cond_1
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    goto :goto_0
.end method

.method public M(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 189
    const/4 v1, 0x0

    .line 191
    invoke-static {p1}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->get(Landroid/content/Context;)Lcom/xiaomi/accountsdk/activate/ActivateManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->getActivateInfo(I)Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;

    move-result-object v2

    .line 194
    const-wide/16 v4, 0xbb8

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v0}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 195
    const-string v3, "activate_phone"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/accountsdk/activate/OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 203
    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    .line 206
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_0
    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    move-object v0, v1

    .line 204
    goto :goto_0

    .line 198
    :catch_1
    move-exception v0

    .line 199
    :try_start_2
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/activate/OperationCancelledException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    move-object v0, v1

    .line 204
    goto :goto_0

    .line 200
    :catch_2
    move-exception v0

    .line 201
    :try_start_3
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    move-object v0, v1

    .line 204
    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    throw v0
.end method

.method public a(Landroid/location/LocationManager;)I
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 424
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    .line 425
    :catch_0
    move-exception v1

    .line 426
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public a(Landroid/location/LocationManager;I)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public a(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public a(Landroid/os/storage/IMountService;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v1, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/b/e/a;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/b/e/a;->m(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    invoke-static {p2}, Lcom/android/b/e/a;->j(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 392
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 393
    const-class v2, Landroid/hardware/input/InputManager;

    .line 395
    const-string v1, "getKeyboardLayoutsForInputDevice"

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/fy;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 398
    if-nez v1, :cond_0

    .line 399
    const-string v1, "getEnabledKeyboardLayoutsForInputDevice"

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/fy;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 402
    :cond_0
    if-nez v1, :cond_1

    .line 417
    :goto_0
    return-object v0

    .line 406
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 409
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v1

    .line 416
    goto :goto_0

    .line 410
    :catch_0
    move-exception v1

    .line 411
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 412
    :catch_1
    move-exception v1

    .line 413
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 414
    :catch_2
    move-exception v1

    .line 415
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public dv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    const-string v0, ""

    return-object v0
.end method

.method public e(Landroid/content/Context;I)V
    .locals 9

    .prologue
    const/4 v1, -0x1

    .line 110
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 111
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 113
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 114
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 115
    invoke-static {p1}, Landroid/provider/MiuiSettings$System;->getDisableWifiAutoConnectSsid(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v6

    .line 119
    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    .line 120
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v1

    move v3, v1

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 121
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v3

    move v3, v2

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 122
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fy;->a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v2, v4, :cond_0

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, p2, :cond_0

    .line 125
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 126
    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    :cond_1
    move v2, v3

    move v3, v4

    .line 130
    goto :goto_0

    :cond_2
    move v1, v2

    .line 132
    :cond_3
    if-ltz v1, :cond_4

    .line 133
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 135
    :cond_4
    return-void
.end method

.method public e(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 102
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public isMultiSimSupported()Z
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public p(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    .prologue
    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 433
    return-object v0
.end method

.method public q(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method
