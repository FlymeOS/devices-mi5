.class public Lcom/android/vendorsettings/display/ScreenEffect;
.super Lmiui/preference/PreferenceActivity;
.source "ScreenEffect.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ZC:[Ljava/lang/String;

.field private static final ZD:[I

.field private static final ZE:I

.field private static final ZF:[I

.field private static final ZG:[Ljava/lang/String;

.field private static final ZH:[I


# instance fields
.field private Sv:Landroid/widget/Toast;

.field private ZI:I

.field private ZJ:Lmiui/hareware/display/DisplayFeatureManager;

.field private ZK:Lcom/android/vendorsettings/display/L;

.field private ZL:Lcom/android/vendorsettings/display/K;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 69
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "screen_optimize_adapt"

    aput-object v1, v0, v5

    const-string v1, "screen_optimize_enhance"

    aput-object v1, v0, v2

    const-string v1, "screen_optimize_standard"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/vendorsettings/display/ScreenEffect;->ZC:[Ljava/lang/String;

    .line 75
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/vendorsettings/display/ScreenEffect;->ZD:[I

    .line 84
    const-string v0, "screen_standard_mode"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/vendorsettings/display/ScreenEffect;->ZE:I

    .line 87
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/vendorsettings/display/ScreenEffect;->ZF:[I

    .line 93
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "screen_saturation_vivid"

    aput-object v1, v0, v5

    const-string v1, "screen_saturation_standard"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/vendorsettings/display/ScreenEffect;->ZG:[Ljava/lang/String;

    .line 98
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/vendorsettings/display/ScreenEffect;->ZH:[I

    return-void

    .line 75
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    .line 87
    :array_1
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    .line 98
    :array_2
    .array-data 4
        0xb
        0xa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 109
    invoke-static {}, Lmiui/hareware/display/DisplayFeatureManager;->getInstance()Lmiui/hareware/display/DisplayFeatureManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    .line 412
    return-void
.end method

.method private a(Ljava/lang/String;[II)I
    .locals 3

    .prologue
    .line 258
    invoke-static {p1, p3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 259
    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 260
    aget v2, p2, v0

    if-ne v2, v1, :cond_1

    move p3, v1

    .line 264
    :cond_0
    return p3

    .line 259
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/display/ScreenEffect;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->Sv:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/display/ScreenEffect;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/display/ScreenEffect;->bT(I)V

    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/display/ScreenEffect;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/display/ScreenEffect;->setScreenSaturation(I)V

    return-void
.end method

.method private bS(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 283
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/ScreenEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "screen_color_level"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/display/I;

    .line 285
    if-nez v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 289
    :cond_0
    if-ne p1, v2, :cond_1

    .line 290
    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/display/I;->setEnabled(Z)V

    goto :goto_0

    .line 292
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/display/I;->setEnabled(Z)V

    .line 293
    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/display/I;->setLevel(I)V

    goto :goto_0
.end method

.method private bT(I)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v0}, Lmiui/hareware/display/DisplayFeatureManager;->getColorPrefer()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v0, p1}, Lmiui/hareware/display/DisplayFeatureManager;->setColorPrefer(I)V

    .line 347
    :cond_0
    return-void
.end method

.method private bU(I)V
    .locals 6

    .prologue
    const/16 v1, 0xb

    const/16 v0, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 356
    iget v2, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZI:I

    if-ne v2, p1, :cond_0

    .line 389
    :goto_0
    return-void

    .line 359
    :cond_0
    iput p1, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZI:I

    .line 361
    iget v2, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZI:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 363
    :pswitch_0
    iget-object v2, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v2, v3}, Lmiui/hareware/display/DisplayFeatureManager;->setScreenGamut(I)V

    .line 364
    iget-object v2, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    sget v3, Lcom/android/vendorsettings/display/ScreenEffect;->ZE:I

    if-ne v3, v4, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Lmiui/hareware/display/DisplayFeatureManager;->setScreenSaturation(I)V

    .line 366
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v0, v4}, Lmiui/hareware/display/DisplayFeatureManager;->setScreenCabc(I)V

    .line 367
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v0, v4}, Lmiui/hareware/display/DisplayFeatureManager;->setAdEnable(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 364
    goto :goto_1

    .line 371
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v0, v3}, Lmiui/hareware/display/DisplayFeatureManager;->setScreenGamut(I)V

    .line 372
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v0, v5}, Lmiui/hareware/display/DisplayFeatureManager;->setColorPrefer(I)V

    .line 373
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v0, v1}, Lmiui/hareware/display/DisplayFeatureManager;->setScreenSaturation(I)V

    .line 374
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v0, v3}, Lmiui/hareware/display/DisplayFeatureManager;->setScreenCabc(I)V

    .line 375
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v0, v3}, Lmiui/hareware/display/DisplayFeatureManager;->setAdEnable(Z)V

    goto :goto_0

    .line 379
    :pswitch_2
    iget-object v1, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v1, v5}, Lmiui/hareware/display/DisplayFeatureManager;->setColorPrefer(I)V

    .line 380
    iget-object v1, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v1, v0}, Lmiui/hareware/display/DisplayFeatureManager;->setScreenSaturation(I)V

    .line 381
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v0, v4}, Lmiui/hareware/display/DisplayFeatureManager;->setScreenGamut(I)V

    .line 382
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v0, v3}, Lmiui/hareware/display/DisplayFeatureManager;->setScreenCabc(I)V

    .line 383
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v0, v3}, Lmiui/hareware/display/DisplayFeatureManager;->setAdEnable(Z)V

    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/android/vendorsettings/display/ScreenEffect;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/display/ScreenEffect;->bU(I)V

    return-void
.end method

.method private o(Ljava/lang/String;I)Landroid/preference/PreferenceCategory;
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/ScreenEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 237
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 238
    invoke-virtual {v1, p1}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1, p2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 240
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setPersistent(Z)V

    .line 241
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 242
    return-object v1
.end method

.method private pF()V
    .locals 4

    .prologue
    .line 177
    const-string v0, "persist.sys.display_prefer"

    sget-object v1, Lcom/android/vendorsettings/display/ScreenEffect;->ZF:[I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vendorsettings/display/ScreenEffect;->a(Ljava/lang/String;[II)I

    move-result v0

    .line 179
    const-string v1, "screen_color"

    const v2, 0x7f0c0eef

    invoke-direct {p0, v1, v2}, Lcom/android/vendorsettings/display/ScreenEffect;->o(Ljava/lang/String;I)Landroid/preference/PreferenceCategory;

    move-result-object v1

    .line 181
    new-instance v2, Lcom/android/vendorsettings/display/I;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/display/I;-><init>(Landroid/content/Context;)V

    .line 182
    const-string v3, "screen_color_level"

    invoke-virtual {v2, v3}, Lcom/android/vendorsettings/display/I;->setKey(Ljava/lang/String;)V

    .line 183
    const v3, 0x7f0a00a2

    invoke-virtual {v2, v3}, Lcom/android/vendorsettings/display/I;->bP(I)V

    .line 184
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/vendorsettings/display/I;->setPersistent(Z)V

    .line 185
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Lcom/android/vendorsettings/display/I;->setLevel(I)V

    .line 186
    invoke-virtual {v2, p0}, Lcom/android/vendorsettings/display/I;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 187
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 188
    return-void
.end method

.method private pG()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 191
    const-string v0, "screen_optimize"

    const v2, 0x7f0c0ef3

    invoke-direct {p0, v0, v2}, Lcom/android/vendorsettings/display/ScreenEffect;->o(Ljava/lang/String;I)Landroid/preference/PreferenceCategory;

    move-result-object v3

    .line 193
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/ScreenEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00a4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/ScreenEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00a5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/ScreenEffect;->pI()I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZI:I

    move v0, v1

    .line 200
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_2

    .line 201
    sget v2, Lcom/android/vendorsettings/display/ScreenEffect;->ZE:I

    if-nez v2, :cond_0

    const-string v2, "screen_optimize_standard"

    sget-object v6, Lcom/android/vendorsettings/display/ScreenEffect;->ZC:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    new-instance v6, Lcom/android/vendorsettings/display/G;

    invoke-direct {v6, p0}, Lcom/android/vendorsettings/display/G;-><init>(Landroid/content/Context;)V

    .line 206
    sget-object v2, Lcom/android/vendorsettings/display/ScreenEffect;->ZC:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v6, v2}, Lcom/android/vendorsettings/display/G;->setKey(Ljava/lang/String;)V

    .line 207
    aget-object v2, v4, v0

    invoke-virtual {v6, v2}, Lcom/android/vendorsettings/display/G;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    aget-object v2, v5, v0

    invoke-virtual {v6, v2}, Lcom/android/vendorsettings/display/G;->setSummary(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {v6, v1}, Lcom/android/vendorsettings/display/G;->setPersistent(Z)V

    .line 210
    invoke-virtual {v6, p0}, Lcom/android/vendorsettings/display/G;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 212
    sget-object v2, Lcom/android/vendorsettings/display/ScreenEffect;->ZD:[I

    aget v2, v2, v0

    iget v7, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZI:I

    if-ne v2, v7, :cond_1

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v6, v2}, Lcom/android/vendorsettings/display/G;->setChecked(Z)V

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_2

    .line 215
    :cond_2
    return-void
.end method

.method private pH()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 218
    const-string v0, "persist.sys.display_ce"

    sget-object v2, Lcom/android/vendorsettings/display/ScreenEffect;->ZH:[I

    sget v3, Lmiui/hareware/display/DisplayFeatureManager;->DEFAULT_SCREEN_SATURATION:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/vendorsettings/display/ScreenEffect;->a(Ljava/lang/String;[II)I

    move-result v3

    .line 220
    const-string v0, "screen_saturation"

    const v2, 0x7f0c0ef0

    invoke-direct {p0, v0, v2}, Lcom/android/vendorsettings/display/ScreenEffect;->o(Ljava/lang/String;I)Landroid/preference/PreferenceCategory;

    move-result-object v4

    .line 222
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/ScreenEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00a3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    .line 224
    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_1

    .line 225
    new-instance v6, Lcom/android/vendorsettings/display/G;

    invoke-direct {v6, p0}, Lcom/android/vendorsettings/display/G;-><init>(Landroid/content/Context;)V

    .line 226
    sget-object v2, Lcom/android/vendorsettings/display/ScreenEffect;->ZG:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v6, v2}, Lcom/android/vendorsettings/display/G;->setKey(Ljava/lang/String;)V

    .line 227
    aget-object v2, v5, v0

    invoke-virtual {v6, v2}, Lcom/android/vendorsettings/display/G;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {v6, v1}, Lcom/android/vendorsettings/display/G;->setPersistent(Z)V

    .line 229
    sget-object v2, Lcom/android/vendorsettings/display/ScreenEffect;->ZH:[I

    aget v2, v2, v0

    if-ne v3, v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v6, v2}, Lcom/android/vendorsettings/display/G;->setChecked(Z)V

    .line 230
    invoke-virtual {v6, p0}, Lcom/android/vendorsettings/display/G;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 231
    invoke-virtual {v4, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 229
    goto :goto_1

    .line 233
    :cond_1
    return-void
.end method

.method private setScreenSaturation(I)V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v0}, Lmiui/hareware/display/DisplayFeatureManager;->getScreenSaturation()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v0, p1}, Lmiui/hareware/display/DisplayFeatureManager;->setScreenSaturation(I)V

    .line 353
    :cond_0
    return-void
.end method

.method private w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/ScreenEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 270
    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    .line 272
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 273
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/vendorsettings/display/G;

    .line 275
    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {v1}, Lcom/android/vendorsettings/display/G;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/vendorsettings/display/G;->setChecked(Z)V

    .line 272
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 280
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ScreenEffectHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->mHandlerThread:Landroid/os/HandlerThread;

    .line 121
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 122
    new-instance v0, Lcom/android/vendorsettings/display/L;

    iget-object v1, p0, Lcom/android/vendorsettings/display/ScreenEffect;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/display/L;-><init>(Lcom/android/vendorsettings/display/ScreenEffect;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZK:Lcom/android/vendorsettings/display/L;

    .line 124
    const v0, 0x7f04012a

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/display/ScreenEffect;->setContentView(I)V

    .line 126
    const v0, 0x7f1300e6

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/display/ScreenEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/vendorsettings/display/J;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/display/J;-><init>(Lcom/android/vendorsettings/display/ScreenEffect;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f080081

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/display/ScreenEffect;->addPreferencesFromResource(I)V

    .line 135
    invoke-direct {p0}, Lcom/android/vendorsettings/display/ScreenEffect;->pF()V

    .line 137
    const v0, 0x7f130061

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/display/ScreenEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    const-string v1, "support_screen_optimize"

    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/ScreenEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0ef4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-direct {p0}, Lcom/android/vendorsettings/display/ScreenEffect;->pG()V

    .line 141
    iget v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZI:I

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/display/ScreenEffect;->bS(I)V

    .line 148
    :goto_0
    const-string v0, "support_screen_paper_mode"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/ScreenEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0ef5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->Sv:Landroid/widget/Toast;

    .line 153
    new-instance v0, Lcom/android/vendorsettings/display/K;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/display/K;-><init>(Lcom/android/vendorsettings/display/ScreenEffect;)V

    iput-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZL:Lcom/android/vendorsettings/display/K;

    .line 154
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZL:Lcom/android/vendorsettings/display/K;

    invoke-virtual {v0}, Lcom/android/vendorsettings/display/K;->register()V

    .line 155
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZL:Lcom/android/vendorsettings/display/K;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/display/K;->onChange(Z)V

    .line 157
    :cond_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/display/ScreenEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0ef1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-direct {p0}, Lcom/android/vendorsettings/display/ScreenEffect;->pH()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZL:Lcom/android/vendorsettings/display/K;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZL:Lcom/android/vendorsettings/display/K;

    invoke-virtual {v0}, Lcom/android/vendorsettings/display/K;->unregister()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 173
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 174
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 162
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->Sv:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/display/ScreenEffect;->Sv:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 165
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x3

    .line 299
    .line 301
    const-string v0, ""

    .line 302
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 303
    const-string v6, "screen_color_level"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 305
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 306
    const-string v0, "screen_color"

    move v3, v2

    .line 329
    :goto_0
    iget-object v6, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZK:Lcom/android/vendorsettings/display/L;

    iget-object v7, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZK:Lcom/android/vendorsettings/display/L;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Lcom/android/vendorsettings/display/L;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/vendorsettings/display/L;->sendMessage(Landroid/os/Message;)Z

    .line 331
    if-ne v3, v4, :cond_0

    .line 332
    invoke-direct {p0, v1}, Lcom/android/vendorsettings/display/ScreenEffect;->bS(I)V

    .line 335
    :cond_0
    instance-of v1, p1, Lcom/android/vendorsettings/display/G;

    if-eqz v1, :cond_1

    .line 336
    invoke-direct {p0, v0, v5}, Lcom/android/vendorsettings/display/ScreenEffect;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const/4 v2, 0x0

    .line 340
    :cond_1
    return v2

    .line 307
    :cond_2
    const-string v6, "screen_saturation_standard"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 309
    const/16 v1, 0xa

    .line 310
    const-string v0, "screen_saturation"

    goto :goto_0

    .line 311
    :cond_3
    const-string v6, "screen_saturation_vivid"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 313
    const/16 v1, 0xb

    .line 314
    const-string v0, "screen_saturation"

    goto :goto_0

    .line 315
    :cond_4
    const-string v6, "screen_optimize_adapt"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 318
    const-string v0, "screen_optimize"

    move v1, v2

    move v3, v4

    goto :goto_0

    .line 319
    :cond_5
    const-string v6, "screen_optimize_enhance"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 322
    const-string v0, "screen_optimize"

    move v1, v3

    move v3, v4

    goto :goto_0

    .line 323
    :cond_6
    const-string v3, "screen_optimize_standard"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 326
    const-string v0, "screen_optimize"

    move v1, v4

    move v3, v4

    goto :goto_0

    :cond_7
    move v3, v1

    goto :goto_0
.end method

.method public pI()I
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 246
    sget v0, Lcom/android/vendorsettings/display/ScreenEffect;->ZE:I

    if-nez v0, :cond_1

    move v0, v1

    .line 248
    :goto_0
    iget-object v2, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v2}, Lmiui/hareware/display/DisplayFeatureManager;->isAdEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    const/4 v0, 0x1

    .line 254
    :cond_0
    :goto_1
    return v0

    .line 246
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 250
    :cond_2
    iget-object v2, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v2}, Lmiui/hareware/display/DisplayFeatureManager;->getScreenGamut()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/vendorsettings/display/ScreenEffect;->ZJ:Lmiui/hareware/display/DisplayFeatureManager;

    invoke-virtual {v2}, Lmiui/hareware/display/DisplayFeatureManager;->getScreenSaturation()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 252
    goto :goto_1
.end method
