.class public Lcom/android/vendorsettings/DisplaySettings;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/vendorsettings/search/k;


# static fields
.field public static final ig:Lcom/android/vendorsettings/search/l;

.field private static lF:Landroid/util/SparseArray;


# instance fields
.field private final lD:Landroid/content/res/Configuration;

.field private lG:Lcom/android/vendorsettings/WarnedListPreference;

.field private lH:Landroid/preference/ListPreference;

.field private lI:Landroid/preference/ListPreference;

.field private lJ:Landroid/preference/Preference;

.field private lK:Landroid/preference/CheckBoxPreference;

.field private lL:Landroid/preference/CheckBoxPreference;

.field private lM:Landroid/preference/CheckBoxPreference;

.field private lN:Landroid/preference/CheckBoxPreference;

.field private lO:Landroid/preference/CheckBoxPreference;

.field private lP:Landroid/preference/CheckBoxPreference;

.field private final lQ:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/DisplaySettings;->lF:Landroid/util/SparseArray;

    .line 95
    sget-object v0, Lcom/android/vendorsettings/DisplaySettings;->lF:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Lcom/android/vendorsettings/DisplaySettings;->lF:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/android/vendorsettings/DisplaySettings;->lF:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/android/vendorsettings/DisplaySettings;->lF:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 621
    new-instance v0, Lcom/android/vendorsettings/cy;

    invoke-direct {v0}, Lcom/android/vendorsettings/cy;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/DisplaySettings;->ig:Lcom/android/vendorsettings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 104
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lD:Landroid/content/res/Configuration;

    .line 671
    new-instance v0, Lcom/android/vendorsettings/cz;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/cz;-><init>(Lcom/android/vendorsettings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lQ:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/DisplaySettings;)Lcom/android/vendorsettings/WarnedListPreference;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lG:Lcom/android/vendorsettings/WarnedListPreference;

    return-object v0
.end method

.method private a(Landroid/preference/ListPreference;)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 362
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 365
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 366
    :goto_0
    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 400
    :goto_1
    return-void

    :cond_0
    move-wide v2, v4

    .line 365
    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 370
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 371
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 372
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 373
    :goto_2
    array-length v8, v5

    if-ge v0, v8, :cond_3

    .line 374
    aget-object v8, v5, v0

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 375
    cmp-long v8, v8, v2

    if-gtz v8, :cond_2

    .line 376
    aget-object v8, v4, v0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    aget-object v8, v5, v0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 380
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v4, v4

    if-ne v0, v4, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v4, v5

    if-eq v0, v4, :cond_5

    .line 381
    :cond_4
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 382
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 384
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 386
    int-to-long v8, v4

    cmp-long v0, v8, v2

    if-gtz v0, :cond_7

    .line 387
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 399
    :cond_5
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    .line 388
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_5

    .line 392
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static a(Landroid/content/res/Resources;)Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 71
    invoke-static {p0}, Lcom/android/vendorsettings/DisplaySettings;->r(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/DisplaySettings;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/vendorsettings/DisplaySettings;->dy()V

    return-void
.end method

.method private static b(Landroid/content/res/Resources;)Z
    .locals 1

    .prologue
    .line 327
    const v0, 0x1120026

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Landroid/content/res/Resources;)Z
    .locals 1

    .prologue
    .line 71
    invoke-static {p0}, Lcom/android/vendorsettings/DisplaySettings;->b(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Landroid/content/res/Resources;)Z
    .locals 1

    .prologue
    .line 71
    invoke-static {p0}, Lcom/android/vendorsettings/DisplaySettings;->a(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method private dx()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lJ:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lJ:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vendorsettings/DreamSettings;->u(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 497
    :cond_0
    return-void
.end method

.method private dy()V
    .locals 2

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lP:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 681
    iget-object v1, p0, Lcom/android/vendorsettings/DisplaySettings;->lP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private f(J)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-object v3, p0, Lcom/android/vendorsettings/DisplaySettings;->lH:Landroid/preference/ListPreference;

    .line 333
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_1

    .line 335
    const-string v0, ""

    .line 354
    :goto_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v4, p1

    if-nez v1, :cond_0

    .line 355
    const v0, 0x7f0c0d79

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    :cond_0
    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 359
    return-void

    .line 337
    :cond_1
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 338
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 339
    if-eqz v4, :cond_2

    array-length v0, v4

    if-nez v0, :cond_3

    .line 340
    :cond_2
    const-string v0, ""

    goto :goto_0

    :cond_3
    move v0, v1

    move v2, v1

    .line 343
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_5

    .line 344
    aget-object v6, v5, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 345
    cmp-long v6, p1, v6

    if-ltz v6, :cond_4

    move v2, v0

    .line 343
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 349
    :cond_5
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f0c03d5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v2, v4, v2

    aput-object v2, v6, v1

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static r(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 297
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method private static s(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 304
    sget-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "debug.doze.component"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040041

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    :goto_1
    return v1

    .line 304
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 314
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 315
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method static synthetic t(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 71
    invoke-static {p0}, Lcom/android/vendorsettings/DisplaySettings;->s(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private updateState()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 462
    invoke-direct {p0}, Lcom/android/vendorsettings/DisplaySettings;->dy()V

    .line 464
    invoke-direct {p0}, Lcom/android/vendorsettings/DisplaySettings;->dx()V

    .line 467
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lN:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_brightness_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 470
    iget-object v3, p0, Lcom/android/vendorsettings/DisplaySettings;->lN:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lK:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 475
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wake_gesture_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 476
    iget-object v3, p0, Lcom/android/vendorsettings/DisplaySettings;->lK:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lL:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 481
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "doze_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 482
    iget-object v3, p0, Lcom/android/vendorsettings/DisplaySettings;->lL:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 486
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lM:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 487
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "double_tap_to_wake"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 488
    iget-object v3, p0, Lcom/android/vendorsettings/DisplaySettings;->lM:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    :goto_3
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 490
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 470
    goto :goto_0

    :cond_5
    move v0, v2

    .line 476
    goto :goto_1

    :cond_6
    move v0, v2

    .line 482
    goto :goto_2

    :cond_7
    move v1, v2

    .line 488
    goto :goto_3
.end method


# virtual methods
.method protected ay()I
    .locals 1

    .prologue
    .line 618
    const v0, 0x7f0c09a6

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-class v0, Lcom/android/vendorsettings/DisplaySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 502
    .line 503
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    move v1, v0

    move v2, v0

    .line 504
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_1

    .line 505
    aget-object v4, v3, v1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    .line 504
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 509
    :cond_1
    sget-object v0, Lcom/android/vendorsettings/DisplaySettings;->lF:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/vendorsettings/DisplaySettings;->lF:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 511
    iget-object v1, p0, Lcom/android/vendorsettings/DisplaySettings;->lD:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    if-eq v0, v1, :cond_2

    .line 513
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ui_mode_scale"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 516
    iget-object v1, p0, Lcom/android/vendorsettings/DisplaySettings;->lD:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    sparse-switch v1, :sswitch_data_0

    .line 536
    :cond_2
    :goto_1
    return-void

    .line 523
    :sswitch_0
    iget-object v1, p0, Lcom/android/vendorsettings/DisplaySettings;->lD:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/vendorsettings/DisplaySettings;->lD:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x10

    or-int/2addr v0, v2

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    goto :goto_1

    .line 516
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 133
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 135
    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 137
    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 139
    const-string v0, "screensaver"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lJ:Landroid/preference/Preference;

    .line 140
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lJ:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/DisplaySettings;->lJ:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    :cond_0
    const-string v0, "screen_timeout"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lH:Landroid/preference/ListPreference;

    .line 154
    const-string v0, "screen_off_timeout"

    const-wide/16 v6, 0x7530

    invoke-static {v5, v0, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 156
    const-wide/32 v6, 0x1b7740

    cmp-long v6, v0, v6

    if-nez v6, :cond_1

    .line 157
    const-wide/32 v0, 0x927c0

    .line 158
    const-string v6, "screen_off_timeout"

    invoke-static {v5, v6, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 162
    :cond_1
    invoke-static {}, Lcom/android/b/a;->ze()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 163
    const-string v6, "wallpaper"

    invoke-virtual {p0, v6}, Lcom/android/vendorsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 164
    if-eqz v6, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    :cond_2
    iget-object v6, p0, Lcom/android/vendorsettings/DisplaySettings;->lH:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 169
    iget-object v6, p0, Lcom/android/vendorsettings/DisplaySettings;->lH:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    iget-object v6, p0, Lcom/android/vendorsettings/DisplaySettings;->lH:Landroid/preference/ListPreference;

    invoke-direct {p0, v6}, Lcom/android/vendorsettings/DisplaySettings;->a(Landroid/preference/ListPreference;)V

    .line 171
    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/DisplaySettings;->f(J)V

    .line 173
    const-string v0, "font_size"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/WarnedListPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lG:Lcom/android/vendorsettings/WarnedListPreference;

    .line 174
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lG:Lcom/android/vendorsettings/WarnedListPreference;

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/WarnedListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lG:Lcom/android/vendorsettings/WarnedListPreference;

    invoke-virtual {v0, p0}, Lcom/android/vendorsettings/WarnedListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 177
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_3

    .line 178
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/DisplaySettings;->lG:Lcom/android/vendorsettings/WarnedListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    :cond_3
    invoke-static {v4}, Lcom/android/vendorsettings/DisplaySettings;->r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 192
    const-string v0, "lift_to_wake"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lK:Landroid/preference/CheckBoxPreference;

    .line 193
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lK:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    :goto_0
    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v0, :cond_4

    .line 200
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    :cond_4
    invoke-static {v4}, Lcom/android/vendorsettings/DisplaySettings;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 207
    const-string v0, "doze"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lL:Landroid/preference/CheckBoxPreference;

    .line 208
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lL:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 213
    :goto_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/DisplaySettings;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 216
    const-string v0, "tap_to_wake"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lM:Landroid/preference/CheckBoxPreference;

    .line 217
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lM:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 224
    :goto_2
    const-string v0, "auto_rotate"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lP:Landroid/preference/CheckBoxPreference;

    .line 225
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 264
    const-string v0, "night_mode"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lI:Landroid/preference/ListPreference;

    .line 265
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lI:Landroid/preference/ListPreference;

    if-eqz v0, :cond_5

    .line 266
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 268
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    .line 269
    iget-object v1, p0, Lcom/android/vendorsettings/DisplaySettings;->lI:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lI:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 274
    :cond_5
    const-string v0, "notification_pulse"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lO:Landroid/preference/CheckBoxPreference;

    .line 275
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lO:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    const-string v0, "support_led_light"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 277
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/DisplaySettings;->lO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lO:Landroid/preference/CheckBoxPreference;

    .line 289
    :cond_6
    :goto_3
    return-void

    .line 195
    :cond_7
    const-string v0, "lift_to_wake"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DisplaySettings;->U(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_8
    const-string v0, "doze"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DisplaySettings;->U(Ljava/lang/String;)V

    goto :goto_1

    .line 219
    :cond_9
    const-string v0, "tap_to_wake"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DisplaySettings;->U(Ljava/lang/String;)V

    goto :goto_2

    .line 279
    :cond_a
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lO:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/android/vendorsettings/DisplaySettings;->lO:Landroid/preference/CheckBoxPreference;

    const-string v0, "notification_light_pulse"

    invoke-static {v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_b

    move v0, v2

    :goto_4
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lO:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string v0, "DisplaySettings"

    const-string v1, "notification_light_pulse not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    move v0, v3

    .line 281
    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 446
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c098c

    new-instance v2, Lcom/android/vendorsettings/cx;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/cx;-><init>(Lcom/android/vendorsettings/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/vendorsettings/iC;->a(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 455
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 690
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 691
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/DisplaySettings;->lQ:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 693
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 552
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 553
    const-string v2, "screen_timeout"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 556
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_off_timeout"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 557
    int-to-long v6, v2

    invoke-direct {p0, v6, v7}, Lcom/android/vendorsettings/DisplaySettings;->f(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :cond_0
    :goto_0
    const-string v2, "font_size"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 563
    invoke-virtual {p0, p2}, Lcom/android/vendorsettings/DisplaySettings;->n(Ljava/lang/Object;)V

    .line 565
    :cond_1
    iget-object v2, p0, Lcom/android/vendorsettings/DisplaySettings;->lN:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_2

    move-object v2, p2

    .line 566
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 567
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    if-eqz v2, :cond_9

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 570
    :cond_2
    iget-object v2, p0, Lcom/android/vendorsettings/DisplaySettings;->lK:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_3

    move-object v2, p2

    .line 571
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 572
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wake_gesture_enabled"

    if-eqz v2, :cond_a

    move v2, v3

    :goto_2
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 574
    :cond_3
    iget-object v2, p0, Lcom/android/vendorsettings/DisplaySettings;->lL:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_4

    move-object v2, p2

    .line 575
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 576
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "doze_enabled"

    if-eqz v2, :cond_b

    move v2, v3

    :goto_3
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 578
    :cond_4
    iget-object v2, p0, Lcom/android/vendorsettings/DisplaySettings;->lM:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_5

    move-object v2, p2

    .line 579
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 580
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "double_tap_to_wake"

    if-eqz v2, :cond_c

    move v2, v3

    :goto_4
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 582
    :cond_5
    iget-object v2, p0, Lcom/android/vendorsettings/DisplaySettings;->lI:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_6

    .line 584
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 585
    const-string v2, "uimode"

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    .line 587
    invoke-virtual {v2, v5}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 594
    :cond_6
    :goto_5
    iget-object v2, p0, Lcom/android/vendorsettings/DisplaySettings;->lO:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_8

    .line 595
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 596
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_light_pulse"

    if-eqz v2, :cond_7

    move v4, v3

    :cond_7
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 600
    :cond_8
    return v3

    .line 558
    :catch_0
    move-exception v2

    .line 559
    const-string v6, "DisplaySettings"

    const-string v7, "could not persist screen timeout setting"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_9
    move v2, v4

    .line 567
    goto/16 :goto_1

    :cond_a
    move v2, v4

    .line 572
    goto :goto_2

    :cond_b
    move v2, v4

    .line 576
    goto :goto_3

    :cond_c
    move v2, v4

    .line 580
    goto :goto_4

    .line 588
    :catch_1
    move-exception v2

    .line 589
    const-string v5, "DisplaySettings"

    const-string v6, "could not persist night mode setting"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 605
    iget-object v1, p0, Lcom/android/vendorsettings/DisplaySettings;->lG:Lcom/android/vendorsettings/WarnedListPreference;

    if-ne p1, v1, :cond_1

    .line 606
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vendorsettings/iC;->ae(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DisplaySettings;->showDialog(I)V

    .line 613
    :goto_0
    return v0

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lG:Lcom/android/vendorsettings/WarnedListPreference;

    invoke-virtual {v0}, Lcom/android/vendorsettings/WarnedListPreference;->click()V

    .line 613
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lP:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/android/vendorsettings/DisplaySettings;->lP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 547
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 543
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 435
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 438
    invoke-virtual {p0}, Lcom/android/vendorsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/DisplaySettings;->lQ:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 441
    invoke-direct {p0}, Lcom/android/vendorsettings/DisplaySettings;->updateState()V

    .line 442
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x2e

    return v0
.end method
