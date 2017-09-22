.class public Lcom/android/vendorsettings/accessibility/AccessibilitySettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/vendorsettings/cs;
.implements Lcom/android/vendorsettings/search/k;


# static fields
.field static final Cv:Landroid/text/TextUtils$SimpleStringSplitter;

.field static final Cw:Ljava/util/Set;

.field public static final ig:Lcom/android/vendorsettings/search/l;


# instance fields
.field private final CA:Lcom/android/vendorsettings/accessibility/SettingsContentObserver;

.field private CB:Landroid/preference/PreferenceCategory;

.field private CC:Landroid/preference/PreferenceCategory;

.field private CD:Landroid/preference/PreferenceCategory;

.field private CE:Landroid/preference/CheckBoxPreference;

.field private CF:Landroid/preference/CheckBoxPreference;

.field private CG:Landroid/preference/CheckBoxPreference;

.field private CH:Landroid/preference/CheckBoxPreference;

.field private CI:Landroid/preference/CheckBoxPreference;

.field private CJ:Landroid/preference/ListPreference;

.field private CK:Landroid/preference/Preference;

.field private CL:Landroid/preference/PreferenceScreen;

.field private CM:Landroid/preference/PreferenceScreen;

.field private CN:Landroid/preference/PreferenceScreen;

.field private CO:Landroid/preference/PreferenceScreen;

.field private CP:Landroid/preference/CheckBoxPreference;

.field private CQ:I

.field private final Cx:Ljava/util/Map;

.field private final Cy:Ljava/lang/Runnable;

.field private final Cz:Lcom/android/internal/content/PackageMonitor;

.field private jd:Landroid/app/admin/DevicePolicyManager;

.field private final lD:Landroid/content/res/Configuration;

.field private final lQ:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->Cv:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->Cw:Ljava/util/Set;

    .line 686
    new-instance v0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings$5;

    invoke-direct {v0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings$5;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->ig:Lcom/android/vendorsettings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->Cx:Ljava/util/Map;

    .line 133
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->lD:Landroid/content/res/Configuration;

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings$1;-><init>(Lcom/android/vendorsettings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->Cy:Ljava/lang/Runnable;

    .line 145
    new-instance v0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings$2;-><init>(Lcom/android/vendorsettings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->Cz:Lcom/android/internal/content/PackageMonitor;

    .line 171
    new-instance v0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings$3;

    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings$3;-><init>(Lcom/android/vendorsettings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CA:Lcom/android/vendorsettings/accessibility/SettingsContentObserver;

    .line 180
    new-instance v0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings$4;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings$4;-><init>(Lcom/android/vendorsettings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->lQ:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void
.end method

.method private Y(Z)V
    .locals 3

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    return-void

    .line 288
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Z(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CJ:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->Cx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 285
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->iK()V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/preference/Preference;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 650
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 651
    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7f0c06b8

    :goto_1
    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 653
    return-void

    :cond_0
    move v0, v1

    .line 650
    goto :goto_0

    .line 651
    :cond_1
    const v0, 0x7f0c06b9

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/vendorsettings/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->iH()V

    return-void
.end method

.method static synthetic c(Lcom/android/vendorsettings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->Cy:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/android/vendorsettings/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->iJ()V

    return-void
.end method

.method private iA()V
    .locals 3

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CG:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    return-void

    .line 335
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private iB()V
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CH:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 345
    return-void

    .line 343
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private iC()V
    .locals 3

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speak_password"

    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    return-void

    .line 348
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private iD()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 354
    iget-object v2, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CN:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 355
    const-string v3, "title"

    const v4, 0x7f0c069f

    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v3, "summary"

    const v4, 0x7f0c06a2

    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_accessibility_global_gesture_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 361
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CN:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CN:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v0, v1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 363
    return-void

    :cond_0
    move v0, v1

    .line 359
    goto :goto_0
.end method

.method private iE()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 366
    iget-object v2, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CM:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 367
    const-string v3, "title"

    const v4, 0x7f0c069d

    invoke-virtual {p0, v4}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v3, "summary"

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c069e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 371
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 373
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CM:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CM:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v0, v1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 375
    return-void

    :cond_0
    move v0, v1

    .line 371
    goto :goto_0
.end method

.method private iF()V
    .locals 8

    .prologue
    const/16 v7, 0x1a

    const/4 v1, 0x0

    .line 378
    const-string v0, "services_category"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CB:Landroid/preference/PreferenceCategory;

    .line 379
    const-string v0, "system_category"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CC:Landroid/preference/PreferenceCategory;

    .line 381
    const-string v0, "drive_mode_category"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CD:Landroid/preference/PreferenceCategory;

    .line 384
    const-string v0, "toggle_large_text_preference"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CE:Landroid/preference/CheckBoxPreference;

    .line 388
    const-string v0, "toggle_high_text_contrast_preference"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CF:Landroid/preference/CheckBoxPreference;

    .line 394
    const-string v0, "toggle_inversion_preference"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CP:Landroid/preference/CheckBoxPreference;

    .line 395
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 398
    const-string v0, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CG:Landroid/preference/CheckBoxPreference;

    .line 400
    invoke-static {v7}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/iC;->Y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CC:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CG:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 406
    :cond_1
    const-string v0, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CH:Landroid/preference/CheckBoxPreference;

    .line 410
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CH:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CC:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CH:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 415
    :cond_2
    const-string v0, "toggle_speak_password_preference"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CI:Landroid/preference/CheckBoxPreference;

    .line 419
    const-string v0, "select_long_press_timeout_preference"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CJ:Landroid/preference/ListPreference;

    .line 421
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CJ:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 422
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->Cx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 423
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0038

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 425
    aget-object v0, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CQ:I

    .line 426
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0037

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 428
    array-length v4, v2

    move v0, v1

    .line 429
    :goto_0
    if-ge v0, v4, :cond_3

    .line 430
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->Cx:Ljava/util/Map;

    aget-object v5, v2, v0

    aget-object v6, v3, v0

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_3
    const-string v0, "captioning_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CL:Landroid/preference/PreferenceScreen;

    .line 439
    const-string v0, "screen_magnification_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CM:Landroid/preference/PreferenceScreen;

    .line 443
    const-string v0, "daltonizer_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CO:Landroid/preference/PreferenceScreen;

    .line 447
    const-string v0, "enable_global_gesture_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CN:Landroid/preference/PreferenceScreen;

    .line 449
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 452
    invoke-static {v7}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 456
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CC:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CN:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 458
    :cond_5
    return-void
.end method

.method private iG()V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->iH()V

    .line 462
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->iI()V

    .line 463
    return-void
.end method

.method private iH()V
    .locals 15

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CB:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 473
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v7

    .line 477
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/accessibility/AccessibilityUtils;->ai(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v8

    .line 479
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->jd:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v9

    .line 481
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 485
    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/cloud/a;->aG(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v10

    .line 488
    const/4 v0, 0x0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    move v6, v0

    :goto_1
    if-ge v6, v11, :cond_b

    .line 489
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 491
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 493
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 495
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 498
    iget-object v2, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 488
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 481
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 503
    :cond_1
    new-instance v14, Landroid/content/ComponentName;

    iget-object v2, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v14, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 509
    if-eqz v1, :cond_6

    invoke-interface {v8, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move v5, v2

    .line 512
    :goto_3
    if-eqz v5, :cond_7

    .line 513
    const v2, 0x7f0c06b8

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 519
    :goto_4
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 520
    if-eqz v9, :cond_2

    invoke-interface {v9, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_2
    const/4 v3, 0x1

    move v4, v3

    .line 522
    :goto_5
    if-nez v4, :cond_3

    if-eqz v5, :cond_9

    :cond_3
    const/4 v3, 0x1

    :goto_6
    invoke-virtual {v12, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 525
    if-eqz v4, :cond_a

    .line 530
    :goto_7
    invoke-virtual {v12, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 532
    invoke-virtual {v12, v6}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 533
    const-class v2, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 534
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 536
    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 537
    const-string v2, "preference_key"

    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v2, "checked"

    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 539
    const-string v2, "title"

    invoke-virtual {v3, v2, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    .line 542
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 543
    const v2, 0x7f0c06e7

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 545
    :cond_4
    const-string v4, "summary"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v2

    .line 548
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 549
    const-string v4, "settings_title"

    const v5, 0x7f0c06b7

    invoke-virtual {p0, v5}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v4, "settings_component_name"

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_5
    const-string v0, "component_name"

    invoke-virtual {v3, v0, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 558
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CB:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 509
    :cond_6
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_3

    .line 515
    :cond_7
    const v2, 0x7f0c06b9

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 520
    :cond_8
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_5

    .line 522
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 528
    :cond_a
    const v2, 0x7f0c06ba

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    .line 561
    :cond_b
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CB:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_d

    .line 562
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CK:Landroid/preference/Preference;

    if-nez v0, :cond_c

    .line 563
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CK:Landroid/preference/Preference;

    .line 564
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CK:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 565
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CK:Landroid/preference/Preference;

    const v1, 0x7f04017d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 567
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CK:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 568
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CK:Landroid/preference/Preference;

    const v1, 0x7f0c06e6

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 571
    :cond_c
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CB:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CK:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 573
    :cond_d
    return-void
.end method

.method private iI()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->lD:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CE:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 586
    iget-object v3, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CE:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->lD:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v4, 0x3fa66666    # 1.3f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 590
    :cond_0
    iget-object v3, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "high_text_contrast_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 595
    iget-object v3, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "accessibility_display_inversion_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 599
    const/16 v0, 0x1a

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/iC;->Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "incall_power_button_behavior"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 604
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 606
    :goto_4
    iget-object v3, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CG:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 610
    :cond_1
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->iJ()V

    .line 613
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "speak_password"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 615
    :goto_5
    iget-object v3, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 618
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "long_press_timeout"

    iget v4, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CQ:I

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 620
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 621
    iget-object v3, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CJ:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 622
    iget-object v3, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CJ:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->Cx:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 624
    const-string v0, "accessibility_captioning_enabled"

    iget-object v3, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CL:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0, v3}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->a(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 626
    const-string v0, "accessibility_display_magnification_enabled"

    iget-object v3, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CM:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0, v3}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->a(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 628
    const-string v0, "accessibility_display_daltonizer_enabled"

    iget-object v3, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CO:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0, v3}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->a(Ljava/lang/String;Landroid/preference/Preference;)V

    .line 632
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CN:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_7

    .line 647
    :goto_6
    return-void

    :cond_2
    move v0, v2

    .line 586
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 590
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 595
    goto :goto_3

    :cond_5
    move v0, v2

    .line 604
    goto :goto_4

    :cond_6
    move v0, v2

    .line 613
    goto :goto_5

    .line 638
    :cond_7
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "enable_accessibility_global_gesture_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 640
    :goto_7
    if-eqz v1, :cond_9

    .line 641
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CN:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c06a0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_6

    :cond_8
    move v1, v2

    .line 638
    goto :goto_7

    .line 644
    :cond_9
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CN:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c06a1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_6

    .line 579
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private iJ()V
    .locals 2

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 659
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CH:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CH:Landroid/preference/CheckBoxPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 663
    :cond_0
    return-void

    .line 660
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private iK()V
    .locals 7

    .prologue
    .line 666
    sget-object v2, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->Cw:Ljava/util/Set;

    .line 667
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 669
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 672
    if-nez v3, :cond_1

    .line 684
    :cond_0
    return-void

    .line 676
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 677
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 678
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 679
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 677
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private iy()V
    .locals 2

    .prologue
    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->lD:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CE:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fa66666    # 1.3f

    :goto_0
    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 322
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->lD:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_1
    return-void

    .line 321
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private iz()V
    .locals 3

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "high_text_contrast_enabled"

    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    return-void

    .line 329
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected ay()I
    .locals 1

    .prologue
    .line 224
    const v0, 0x7f0c09ad

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    const-class v0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 230
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 231
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->iF()V

    .line 232
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->jd:Landroid/app/admin/DevicePolicyManager;

    .line 234
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 266
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->Cz:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 253
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CA:Lcom/android/vendorsettings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/accessibility/SettingsContentObserver;->b(Landroid/content/ContentResolver;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->lQ:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 258
    :cond_0
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 259
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 270
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CJ:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_0

    .line 271
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->Z(Ljava/lang/String;)V

    .line 277
    :goto_0
    return v0

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CP:Landroid/preference/CheckBoxPreference;

    if-ne v1, p1, :cond_1

    .line 274
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->Y(Z)V

    goto :goto_0

    .line 277
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 294
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CE:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->iy()V

    .line 316
    :goto_0
    return v0

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CF:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_1

    .line 298
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->iz()V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CG:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_2

    .line 301
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->iA()V

    goto :goto_0

    .line 303
    :cond_2
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CH:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_3

    .line 304
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->iB()V

    goto :goto_0

    .line 306
    :cond_3
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CI:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_4

    .line 307
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->iC()V

    goto :goto_0

    .line 309
    :cond_4
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CN:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_5

    .line 310
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->iD()V

    goto :goto_0

    .line 312
    :cond_5
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CM:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_6

    .line 313
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->iE()V

    goto :goto_0

    .line 316
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 238
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 239
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->iK()V

    .line 240
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->iG()V

    .line 242
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->Cz:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 243
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->CA:Lcom/android/vendorsettings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/accessibility/SettingsContentObserver;->a(Landroid/content/ContentResolver;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->lQ:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 248
    :cond_0
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x2

    return v0
.end method
