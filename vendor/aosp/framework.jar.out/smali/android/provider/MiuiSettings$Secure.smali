.class public Landroid/provider/MiuiSettings$Secure;
.super Landroid/provider/SystemSettings$Secure;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Secure"
.end annotation


# static fields
.field public static final ACCESS_CONTROL_LOCK_CONVENIENT:Ljava/lang/String; = "access_control_lock_convenient"

.field public static final ACCESS_CONTROL_LOCK_ENABLED:Ljava/lang/String; = "access_control_lock_enabled"

.field public static final ACCESS_CONTROL_LOCK_MODE:Ljava/lang/String; = "access_control_lock_mode"

.field public static APP_ENCRYPT_PASSWORD:Ljava/lang/String; = null

.field public static final BATTERY_LIGHT_TURN_ON:Ljava/lang/String; = "battery_light_turn_on"

.field public static final BLUETOOTH_TRACE_LOG:Ljava/lang/String; = "bluetooth_trace_log"

.field public static final CHILDREN_MODE_DENY_SMS_PERMISSION:Ljava/lang/String; = "children_mode_deny_sms_permission"

.field public static final CHILDREN_MODE_ENABLED:Ljava/lang/String; = "children_mode_enabled"

.field public static final CLOUD_MESSAGING_ON:Ljava/lang/String; = "cloud_messaging_on"

.field public static final DEFAULT_EXPERIMENTAL_PERMISSION_ALLOW:I = 0x1

.field public static final DEFAULT_FIND_DEVICE_PIN_LOCK:I = 0x0

.field public static final DEFAULT_INPUT_METHOD_CHOOSED:Ljava/lang/String; = "default_input_method_choosed"

.field public static final DEFAULT_LOCAL_AUTO_BACKUP:I = 0x0

.field public static final DEFAULT_PERMANENTLY_LOCK_SIM_CHANGE:I = 0x0

.field public static final DEFAULT_VPN_ENABLE_PASSWORD:I = 0x0

.field public static final ENABLE_MIKEY_MODE:Ljava/lang/String; = "enable_mikey_mode"

.field public static final EXPERIMENTAL_PERMISSION_ALLOW:Ljava/lang/String; = "experimental_permission_allow"

.field public static FIND_DEVICE_PIN_LOCK:Ljava/lang/String; = null

.field public static FORCE_CLOCE_DIALOG_ENABLED:Ljava/lang/String; = null

.field public static final HAS_SHOW_GUIDE:Ljava/lang/String; = "has_show_guide"

.field public static final IS_SECOND_SPACE:Ljava/lang/String; = "is_second_space"

.field public static final KEY_FIRST_ENTER_SECURITY_SPACE:Ljava/lang/String; = "first_enter_security_space"

.field public static final LOCAL_AUTO_BACKUP:Ljava/lang/String; = "local_auto_backup"

.field public static final LOCK_SCREEN_SECURE_AFTER_TIMEOUT:Ljava/lang/String; = "enable_lock_screen_secure_after_timeout"

.field public static final MIUI_PASSWORD_TYPE:Ljava/lang/String; = "miui_password_type"

.field public static final MOBILE_POLICY:Ljava/lang/String; = "mobile_policy"

.field public static final PASSWORD_FOR_PRIVACYMODE:Ljava/lang/String; = "password_for_privacymode"

.field public static PERMANENTLY_LOCK_SIM_CHANGE:Ljava/lang/String; = null

.field public static final PRIVACY_PASSWORD_IS_OPEN:Ljava/lang/String; = "privacy_password_is_open"

.field public static final PRIVATE_GALLERY_LOCK_ENABLED:Ljava/lang/String; = "private_gallery_lock_enabled"

.field public static final PRIVATE_GALLERY_LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "private_gallery_lock_pattern_visible_pattern"

.field public static final PRIVATE_SMS_LOCK_ENABLED:Ljava/lang/String; = "private_sms_lock_enabled"

.field public static final PRIVATE_SMS_LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "private_sms_lock_pattern_visible_pattern"

.field public static REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String; = null

.field public static final SCREEN_BUTTONS_HAS_BEEN_DISABLED:Ljava/lang/String; = "screen_buttons_has_been_disabled"

.field public static final SCREEN_BUTTONS_TURN_ON:Ljava/lang/String; = "screen_buttons_turn_on"

.field public static final SECOND_USER_ID:Ljava/lang/String; = "second_user_id"

.field public static final SSPACE_USED:Ljava/lang/String; = "sSpace_used"

.field public static final SYNC_ON_WIFI_ONLY:Ljava/lang/String; = "sync_on_wifi_only"

.field public static final TST_SUPPORT:Ljava/lang/String; = "tst_support"

.field public static final TST_SUPP_NOT_SUPPORT:I = 0x0

.field public static final TST_SUPP_SUPPORT:I = 0x1

.field public static final TST_SUPP_UNKNOWN:I = -0x1

.field public static UNLOCK_FAILED_ATTEMPTS:Ljava/lang/String; = null

.field public static final UPLOAD_DEBUG_LOG:Ljava/lang/String; = "upload_debug_log_pref"

.field public static final UPLOAD_LOG:Ljava/lang/String; = "upload_log_pref"

.field public static final USB_MODE:Ljava/lang/String; = "usb_mode"

.field public static final USB_MODE_ASK_USER:I = 0x0

.field public static final USB_MODE_CHARGE_ONLY:I = 0x1

.field public static final USB_MODE_MOUNT_STORAGE:I = 0x2

.field public static final VPN_ENABLE_PASSWORD:Ljava/lang/String; = "vpn_password_enable"

.field public static final XSPACE_ENABLED:Ljava/lang/String; = "xspace_enabled"

.field public static final XSPACE_USED:Ljava/lang/String; = "xSpace_used"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2158
    const-string/jumbo v0, "resister_find_device_sim_number"

    sput-object v0, Landroid/provider/MiuiSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    .line 2164
    const-string/jumbo v0, "unlock_failed_attempts"

    sput-object v0, Landroid/provider/MiuiSettings$Secure;->UNLOCK_FAILED_ATTEMPTS:Ljava/lang/String;

    .line 2170
    const-string/jumbo v0, "permanently_lock_sim_change"

    sput-object v0, Landroid/provider/MiuiSettings$Secure;->PERMANENTLY_LOCK_SIM_CHANGE:Ljava/lang/String;

    .line 2180
    const-string v0, "find_device_pin_lock"

    sput-object v0, Landroid/provider/MiuiSettings$Secure;->FIND_DEVICE_PIN_LOCK:Ljava/lang/String;

    .line 2190
    const-string v0, "force_close_dialog_enabled"

    sput-object v0, Landroid/provider/MiuiSettings$Secure;->FORCE_CLOCE_DIALOG_ENABLED:Ljava/lang/String;

    .line 2318
    const-string v0, "app_encrypt_password"

    sput-object v0, Landroid/provider/MiuiSettings$Secure;->APP_ENCRYPT_PASSWORD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2103
    invoke-direct {p0}, Landroid/provider/SystemSettings$Secure;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 2103
    invoke-static {p0}, Landroid/provider/MiuiSettings$Secure;->buildNewPasswordIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static buildNewPasswordIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "businessKey"    # Ljava/lang/String;

    .prologue
    .line 2498
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2499
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "set_keyguard_password"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2500
    const-string v1, "common_password_business_key"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2501
    return-object v0
.end method

.method public static enableUploadDebugLog(Landroid/content/ContentResolver;Z)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "allow"    # Z

    .prologue
    .line 2589
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2590
    .local v0, "enable":I
    :goto_0
    const-string/jumbo v1, "upload_debug_log_pref"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2591
    return-void

    .line 2589
    .end local v0    # "enable":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enableUserExperienceProgram(Landroid/content/ContentResolver;Z)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "allow"    # Z

    .prologue
    .line 2573
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2574
    .local v0, "enable":I
    :goto_0
    const-string/jumbo v1, "upload_log_pref"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2575
    return-void

    .line 2573
    .end local v0    # "enable":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2436
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static getCtaSupported(Landroid/content/ContentResolver;)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 2425
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 2426
    const/4 v0, 0x0

    .line 2429
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "tst_support"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static hasCommonPassword(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 2450
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "miui_password_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2453
    .local v0, "quality":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isCommonPasswordEnabledForBusiness(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "businessId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2460
    const-string/jumbo v2, "miui_keyguard"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2461
    invoke-static {p0}, Lmiui/util/LockPatternUtilsWrapper;->getActivePasswordQuality(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 2464
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2461
    goto :goto_0

    .line 2464
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isFingerprintEnabledForBusiness(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "businessId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2472
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isForceCloseDialogEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2196
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MiuiSettings$Secure;->FORCE_CLOCE_DIALOG_ENABLED:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v0, v2, :cond_0

    .line 2200
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2196
    goto :goto_0

    .line 2198
    :catch_0
    move-exception v2

    .line 2200
    const-string/jumbo v2, "user"

    sget-object v3, Lmiui/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v2, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isSecureSpace(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 2406
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "is_second_space"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isUploadDebugLogEnable(Landroid/content/ContentResolver;)Z
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2597
    invoke-static {p0}, Landroid/provider/MiuiSettings$Secure;->isUserExperienceProgramEnable(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 2598
    .local v0, "default_value":I
    :goto_0
    const-string/jumbo v3, "upload_debug_log_pref"

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    return v1

    .end local v0    # "default_value":I
    :cond_0
    move v0, v2

    .line 2597
    goto :goto_0

    .restart local v0    # "default_value":I
    :cond_1
    move v1, v2

    .line 2598
    goto :goto_1
.end method

.method public static isUserExperienceProgramEnable(Landroid/content/ContentResolver;)Z
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2581
    sget-boolean v3, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v3, :cond_0

    move v0, v1

    .line 2582
    .local v0, "default_value":I
    :goto_0
    const-string/jumbo v3, "upload_log_pref"

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    return v1

    .end local v0    # "default_value":I
    :cond_0
    move v0, v2

    .line 2581
    goto :goto_0

    .restart local v0    # "default_value":I
    :cond_1
    move v1, v2

    .line 2582
    goto :goto_1
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 2443
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2444
    return-void

    .line 2443
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCtaSupported(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "ctaSupport"    # I

    .prologue
    .line 2414
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 2419
    :goto_0
    return-void

    .line 2418
    :cond_0
    const-string/jumbo v0, "tst_support"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static showApplyPasswordConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "clickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "businessKey"    # Ljava/lang/String;
    .param p3, "businessName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2548
    new-instance v0, Landroid/provider/MiuiSettings$Secure$3;

    invoke-direct {v0, p0, p2, p1}, Landroid/provider/MiuiSettings$Secure$3;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2560
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x110700b1

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p3, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x110700b2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p3, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x110700b3

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x110700ad

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2567
    return-void
.end method

.method private static showConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 2506
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x110700af

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x110700b0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x110700ae

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x110700ad

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2513
    return-void
.end method

.method public static showSetPasswordConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dialogClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "businessKey"    # Ljava/lang/String;
    .param p3, "setPasswordRequestCode"    # I

    .prologue
    .line 2523
    :try_start_0
    new-instance v0, Landroid/provider/MiuiSettings$Secure$2;

    invoke-direct {v0, p0, p2, p3, p1}, Landroid/provider/MiuiSettings$Secure$2;-><init>(Landroid/app/Activity;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 2535
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Secure;->showConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2539
    .end local v0    # "listener":Landroid/content/DialogInterface$OnClickListener;
    :goto_0
    return-void

    .line 2536
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static showSetPasswordConfirmDialog(Landroid/app/Fragment;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;I)V
    .locals 2
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "dialogClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "businessKey"    # Ljava/lang/String;
    .param p3, "setPasswordRequestCode"    # I

    .prologue
    .line 2482
    new-instance v0, Landroid/provider/MiuiSettings$Secure$1;

    invoke-direct {v0, p0, p2, p3, p1}, Landroid/provider/MiuiSettings$Secure$1;-><init>(Landroid/app/Fragment;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 2494
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/MiuiSettings$Secure;->showConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2495
    return-void
.end method
